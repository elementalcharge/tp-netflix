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

         Function duracion (var duracionSegundos:longint): String;
            var
                b,c: byte;
                bs,cs,ds: string[5];
                aux: string[10];
            begin
                
                b:=0;
                c:=0;
                while duracionSegundos>=60 do
                begin
                    inc(c);
                    dec(duracionSegundos,60);
                end;
                while c>=60 do
                begin
                    inc(b);
                    dec(c,60);
                end;
                str(b,bs);
                str(c,cs);
                str(duracionSegundos,ds);
                {if duracionSegundos>=10 then
                begin
                    
                
                    aux:=bs+':'+cs+':'+ds
                    else
                    
                        aux:=bs+':'+cs+':0'+ds;
                   
                    
                end;}
                aux:=bs+':'+cs+':'+ds;
                duracion:=aux;
            end;
         procedure cargar_datos(var metaData: series);
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
                {segunda serie}
                metaData[2].nombre:= 'futurama';
                metaData[2].descripcion:= 'fry un perdedor sin futuiro termina en el futuro';
                metaData[2].numeroTemporadas:= 3;
                metaData[2].DatosTemporada[1].anoEmision:= '1999';
                metaData[2].DatosTemporada[1].numeroEpisodios:= 13;
                metaData[2].DatosTemporada[1].datosDelVideo[1].titulo:= 'space pilot 3000';
                metaData[2].DatosTemporada[1].datosDelVideo[1].videoDescripcion:= 'S01E01';
                metaData[2].DatosTemporada[1].datosDelVideo[1].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[1].datosDelVideo[1].visualizaciones:= 0;
                metaData[2].DatosTemporada[1].datosDelVideo[2].titulo:= 'the series has landed';
                metaData[2].DatosTemporada[1].datosDelVideo[2].videoDescripcion:= 'S01E02';
                metaData[2].DatosTemporada[1].datosDelVideo[2].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[1].datosDelVideo[2].visualizaciones:= 0;
                metaData[2].DatosTemporada[1].datosDelVideo[3].titulo:= 'i roomate';
                metaData[2].DatosTemporada[1].datosDelVideo[3].videoDescripcion:= 'S01E03';
                metaData[2].DatosTemporada[1].datosDelVideo[3].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[1].datosDelVideo[3].visualizaciones:= 0;
                metaData[2].DatosTemporada[1].datosDelVideo[4].titulo:= 'lovers labours lost in space';
                metaData[2].DatosTemporada[1].datosDelVideo[4].videoDescripcion:= 'S01E04';
                metaData[2].DatosTemporada[1].datosDelVideo[4].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[1].datosDelVideo[4].visualizaciones:= 0;
                metaData[2].DatosTemporada[1].datosDelVideo[5].titulo:= 'fear of a bot planet';
                metaData[2].DatosTemporada[1].datosDelVideo[5].videoDescripcion:= 'S01E05';
                metaData[2].DatosTemporada[1].datosDelVideo[5].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[1].datosDelVideo[5].visualizaciones:= 0;
                metaData[2].DatosTemporada[1].datosDelVideo[6].titulo:= 'a fishfull of dolars';
                metaData[2].DatosTemporada[1].datosDelVideo[6].videoDescripcion:= 'S01E06';
                metaData[2].DatosTemporada[1].datosDelVideo[6].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[1].datosDelVideo[6].visualizaciones:= 0;
                metaData[2].DatosTemporada[1].datosDelVideo[7].titulo:= 'my three suns';
                metaData[2].DatosTemporada[1].datosDelVideo[7].videoDescripcion:= 'S01E07';
                metaData[2].DatosTemporada[1].datosDelVideo[7].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[1].datosDelVideo[7].visualizaciones:= 0;
                metaData[2].DatosTemporada[1].datosDelVideo[8].titulo:= 'a big place of garbage';
                metaData[2].DatosTemporada[1].datosDelVideo[8].videoDescripcion:= 'S01E08';
                metaData[2].DatosTemporada[1].datosDelVideo[8].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[1].datosDelVideo[8].visualizaciones:= 0;
                metaData[2].DatosTemporada[1].datosDelVideo[9].titulo:= 'hell is other robots';
                metaData[2].DatosTemporada[1].datosDelVideo[9].videoDescripcion:= 'S01E09';
                metaData[2].DatosTemporada[1].datosDelVideo[9].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[1].datosDelVideo[9].visualizaciones:= 0;
                metaData[2].DatosTemporada[1].datosDelVideo[10].titulo:= 'a flight to remember';
                metaData[2].DatosTemporada[1].datosDelVideo[10].videoDescripcion:= 'S01E10';
                metaData[2].DatosTemporada[1].datosDelVideo[10].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[1].datosDelVideo[10].visualizaciones:= 0;
                metaData[2].DatosTemporada[1].datosDelVideo[11].titulo:= 'mars uiniversity';
                metaData[2].DatosTemporada[1].datosDelVideo[11].videoDescripcion:= 'S01E11';
                metaData[2].DatosTemporada[1].datosDelVideo[11].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[1].datosDelVideo[11].visualizaciones:= 0;
                metaData[2].DatosTemporada[1].datosDelVideo[12].titulo:= 'when aliens attack';
                metaData[2].DatosTemporada[1].datosDelVideo[12].videoDescripcion:= 'S01E12';
                metaData[2].DatosTemporada[1].datosDelVideo[12].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[1].datosDelVideo[12].visualizaciones:= 0;
                metaData[2].DatosTemporada[1].datosDelVideo[13].titulo:= 'fry and the slurm factory';
                metaData[2].DatosTemporada[1].datosDelVideo[13].videoDescripcion:= 'S01E13';
                metaData[2].DatosTemporada[1].datosDelVideo[13].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[1].datosDelVideo[13].visualizaciones:= 0;
                metaData[2].DatosTemporada[2].anoEmision:= '2000';
                metaData[2].DatosTemporada[2].numeroEpisodios:= 12;
                metaData[2].DatosTemporada[2].datosDelVideo[1].titulo:= 'i second that motion';
                metaData[2].DatosTemporada[2].datosDelVideo[1].videoDescripcion:= 'S02E01';
                metaData[2].DatosTemporada[2].datosDelVideo[1].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[2].datosDelVideo[1].visualizaciones:= 0;
                metaData[2].DatosTemporada[2].datosDelVideo[2].titulo:= 'branning begin again';
                metaData[2].DatosTemporada[2].datosDelVideo[2].videoDescripcion:= 'S02E02';
                metaData[2].DatosTemporada[2].datosDelVideo[2].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[2].datosDelVideo[2].visualizaciones:= 0;
                metaData[2].DatosTemporada[2].datosDelVideo[3].titulo:= 'a head in the polls';
                metaData[2].DatosTemporada[2].datosDelVideo[3].videoDescripcion:= 'S02E03';
                metaData[2].DatosTemporada[2].datosDelVideo[3].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[2].datosDelVideo[3].visualizaciones:= 0;
                metaData[2].DatosTemporada[2].datosDelVideo[4].titulo:= 'xmas story';
                metaData[2].DatosTemporada[2].datosDelVideo[4].videoDescripcion:= 'S02E04';
                metaData[2].DatosTemporada[2].datosDelVideo[4].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[2].datosDelVideo[4].visualizaciones:= 0;
                metaData[2].DatosTemporada[2].datosDelVideo[5].titulo:= 'why must i be a crustacean in love';
                metaData[2].DatosTemporada[2].datosDelVideo[5].videoDescripcion:= 'S02E05';
                metaData[2].DatosTemporada[2].datosDelVideo[5].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[2].datosDelVideo[5].visualizaciones:= 0;
                metaData[2].DatosTemporada[2].datosDelVideo[6].titulo:= 'lesser of two evils';
                metaData[2].DatosTemporada[2].datosDelVideo[6].videoDescripcion:= 'S02E06';
                metaData[2].DatosTemporada[2].datosDelVideo[6].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[2].datosDelVideo[6].visualizaciones:= 0;
                metaData[2].DatosTemporada[2].datosDelVideo[7].titulo:= 'puit your head in my shoulder';
                metaData[2].DatosTemporada[2].datosDelVideo[7].videoDescripcion:= 'S02E07';
                metaData[2].DatosTemporada[2].datosDelVideo[7].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[2].datosDelVideo[7].visualizaciones:= 0;
                metaData[2].DatosTemporada[2].datosDelVideo[8].titulo:= 'raging bender';
                metaData[2].DatosTemporada[2].datosDelVideo[8].videoDescripcion:= 'S02E08';
                metaData[2].DatosTemporada[2].datosDelVideo[8].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[2].datosDelVideo[8].visualizaciones:= 0;
                metaData[2].DatosTemporada[2].datosDelVideo[9].titulo:= 'a byclops build for two';
                metaData[2].DatosTemporada[2].datosDelVideo[9].videoDescripcion:= 'S02E09';
                metaData[2].DatosTemporada[2].datosDelVideo[9].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[2].datosDelVideo[9].visualizaciones:= 0;
                metaData[2].DatosTemporada[2].datosDelVideo[10].titulo:= 'a clone of my own';
                metaData[2].DatosTemporada[2].datosDelVideo[10].videoDescripcion:= 'S02E10';
                metaData[2].DatosTemporada[2].datosDelVideo[10].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[2].datosDelVideo[10].visualizaciones:= 0;
                metaData[2].DatosTemporada[2].datosDelVideo[11].titulo:= 'how hermes requesitioned his groove back';
                metaData[2].DatosTemporada[2].datosDelVideo[11].videoDescripcion:= 'S02E11';
                metaData[2].DatosTemporada[2].datosDelVideo[11].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[2].datosDelVideo[11].visualizaciones:= 0;
                metaData[2].DatosTemporada[2].datosDelVideo[12].titulo:= 'the deep south';
                metaData[2].DatosTemporada[2].datosDelVideo[12].videoDescripcion:= 'S02E12';
                metaData[2].DatosTemporada[2].datosDelVideo[12].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[2].datosDelVideo[12].visualizaciones:= 0;
                metaData[2].DatosTemporada[3].anoEmision:= '2001';
                metaData[2].DatosTemporada[3].numeroEpisodios:= 6;
                metaData[2].DatosTemporada[3].datosDelVideo[1].titulo:= 'amazon women in the mood';
                metaData[2].DatosTemporada[3].datosDelVideo[1].videoDescripcion:= 'S03E01';
                metaData[2].DatosTemporada[3].datosDelVideo[1].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[3].datosDelVideo[1].visualizaciones:= 0;
                metaData[2].DatosTemporada[3].datosDelVideo[2].titulo:= 'parasites lost';
                metaData[2].DatosTemporada[3].datosDelVideo[2].videoDescripcion:= 'S03E02';
                metaData[2].DatosTemporada[3].datosDelVideo[2].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[3].datosDelVideo[2].visualizaciones:= 0;
                metaData[2].DatosTemporada[3].datosDelVideo[3].titulo:= 'a tale of two satans';
                metaData[2].DatosTemporada[3].datosDelVideo[3].videoDescripcion:= 'S03E03';
                metaData[2].DatosTemporada[3].datosDelVideo[3].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[3].datosDelVideo[3].visualizaciones:= 0;
                metaData[2].DatosTemporada[3].datosDelVideo[4].titulo:= 'the luck of the fryrish';
                metaData[2].DatosTemporada[3].datosDelVideo[4].videoDescripcion:= 'S03E04';
                metaData[2].DatosTemporada[3].datosDelVideo[4].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[3].datosDelVideo[4].visualizaciones:= 0;
                metaData[2].DatosTemporada[3].datosDelVideo[5].titulo:= 'the birdbot of ice-catraz';
                metaData[2].DatosTemporada[3].datosDelVideo[5].videoDescripcion:= 'S03E05';
                metaData[2].DatosTemporada[3].datosDelVideo[5].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[3].datosDelVideo[5].visualizaciones:= 0;
                metaData[2].DatosTemporada[3].datosDelVideo[6].titulo:= 'bendless love';
                metaData[2].DatosTemporada[3].datosDelVideo[6].videoDescripcion:= 'S03E06';
                metaData[2].DatosTemporada[3].datosDelVideo[6].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[3].datosDelVideo[6].visualizaciones:= 0;

                metaData[3].nombre:= 'Game of thrones';
                metaData[3].descripcion:= 'el invierno se acerca y gente se desnuda y mata por politica ';
                metaData[3].numeroTemporadas:= 3;
                metaData[3].DatosTemporada[1].anoEmision:= '2011';
                metaData[3].DatosTemporada[1].numeroEpisodios:= 6;
                metaData[3].DatosTemporada[1].datosDelVideo[1].titulo:= 'winter is coming';
                metaData[3].DatosTemporada[1].datosDelVideo[1].videoDescripcion:= 'S01E01';
                metaData[3].DatosTemporada[1].datosDelVideo[1].duracionSegundos:= 2800;
                metaData[3].DatosTemporada[1].datosDelVideo[1].visualizaciones:= 0;
                metaData[3].DatosTemporada[1].datosDelVideo[2].titulo:= 'the kingsroad';
                metaData[3].DatosTemporada[1].datosDelVideo[2].videoDescripcion:= 'S01E02';
                metaData[3].DatosTemporada[1].datosDelVideo[2].duracionSegundos:= 2800;
                metaData[3].DatosTemporada[1].datosDelVideo[2].visualizaciones:= 0;
                metaData[3].DatosTemporada[1].datosDelVideo[3].titulo:= 'lord snow';
                metaData[3].DatosTemporada[1].datosDelVideo[3].videoDescripcion:= 'S01E03';
                metaData[3].DatosTemporada[1].datosDelVideo[3].duracionSegundos:= 2800;
                metaData[3].DatosTemporada[1].datosDelVideo[3].visualizaciones:= 0;
                metaData[3].DatosTemporada[1].datosDelVideo[4].titulo:= 'cripples, bastards and broken things';
                metaData[3].DatosTemporada[1].datosDelVideo[4].videoDescripcion:= 'S01E04';
                metaData[3].DatosTemporada[1].datosDelVideo[4].duracionSegundos:= 2800;
                metaData[3].DatosTemporada[1].datosDelVideo[4].visualizaciones:= 0;
                metaData[3].DatosTemporada[1].datosDelVideo[5].titulo:= 'the wolf and the lion';
                metaData[3].DatosTemporada[1].datosDelVideo[5].videoDescripcion:= 'S01E05';
                metaData[3].DatosTemporada[1].datosDelVideo[5].duracionSegundos:= 2800;
                metaData[3].DatosTemporada[1].datosDelVideo[5].visualizaciones:= 0;
                metaData[3].DatosTemporada[1].datosDelVideo[6].titulo:= 'a golden crown';
                metaData[3].DatosTemporada[1].datosDelVideo[6].videoDescripcion:= 'S01E06';
                metaData[3].DatosTemporada[1].datosDelVideo[6].duracionSegundos:= 2800;
                metaData[3].DatosTemporada[1].datosDelVideo[6].visualizaciones:= 0;
                metaData[3].DatosTemporada[2].anoEmision:= '2012';
                metaData[3].DatosTemporada[2].numeroEpisodios:= 6;
                metaData[3].DatosTemporada[2].datosDelVideo[1].titulo:= 'the north remembers';
                metaData[3].DatosTemporada[2].datosDelVideo[1].videoDescripcion:= 'S02E01';
                metaData[3].DatosTemporada[2].datosDelVideo[1].duracionSegundos:= 2800;
                metaData[3].DatosTemporada[2].datosDelVideo[1].visualizaciones:= 0;
                metaData[3].DatosTemporada[2].datosDelVideo[2].titulo:= 'the night lands';
                metaData[3].DatosTemporada[2].datosDelVideo[2].videoDescripcion:= 'S02E02';
                metaData[3].DatosTemporada[2].datosDelVideo[2].duracionSegundos:= 2800;
                metaData[3].DatosTemporada[2].datosDelVideo[2].visualizaciones:= 0;
                metaData[3].DatosTemporada[2].datosDelVideo[3].titulo:= 'what is dead may never die';
                metaData[3].DatosTemporada[2].datosDelVideo[3].videoDescripcion:= 'S02E03';
                metaData[3].DatosTemporada[2].datosDelVideo[3].duracionSegundos:= 2800;
                metaData[3].DatosTemporada[2].datosDelVideo[3].visualizaciones:= 0;
                metaData[3].DatosTemporada[2].datosDelVideo[4].titulo:= 'garden of bones';
                metaData[3].DatosTemporada[2].datosDelVideo[4].videoDescripcion:= 'S02E04';
                metaData[3].DatosTemporada[2].datosDelVideo[4].duracionSegundos:= 2800;
                metaData[3].DatosTemporada[2].datosDelVideo[4].visualizaciones:= 0;
                metaData[3].DatosTemporada[2].datosDelVideo[5].titulo:= 'the ghost of harrenhal';
                metaData[3].DatosTemporada[2].datosDelVideo[5].videoDescripcion:= 'S02E05';
                metaData[3].DatosTemporada[2].datosDelVideo[5].duracionSegundos:= 2800;
                metaData[3].DatosTemporada[2].datosDelVideo[5].visualizaciones:= 0;
                metaData[3].DatosTemporada[2].datosDelVideo[6].titulo:= 'the old gods and the new';
                metaData[3].DatosTemporada[2].datosDelVideo[6].videoDescripcion:= 'S02E06';
                metaData[3].DatosTemporada[2].datosDelVideo[6].duracionSegundos:= 1800;
                metaData[3].DatosTemporada[2].datosDelVideo[6].visualizaciones:= 0;
                metaData[3].DatosTemporada[3].anoEmision:= '2013';
                metaData[3].DatosTemporada[3].numeroEpisodios:= 6;
                metaData[3].DatosTemporada[3].datosDelVideo[1].titulo:= 'valar dohaeris';
                metaData[3].DatosTemporada[3].datosDelVideo[1].videoDescripcion:= 'S03E01';
                metaData[3].DatosTemporada[3].datosDelVideo[1].duracionSegundos:= 2800;
                metaData[3].DatosTemporada[3].datosDelVideo[1].visualizaciones:= 0;
                metaData[3].DatosTemporada[3].datosDelVideo[2].titulo:= 'dark wings, dark words';
                metaData[3].DatosTemporada[3].datosDelVideo[2].videoDescripcion:= 'S03E02';
                metaData[3].DatosTemporada[3].datosDelVideo[2].duracionSegundos:= 2800;
                metaData[3].DatosTemporada[3].datosDelVideo[2].visualizaciones:= 0;
                metaData[3].DatosTemporada[3].datosDelVideo[3].titulo:= 'walk of punishment';
                metaData[3].DatosTemporada[3].datosDelVideo[3].videoDescripcion:= 'S03E03';
                metaData[3].DatosTemporada[3].datosDelVideo[3].duracionSegundos:= 2800;
                metaData[3].DatosTemporada[3].datosDelVideo[3].visualizaciones:= 0;
                metaData[3].DatosTemporada[3].datosDelVideo[4].titulo:= 'an now his watch is ended';
                metaData[3].DatosTemporada[3].datosDelVideo[4].videoDescripcion:= 'S03E04';
                metaData[3].DatosTemporada[3].datosDelVideo[4].duracionSegundos:= 2800;
                metaData[3].DatosTemporada[3].datosDelVideo[4].visualizaciones:= 0;
                metaData[3].DatosTemporada[3].datosDelVideo[5].titulo:= 'kissed by fire';
                metaData[3].DatosTemporada[3].datosDelVideo[5].videoDescripcion:= 'S03E05';
                metaData[3].DatosTemporada[3].datosDelVideo[5].duracionSegundos:= 2800;
                metaData[3].DatosTemporada[3].datosDelVideo[5].visualizaciones:= 0;
                metaData[3].DatosTemporada[3].datosDelVideo[6].titulo:= 'the climb';
                metaData[3].DatosTemporada[3].datosDelVideo[6].videoDescripcion:= 'S03E06';
                metaData[3].DatosTemporada[3].datosDelVideo[6].duracionSegundos:= 2800;
                metaData[3].DatosTemporada[3].datosDelVideo[6].visualizaciones:= 0;
                
                metaData[4].nombre:= 'Friends';
                metaData[4].descripcion:= 'la vida de amigos inseparables y amores floreciendo ';
                metaData[4].numeroTemporadas:= 3;
                metaData[4].DatosTemporada[1].anoEmision:= '1994';
                metaData[4].DatosTemporada[1].numeroEpisodios:= 6;
                metaData[4].DatosTemporada[1].datosDelVideo[1].titulo:= 'the pilot';
                metaData[4].DatosTemporada[1].datosDelVideo[1].videoDescripcion:= 'S01E01';
                metaData[4].DatosTemporada[1].datosDelVideo[1].duracionSegundos:= 1300;
                metaData[4].DatosTemporada[1].datosDelVideo[1].visualizaciones:= 0;
                metaData[4].DatosTemporada[1].datosDelVideo[2].titulo:= 'the sonogram at the end';
                metaData[4].DatosTemporada[1].datosDelVideo[2].videoDescripcion:= 'S01E02';
                metaData[4].DatosTemporada[1].datosDelVideo[2].duracionSegundos:= 1300;
                metaData[4].DatosTemporada[1].datosDelVideo[2].visualizaciones:= 0;
                metaData[4].DatosTemporada[1].datosDelVideo[3].titulo:= 'the one with the thumb';
                metaData[4].DatosTemporada[1].datosDelVideo[3].videoDescripcion:= 'S01E03';
                metaData[4].DatosTemporada[1].datosDelVideo[3].duracionSegundos:= 1400;
                metaData[4].DatosTemporada[1].datosDelVideo[3].visualizaciones:= 0;
                metaData[4].DatosTemporada[1].datosDelVideo[4].titulo:= 'the one with the george stephanopoiloulos';
                metaData[4].DatosTemporada[1].datosDelVideo[4].videoDescripcion:= 'S01E04';
                metaData[4].DatosTemporada[1].datosDelVideo[4].duracionSegundos:= 1500;
                metaData[4].DatosTemporada[1].datosDelVideo[4].visualizaciones:= 0;
                metaData[4].DatosTemporada[1].datosDelVideo[5].titulo:= 'the one with the butt';
                metaData[4].DatosTemporada[1].datosDelVideo[5].videoDescripcion:= 'S01E05';
                metaData[4].DatosTemporada[1].datosDelVideo[5].duracionSegundos:= 1400;
                metaData[4].DatosTemporada[1].datosDelVideo[5].visualizaciones:= 0;
                metaData[4].DatosTemporada[1].datosDelVideo[6].titulo:= 'the one with the blackout';
                metaData[4].DatosTemporada[1].datosDelVideo[6].videoDescripcion:= 'S01E06';
                metaData[4].DatosTemporada[1].datosDelVideo[6].duracionSegundos:= 1500;
                metaData[4].DatosTemporada[1].datosDelVideo[6].visualizaciones:= 0;
                metaData[4].DatosTemporada[2].anoEmision:= '1995';
                metaData[4].DatosTemporada[2].numeroEpisodios:= 6;
                metaData[4].DatosTemporada[2].datosDelVideo[1].titulo:= 'the one with the ross new girlfriend';
                metaData[4].DatosTemporada[2].datosDelVideo[1].videoDescripcion:= 'S02E01';
                metaData[4].DatosTemporada[2].datosDelVideo[1].duracionSegundos:= 1530;
                metaData[4].DatosTemporada[2].datosDelVideo[1].visualizaciones:= 0;
                metaData[4].DatosTemporada[2].datosDelVideo[2].titulo:= 'the one with the breast milk';
                metaData[4].DatosTemporada[2].datosDelVideo[2].videoDescripcion:= 'S02E02';
                metaData[4].DatosTemporada[2].datosDelVideo[2].duracionSegundos:= 1600;
                metaData[4].DatosTemporada[2].datosDelVideo[2].visualizaciones:= 0;
                metaData[4].DatosTemporada[2].datosDelVideo[3].titulo:= 'the one where heckles diess';
                metaData[4].DatosTemporada[2].datosDelVideo[3].videoDescripcion:= 'S02E03';
                metaData[4].DatosTemporada[2].datosDelVideo[3].duracionSegundos:= 1800;
                metaData[4].DatosTemporada[2].datosDelVideo[3].visualizaciones:= 0;
                metaData[4].DatosTemporada[2].datosDelVideo[4].titulo:= 'the one with phoebes husband';
                metaData[4].DatosTemporada[2].datosDelVideo[4].videoDescripcion:= 'S02E04';
                metaData[4].DatosTemporada[2].datosDelVideo[4].duracionSegundos:= 1500;
                metaData[4].DatosTemporada[2].datosDelVideo[4].visualizaciones:= 0;
                metaData[4].DatosTemporada[2].datosDelVideo[5].titulo:= 'the one with five steaks and an eggplant';
                metaData[4].DatosTemporada[2].datosDelVideo[5].videoDescripcion:= 'S02E05';
                metaData[4].DatosTemporada[2].datosDelVideo[5].duracionSegundos:= 1700;
                metaData[4].DatosTemporada[2].datosDelVideo[5].visualizaciones:= 0;
                metaData[4].DatosTemporada[2].datosDelVideo[6].titulo:= 'the one with the baby on the bus';
                metaData[4].DatosTemporada[2].datosDelVideo[6].videoDescripcion:= 'S02E06';
                metaData[4].DatosTemporada[2].datosDelVideo[6].duracionSegundos:= 1800;
                metaData[4].DatosTemporada[2].datosDelVideo[6].visualizaciones:= 0;
                metaData[4].DatosTemporada[3].anoEmision:= '1996';
                metaData[4].DatosTemporada[3].numeroEpisodios:= 6;
                metaData[4].DatosTemporada[3].datosDelVideo[1].titulo:= 'the one with the princess leia fantasy';
                metaData[4].DatosTemporada[3].datosDelVideo[1].videoDescripcion:= 'S03E01';
                metaData[4].DatosTemporada[3].datosDelVideo[1].duracionSegundos:= 1700;
                metaData[4].DatosTemporada[3].datosDelVideo[1].visualizaciones:= 0;
                metaData[4].DatosTemporada[3].datosDelVideo[2].titulo:= 'the one where no ones is ready';
                metaData[4].DatosTemporada[3].datosDelVideo[2].videoDescripcion:= 'S03E02';
                metaData[4].DatosTemporada[3].datosDelVideo[2].duracionSegundos:= 1800;
                metaData[4].DatosTemporada[3].datosDelVideo[2].visualizaciones:= 0;
                metaData[4].DatosTemporada[3].datosDelVideo[3].titulo:= 'the one with the jam';
                metaData[4].DatosTemporada[3].datosDelVideo[3].videoDescripcion:= 'S03E03';
                metaData[4].DatosTemporada[3].datosDelVideo[3].duracionSegundos:= 1800;
                metaData[4].DatosTemporada[3].datosDelVideo[3].visualizaciones:= 0;
                metaData[4].DatosTemporada[3].datosDelVideo[4].titulo:= 'the one the metaphorical tunnel';
                metaData[4].DatosTemporada[3].datosDelVideo[4].videoDescripcion:= 'S03E04';
                metaData[4].DatosTemporada[3].datosDelVideo[4].duracionSegundos:= 1800;
                metaData[4].DatosTemporada[3].datosDelVideo[4].visualizaciones:= 0;
                metaData[4].DatosTemporada[3].datosDelVideo[5].titulo:= 'the one with frank jr.';
                metaData[4].DatosTemporada[3].datosDelVideo[5].videoDescripcion:= 'S03E05';
                metaData[4].DatosTemporada[3].datosDelVideo[5].duracionSegundos:= 1800;
                metaData[4].DatosTemporada[3].datosDelVideo[5].visualizaciones:= 0;
                metaData[4].DatosTemporada[3].datosDelVideo[6].titulo:= 'the one with the flashback';
                metaData[4].DatosTemporada[3].datosDelVideo[6].videoDescripcion:= 'S03E06';
                metaData[4].DatosTemporada[3].datosDelVideo[6].duracionSegundos:= 1800;
                metaData[4].DatosTemporada[3].datosDelVideo[6].visualizaciones:= 0;
                {}
                {prueba de carga de datos chequeo}
                {writeln(metaData[1].nombre);
                writeln(metaData[1].DatosTemporada[2].datosDelVideo[5].visualizaciones);
                writeln( metaData[1].numeroTemporadas);}
                

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
            Randomize;
                writeln('indique visualizaciones a generar');
                readln(nroVisualizacionesAGenerar);
                for i :=1 to nroVisualizacionesAGenerar do
                begin
                    
                    serieACargar:=4;
                    temporadaValida := Random(2);
                    episodioValido:= Random(5);
                    inc(temporadaValida,1);
                    Inc(episodioValido,1);
                   {con el inc le prevengo de que tire 0 y rompa el programa y al al ponerle -1 a la cantidad que tiene evito que se salga del array}
                    
                    Inc(seriesCargadas[serieAcargar].DatosTemporada[temporadaValida].datosDelVideo[episodioValido].visualizaciones, 1);
                    usuario[1].recordVisualizaciones.CantVisualizaciones := seriesCargadas[serieAcargar].DatosTemporada[temporadaValida].datosDelVideo[episodioValido].visualizaciones;
                end;
            end;
            
        end;
        {explorador de series}
procedure explorador(var metadata:  series; seriesCargadas:byte);
var
            seleccion: string[1];
            aux, aux2,aux3,i,j,k: byte;

begin
    aux:=0;
    aux2:=0;
    aux3:=0;

    while aux=0 do
    begin
        
     writeln('elija serie que desea ver');
        for i := 1 to seriesCargadas-1 do
        begin
         write(i);
         
         writeln('_serie: ',metadata[i].nombre);
         
            
        end;
        
       writeln('ahora elija');
        {{$I-}}
        readln(seleccion);
        {{$I+}}
        if(IOResult=0)then
        
            case seleccion of
            '1': aux:=1 ;
            '2':aux:=2;
            '3': aux:=3;
            '4': aux:=4;
            '5': aux:=5;
            '0':;
            else
            writeln('elija una opcion correcta');
            end
            
            {else}
           
            end;
            writeln('elija una temporada, para salir ponga una opcion incorrecta');
            for i := 1 to metadata[aux].numeroTemporadas do
            begin
             
             writeln('serie_elegida: ',metadata[aux].nombre);
             write(i);
             writeln('_emitida: ', metadata[aux].DatosTemporada[i].anoEmision);
             
                
            end;

             {{$I-}}
            readln(seleccion);
            {{$I+}}
            if(IOResult=0)then
        
            case seleccion of
            '1': aux2:=1 ;
            '2':aux2:=2;
            '3': aux2:=3;
            '4': aux2:=4;
            '5': aux2:=5;
            '0':;
            else
            writeln('elija una opcion correcta');
            end;
    
            {else}
            
            for i := 1 to metadata[aux].DatosTemporada[aux2].numeroEpisodios do
            begin
             
             writeln('episodio: ', metadata[aux].DatosTemporada[aux2].datosDelVideo[i].titulo);
             writeln('duracion: ',duracion(metadata[aux].DatosTemporada[aux2].datosDelVideo[i].duracionSegundos));
             {writeln('visto', metadata[aux].DatosTemporada[aux2].datosDelVideo[i].visualizaciones);}
             {me quedo en duda si realmente tengo que mostrarlas porque dice que muestra la serie con las visualizaciones pero despues dice que muestre solo nombre y tiempo}
               
            end;

            
     
    
end;
   
        {procedure ranking}
            procedure verRanking(var metaData:  series; var seriesCargadas: byte);
var i,j,k, y:byte;
    top5: array[1..cant_top] of tranking;{copiar lo que sea metadata mejor}
    aux, aux2: tranking;

begin
    for i := 1 to cant_top do
        begin

           top5[i].episodio:='nada';
           top5[i].nombreDeSerie:='sin nombre';
           top5[i].visualizaciones:=0;
           
        end;
        for i:=1 to seriesCargadas Do{hay poner algo que diga la cantidad de series que hay actualmente}
        begin
        
        
            for j := 1 to metaData[i].numeroTemporadas do
            begin
            
           
                for k := 1 to metaData[i].DatosTemporada[j].numeroEpisodios do
                begin
               
                
                    if top5[cant_top].visualizaciones<metaData[i].DatosTemporada[j].datosDelVideo[k].visualizaciones then{revisa si supera }
                    begin
                        
                        aux.episodio:=metaData[i].DatosTemporada[j].datosDelVideo[k].titulo;
                        aux.nombreDeSerie:=metaData[i].nombre;
                        aux.visualizaciones:=metaData[i].DatosTemporada[j].datosDelVideo[k].visualizaciones;
                        for y := 1 to cant_top do
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
        for i := 1 to cant_top do
        begin
            writeln('puesto ',i, ' ',top5[i].nombreDeSerie,' ',top5[i].episodio);
            writeln('visto:', top5[i].visualizaciones);
        end;
end;
        {fin procediure ranking}
var
   cargaDeSeries : array[1..MAX_SERIES] of serie;
   usuariosRegistrados:ArrayInfoPorUsuario    ;
   seriesCargadas : series;
    a, b : integer;
   inicioDePrograma: integer;
{variable de pantalla}
   var opcion:char;
        seriesEnNetflix:byte;

begin
        usuariosRegistrados[1].usuarios := 'usuario';
        writeln('bienvenido a NETFLIX');
        writeln('cargando los contenidos en el sistema...');
        cargar_datos(cargaDeSeries);
        

        {inicio de pantalla}
        seriesEnNetflix:=length(seriesCargadas);
        writeln('bienvenido a netflix ver. Trabajo Practico');
writeln('1_elegir serie para ver');
writeln('2_cargar visuializaciones');{la opcional}
writeln('3_ver top 5 series');
{writeln('4_ver todas las visuializaciones');}
writeln('0_salir');
opcion:='9';


while(opcion<>'0') do
    begin
    {{$I-}}
    readln(opcion);
    {{$I+}}
    if(IOResult=0)then
        
            case opcion of
            '1': explorador(cargaDeSeries,seriesEnNetflix) ;
            '2': cargar_visualizaciones(cargaDeSeries,usuariosRegistrados);
            '3': verRanking(cargaDeSeries,seriesEnNetflix);
            {'4': writeln('olimar');}
            else
            writeln('escriba una opcion correcta por favor');
            end
    
    else
    writeln();{agregado porque por alguna razon se come el primer writeln cuando esta en el ciclo}
    writeln('1_elegir serie para ver');
    writeln('2_ver series vistas');{la opcional}
    writeln('3_ver top 5 series');
    {writeln('4_ver todas las visuializaciones');}
    writeln('0_salir');
    end;
    {fin de pantalla}
end.
