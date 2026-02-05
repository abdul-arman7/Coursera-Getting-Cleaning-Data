# CodeBook

This describes the variables, data, and transformations in `run_analysis.R`.

## Source Data
Human Activity Recognition Using Smartphones Dataset  
https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Variables in tidy_data.txt
- `subject`: Volunteer ID (1–30)
- `activity`: Activity name (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
- Remaining columns are **averages** of mean and standard deviation measurements for each subject-activity pair.

## Transformations Applied
1. Merged training and test datasets.
2. Extracted only mean and standard deviation measurements.
3. Replaced activity codes with descriptive names.
4. Cleaned variable names for readability.
5. Created a tidy dataset with averages per subject and activity.