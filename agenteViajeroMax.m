% Autores:Andres Facunda,Daniela Jácome,Gabriel Vivas.
% Fecha: 06/07/2019
function d=agenteViajeroMax(A,pMax)
% Esta funcion implementa el algoritm del agenteViajero 
%copia la matriz adyacente y pone ceros donde tenga NaN

% nodo que comienza el recorrido y la distancia
indice=1;
distanciaTotal=0;
% se pone NaN en toda la columna del indice para evitar que vuelva ha ser
% usado

% vector inicial donde se guardan el orden de los nodos
ordenDelViaje=[1,1];
w(ordenDelViaje)=NaN
%iteracion de n vertices -1
for i=1:(pMax-1)
    w=llenarDistancia(A,pMax,indice);
    w(ordenDelViaje)=NaN;
    distancia=inf;
    % obtenemos el vertice con menor distancia 
    [dummy,indice]=min(w(:));
    % se calcula la menor distancia triangular entre el vertice a insertar
    % y los anteriores
    for j=1:(length(ordenDelViaje)-1) 
        aux1=sqrt((A(ordenDelViaje(j) ,1)-A(indice,1))^2 + (A(ordenDelViaje(j),2)-A(indice,2))^2)+...
            sqrt((A(ordenDelViaje(j+1),1)-A(indice,1))^2 + (A(ordenDelViaje(j+1),2)-A(indice,2))^2)-...
            sqrt((A(ordenDelViaje(j+1),1)-A(ordenDelViaje(j),1))^2 + (A(ordenDelViaje(j+1),2)-A(ordenDelViaje(j),2))^2);
        if distancia>aux1      
            distancia=aux1;
            aux=j;
        end
    end
    distanciaTotal=distancia+distanciaTotal;
    % se inserta el indice en la posicion entre los vertices con menor
    % distancia triangular 
    ordenDelViaje=[ordenDelViaje(1:aux),indice,ordenDelViaje(aux+1:end)] 
end
disp( 'Distancia recorrida:');
disp(distanciaTotal);
d=ordenDelViaje;
return
