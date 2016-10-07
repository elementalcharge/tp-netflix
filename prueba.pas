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
                metaData[2].nombre:= 'Friends';
                metaData[2].descripcion:= 'descripcion de la serie';
                metaData[2].numeroTemporadas:= 2;
                metaData[2].DatosTemporada[1].anoEmision:= '1999';
                metaData[2].DatosTemporada[1].numeroEpisodios:= 13;
                metaData[2].DatosTemporada[1].datosDelVideo[1].titulo:= 'Tarjeta de Navidad';
                metaData[2].DatosTemporada[1].datosDelVideo[1].videoDescripcion:= 'S01E01';
                metaData[2].DatosTemporada[1].datosDelVideo[1].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[1].datosDelVideo[1].visualizaciones:= 0;
                metaData[2].DatosTemporada[1].datosDelVideo[2].titulo:= 'Diagnostico Receptopico';
                metaData[2].DatosTemporada[1].datosDelVideo[2].videoDescripcion:= 'S01E02';
                metaData[2].DatosTemporada[1].datosDelVideo[2].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[1].datosDelVideo[2].visualizaciones:= 0;
                metaData[2].DatosTemporada[1].datosDelVideo[3].titulo:= 'Seguro de Desempleo';
                metaData[2].DatosTemporada[1].datosDelVideo[3].videoDescripcion:= 'S01E03';
                metaData[2].DatosTemporada[1].datosDelVideo[3].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[1].datosDelVideo[3].visualizaciones:= 0;
                metaData[2].DatosTemporada[1].datosDelVideo[4].titulo:= 'El testigo espanol';
                metaData[2].DatosTemporada[1].datosDelVideo[4].videoDescripcion:= 'S01E04';
                metaData[2].DatosTemporada[1].datosDelVideo[4].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[1].datosDelVideo[4].visualizaciones:= 0;
                metaData[2].DatosTemporada[1].datosDelVideo[5].titulo:= 'El Joven Simulador';
                metaData[2].DatosTemporada[1].datosDelVideo[5].videoDescripcion:= 'S01E05';
                metaData[2].DatosTemporada[1].datosDelVideo[5].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[1].datosDelVideo[5].visualizaciones:= 0;
                metaData[2].DatosTemporada[2].anoEmision:= '2003';
                metaData[2].DatosTemporada[2].numeroEpisodios:= 12;
                metaData[2].DatosTemporada[2].datosDelVideo[1].titulo:= 'Los Cuatro Notables';
                metaData[2].DatosTemporada[2].datosDelVideo[1].videoDescripcion:= 'S02E01';
                metaData[2].DatosTemporada[2].datosDelVideo[1].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[2].datosDelVideo[1].visualizaciones:= 0;
                metaData[2].DatosTemporada[2].datosDelVideo[2].titulo:= 'Z-9000';
                metaData[2].DatosTemporada[2].datosDelVideo[2].videoDescripcion:= 'S02E02';
                metaData[2].DatosTemporada[2].datosDelVideo[2].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[2].datosDelVideo[2].visualizaciones:= 0;
                metaData[2].DatosTemporada[2].datosDelVideo[3].titulo:= 'La Gargantilla de las Cuatro Estaciones';
                metaData[2].DatosTemporada[2].datosDelVideo[3].videoDescripcion:= 'S02E03';
                metaData[2].DatosTemporada[2].datosDelVideo[3].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[2].datosDelVideo[3].visualizaciones:= 0;
                metaData[2].DatosTemporada[2].datosDelVideo[4].titulo:= 'El Clan Motul';
                metaData[2].DatosTemporada[2].datosDelVideo[4].videoDescripcion:= 'S02E04';
                metaData[2].DatosTemporada[2].datosDelVideo[4].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[2].datosDelVideo[4].visualizaciones:= 0;
                metaData[2].DatosTemporada[2].datosDelVideo[5].titulo:= 'El Vengador Infantil';
                metaData[2].DatosTemporada[2].datosDelVideo[5].videoDescripcion:= 'S02E05';
                metaData[2].DatosTemporada[2].datosDelVideo[5].duracionSegundos:= 1800;
                metaData[2].DatosTemporada[2].datosDelVideo[5].visualizaciones:= 0;

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
                writeln('indique visualizaciones a generar');
                readln(nroVisualizacionesAGenerar);
                for i :=1 to nroVisualizacionesAGenerar do
                begin
                    {Randomize       ;}
                    serieACargar:=1;
                    temporadaValida := Random(1);
                    episodioValido:= Random(4);
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

    while seleccion<>'0' do
    begin
        
     writeln('elija serie que desea ver o 0 para salir');
        for i := 1 to seriesCargadas-1 do
        begin
         writeln(i);
         
         writeln(' serie: ',metadata[i].nombre);
         
            
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
    
            else
           
            end;
            writeln('elija una temporada');
            for i := 1 to metadata[aux].numeroTemporadas-1 do
            begin
             writeln(i);
             writeln(metadata[aux].nombre);
             writeln(metadata[aux].numeroTemporadas);
             writeln('aca hay temporada', metadata[aux].DatosTemporada[i].anoEmision);
             readln();
                writeln(i,'',metadata[aux].nombre);
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
            end
    
            else
            writeln('elija un episodio');
            for i := 1 to metadata[aux].DatosTemporada[aux2].numeroEpisodios do
            begin
             writeln(i);
             writeln(metadata[aux].DatosTemporada[aux2].numeroEpisodios);
             writeln('episodio', metadata[aux].DatosTemporada[aux2].datosDelVideo[i].titulo);
             writeln('duracion', metadata[aux].DatosTemporada[aux2].datosDelVideo[i].duracionSegundos);
             writeln('visto', metadata[aux].DatosTemporada[aux2].datosDelVideo[i].visualizaciones);
             readln();
               
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
        writeln('primer for',i);
        readln();
            for j := 1 to metaData[i].numeroTemporadas do
            begin
            writeln('segundo for',metaData[i].DatosTemporada[j].numeroEpisodios);
            readln();
                for k := 1 to metaData[i].DatosTemporada[j].numeroEpisodios do
                begin
                writeln('tercer for',metaData[i].DatosTemporada[j].datosDelVideo[k].visualizaciones);
                readln();
                    if top5[cant_top].visualizaciones<metaData[i].DatosTemporada[j].datosDelVideo[k].visualizaciones then{revisa si supera }
                    begin
                        writeln('cumplio la condicion', metaData[i].DatosTemporada[j].datosDelVideo[k].titulo);
                        aux.episodio:=metaData[i].DatosTemporada[j].datosDelVideo[k].titulo;
                        aux.nombreDeSerie:=metaData[i].nombre;
                        aux.visualizaciones:=metaData[i].DatosTemporada[j].datosDelVideo[k].visualizaciones;
                        for y := 1 to cant_top-1 do
                        begin
                            writeln('intercambiando', aux.nombreDeSerie);
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
        for i := 1 to cant_top-1 do
        begin
            writeln('puesto ',i, '',top5[i].nombreDeSerie,'',top5[i].episodio);
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
        writeln(CargaDeSeries[1].DatosTemporada[1].numeroEpisodios);
       

        {inicio de pantalla}
        seriesEnNetflix:=length(seriesCargadas);
        writeln('bienvenido a netflix ver. Trabajo Practico');
writeln('1_elegir serie para ver');
writeln('2_cargar visuializaciones');{la opcional}
writeln('3_ver top 5 series');
writeln('4_ver todas las visuializaciones');
writeln('0_salir');
opcion:='9';
writeln('nombre de serie ',cargaDeSeries[1].nombre);
                writeln(cargaDeSeries[1].DatosTemporada[2].datosDelVideo[5].visualizaciones);
                writeln( cargaDeSeries[1].numeroTemporadas);

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
            '4': writeln('olimar');
            else
            writeln('escriba una opcion correcta por favor');
            end
    
    else
    
    writeln('1_elegir serie para ver');
    writeln('2_ver series vistas');{la opcional}
    writeln('3_ver top 5 series');
    writeln('4_ver todas las visuializaciones');
    writeln('0_salir');
    end;
    {fin de pantalla}
end.
