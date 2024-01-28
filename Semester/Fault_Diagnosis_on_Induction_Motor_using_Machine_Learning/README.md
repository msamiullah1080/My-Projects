# Fault Detection on Induction Motor using Machine Learning and Signal Processing

This project focuses on the challenging task of detecting and classifying faults in induction motors, emphasizing practical applicability. The development includes a comprehensive Simulink model capturing nuanced motor behavior under various fault conditions.

![Flowchart](https://github.com/msamiullah1080/My-Projects/assets/125732093/fab4f869-bc0e-4f33-97f8-bd8093d042e4)

Rigorous signal processing techniques enhanced the dataset's discriminatory power, while machine learning integration introduced a data-driven approach to fault diagnosis. The Decision Tree algorithm emerged as the preferred choice due to its interpretability, adaptability to non-linear relationships, and robustness against noise, making it highly effective for fault classification.

## Files

- **Induction_motor_simulink_model.slx**: Simulink file containing the induction motor model. Set faults as needed; values will be automatically added to the workspace.
- **Dataset_Generation.m**: Creates a custom dataset, combining features into a matrix and labeling the dataset.
- **fault_detection_induction_motor.csv**: The generated dataset for the project.

![Dataset](https://github.com/msamiullah1080/My-Projects/assets/125732093/7ccc7afe-3bf9-4a04-935b-3c13cac4b3dc)

## Additional Notes

- The Classification Learner App was used to train and test different models on the dataset, achieving promising results.

![Performance_of_ML_Models](https://github.com/msamiullah1080/My-Projects/assets/125732093/2f182de9-0002-4d18-b1e4-f801b9cca630)

## Results

The findings of this project are presented in a research article available on arXiv.

## Clone Repository

To clone this repository, use the following command:

```bash
git clone https://github.com/msamiullah1080/My-Projects/edit/master/Semester/Fault_Diagnosis_on_Induction_Motor_using_Machine_Learning
