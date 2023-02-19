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
%display the graph corresponding to the adjacency matrix
bg=biograph(MatAdj);
set(bg,'ShowArrows','Off');
h=view(bg);
set(h.nodes,'shape','circle');
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
end
%if verifier(MatAdj,X,N)==1
 disp('graph is 4-coloriable');
%else
 disp('graph is not 4-coloriable');
%end
