fatpack: revisores

stats: proyectos/objetivo-*.md
	raku -Ilib scripts/iv-stats.raku

cumplimiento: proyectos/objetivo-*.md
	scripts/iv-cumplimiento.raku

objetivos:
	../IV/scripts/crea-fichero-objetivos.raku ../Equivalencia\ nombre-nick-Telegram\ IV\ 21-22\ -\ Hoja\ 1.csv

bajas:
	raku -Ilib scripts/iv-bajas.raku

json:
	raku -Ilib scripts/iv-objetivos.raku > data/objetivos.json

notas:
	@echo "⚠️Esta orden necesita tener instalado raku y zef y ejecutar a continuación\n\tzef install --deps-only .\npara instalar las dependencias necesarias. Si hay algún error, ejecuta lo anterior ⚠ \n\n"
	@raku -Ilib scripts/iv-notas.raku

revisores:
	fatpack pack src/random-reviewer.pl > scripts/random-reviewer

fechas:
	raku -Ilib scripts/iv-fechas-csv.raku > data/fechas-entrega.csv

asignaciones:
	raku -Ilib scripts/check-asignaciones.raku
