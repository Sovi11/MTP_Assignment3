format long
a1 = adaptive(0,1,10^(-6)) ;
fprintf("The value of Integration approximation using iterative midpoint area approximation : %.12f \n",a1)
function a2 = adaptive(a,b,tol)
a1 = rect_mid(a,b,1) ;
a2 = rect_mid(a,b,2) ;
j= 2 ;
while(abs((a2-a1)/a2) > tol) 
    j = j+ 1;
    a1 = a2 ;
    a2 = rect_mid(a,b,j) ;
end 
end 
function r = rect_mid(a,b,n)
    r = 0  ;
    d = (b - a)/n ;
    for i = 1:n  
        r = r + (d*(f(d/2 + a + (i-1)*d))) ;
    end 
end 
function r =f(x) 
r = 1/(1+x^2) ;
end 