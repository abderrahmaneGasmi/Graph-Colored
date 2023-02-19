clc;
close all;
f=fopen('myciel3.txt','r');
N=fscanf(f,'%5d',[1,1]); 
M=fscanf(f,'%5d',[1,1]); 
MatAdj=zeros(N,N);
R=fscanf(f,'%5d',[2,M]);
for i=1:M
 MatAdj(R(1,i),R(2,i))=1;
end
%affichage du graphe corresondant à la matrice d’adjacences MatAdj
bg=biograph(MatAdj); %affichage du graphe corresondant à la matrice d’adjacences MatAdj
set(bg,'ShowArrows','Off');
h=view(bg);
set(h.nodes,'shape','circle');
%X=[1 2 3 4 1 3 2 3 3 1 4];
%X=colorer(MatAdj,N);
%X=colorer2(MatAdj,N);
X=colorer3(MatAdj,N);
for i=1:N
 if X(i)==1
 set(h.nodes(i), 'color', [1 0 0]);
 end
 if X(i)==2
 set(h.nodes(i), 'color', [0 0.5 1]);
 end
 if X(i)==3
 set(h.nodes(i), 'color', [0 1 1]);
 end
 if X(i)==4
 set(h.nodes(i), 'color', [1 1 0]);
 end
  if X(i)==7
 set(h.nodes(i), 'color', [0.5 1 0.5]);
 end
end
%if verifier(MatAdj,X,N)==1
 disp('le graphe est 4-coloriable');
%else
 disp('le graphe n''est pas 4-coloriable');
%end
