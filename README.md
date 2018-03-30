# calculadora
calculadora estadistica

clear all
clc
close all
display('Bienvenido a la calculadora estadistica, espero la disfrutes')
datos=input('ingrese sus datos entre [# #] y separado por espacios si son datos no agrupado \n si sus datos son agrupados ingrese los datos entre [#:# #:#] y el rango separado por :, ejemplo -1:2- :  \n');
undatos=unique(datos);
ndatos=size(undatos);
mfreq=zeros(ndatos);
tablaf=tabulate(datos);
