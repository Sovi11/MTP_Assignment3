a = iter_trap(0,10,10^(-6)) ;
fprintf("The value of Integration approximation using iterative trapezoid is : %.12f \n",a)
function a2 = iter_trap(a,b,tol)
a1 = trapez(a,b,1) ;
a2 = trapez(a,b,2) ;
j=2 ;
while(abs((a2-a1)/a2) > tol) 
    j = j+ 1;
    a1 = a2 ;
    a2 = trapez(a,b,j) ;
end 
end 
function r =  trapez(a,b,n)
    r = 0 ;
    d = (b - a)/(n) ;
    
    for i = 1:n 
        r = r + (d*  (f(a + (i-1)*d) + f(a+ i*d)))/2 ;
    end 
end
function r = f(x)
if (x==0)
    r=1 ;
else 
r = sin(x)/x ;
end
end 