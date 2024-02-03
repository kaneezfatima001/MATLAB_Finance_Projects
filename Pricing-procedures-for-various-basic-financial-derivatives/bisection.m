function x0=bisection(f,int1,int2,err)
fl=f(int1);fr=f(int2);
if fl==0     
    x0=int1;
    return;
elseif fr==0
    x0=int2;
    return;
end
if fl*fr>0               
    error('invalid');
end
while (int2-int1>err)     
    mid=0.5*(int1+int2);
    fm=f(mid);
    if fm*fl>0
        int1=mid;
    elseif fm*fr>0
        int2=mid;
    else         
        break;
    end
end
x0=mid;
end