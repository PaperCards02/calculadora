function [tabla]=tablaNoGroup(datos)
tablaf=tabulate(datos);
clase=tablaf(:,1);
fi=tablaf(:,2);
FI=cumsum(tablaf(:,2));
hi=tablaf(:,3);
HI=cumsum(tablaf(:,3));
tabla=table(clase,fi,FI,hi,HI);
end