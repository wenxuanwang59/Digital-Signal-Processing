% Question 3
%(a)
[mu, Fs] = audioread(['chiptune_noise.wav']);
W = 1000;
M = floor(length(mu)/W);
figure(1)
[y, xSTFT, ySTFT] = stft_func(mu, W);
imagesc((0:(M-1))*W/Fs, 2*pi/W*(0:(W-1)), abs(xSTFT));
axis([0 (M-1)*W/Fs 0 1.5]);
xlabel('Time [second]');
ylabel('Normalized Frequency [rad/s]');

[mu_1, Fs] = audioread(['chiptune_noise.wav']);
[y_1, xSTFT_1, ySTFT_1] = stft_func_1(mu_1, W);
figure(2)
imagesc((0:(M-1))*W/Fs, 2*pi/W*(0:(W-1)), abs(ySTFT_1));
axis([0 (M-1)*W/Fs 0 1.5]);
xlabel('Time [second]');
ylabel('Normalized Frequency [rad/s]');
%soundsc(mu_1); % change mu, mu_1



%(b)
[mu_2, Fs] = audioread(['chiptune_nonoise.wav']);
[y, xSTFT, ySTFT] = stft_func(mu_2, W);
figure(3)
imagesc((0:(M-1))*W/Fs, 2*pi/W*(0:(W-1)), abs(xSTFT));
axis([0 (M-1)*W/Fs 0 1.5]);
xlabel('Time [second]');
ylabel('Normalized Frequency [rad/s]');

[mu_3, Fs] = audioread(['chiptune_nonoise.wav']);
[y, xSTFT, ySTFT] = stft_func_2(mu_3, W);
figure(4)
imagesc((0:(M-1))*W/Fs, 2*pi/W*(0:(W-1)), abs(ySTFT));
axis([0 (M-1)*W/Fs 0 1.5]);
xlabel('Time [second]');
ylabel('Normalized Frequency [rad/s]');
soundsc(mu_2); 

