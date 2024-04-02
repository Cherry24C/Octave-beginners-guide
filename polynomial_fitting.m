clear all;

## for 1st order polynomial
t = 0:19
data = [1 2 2.5 3.4 4 5.6 7 7.8 8.3 9.5 10.2 11.6 13 15 16 16.5 18 20 21 23]

figure 1
plot(t,data,'o-')
hold on;

p = polyfit(t,data,1)
data_pred = polyval(p,t)
plot(t,data_pred, '-r')


## other
t = 0:19
data_2 = [4 12 15 25 30 38 40 35 38 39 40 45 48 50 52 55 58 60 62 65]

figure 2
plot(t,data_2,'o')
hold on;

p_2 = polyfit(t,data_2,3)
data_pred_2 = polyval(p_2,t)
plot(t,data_pred_2, '-r')

