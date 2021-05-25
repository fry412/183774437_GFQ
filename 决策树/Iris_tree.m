function [ tree ] = Iris_tree(attrib,P)
%PΪ���ྫȷ��
%value��¼���ֵ����Ժ;���ֵ
tree = struct('value', 'null', 'left', 'null', 'right', 'null');
%�ֱ���������������������ֱ�ĸ���
numberExamples = length(attrib(:,1));
    num_class_1=sum(attrib(:,5)==1);
    num_class_2=sum(attrib(:,5)==2);
    num_class_3=sum(attrib(:,5)==3);
    %��ʼ�ڵ����
I_parent=-((num_class_1/numberExamples)*log(num_class_1/numberExamples)+(num_class_2/numberExamples)*log(num_class_2/numberExamples)+(num_class_3/numberExamples)*log(num_class_3/numberExamples));
% �ڵ���min
[point,class,num_diff,gain]=Gain(attrib);
if  num_class_1>max( num_class_2, num_class_3)
tree.value=1;
else if num_class_2< num_class_3
        tree.value=3;
    else
        tree.value=2;
    end
end
if I_parent>gain
 
tree.value=[class,point];
% ����ѡ�е���������
attrib=sortrows(attrib,class);
%�����������Ӽ�
attrib_0=attrib(1:num_diff,:);
%�����������Ӽ�
attrib_1=attrib(num_diff:end,:);
%���������Ӽ�
%�����������ǿյģ��Ͳ���Ҫ�ټ�������
if ~isempty(attrib_0)
 
num_0=length(attrib_0(:,1));
    value_class_1=sum(attrib_0(:,5)==1);
    value_class_2=sum(attrib_0(:,5)==2);
    value_class_3=sum(attrib_0(:,5)==3);
 
if  value_class_1>max( value_class_2, value_class_3)
tree.left=1;
else if  value_class_2< value_class_3
        tree.left=3;
    else
        tree.left=2;
    end
end
 
 
if num_0~=bijiao( value_class_1, value_class_2, value_class_3) && bijiao( value_class_1, value_class_2, value_class_3)/num_0<P
    tree.left=Iris_tree(attrib_0,P);
end
end
 
if ~isempty(attrib_1)
 
num_1=length(attrib_1(:,1));
    value_class_1=sum(attrib_1(:,5)==1);
    value_class_2=sum(attrib_1(:,5)==2);
    value_class_3=sum(attrib_1(:,5)==3);
 
if  value_class_1>max( value_class_2, value_class_3)
tree.right=1;
else if  value_class_2< value_class_3
        tree.right=3;
    else
        tree.right=2;
    end
end
 
if num_1~=bijiao( value_class_1, value_class_2, value_class_3) && bijiao( value_class_1, value_class_2, value_class_3)/num_1<P
    tree.right=Iris_tree(attrib_1,P);
end
end
end
end