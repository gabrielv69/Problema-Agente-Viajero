% Autores:Andres Facunda,Daniela Jácome,Gabriel Vivas.
% Fecha: 06/07/2019

function w =llenarDistancia(A,pMax,fila)
    
    for j=1:pMax
        % Se calcula la distancia entre todos los puntos y se guarda
         w(j)= sqrt((A(fila,1)-A(j,1))^2 + (A(fila,2)-A(j,2))^2);
    end
    w(fila)=NaN;
return