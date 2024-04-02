clear all;

f0 = 110
r0 = 900
# death factor - fox
a = 1-0.88
# birth factor - fox
b = 0.0001
# death factor - rabbit
c = 0.0003
# birth factor - rabbit
d = 1.039-1

t = 1:50

# linear model
for i=1:49
  f(1) = f0;
  r(1) = r0;
  f(i+1) = ((1-a)*f(i))+(b*r(i));
  r(i+1) = (-c*f(i))+((1+d)*r(i));
end
t
f
r

figure 1
plot(t,f,'r-')
hold on
plot(t,r,'b-')
xlabel("time")
ylabel("population")
legend("Fox population", "Rabbit population")

figure 2
plot(f,r,'r-')
xlabel("fox population")
ylabel("rabbit population")

# non-linear model
for i=1:49
  f_1(1) = f0;
  r_1(1) = r0;
  f_1(i+1) = ((1-a)*f_1(i))+(b*r_1(i)*f_1(i));
  r_1(i+1) = (-c*f_1(i)*r_1(i))+((1+d)*r_1(i));
end

figure 3
plot(t,f_1,'r-')
hold on
plot(t,r_1,'b-')
xlabel("time")
ylabel("population")
legend("Fox population", "Rabbit population")

figure 4
plot(f_1,r_1,'r-')
xlabel("fox population")
ylabel("rabbit population")





