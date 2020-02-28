function result= check_col(matrix,i,j,num)
result=true;
for col=1:9
    if matrix(i,col)==num
        result=false;
        break;
    end
end
         
end

