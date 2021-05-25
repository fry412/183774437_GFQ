%根据精确度90%的决策树对数据进行检验
[attrib]=iris_tree_preprocess();
for i=1:150
    if attrib(i,3)<1.9
        attrib(i,6)=1;
    else if attrib(i,4)>1.8
            attrib(i,6)=3;
        else if attrib(i,3)>4.9
                attrib(i,6)=3;
            else attrib(i,6)=2;
            end
        end
    end
end
n=0;
for i=1:150
    if attrib(i,5)==attrib(i,6)
        n=n+1;
    end
end
accuracy=100*n/150;
fprintf('The accuracy is %0.2f%%\n',accuracy);