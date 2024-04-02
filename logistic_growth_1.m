clear all;
k = 100*10*20
r = 0.2
d = 0.01
p0 = 150

weeks = 1:100

for i = 1:99
  p_n(1) = p0;
  p_n(i+1) = (r*p_n(i)*(1-p_n(i)/k))+p_n(i);
 end
p_n

plot(weeks, p_n, '-r')
xlabel('week')
ylabel('population')
hold on;

for i = 1:99
  p_n_1(1) = p0;
  p_n_1(i+1) = (p_n_1(i)*r*(1-p_n_1(i)/k))+p_n_1(i)-(d*p_n_1(i));
 end
p_n_1

plot(weeks, p_n_1, '-b')


