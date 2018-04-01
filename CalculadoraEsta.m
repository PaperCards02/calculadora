clear all
 clc
close all
display('Bienvenido a la calculadora estadistica, espero la disfrutes')
tipo=input('Si sus datos son NO agrupados presione (1), si sus datos son agrupados presione (2): \n');
switch tipo
    case 1 %DATOS NO AGRUPADOS
        datos=input('ingrese sus datos así [# # #...], separados por espacio: \n');
        [tabla]=tablaNoGroup(datos);       
        display(tabla)
        quiero=input('¿Qué desea calcular?, si desea calcular mediana, media y moda presione (1),\n Si desea calcular la varianza y la desviación estandar presione (2),\n Si desea calcular el percentil # presione (3), \n Si desea observar el histograma (4): \n Si desea realizar todo lo anterior presione (5): \n');
        switch quiero
            case 1 %medidas de tendencia central
                media=mean(datos);
                mediana=median(datos);
                moda=mode(datos);
                mtc=table(media,mediana,moda);
                display(mtc)
            case 2 %medidas de disperción
                varianza=var(datos);
                desviacionstd=std(datos);
                mdisp=table(varianza,desviacionstd);
                display(mdisp)
            case 3 %Percentil
                p=input('¿Qué percentil desea calcular?, recuerde que es un ranfo de 1 a 100: \n');
                percentil=prctile(datos,p);
                display(percentil)
            case 4 %histograma
                h=histogram(datos);
            case 5
                media=mean(datos);
                mediana=median(datos);
                moda=mode(datos);
                mtc=table(media,mediana,moda);
                display(mtc)
                 varianza=var(datos);
                desviacionstd=std(datos);
                mdisp=table(varianza,desviacionstd);
                display(mdisp)
                h=histogram(datos);
                p=input('¿Qué percentil desea calcular?, recuerde que es un ranfo de 1 a 100: \n');
                percentil=prctile(datos,p);
                display(percentil)
            otherwise
                warning('El valor ingresado no concuerda con la instrucción')
        end
    case 2 %DATOS AGRUPADOS
        datos=input('ingrese sus datos así: \n');
%          sacas tabla de frecuencias      
        display(tabla)
        quiero=input('¿Qué desea calcular?, si desea calcular mediana, media y moda presione (1),\n Si desea calcular la varianza y la desviación estandar presione (2),\n Si desea calcular el percentil # presione (3), \n Si desea observar el histograma (4): \n Si desea realizar todo lo anterior presione (5): \n');
        switch quiero
            case 1 %medidas de tendencia central
              
            case 2 %medidas de disperción
               
            case 3 %Percentil
               
            case 4 %histograma
                
            otherwise
                warning('El valor ingresado no concuerda con la instrucción')
        end 
                
    otherwise
        warning('El valor ingresado no concuerda con la instrucción')     
              

end
    






