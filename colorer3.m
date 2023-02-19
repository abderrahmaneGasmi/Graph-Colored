function c = colorer2( MatAdj,N)
degree = []
color=[1,2,3,4,5,6,7,8,9,10,11];
c=[0,0,0,0,0,0,0,0,0,0,0];
dsat = [];
b=0;
co = 1;
for i=1:N
   for j=1:N
    if verifier(MatAdj,j,i)==0 || verifier(MatAdj,i,j)==0
    b=b+1;
    end
    end
degree = [degree b];
b=0;
end

[val,i]=max(degree);   
c(i)= 1;
maxdeg(i)=0;

for i=1:N
    dsat = [dsat degree(i)];
end


while co<N
    maxDsat = find(dsat(:)== max(dsat(:)));    

    i = maxDsat(1);
  temp = [1,2,3,4];
  c(10)=4;
   for j=1:length(c)
    if  verifier(MatAdj,j,i)==0 || verifier(MatAdj,i,j)==0 
        if c(j)~=0
       adjacentColor = c(j);
   temp(temp==adjacentColor)= [];
        end
   end
   if length(temp) ~=0
      c(i)= temp(1);
   else
        disp('le graphe nest pas  4-coloriable');
        break;
     end  

end
  temp = [1,2,3,4];
maxdeg(i)=0;
co = co+1;  

dsat(i)=0;
numberColored = 0;
for i=1:length(degree)
    if dsat(i)~=0
        for j=1:N
             if verifier(MatAdj,j,i)==0 || verifier(MatAdj,i,j)==0
                     numberColored=numberColored+1;
             end
           dsat(i)=numberColored;
    end
    end
numberColored=0;
end
end

end

