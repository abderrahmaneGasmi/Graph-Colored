function c = colorer( MatAdj,N)
color=[1,2,3,4,5,6,7,8,9,10,11];
c=[1];
for i=2:N
sommetColored = length(c);
temp = [1,2,3,4];
   for j=1:sommetColored
    if verifier(MatAdj,j,i)==0
       adjacentColor = c(j);
       
   temp(temp==adjacentColor)= [];

    end

   end
   if length(temp) ~=0
 c=[c temp(1)];
   else
        disp('le graphe nest pas  4-coloriable');
        break;
     end  
temp = [1,2,3,4];
end
end
