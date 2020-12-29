%a
x = zeros();
N=2501;
n=1:1:N
x(n) = cos(((2*pi)*(n.^2))/10000);
W=10;
M = floor(N/W);
STFT = zeros(W, M);
for m=1:M
        xn_0=x((m-1)*W+1:(m*W))
        xn_1=fft(x((m-1)*W+1:(m*W)))
        STFT(:,m)=xn_1;
end
figure(1)
imagesc(0:(M-1), 2*pi*(0:(W-1))/W, abs(STFT)) 
xlabel('Time [samples]'); 
ylabel('Normalized Frequency [rad/s]');


%bcd
x = zeros();
N=2501;
n=1:1:N
x(n) = cos(((2*pi)*(n.^2))/10000);

for i=1:1:8
    W=10*2^(i-1);
    M = floor(N/W);
    STFT = zeros(W, M);
    for m=1:M
        xn_2=x((m-1)*W+1:(m*W))
        xn_3=fft(x((m-1)*W+1:(m*W)))
        STFT(:,m)=xn_3;
    end
    figure(2)
    subplot(4,2,i)
    imagesc(0:(M-1), 2*pi*(0:(W-1))/W, abs(STFT)) 
    xlabel('Time [samples]'); 
    ylabel('Normalized Frequency [rad/s]');
end