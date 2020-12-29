%Question 3
tic;
N=1000000;
M=10000;
nx = 0 : N-1;
ny1 = 0 : M+N-2;
x=cos(4*pi/N*(1:N))+randn(1,N);
figure(1)
plot(x);

h = ones(1,M)/M;
y1=conv(x,h);
figure(2)
plot(nx,x);
hold on;
plot(ny1,y1);
hold off;
toc;

tic;
h2 = [h zeros(1,N-M)];
y2 = ifft(fft(x).*fft(h2));
figure(3)
plot(nx, x);
hold on; 
plot(ny1, y1); 
plot(nx,y2);
;hold off;
toc;





