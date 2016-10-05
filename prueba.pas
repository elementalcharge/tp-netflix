program principal;

Const
        MAX_USUARIOS = 50;
        MAX_EPISODIOS_POR_TEMPORADA = 20;
        MAX_TEMPORADAS_POR_SERIE = 5;
        MAX_SERIES = 5;
        MAX_VISUALIZACIONES_POR_USUARIO = 1000;
        REGLAS_VISUALIZACIONES = 150 * 0.01 + 5 * 0.01 + 4 * 0.03 + 3 * 0.05 + 2 * 0.1;
        {constantes del ranking}
        cant_top=5;
type
        {type del ranking}
        tranking= record
        nombreDeSerie : String[150];
        episodio: String[15];
        visualizaciones: Integer;

        
    end;
    {fin de type del ranking}

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

        recordDeVisualizaciones = record
                posSerieArreglo : longint;
                temporadaDeLaSerie : byte;
                cantEpisodiosTemporada : byte;
                CantVisualizaciones : byte;
                end;

        informacionUsuario = record
                recordVisualizaciones : recordDeVisualizaciones;
                usuarios : string[8];
                end;

        ArrayInfoPorUsuario = Array[1..MAX_VISUALIZACIONES_POR_USUARIO] of informacionUsuario;

        function cargar_datos(var metaData: series): series ;
        begin

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

        procedure cargar_visualizaciones(var seriesCargadas : series ; var usuario: ArrayInfoPorUsuario);

           var     nroVisualizacionesAGenerar : byte;
                   i:byte;
                   temporadaValida:byte;
                   episodioValido:byte;
                   serieACargar:byte;
               begin
            if length(seriesCargadas) > 0 then

            begin
                readln(nroVisualizacionesAGenerar);
                for i :=1 to nroVisualizacionesAGenerar do
                begin
                    Randomize       ;
                    temporadaValida := Random(2);
                    episodioValido:= Random(5);
                    Inc(seriesCargadas[serieAcargar].DatosTemporada[temporadaValida].datosDelVideo[episodioValido].visualizaciones, 1);
                    usuario[1].recordVisualizaciones.CantVisualizaciones := seriesCargadas[serieAcargar].DatosTemporada[temporadaValida].datosDelVideo[episodioValido].visualizaciones;
                end;
            end;
        end;

        {procedure ranking}
            procedure verRanking(var metadata:  series);
var i,j,k, y:byte;
    top5: array[1..cant_top] of tranking;{copiar lo que sea metadata mejor}
    aux, aux2: tranking;

begin

        for i:=1 to MAX_SERIES Do{hay poner algo que diga la cantidad de series que hay actualmente}
        begin
            for j := 0 to metaData[i].numeroTemporadas do
            begin
                for k := 0 to metaData[i].DatosTemporada[j].numeroEpisodios do
                begin
                    if top5[cant_top].visualizaciones<metaData[i].DatosTemporada[j].datosDelVideo[k].visualizaciones then{revisa si supera }
                    begin
                        aux.episodio:=metaData[i].DatosTemporada[j].datosDelVideo[k].titulo;
                        aux.nombreDeSerie:=metaData[i].nombre;
                        aux.visualizaciones:=metaData[i].DatosTemporada[j].datosDelVideo[k].visualizaciones;
                        for y := 0 to cant_top do
                        begin
                        
                            if aux.visualizaciones> top5[y].visualizaciones then
                            begin
                        
                            aux2:=top5[y];
                            top5[y]:=aux;
                            aux:=aux2;
                            
                            end;
                        end;
                    end;
                
                    
                end;
            end;
        end;
end;
        {fin procediure ranking}
var
   cargaDeSeries : array[1..MAX_SERIES] of serie;
   usuariosRegistrados:ArrayInfoPorUsuario    ;
   seriesCargadas : series;
    a, b : integer;
   inicioDePrograma: integer;

begin
        usuariosRegistrados[1].usuarios := 'usuario';
        writeln('bienvenido a NETFLIX');
        writeln('cargando los contenidos en el sistema...');
        seriesCargadas := cargar_datos(cargaDeSeries);
        writeln('Carga completa!');
end.
