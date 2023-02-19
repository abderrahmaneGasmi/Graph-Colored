function c = colorer2( MatAdj,N)
color=[1,2,3,4,5,6,7,8,9,10,11];
c=[0,0,0,0,0,0,0,0,0,0,0];
maxdeg = [];
co = 1;
counter = 0;
for i=1:N
   for j=1:N
    if verifier(MatAdj,j,i)==0 || verifier(MatAdj,i,j)==0
    counter=counter+1;
    end
    end
maxdeg = [maxdeg counter];
counter=0;
end
[val,i]=max(maxdeg);   
c(i)= 1;
maxdeg(i)=0;


while co<N
[val,i]=max(maxdeg);      
temp = [1,2,3,4];
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

end
end


