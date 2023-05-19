a1 = simpsons_1_by_3(0,2,4) ;
[anns, iter] = iterative_simpsons_3_by_8(0,pi/2,10^(-6)) ;
fprintf("The value of Integration approximation using iterative simpsons_1_by_3 in part (a) is : %.12f \n",a1)
fprintf("In part (b) \n")
fprintf("The value of Integration approximation using iterative simpsons_3_by_8 : %.12f \n",anns)
iter = (iter/ 3)  ;% This is done because the original increments were done in the steps of 3.
fprintf("The value of iterations in iterative simpsons_3_by_8 : %d \n",iter) 
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
function [a2,j] = iterative_simpsons_3_by_8(a,b,tol)
a1 = simpsons_3_by_8(a,b,3) ;
a2 = simpsons_3_by_8(a,b,6) ;
j= 6 ;
while(abs((a2-a1)/a2) > tol) 
    j = j+ 3;
    a1 = a2 ;
    a2 = simpsons_3_by_8(a,b,j) ;
end 
end 
function sm = simpsons_3_by_8(a,b,n)
dd = (b-a)/n ;
sm=g(a) + g(b) ; 
for i=1:n-1 
    if (rem(i,3) ==0)
        sm = (sm + 2*(g(a+ i*dd))) ;
    else 
        sm = (sm + 3*(g(a+ i*dd))) ;
    end 
end 
sm = (sm * dd * 3)/8 ;
end
function r = f(x) 
r = exp(x)/(1+x) ;
end 
function rr = g(x)
rr = sin(x) ;
end 