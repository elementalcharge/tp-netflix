program principal;

Const
        MAX_USUARIOS = 50;
        MAX_EPISODIOS_POR_TEMPORADA = 20;
        MAX_TEMPORADAS_POR_SERIE = 5;
        MAX_SERIES = 5;

type
        usuarios = array[1..MAX_USUARIOS] of string[8];

        videos = record
                titulo: string[72];
                videoDescripcion: string[234];
                duracionSegundos: longint;
                visualizaciones: longint;
                end;


        temporada = record
                anoEmision: string[4];
                numeroEpisodios: byte;
                datosDelVideo : array[1..MAX_EPISODIOS_POR_TEMPORADA] of videos;
                end;


        serie  = record
                nombre : string[71];
                descripcion: string[140];
                numeroTemporadas: byte;
                DatosTemporada : array[1..MAX_TEMPORADAS_POR_SERIE] of temporada;
                end;

        series = array[1..MAX_SERIES] of serie;

        procedure cargar_datos(var metaData: series, var usuarioDefault: usuarios);
        begin
                usuarioDefault[1] := 'usuario';
                metaData[1].nombre:= 'Los simuladores';
                metaData[1].descripcion:= 'descripcion de la serie';
                metaData[1].numeroTemporadas:= 2;
                metaData[1].DatosTemporada[1].anoEmision:= '2002';
                metaData[1].DatosTemporada[1].numeroEpisodios:= 13;
                metaData[1].DatosTemporada[1].datosDelVideo[1].titulo:= 'Tarjeta de Navidad';
                metaData[1].DatosTemporada[1].datosDelVideo[1].videoDescripcion:= 'S01E01';
                metaData[1].DatosTemporada[1].datosDelVideo[1].duracionSegundos:= 1800;
                metaData[1].DatosTemporada[1].datosDelVideo[1].visualizaciones:= 0;
                metaData[1].DatosTemporada[1].datosDelVideo[2].titulo:= 'Diagnostico Receptopico';
                metaData[1].DatosTemporada[1].datosDelVideo[2].videoDescripcion:= 'S01E02';
                metaData[1].DatosTemporada[1].datosDelVideo[2].duracionSegundos:= 1800;
                metaData[1].DatosTemporada[1].datosDelVideo[2].visualizaciones:= 0;
                metaData[1].DatosTemporada[1].datosDelVideo[3].titulo:= 'Seguro de Desempleo';
                metaData[1].DatosTemporada[1].datosDelVideo[3].videoDescripcion:= 'S01E03';
                metaData[1].DatosTemporada[1].datosDelVideo[3].duracionSegundos:= 1800;
                metaData[1].DatosTemporada[1].datosDelVideo[3].visualizaciones:= 0;
                metaData[1].DatosTemporada[1].datosDelVideo[4].titulo:= 'El testigo espanol';
                metaData[1].DatosTemporada[1].datosDelVideo[4].videoDescripcion:= 'S01E04';
                metaData[1].DatosTemporada[1].datosDelVideo[4].duracionSegundos:= 1800;
                metaData[1].DatosTemporada[1].datosDelVideo[4].visualizaciones:= 0;
                metaData[1].DatosTemporada[1].datosDelVideo[5].titulo:= 'El Joven Simulador';
                metaData[1].DatosTemporada[1].datosDelVideo[5].videoDescripcion:= 'S01E05';
                metaData[1].DatosTemporada[1].datosDelVideo[5].duracionSegundos:= 1800;
                metaData[1].DatosTemporada[1].datosDelVideo[5].visualizaciones:= 0;
                metaData[1].DatosTemporada[2].anoEmision:= '2003';
                metaData[1].DatosTemporada[2].numeroEpisodios:= 12;
                metaData[1].DatosTemporada[2].datosDelVideo[1].titulo:= 'Los Cuatro Notables';
                metaData[1].DatosTemporada[2].datosDelVideo[1].videoDescripcion:= 'S02E01';
                metaData[1].DatosTemporada[2].datosDelVideo[1].duracionSegundos:= 1800;
                metaData[1].DatosTemporada[2].datosDelVideo[1].visualizaciones:= 0;
                metaData[1].DatosTemporada[2].datosDelVideo[2].titulo:= 'Z-9000';
                metaData[1].DatosTemporada[2].datosDelVideo[2].videoDescripcion:= 'S02E02';
                metaData[1].DatosTemporada[2].datosDelVideo[2].duracionSegundos:= 1800;
                metaData[1].DatosTemporada[2].datosDelVideo[2].visualizaciones:= 0;
                metaData[1].DatosTemporada[2].datosDelVideo[3].titulo:= 'La Gargantilla de las Cuatro Estaciones';
                metaData[1].DatosTemporada[2].datosDelVideo[3].videoDescripcion:= 'S02E03';
                metaData[1].DatosTemporada[2].datosDelVideo[3].duracionSegundos:= 1800;
                metaData[1].DatosTemporada[2].datosDelVideo[3].visualizaciones:= 0;
                metaData[1].DatosTemporada[2].datosDelVideo[4].titulo:= 'El Clan Motul';
                metaData[1].DatosTemporada[2].datosDelVideo[4].videoDescripcion:= 'S02E04';
                metaData[1].DatosTemporada[2].datosDelVideo[4].duracionSegundos:= 1800;
                metaData[1].DatosTemporada[2].datosDelVideo[4].visualizaciones:= 0;
                metaData[1].DatosTemporada[2].datosDelVideo[5].titulo:= 'El Vengador Infantil';
                metaData[1].DatosTemporada[2].datosDelVideo[5].videoDescripcion:= 'S02E05';
                metaData[1].DatosTemporada[2].datosDelVideo[5].duracionSegundos:= 1800;
                metaData[1].DatosTemporada[2].datosDelVideo[5].visualizaciones:= 0;
        end;

var
   cargaDeSeries : array[1..MAX_SERIES] of serie;
   usuariosRegistrados: array[1..MAX_USUARIOS] of usuarios
   a, b : integer;
   inicioDePrograma: integer;

begin
        writeln('bienvenido a NETFLIX');
        writeln('cargando los contenidos en el sistema...');
        cargar_datos(cargaDeSeries,usuariosRegistrados);
        writeln('Carga completa!');
        

        
end.




