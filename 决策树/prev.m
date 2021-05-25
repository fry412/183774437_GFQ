%遍历树 并产生可以被treeplot用来画图的结点序列
function [A,i]=prev(tree,A,i,j)
if isstruct(tree)==1 && (strcmp(tree.left,'null')==0 || strcmp(tree.right,'null')==0)
   A{i,1}=tree.value;
   A{i,2}=j;
   i=i+1;j=i-1;
   [A,i]=prev(tree.left,A,i,j);
   i=i+1;
   [A,i]=prev(tree.right,A,i,j);
else if isstruct(tree)==1 && strcmp(tree.left,'null')==1 && strcmp(tree.right,'null')==1
        A{i,1}=tree.value;
        A{i,2}=j;
    else
    A{i,1}=tree;
    A{i,2}=j;
    end
end
end