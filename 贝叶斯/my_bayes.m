%高斯朴素贝叶斯分类器
clc
clear
close all

[attrib]=iris_tree_preprocess();
for j=1:10
numberExamples=length(attrib(:,1));
rand_num=randperm(numberExamples);%randperm从1到n的随机排列
ratio=0.8;
train_num=ratio*numberExamples;
test_num=numberExamples-train_num;
data=attrib(rand_num,(1:4));
labels=attrib(rand_num,5);

% normalization,归一化，将所有的属性都化到0~1
maxV = max(data);
minV = min(data);
range = maxV-minV;
newdataMat = (data-repmat(minV,[numberExamples,1]))./(repmat(range,[numberExamples,1]));

%将归一化后的数据集分成训练集和测试集
newtrain_dataMat=newdataMat(1:train_num,:);
newtest_dataMat=newdataMat(train_num+1:end,:);
train_labels=labels(1:train_num);
test_labels=labels(train_num+1:end);

dataMat_1=newtrain_dataMat(find(train_labels==1),:);
dataMat_2=newtrain_dataMat(find(train_labels==2),:);
dataMat_3=newtrain_dataMat(find(train_labels==3),:);
%计算每个类别的平均值和标准偏差 
mean_1=mean(dataMat_1);
std_1=std(dataMat_1);
mean_2=mean(dataMat_2);
std_2=std(dataMat_2);
mean_3=mean(dataMat_3);
std_3=std(dataMat_3);

right_predict=0;
for i=1:test_num
    %B = prod(A,dim)沿着指定的dim标量的维计算A矩阵的乘积。注：dim=2表示沿行计算。
    %y = normpdf(x,mu,sigma) 返回具有均值 mu 和标准差 sigma 的正态分布的 pdf，在 x 中的值处计算函数值。
        prob_1=prod( normpdf(newtest_dataMat(i,:),mean_1,std_1) ,2);
        prob_2=prod( normpdf(newtest_dataMat(i,:),mean_2,std_2) ,2);
        prob_3=prod( normpdf(newtest_dataMat(i,:),mean_3,std_3) ,2);
        max_prob=max([prob_1,prob_2,prob_3]);
        if max_prob==prob_1
            predict_class=1;
        elseif max_prob==prob_2
            predict_class=2;
        else 
            predict_class=3;
        end
    %fprintf('predict class is：%d  true result is：%d \n',[predict_class , test_labels(i)] );
    newdataMat(i,6)= predict_class;
    newdataMat(i,5)= test_labels(i);
    if predict_class == test_labels(i)
        right_predict=right_predict+1;
    end
   
end
accuracy(1,j)=100*right_predict/test_num;
end
% fprintf('the accuracy of the classifiter is %0.2f%%\n',100*right_predict/test_num)
accuracy


