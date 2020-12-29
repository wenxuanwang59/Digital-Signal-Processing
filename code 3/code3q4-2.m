clc
h_s = 0;
[findme, Fs] = get_tune('64118211');
for k = 1:39
    ii = k;
    [y, Fs] = audioread(['rudenko_' num2str(ii, '%02i') '.mp4']);
    h3 = [findme ; zeros(length(y)-length(findme),1)];
    y3 = ifft((fft(h3)).*fft(y));
    [s_s , s_location] = max(y3);
    
    if s_s > h_s
        h_s = s_s;
        num_file = ii;
        location = s_location;
    end
    
end
t = 1/Fs:1/Fs:length(findme)/Fs;
plot(t, findme);
xlabel('Time [sec]');
ylabel('Amplitude');


t_m = fix(location/Fs/60);
t_s = mod(location/Fs,60);
disp(['rudenko_' num2str(num_file ) '.mp4']);
disp([num2str(t_m) 'm' ' ,' num2str(t_s) 's'])

sound(findme, Fs);