P=0.89;%���ྫȷ��
[attrib]=iris_tree_preprocess();
tree= Iris_tree(attrib,P);
A=cell(1,1);
[A,]=prev(tree,A,1,0);
print_tree(A,P);
