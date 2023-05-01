% Signals_first_exer_of_second_set_1936

t = -pi:pi/100:pi;
syms   n ;
x = (pi.^2-t.^2) ;
 
fseries = ((-1).^n).*(((-1).*4.*cos(n.*t))./(n.^2));
fseries1  =  (2.*(pi.^2))./3 + symsum(fseries,n,1,1);
fseries2  = (2.*(pi.^2))./3 + symsum(fseries,n,1,2);
fseries3  = (2.*(pi.^2))./3 + symsum(fseries,n,1,3);
fseries5  = (2.*(pi.^2))./3 + symsum(fseries,n,1,5);
fseries10  = (2.*(pi.^2))./3 + symsum(fseries,n,1,10);
fseries20  = (2.*(pi.^2))./3 + symsum(fseries,n,1,20);

msre1  = immse(x,double(fseries1));
msre2  = immse(x,double(fseries2));
msre3  = immse(x,double(fseries3));
msre5  = immse(x,double(fseries5));
msre10 = immse(x,double(fseries10));
msre20 = immse(x,double(fseries20));

figure(1)
subplot(231);
plot(t,fseries1);grid on; title(['terms:1 msre1=',num2str(msre1)]);
hold on 
plot(t,x);grid on; axis([-5 5 0 14]);legend('Fourier series','ğ^2-t^2');
subplot(232);
plot(t,fseries2);grid on;title(['terms:2 msre2=',num2str(msre2)]);
hold on 
plot(t,x);grid on; axis([-5 5 0 14]);legend('Fourier series','ğ^2-t^2');
subplot(233);
plot(t,fseries3);grid on;title(['terms:3 msre3=',num2str(msre3)]);
hold on 
plot(t,x);grid on; axis([-5 5 0 14]);legend('Fourier series','ğ^2-t^2');
subplot(234);
plot(t,fseries5);grid on;title(['terms:5 msre5=',num2str(msre5)]);
hold on 
plot(t,x);grid on; axis([-5 5 0 14]);legend('Fourier series','ğ^2-t^2');
subplot(235);
plot(t,fseries10);grid on;title(['terms:10 msre10=',num2str(msre10)]);
hold on 
plot(t,x);grid on; axis([-5 5 0 14]);legend('Fourier series','ğ^2-t^2');
subplot(236);
plot(t,fseries20);grid on;title(['terms:20 msre20=',num2str(msre20)]);
hold on 
plot(t,x);grid on; axis([-5 5 0 14]);legend('Fourier series','ğ^2-t^2');