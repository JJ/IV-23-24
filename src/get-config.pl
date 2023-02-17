#!/usr/bin/env perl

use strict;
use warnings;
use v5.14;

use Test::More;

use JSON;
use YAML qw(LoadFile);
use GitHub::Actions;

use constant KEYS => qw(entidad lenguaje test taskfil URL make PaaS recurso);

my $iv = LoadFile("iv.yaml");
ok( $iv, "Fichero de configuración para corrección iv.yaml cargado correctamente" );

say $iv;
for my $c ( KEYS ) {
  if ( $iv->{$c} ) {
    my $output = (ref $iv->{$c} )?to_json( $iv->{$c} ):$iv->{$c};
    set_output( $c, $output );
  }
}

for my $k (qw(taskfile make)) {
  ok( $iv->{$k}, "Clave $k está presente" );
}

set_output('IV_FICHERO_TAREAS',$iv->{'taskfile'});
set_output('IV_ORDEN_TAREAS',$iv->{'make'});
set_env('IV_ORDEN_TAREAS',$iv->{'make'});

my $user = $ENV{'IV_USER'};
my $repo = $ENV{'IV_REPO'};
if ( -f "DOCKER_USER" ) {
  diag "❢ Usuario de Docker alternativo";
  open( my $fh, "<", "DOCKER_USER" ) || die "No puedo abrir DOCKER_USER";
  my $docker_user = <$fh>;
  chomp $docker_user;
  $user = $docker_user;
}

set_output('CONTAINER',"$user/$repo");
set_env('CONTAINER',"$user/$repo");

done_testing;
