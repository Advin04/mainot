clc; clear;

x = -5:0.1:5;
y = floor(x);

plot(x,y)
grid on

%Compare Floor, Ceil, Round

clc; clear;

x = -5:0.1:5;

y1 = floor(x);
y2 = ceil(x);
y3 = round(x);

plot(x,y1,'r', x,y2,'b', x,y3,'g')
legend('Floor','Ceil','Round')
grid on
