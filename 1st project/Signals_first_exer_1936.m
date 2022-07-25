% AM 1936 k=3/3=1, m =6/3=2
 t = -5.*pi:pi/100:5.*pi;
 x = t.*sin(2.*pi.*t).*(heaviside(-2.*pi-t)) + t.*cos(pi.*t).*heaviside(t-pi)+ sin(pi.*t).*cos(2.*pi.*t).*((heaviside(t+2.*pi)-heaviside(t-pi)));
 x1 = 2- t.*sin(2.*pi.*t).*(heaviside(-2.*pi-t)) + t.*cos(pi.*t).*heaviside(t-pi)+ sin(pi.*t).*cos(2.*pi.*t).*((heaviside(t+2.*pi)-heaviside(t-pi)));
 x2 =  3.*t.*sin(2.*pi.*3.*t).*(heaviside(-2.*pi-3.*t)) + 3.*t.*cos(pi.*3.*t).*heaviside(3.*t-pi)+ sin(pi.*3.*t).*cos(2.*pi.*3.*t).*((heaviside(3.*t+2.*pi)-heaviside(3.*t-pi)));

 x3 =  (t-2.*pi).*sin(2.*pi.*(t-2.*pi)).*(heaviside(-2.*pi-(t-2.*pi))) + (t-2.*pi).*cos(pi.*(t-2.*pi)).*heaviside((t-2.*pi)-pi)+ sin(pi.*(t-2.*pi)).*cos(2.*pi.*(t-2.*pi)).*((heaviside((t-2.*pi)+2.*pi)-heaviside((t-2.*pi)-pi)));



subplot(411); plot(t, x);grid on
title('x(t)');xlabel('t');ylabel('x');

subplot(412); plot(t, x1);grid on
title('x1(t)');xlabel('t');ylabel('x1');
    
subplot(413); plot(t, x2);grid on
title('x2(t)');xlabel('t');ylabel('x2');
    
subplot(414); plot(t, x3);grid on
title('x3(t)');xlabel('t');ylabel('x3');
