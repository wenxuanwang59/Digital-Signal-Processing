%REPEAT
N = 25000;
W1 = 50;
n = 1:1:N;
Fs = 10000;
h1 = cos((pi/4)*n) + cos((pi/2)*n);
w_n = [ones(1,W1),zeros(1,N-W1)];
g4 = fft(h1.*w_n);
figure(6)
plot(abs(g4))
xlabel('frequency[Hertz]');
ylabel('Magnitude');

N = 25000;
W2 = 10;
n = 1:1:N;
h2 = cos((pi/2)*n) + cos((3*pi/4)*n);
w_n = [ones(1,W2),zeros(1,N-W2)];
g5 = fft(h2.*w_n);
figure(7)
plot(abs(g5))
xlabel('frequency[Hertz]');
ylabel('Magnitude');


figure(8)
N = 25000;
W = 50;
n = 1:1:N;
Fs = 10000;
M = floor(N/W);
z4 = ifft(fft(x).*g4);
[y, xSTFT, ySTFT] = stft_func(z4, W);
imagesc((0:(M-1))*W/Fs, 2*pi/W*(0:(W-1)), abs(xSTFT));
xlabel('Time [second]');
ylabel('Frequency [rad/s]');

figure(9)
z5 = ifft(fft(x).*g5);
[y, xSTFT, ySTFT] = stft_func(z5, W);
imagesc((0:(M-1))*W/Fs, 2*pi/W*(0:(W-1)), abs(xSTFT));
xlabel('Time [second]');
ylabel('Frequency [rad/s]');

soundsc(z1);