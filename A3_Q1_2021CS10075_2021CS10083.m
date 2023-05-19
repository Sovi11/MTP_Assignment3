b0 = trapez(-4,4,1) ; % This is the standard trapezoidal rule 
b1 = simpsons_1_by_3(-4,4,2); % This is the 1/3 simpsons rule 
a1 = trapez(-4,4,10) ; % This is basically the composite trapezoidal rule 
a2 = simpsons_1_by_3(-4,4,10)  ;% This is basically the composite simpsons 1/3 
fprintf("The value of Integration approximation using one step Trapezoid : %.12f \n",b0)
fprintf("The value of Integration approximation using one step simpsons_1_by_3 : %.12f \n",b1)
fprintf("The value of Integration approximation using 10 step Trapezoid : %.12f \n",a1)
fprintf("The value of Integration approximation using 10 step simpsons_1_by_3  : %.12f \n",a2)
function r =  trapez(a,b,n)
    r = 0 ;
    d = (b - a)/(n) ;
    
    for i = 1:n 
        r = r + (d*  (f(a + (i-1)*d) + f(a+ i*d)))/2 ;
    end 
end 
function sm = simpsons_1_by_3(a,b,n)
dd = (b-a)/n ;
sm=f(a) + f(b) ; 
for i=1:n-1 
    if (rem(i,2) ==0)
        sm = (sm + 2*(f(a+ i*dd))) ;
    else 
        sm = (sm + 4*(f(a+ i*dd))) ;
    end 
end 
sm = (sm * dd)/3 ;
end
function r =f(x) 
r = 1/(1+x^2) ;
end 