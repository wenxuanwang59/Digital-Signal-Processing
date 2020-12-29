%Question 2
clc
%b
N=2501;
n=1:1:2501
x(n) = cos(((2*pi)*(n.^2))/10000);
figure(1)
plot(n,x)
xlabel('Samples');
ylabel('Amplitude');

w=1:1:N
X=fft(x);
figure(2)
plot(((2*pi.*w)/N),abs(X));
xlabel('Normalized frequency [rad / s]');
ylabel('Magnitude');
axis([0 2*pi 0 max(abs(X))]) 



%d
N=10;
n=1:1:2501;
y=cos((pi/2)*n);

figure(3)
w_n=[ones(1,N),zeros(1,2501-N)];
z_w=fft(w_n.*y);
plot(n,abs(z_w))

figure(4)
R_L=real(z_w);
I_M=imag(z_w);
plot(n,atan(I_M./R_L))













