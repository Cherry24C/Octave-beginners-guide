clear all;

#1
n = 0:19
a_n = [10.3,17.2,27,45.3,80.2,125.3,176.2,255.6,330.8,390.4,440,520.4,560.4,600.5,610.8,614.5,618.3,619.5,620,621]


plot(n, a_n, 'r')
xlabel('Population')
ylabel('Hour')
title('Bacterial Population')
hold on;

# 2
% carrying capacity

c = 621

for i = 1:19
    delta_a_n(i) = a_n(i+1)-a_n(i);
    x_n(i) = a_n(i)*(c-a_n(i));
end

delta_a_n
x_n


##plot(x_n,delta_a_n, 'o')
p=polyfit(x_n,delta_a_n,1)
b = p(1)

# 3
for i = 1:19
    a_n_pred(1) = a_n(1);
    a_n_pred(i+1) = b*(c-a_n_pred(i))*a_n_pred(i)+a_n_pred(i);
end


plot(a_n_pred, '-b')

