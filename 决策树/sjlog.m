function y=sjlog(x)
%���¶���log��Ϊ����0*log0=0
if(x==0)
    y=0;
else
    y=log2(x)
end
end