% k=3 and m=6
syms t w;
%f(t)
f(t) = (((t-3)^2)/exp(6*t))*heaviside(t-3);
%Oloklirwma gia synthiki dirichlet
I= double(int(f, -inf, inf));% <infinity
%F(w)
F(w)=(2*exp(-18))/((6+1i*w)^3);
figure(1)
subplot(211);
fplot( f(t));grid on; title('f(t)');
subplot(212);
fplot(abs(F(w)));grid on;title('F(w)');



