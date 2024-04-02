clear all;

# Worksheet_6

a_n=[300,360,440,540,660,800,980,1180,1440,1740,2110,2540,3060,3670,4390,5230,6190,7290,8550,9940,11470,13120,14870,16700];
k = 37500

% q3
for i = 1:23
    delta_a_n(i) = a_n(i+1)-a_n(i);
    x_n(i) = a_n(i)*(1-a_n(i)/k);
end
delta_a_n
x_n

figure 1
plot(x_n, delta_a_n, '-r')
xlabel('(1 - a_n(i)/K)*a_n(i)')
ylabel('a_n(i+1) - a_n(i)')

p = polyfit(x_n,delta_a_n,1)
r = p(1)

% q4
months = 1:60
for i = 1:59
    a_n_pred(1)=300;
    a_n_pred(i+1) = a_n_pred(i)+(r*a_n_pred(i)*(1-a_n_pred(i)/k));
end
a_n_pred

figure 2
plot(months, a_n_pred, '-b')
title('Without harvesting')
xlabel('Months')
ylabel('Population Size')

% q5
r = 0.4

for i = 1:59
    a_n_2(1) = 300;
    a_n_2(i+1) = a_n_2(i)+(r*a_n_2(i)*(1-a_n_2(i)/k))-(0.42*a_n_2(i));
end
a_n_2
p = a_n_2(42)

figure 3
plot(months,a_n_2, '-r')
title('With harvesting')
xlabel('Months')
ylabel('Population Size')

% q7

for i = 1:59
    a_n_3(1) = 300;
    a_n_3(i+1) = a_n_3(i)+(r*a_n_3(i)*(1-a_n_3(i)/k))-(r*a_n_3(i)*(1-a_n_3(i)/k));
end
a_n_3

figure 4
plot(months,a_n_3, '-r')
title('With constant harvesting')
xlabel('Months')
ylabel('Population Size')

figure 5
plot(a_n, '-r')

