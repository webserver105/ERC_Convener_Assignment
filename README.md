Modulate Audio Signal Processing Task
-------------------------------------
**Project Goal:** Recover the original audio from a modulated signal using FFT, Bandpass Filter and demodulation technique

Methodology
-----------

1. Import wav file in MATLAB using `audioread` function <br>
2. Visualized the time-domain and frequency-domain (FFT) plot<br>
3. Identified a strong carrier around 10.5 kHz<br>
4. Applied bandpass filter from 9.5 kHz to 11.5 kHz (AM demodulation)<br>
5. Used the `hilbert` transform to demodulate the AM signal (envelope detection) <br>
6. Saved the final cleaned audio to `demodulated_audio.wav` <br>

Files Submitted
---------------
1. fft_analysis.jpg <br>
2. demodulate_plot.jpg <br>
3. filtered_vs_noisy_signals.jpg <br>
4. demodulated_audio.wav <br>
5. signal_processing.m (You can open this in VS Code also) <br>
<br>
Prepared by: Kunal Gandvane <br>
Date: 11th April, 2025
