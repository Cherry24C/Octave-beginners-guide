clear all;
close all;

a0 = 100000; # change to 60000 and 100000 and see
b = 1.05;  % Interest rate of 5%



for i = 1:20
  an(1) = a0;
  an(i+1) = b*an(i)-4000;
end

n = 0:20;  % Creating an array of years from 0 to 20

plot(n, an, 'r-');
xlabel('Years');
ylabel('Amount in Savings Account');
title('Savings Account Over Time');
grid on;


##clear all;
##close all;
##
##a0 = 0.1;
##a0_inc = 0.15
##r = 0.5;  % Interest rate of 5%
##
##
##
##for i = 1:15
##  an(1) = a0;
##  an(i+1) = r*an(i)+0.1;
##  an_1(1) = a0;
##  an_1(i+1) = r*an_1(i)+0.15;
##end
##
##n = 0:15;  % Creating an array of years from 0 to 20
##
##plot(n, an, 'r-');
##hold on;
##plot(n, an_1, 'b-');
##xlabel('Years');
##ylabel('Amount in Savings Account');
##title('Savings Account Over Time');
##grid on;





