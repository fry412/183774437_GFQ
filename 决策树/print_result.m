figure(1);
P=0.45;%���ྫȷ��
[attrib]=iris_tree_preprocess();
tree= Iris_tree(attrib,P);
A=cell(1,1);
[A,]=prev(tree,A,1,0);
subplot(2,2,1);
print_tree(A,P);

P=0.85;%���ྫȷ��
[attrib]=iris_tree_preprocess();
tree= Iris_tree(attrib,P);
A=cell(1,1);
[A,]=prev(tree,A,1,0);
subplot(2,2,2);
print_tree(A,P);

P=0.90;%���ྫȷ��
[attrib]=iris_tree_preprocess();
tree= Iris_tree(attrib,P);
A=cell(1,1);
[A,]=prev(tree,A,1,0);
subplot(2,2,3);
print_tree(A,P);

P=1;%���ྫȷ��
[attrib]=iris_tree_preprocess();
tree= Iris_tree(attrib,P);
A=cell(1,1);
[A,]=prev(tree,A,1,0);
subplot(2,2,4);
print_tree(A,P);