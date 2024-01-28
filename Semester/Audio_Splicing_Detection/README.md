# Audio Splicing Detection

Audio splicing is a common manipulation technique in the field of audio forensics, especially in the context of political speeches. This repository presents an approach to detect audio splicing using a proposed architecture that, while not highly accurate, requires minimal computation power for localization.

## Files

- **Audio_Enhancement.m**: Performs preprocessing of the audio, removing background noise or music to improve detection.
- **OriginalvEnhancedplot.m**: Generates a plot comparing the unprocessed and enhanced audio.
- **detectingspeech.m**: Detects the part of the audio that contains the splicing.
- **Main.m**: The main file where processing and detection take place.

## Usage

To clone this repository, use the following command in the terminal:

```bash
git clone https://github.com/msamiullah1080/My-Projects/edit/master/Semester/Audio_Splicing_Detection
```

## How to Use
1. Run `Audio_Enhancement.m` to preprocess the audio and enhance the quality.
2. Execute `OriginalvEnhancedplot.m` to visualize the plot comparing the unprocessed and enhanced audio.
3. Utilize `detectingspeech.m` to detect the spliced parts of the audio.
4. The main functionality is implemented in `Main.m`, where the processing and detection occur.

## Note
While the proposed architecture may not achieve high accuracy, it offers a low-computation alternative for localizing audio splicing.

Feel free to explore and contribute to the development of more accurate detection techniques!

---

*This README file provides a brief overview of the purpose of the repository, the files included, and instructions on how to use the provided code.*
