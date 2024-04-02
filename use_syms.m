pkg load symbolic

syms x
f = 2*x-1
sol = solve(f,x)
disp(sol)

syms x
f = x^2-4*x+4
sol = solve(f,x)

syms x
f = x^2 + x - 2
sol = solve(f,x)

## or the same thing can be done by,
syms x
sol = solve(x^2 + x - 2 == 0,x)

## for (a*x^2)+(b*x)+c type of equations
syms a b c x
## solving the equation for x
sol = solve((a*x^2)+(b*x)+c==0,x)


## for systems of linear equations
syms x y
sol = solve(2*x+y==4,x-y==-1)
sol.x
sol.y

## similar approach
syms x y
eq1 = 2*x+y == 4
eq2 = x-y == -1
sol = solve(eq1,eq2)
sol.x
sol.y


## for derivatives
syms x
f = log(x)
sol = diff(f,x)

syms x
f = sin(x)
sol = diff(f,x)
sol = diff(f) # same as above
sol = diff(f,x,2)
sol = diff(f,2) # same as above

## for integrals
syms x
f = 2*x
ezplot(f)   ## to plot the functions
sol = int(f,x)

syms x
f = cos(x)
sol = int(f,x)

## another way to solve polynomial equations
## for the equation = 1*x^2+1*x-2 == 0
roots([1 1 -2])

## for the equation = x^2-4 == 0
roots([1 0 -4])

## for the equation = x^3-3*x^2-4*x+12 == 0
roots([1 -3 -4 12])

roots([1 -5 5 5 -6])

roots([1 -1 -1])

roots([1 -3 4 -5])
##ans =
##
##   2.2134 +      0i  - This root is a real number with no imaginary part (real root of the equation)
##   0.3933 + 1.4506i  - complex number with a real part of approximately 0.3933 and an imaginary part of approximately 1.4506.
##   0.3933 - 1.4506i  - conjugate of the previous complex root
##   The imaginary unit i is defined as the square root of -1
##

# plotting functions
syms x
f = x*sin(x)
ezplot(f)
hold on;
# ezplot(fun, [xmin, xmax]) - [xmin, xmax] defines the range of the plot
ezplot(f,[0,4*pi])


## limits
limit(f,0,pi)
limit (log(cos(x))/x^2,0)


