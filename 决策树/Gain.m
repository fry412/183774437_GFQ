function [point,class,num_diff,gain_pre]=Gain(attrib)
%求熵，并根据最小熵进行划分子集
%point指划分的数值
%class指划分类别
%num_diff指划分的小子集基数
%得到某结点熵最小的划分属性和划分的具体数值

%sortrows按照矩阵的第n列排序，把属性矩阵分成了四个矩阵便于排序取最大信息增益
numberExamples=length(attrib(:,1));
attrib_1=sortrows(attrib,1);
attrib_2=sortrows(attrib,2);
attrib_3=sortrows(attrib,3);
attrib_4=sortrows(attrib,4);
%按照第n行进行排序
class=1;
point=0;
gain_pre=30;

    j1=1;
    clear different
    %different矩阵存了哪一行鸢尾花种类发生了变化
    for i=1:numberExamples-1
        if attrib_1(i,5)~=attrib_1(i+1,5)
            different(j1)=i;
            j1=j1+1;
        end
    end
    
for i=1:length(different)
    classs=1;
    pointt=attrib_1(different(i),1);
    num_class_1=sum(attrib_1((1:different(i)),5)==1);
    num_class_2=sum(attrib_1((1:different(i)),5)==2);
    num_class_3=sum(attrib_1((1:different(i)),5)==3);
    num0_class_1=sum(attrib_1(:,5)==1)-num_class_1;
    num0_class_2=sum(attrib_1(:,5)==2)-num_class_2;
    num0_class_3=sum(attrib_1(:,5)==3)-num_class_3;
    gainn=-(different(i)/numberExamples)*((num_class_1/different(i))*sjlog(num_class_1/different(i))+(num_class_2/different(i))*sjlog(num_class_2/different(i))+(num_class_3/different(i))*sjlog(num_class_3/different(i)))-(1-different(i)/numberExamples)*((num0_class_1/(numberExamples-different(i)))*sjlog(num0_class_1/(numberExamples-different(i)))+(num0_class_2/(numberExamples-different(i)))*sjlog(num0_class_2/(numberExamples-different(i)))+(num0_class_3/(numberExamples-different(i)))*sjlog(num0_class_3/(numberExamples-different(i))));
  if gainn<gain_pre
      point=pointt;
      class=classs;
      gain_pre=gainn;
      num_diff=different(i);
  end
end


    j2=1;
    clear different
    %different矩阵存了哪一行鸢尾花种类发生了变化
    for i=1:numberExamples-1
        if attrib_2(i,5)~=attrib_2(i+1,5)
            different(j2)=i;
            j2=j2+1;
        end
    end
    
for i=1:length(different)
    classs=2;
    pointt=attrib_2(different(i),2);
    num_class_1=sum(attrib_2((1:different(i)),5)==1);
    num_class_2=sum(attrib_2((1:different(i)),5)==2);
    num_class_3=sum(attrib_2((1:different(i)),5)==3);
    num0_class_1=sum(attrib_2(:,5)==1)-num_class_1;
    num0_class_2=sum(attrib_2(:,5)==2)-num_class_2;
    num0_class_3=sum(attrib_2(:,5)==3)-num_class_3;
    gainn=-(different(i)/numberExamples)*((num_class_1/different(i))*sjlog(num_class_1/different(i))+(num_class_2/different(i))*sjlog(num_class_2/different(i))+(num_class_3/different(i))*sjlog(num_class_3/different(i)))-(1-different(i)/numberExamples)*((num0_class_1/(numberExamples-different(i)))*sjlog(num0_class_1/(numberExamples-different(i)))+(num0_class_2/(numberExamples-different(i)))*sjlog(num0_class_2/(numberExamples-different(i)))+(num0_class_3/(numberExamples-different(i)))*sjlog(num0_class_3/(numberExamples-different(i))));
  if gainn<gain_pre
      point=pointt;
      class=classs;
      gain_pre=gainn;
      num_diff=different(i);
  end
end


j3=1;
    clear different
    %different矩阵存了哪一行鸢尾花种类发生了变化
    for i=1:numberExamples-1
        if attrib_3(i,5)~=attrib_3(i+1,5)
            different(j3)=i;
            j3=j3+1;
        end
    end
    
for i=1:length(different)
    classs=3;
    pointt=attrib_3(different(i),3);
    num_class_1=sum(attrib_3((1:different(i)),5)==1);
    num_class_2=sum(attrib_3((1:different(i)),5)==2);
    num_class_3=sum(attrib_3((1:different(i)),5)==3);
    num0_class_1=sum(attrib_3(:,5)==1)-num_class_1;
    num0_class_2=sum(attrib_3(:,5)==2)-num_class_2;
    num0_class_3=sum(attrib_3(:,5)==3)-num_class_3;
    gainn=-(different(i)/numberExamples)*((num_class_1/different(i))*sjlog(num_class_1/different(i))+(num_class_2/different(i))*sjlog(num_class_2/different(i))+(num_class_3/different(i))*sjlog(num_class_3/different(i)))-(1-different(i)/numberExamples)*((num0_class_1/(numberExamples-different(i)))*sjlog(num0_class_1/(numberExamples-different(i)))+(num0_class_2/(numberExamples-different(i)))*sjlog(num0_class_2/(numberExamples-different(i)))+(num0_class_3/(numberExamples-different(i)))*sjlog(num0_class_3/(numberExamples-different(i))));
  if gainn<gain_pre
      point=pointt;
      class=classs;
      gain_pre=gainn;
      num_diff=different(i);
  end
end


j4=1;
    clear different
    %different矩阵存了哪一行鸢尾花种类发生了变化
    for i=1:numberExamples-1
        if attrib_4(i,5)~=attrib_4(i+1,5)
            different(j4)=i;
            j4=j4+1;
        end
    end
    
for i=1:length(different)
    classs=4;
    pointt=attrib_4(different(i),4);
    num_class_1=sum(attrib_4((1:different(i)),5)==1);
    num_class_2=sum(attrib_4((1:different(i)),5)==2);
    num_class_3=sum(attrib_4((1:different(i)),5)==3);
    num0_class_1=sum(attrib_4(:,5)==1)-num_class_1;
    num0_class_2=sum(attrib_4(:,5)==2)-num_class_2;
    num0_class_3=sum(attrib_4(:,5)==3)-num_class_3;
    gainn=-(different(i)/numberExamples)*((num_class_1/different(i))*sjlog(num_class_1/different(i))+(num_class_2/different(i))*sjlog(num_class_2/different(i))+(num_class_3/different(i))*sjlog(num_class_3/different(i)))-(1-different(i)/numberExamples)*((num0_class_1/(numberExamples-different(i)))*sjlog(num0_class_1/(numberExamples-different(i)))+(num0_class_2/(numberExamples-different(i)))*sjlog(num0_class_2/(numberExamples-different(i)))+(num0_class_3/(numberExamples-different(i)))*sjlog(num0_class_3/(numberExamples-different(i))));
  if gainn<gain_pre
      point=pointt;
      class=classs;
      gain_pre=gainn;
      num_diff=different(i);
  end
end
end