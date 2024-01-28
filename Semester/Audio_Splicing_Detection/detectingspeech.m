% Load your audio file or use your existing audio signal
[audioIn, Fs] = audioread('Audio Semester Project.mp3');

% Set the window and overlap parameters
win = hamming(512);  % Replace with your desired window function and length
overlapLength = 256;  % Replace with your desired overlap length

% Detect speech regions
speechRegions = detectSpeech(audioIn(:, 1), Fs, 'Window', win, 'OverlapLength', overlapLength);

% Convert the lengths into time
startTime = speechRegions(:, 1) / Fs;
endTime = speechRegions(:, 2) / Fs;

% Plot the audio signal with detected speech regions
t = (0:(length(audioIn)-1)) / Fs;
figure;
plot(t, audioIn(:, 1), 'b');  % Blue for the entire audio signal
hold on;

% Highlight the detected speech regions with green color
for i = 1:size(speechRegions, 1)
    patch([startTime(i), endTime(i), endTime(i), startTime(i)], [-1, -1, 1, 1], 'g', 'FaceAlpha', 0.3);
end

title('Audio Signal with Detected Speech Regions');
xlabel('Time (s)');
ylabel('Amplitude');
legend('Audio Signal', 'Detected Speech Regions', 'Location', 'northwest');
hold off;

% Play the audio with detected speech regions
%soundsc(audioIn(:, 1), Fs);
