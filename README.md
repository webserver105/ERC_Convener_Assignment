Modulate Audio Signal Processing Task
-------------------------------------
**Project Goal:** Recover the original audio from a modulated signal using FFT and demodulation techniques

Methodology
-----------

1. Import wav file in MATLAB <br>
2. Perform FFT Analysis to find carrier frequency <br>
   (In our case it is 10580Hz)<br>
3. Use bandwidth filter to isolate the modulated content<br>
4. using absolute value to extract the amplitude variations (AM demodulation)<br>
5. Low-Pass Filter, to remove the carrier and high-frequency noise, keeping only the baseband audio<br>
6. Normalization of the final audio to make it clean and audible.<br>
7. Exporting the file as demodlated_audio.wav<br>

Files Submitted
---------------
1. fft_analysis.jpg --> Frequency spectrum of the modulated signal <br>
2. demodulated_audio.wav --> Final recovered/filtered audio file <br>
<br>
Prepared by: Kunal Gandvane <br>
Date: 10th April, 2025
