[audioIn, Fs] = audioread('Audio Semester Project.mp3');
T = 1/Fs; % Sampling period
L = length(audioIn); % Length of signal
t = 0:L-1; % Time vector

% Plot the magnitude of the original audio signal
figure;
plot(t, audioIn);
title('Magnitude of Original Audio Signal');
xlabel('Time (s)');
ylabel('Magnitude');

% Pause for a moment before plotting the enhanced signal
pause(2);

% Plot the magnitude of the speech-enhanced audio signal
figure;
% Assuming you have separated the speech-enhanced part in audioSpeech
plot(t, audioSpeech);
title('Magnitude of Speech-Enhanced Audio Signal');
xlabel('Time (s)');
ylabel('Magnitude');

% Play the original and enhanced audio
%sound(audioIn, Fs);
%pause(5); % Pause for a moment between playing the original and enhanced audio
%sound(audioSpeech, Fs);
