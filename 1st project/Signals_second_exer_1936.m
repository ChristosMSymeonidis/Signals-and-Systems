%Signals second
% AM 1936 k=3/3=1, m =6/3=2
 t = -5.*pi:pi/100:5.*pi;
 
% x1 ,y1
x1  = heaviside(t+2)-heaviside(t-1);
y1 = (t+1).*(heaviside(t+2)-heaviside(t-1)); % -2<= t <1
x1convy1 = ( ((t+2).^2)./2 +t+2).*(heaviside(t+4)-heaviside(t+1))+(-(t.^2)./2 +2).*(heaviside(t+1)-heaviside(t-2));
figure(1)
subplot(311);
plot(t,x1);grid on
title('x1(t),y1(t),x1(t)*y1(t)');
subplot(312);
plot(t,y1);grid on
subplot(313);
plot(t,x1convy1);grid on

% x2 ,y2
x2 =t.*heaviside(t+2);
y2 =exp(-2.*t).*heaviside(t-1);
 x2convy2= (  (-3./4).*exp(2.*t-2)+(1./2).*t.*exp(2.*t-2)+(5./4).*exp(-4)  ).*(heaviside(t+1));
figure(2)
subplot(311);
plot(t,x2);grid on
title('x2(t),y2(t),x2(t)*y2(t)');
subplot(312);
plot(t,y2);grid on
subplot(313);
plot(t,x2convy2);grid on

% x3 ,y3 
x3 =exp(-1.*t).*(heaviside(t+2)-heaviside(t));
y3 =1.*heaviside(t) ;
x3convy3=(-exp(-t)+exp(-2)).*(heaviside(t+2))+(-1+exp(-t)).*heaviside(t);
figure(3)
subplot(311);
plot(t,x3);grid on
title('x3(t),y3(t),x3(t)*y3(t)');
subplot(312);
plot(t,y3);grid on
subplot(313);
plot(t,x3convy3);grid on

% x4 ,y4
x4 =sin(1.*t);
y4=exp(-2.*t);
x4convy4 = exp(-2.*t).*((exp(10.*pi)./5 -1./(5.*exp(10.*pi))));
figure(4)
subplot(311);
plot(t,x4);grid on
title('x4(t),y4(t),x4(t)*y4(t)');
subplot(312);
plot(t,y4);grid on
subplot(313);
plot(t,x4convy4);grid on

% x5 ,y5
x5 =2.*(heaviside(t+pi) - heaviside(t-pi));% -π <= t< π
y5 =cos(2.*t);
x5convy5=0;
figure(5)
subplot(311);
plot(t,x5);grid on
title('x5(t),y5(t),x5(t)*y5(t)');
subplot(312);
plot(t,y5);grid on
subplot(313);
plot(t,x5convy5);grid on
