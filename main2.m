% Autores:Andres Facunda,Daniela Jácome,Gabriel Vivas.
% Fecha: 06/07/2019
clc; % borra el contenido del workspace
close all; % cierra todos los gráficos creados por Matlab
clear all;  % Borra de la memoria RAM todas las variables creadas por Matlab
warning off all; % Desabilita todas las advertencias que puede generar Matlab
% obtenemos los datos de archivo 
a='tsp_100_1';
fileID = fopen(a,'r');
formatSpec = '%f %f';
sizeA = [2 Inf];
A = fscanf(fileID,formatSpec,sizeA);
A=A';
%  guardamos la cantidad de nodos en pMax
pMax=A(1,1);
% acomodamos las coordenadas de los nodos
A=[A(1:pMax,2),A(2:pMax+1,1)];
% creamos y llenamos la matriz de adyacencia
ordenVertices=agenteViajeroMax(A,pMax)
dibNodosEnOrden(ordenVertices,A);

%plot(p1(:,1),p1(:,2),'-*',p2(:,1),p2(:,2),'r-*');

