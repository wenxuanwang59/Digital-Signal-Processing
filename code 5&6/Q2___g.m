N = 25000;
W1 = 50;
n = 1:1:N;
x = cos(((2*pi)*(n.^2))/100000);

w_n = [ones(1,W1),zeros(1,N-W1)];
n = 1:1:50
h1 = cos((pi/4)*n) + cos((pi/2)*n);
w = (1/2)*(1-cos(2*pi*n/W1));
g1 = fft(h1.*w);

W2 = 10;
n=1:1:10;
h2 = cos((pi/2)*n) + cos((3*pi/4)*n);
w = (1/2)*(1-cos(2*pi*n/W2));
g2 = fft(h2.*w);

figure(10)
g1 = ifft(g1);
g2 = ifft(g2);

g3 = [g2'; zeros(7000,1); g1';];
z3 = conv(x',g3);
[y, xSTFT, ySTFT] = stft_func(z3, W);
imagesc((0:(M-1))*W/Fs, 2*pi/W*(0:(W-1)), abs(xSTFT));
xlabel('Time [second]');
soundsc(z3);
ylabel('Frequency [rad/s]');