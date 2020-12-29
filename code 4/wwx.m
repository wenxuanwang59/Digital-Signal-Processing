
%Q3a
x1 = sin(pi/10*(0:19));
x2 = 2*(mod((0:19)/10,1)-0.5);
x3 = cos(pi/2*(0:19));
x4 = (-1).^(0:19);
z = [x1 x2 x3 x4];
figure(1)
stem(z);

for i = 1:20   
    h1(i) = 0;
end
h1(1) = 1;
for i = 1:20   
    h2(i) = 0;
end
h2(6) = 1;
for i = 1:20   
    h3(i) = 0;
end
h3(20) = 1;

%Q3b
figure(2)
y1 = conv(x1, h1);
y2 = conv(x1, h2);
y3 = conv(x1, h3);
subplot(3,1,1)
stem(y1);
subplot(3,1,2)
stem(y2);
subplot(3,1,3)
stem(y3);

%Q4b
figure(3)
a1 = conv(fliplr(x1), x1);
lag = -(20-1):(20-1);
subplot(4,1,1)
stem(lag, a1)
xlabel('Lag [samples]')
ylabel('Amplitude')

a2 = conv(fliplr(x2), x2);
lag = -(20-1):(20-1);
subplot(4,1,2)
stem(lag, a2)
xlabel('Lag [samples]')
ylabel('Amplitude')

a3 = conv(fliplr(x3), x3);
lag = -(20-1):(20-1);
subplot(4,1,3)
stem(lag, a3)
xlabel('Lag [samples]')
ylabel('Amplitude')

a4 = conv(fliplr(x4), x4);
lag = -(20-1):(20-1);
subplot(4,1,4)
stem(lag, a4)
xlabel('Lag [samples]')
ylabel('Amplitude')


%Q4c
figure(4)
z1 = conv(fliplr(x1), z);
n = -(20-1):(80-1);
subplot(4,1,1)
stem(n,z1)
xlabel('Lag [samples]')
ylabel('Amplitude')

z2 = conv(fliplr(x2), z);
n = -(20-1):(80-1);
subplot(4,1,2)
stem(n,z2)
xlabel('Lag [samples]')
ylabel('Amplitude')

z3 = conv(fliplr(x3), z);
n = -(20-1):(80-1);
subplot(4,1,3)
stem(n,z3)
xlabel('Lag [samples]')
ylabel('Amplitude')

z4 = conv(fliplr(x4), z);
n = -(20-1):(80-1);
subplot(4,1,4)
stem(n,z4)
xlabel('Lag [samples]')
ylabel('Amplitude')


%Q5
figure(5)
[message, code] = get_message('64118211');
L_Code = length(code);
L_Message = length(message);
find_code = conv(fliplr(code), message);
n = -(L_Code-1):(L_Message-1);
stem(n,find_code)
[Max_code, location] = max(find_code);
disp(Max_code);
disp(location);
