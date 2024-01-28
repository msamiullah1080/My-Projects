[audioIn, Fs] = audioread('Audio Semester Project.mp3');
T = 1/Fs; % Sampling period 
L = length(audioIn); % Length of signal
t = 0:(L-1)*T; % Time vector
df = Fs/L;
audioFreq = -Fs/2:df:Fs/2-df;
D = fftshift(fft(audioIn)/length(fft(audioIn)));
% Frequency thresholds
lower_thresh = 50; 
upper_thresh = 1500; 
val = abs(audioFreq)<upper_thresh & abs(audioFreq)>lower_thresh;
bgFFT = D(:, 1); bgFFT(val) = 0; 
speechFFT = D(:, 1); speechFFT(~val) = 0; 
bgIFFT = ifftshift(bgFFT);
audioBG = ifft(bgIFFT * length(fft(audioIn)));
speechIFFT = ifftshift(speechFFT);
audioSpeech = ifft(speechIFFT * length(fft(audioIn)));
% Write separated mp3 files of background and speech
audiowrite('background.mp3', real(audioBG), Fs);
audiowrite('enhanced_audio.mp3', real(audioSpeech), Fs);