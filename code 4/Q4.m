
clc
%a
[x, Fs] = audioread(['rudenko_01.mp4']);
W=10000;
N=length(x);
M = floor(N/W);
STFT = zeros(W, M);

for m=1:M
        xn_4=x((m-1)*W+1:(m*W))
        xn_5=fft(xn_4)
        xn_6=xn_5'
        STFT(:,m)=xn_6;
end
figure(1)
imagesc((0:(M-1))*W/Fs, 2*pi/W*(0:(W-1)), abs(STFT))
axis([0 (M-1)*W/Fs 0 pi/20]);
xlabel('Time [seconds]')
ylabel('Normalized Frequency [rad/s]');


%b
figure(2)
imagesc((0:(M-1))*W/Fs, 2*pi/W*(0:(W-1)), 10*log10(abs(STFT)./max(max(abs(STFT)))), [-20 -5])
axis([0 (M-1)*W/Fs 0 pi/20]);
xlabel('Time [seconds]')
ylabel('Normalized Frequency [rad/s]');

%c
[x, Fs] = audioread(['rudenko_01.mp4']);
W=10000;
N=length(x);
M = floor(N/W);
N=length(x);
h_n=ones(1,10000)/10000;
y=conv(h_n,x);
STFT = zeros(W, M);
for m=1:M
        xn_7=y((m-1)*W+1:(m*W))
        xn_8=fft(xn_7)
        xn_9=xn_8';
        STFT(:,m)=xn_9;
end
figure(3)
imagesc((0:(M-1))*W/Fs, 2*pi/W*(0:(W-1)), 10*log10(abs(STFT)./max(max(abs(STFT)))), [-20 -5])
axis([0 (M-1)*W/Fs 0 pi/20]);
xlabel('Time [seconds]')
ylabel('Normalized Frequency [rad/s]');
 