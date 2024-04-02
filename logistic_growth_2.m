p0 = 900
k = 27*2727
r = 0.24
d = 0.4

for i = 1:11
  p_n(1) = p0;
  p_n(i+1) = p_n(i)+(r*p_n(i)*(1-p_n(i)/k));

end

p_n

months = 1:12

plot(months, p_n,'-b')
xlabel("months")
ylabel("population size")
hold on;

for i = 1:11
  p_n_1(1) = p0;
  p_n_1(i+1) = p_n_1(i)+(r*p_n_1(i)*(1-p_n_1(i)/k))-(d*p_n_1(i));

end

p_n_1
plot(months, p_n_1,'-r')

% hunting season
for i = 1:3
  p_n_2(1) = p_n(3);
  p_n_2(i+1) = p_n_2(i)+(r*p_n_2(i)*(1-p_n_2(i)/k))-(d*p_n_2(i));
end

% after hunting season
for i = 1:10
  p_n_3(1) = p_n_2(3);
  p_n_3(i+1) = p_n_3(i)+(r*p_n_3(i)*(1-p_n_3(i)/k));
end

% population at the end of August
pop = p_n_3(5)

