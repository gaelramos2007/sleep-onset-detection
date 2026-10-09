rng(0)
sr = 250;
t = 0:1/sr:30-1/sr;
noise = rand(size(t));
wallPower = sin(2*pi*60*t);

figure
awake = 3*sin(2*pi*10*t) + noise + wallPower;
asleep = 6*sin(2*pi*2*t) + noise + wallPower;

plot(t(1:500), awake(1:500)); hold on
plot(t(1:500), asleep(1:500))
xlabel("Time (s)");
ylabel("Amplitude")
legend("awake","asleep")

[pA, f] = pwelch(awake,2*sr,[],[],sr);
[pS,~] = pwelch(asleep, 2*sr,[],[],sr);

figure
semilogy(f,pA); hold on
semilogy(f,pS)
xlim([0 70])
xlabel("Frequency (Hz)")
ylabel("Power")
legend("awake (alpha, 10 Hz", "asleep (delta, 2 Hz")
exportgraphics(gcf, "figures/oct08_spectrum.png")