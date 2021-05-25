function [point,class,num_diff,gain_pre]=Gain(attrib)
%���أ���������С�ؽ��л����Ӽ�
%pointָ���ֵ���ֵ
%classָ�������
%num_diffָ���ֵ�С�Ӽ�����
%�õ�ĳ�������С�Ļ������Ժͻ��ֵľ�����ֵ

%sortrows���վ���ĵ�n�����򣬰����Ծ���ֳ����ĸ������������ȡ�����Ϣ����
numberExamples=length(attrib(:,1));
attrib_1=sortrows(attrib,1);
attrib_2=sortrows(attrib,2);
attrib_3=sortrows(attrib,3);
attrib_4=sortrows(attrib,4);
%���յ�n�н�������
class=1;
point=0;
gain_pre=30;

    j1=1;
    clear different
    %different���������һ���β�����෢���˱仯
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
    %different���������һ���β�����෢���˱仯
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
    %different���������һ���β�����෢���˱仯
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
    %different���������һ���β�����෢���˱仯
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