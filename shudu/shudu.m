matrix=dlmread('data.txt','');
disp(matrix);
solve(matrix,1);

% for num=1:9
%     result=check_cell(matrix,3,4,num);
%     disp([num result]);
% end
% i=4,j=8;
% block_row=floor((i-1) /3)+1;
% block_col=floor((j-1) /3)+1;
% disp([block_row,block_col]);