t = 0:0.01:2;          % time from 0 to 2 s in steps of 0.01
y = sin(2*pi*3*t);     % a 3 Hz wave
plot(t, y)             % plot it
y(1:5)                 % show the first 5 values
sum(y > 0.9)           % how many values are above 0.9
for k = 1:3
    disp(k)            % print 1, 2, 3
end