% Question 2

% (a)

clc;
N = 25000;
W = 50;
n = 1:1:N;
Fs = 10000;
M = floor(N/W);
x = cos(((2*pi)*(n.^2))/100000);
[y, xSTFT, ySTFT] = stft_func(x, W);
figure(1)
imagesc((0:(M-1))*W/Fs, 2*pi/W*(0:(W-1)), abs(xSTFT));
xlabel('Time [second]');
ylabel('Frequency [rad/s]');

%(b)

N = 25000;
W1 = 50;
n = 1:1:N;
h1 = cos((pi/4)*n) + cos((pi/2)*n);
w_n=[ones(1,W1),zeros(1,N-W1)];
w = (1/2)*(1-cos(2*pi*n/W1)).*w_n;
g1 = fft(h1.*w);
figure(2)
plot(abs(g1))
xlabel('frequency[Hertz]');
ylabel('Magnitude');

N = 25000;
W2 = 10;
n = 1:1:N;
h2 = cos((pi/2)*n) + cos((3*pi/4)*n);
w_n=[ones(1,W2),zeros(1,N-W2)];
w = (1/2)*(1-cos(2*pi*n/W2)).*w_n;
g2 = fft(h2.*w);
figure(3)
plot(abs(g2))
xlabel('frequency[Hertz]');
ylabel('Magnitude');

figure(4)
N = 25000;
W = 50;
n = 1:1:N;
Fs = 10000;
z1 = ifft(fft(x).*g1);
[y, xSTFT, ySTFT] = stft_func(z1, W);
imagesc((0:(M-1))*W/Fs, 2*pi/W*(0:(W-1)), abs(xSTFT));
xlabel('Time [second]');
ylabel('Frequency [rad/s]');


figure(5)
z2 = ifft(fft(x).*g2);
[y, xSTFT, ySTFT] = stft_func(z2, W);
imagesc((0:(M-1))*W/Fs, 2*pi/W*(0:(W-1)), abs(xSTFT));
xlabel('Time [second]');
ylabel('Frequency [rad/s]');

soundsc(z2); % change x, z1,z2



