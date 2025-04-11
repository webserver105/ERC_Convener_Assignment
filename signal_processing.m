
clear; clc; close all;

[noisySignal, fs] = audioread('modulated_noisy_audio.wav');
t = (0:length(noisySignal)-1) / fs;

figure;
plot(t, noisySignal);
title('Noisy Signal - Time Domain');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
saveas(gcf, 'Time_Domain_Noisy.png');

n = length(noisySignal);
f = (0:n-1)*(fs/n);
Y = abs(fft(noisySignal));

figure;
plot(f, Y);
xlim([0 fs/2]);
title('Noisy Signal - Frequency Domain (FFT)');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;
saveas(gcf, 'FFT_plot.png');

f_low = 9500;
f_high = 11500;
[b, a] = butter(4, [f_low, f_high]/(fs/2), 'bandpass');

filteredSignal = filter(b, a, noisySignal);

figure;
plot(t, noisySignal, 'r'); hold on;
plot(t, filteredSignal, 'b');
legend('Noisy', 'Filtered');
title('Comparison of Noisy and Filtered Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
saveas(gcf, 'Filtered_vs_Noisy_plot.png');

analyticSignal = hilbert(filteredSignal);
demodulatedSignal = abs(analyticSignal);
demodulatedSignal = demodulatedSignal / max(abs(demodulatedSignal));

figure;
plot(t, demodulatedSignal);
title('Demodulated Audio Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
saveas(gcf, 'Demodulated_plot.png');

audiowrite('demodulated_audio.wav', demodulatedSignal, fs);
