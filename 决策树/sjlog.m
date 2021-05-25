function y=sjlog(x)
%重新定义log，为了让0*log0=0
if(x==0)
    y=0;
else
    y=log2(x)
end
end