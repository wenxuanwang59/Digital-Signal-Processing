% Question 3 (c)
[mu, Fs] = audioread(['noisy_speech.wav']);
W = 2000;
M = floor(length(mu)/W);
[y, xSTFT, ySTFT] = stft_denoise(mu, W)
figure(1)
imagesc((0:(M-1))*W/Fs, 1/W*(0:(W-1)), abs(xSTFT));
axis([0 (M-1)*W/Fs 0 0.08]);
xlabel('Time [second]');
ylabel('Frequency [Hz]');


figure(2)
imagesc((0:(M-1))*W/Fs, 1/W*(0:(W-1)), abs(ySTFT));
axis([0 (M-1)*W/Fs 0 0.08]);
xlabel('Time [second]');
ylabel('Frequency [Hz]');