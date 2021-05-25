%将数据集载入
function [attrib]=iris_tree_preprocess()
[attrib1,attrib2,attrib3,attrib4,class]=textread('E:\iris\iris.data.txt','%f%f%f%f%s','delimiter',',');
a=zeros(150,1);
a(strcmp(class,'Iris-setosa'))=1;
a(strcmp(class,'Iris-versicolor'))=2;
a(strcmp(class,'Iris-virginica'))=3;
for i=1:150
    attrib(i,1)=attrib1(i);
    attrib(i,2)=attrib2(i);
    attrib(i,3)=attrib3(i);
    attrib(i,4)=attrib4(i);
    attrib(i,5)=a(i);
end
end
