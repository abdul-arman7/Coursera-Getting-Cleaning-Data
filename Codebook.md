# CodeBook for Human Activity Recognition Tidy Dataset

## Source Data
Human Activity Recognition Using Smartphones Dataset Version 1.0

Original data: https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Study Design
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

## Data Transformations Performed
1. Merged the training and test sets to create one data set
2. Extracted only the measurements on the mean and standard deviation for each measurement
3. Used descriptive activity names to name the activities in the data set
4. Appropriately labeled the data set with descriptive variable names
5. Created a second, independent tidy data set with the average of each variable for each activity and each subject

## Variables in tidy_data.txt

### Identifier Variables
1. **subject** - Volunteer ID (integer, 1-30)
2. **activity** - Activity name (factor with 6 levels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

### Measurement Variables (Averages)
All measurement variables are numeric and represent the average of mean() or std() measurements for each subject-activity pair. Units are normalized and bounded within [-1,1].

**Time Domain Signals:**
3. **TimeBodyAccelerometerMeanX** - Average of mean body acceleration signal in X direction
4. **TimeBodyAccelerometerMeanY** - Average of mean body acceleration signal in Y direction
5. **TimeBodyAccelerometerMeanZ** - Average of mean body acceleration signal in Z direction
6. **TimeBodyAccelerometerStdX** - Average of standard deviation of body acceleration in X direction
7. **TimeBodyAccelerometerStdY** - Average of standard deviation of body acceleration in Y direction
8. **TimeBodyAccelerometerStdZ** - Average of standard deviation of body acceleration in Z direction
9. **TimeGravityAccelerometerMeanX** - Average of mean gravity acceleration in X direction
10. **TimeGravityAccelerometerMeanY** - Average of mean gravity acceleration in Y direction
11. **TimeGravityAccelerometerMeanZ** - Average of mean gravity acceleration in Z direction
12. **TimeGravityAccelerometerStdX** - Average of standard deviation of gravity acceleration in X direction
13. **TimeGravityAccelerometerStdY** - Average of standard deviation of gravity acceleration in Y direction
14. **TimeGravityAccelerometerStdZ** - Average of standard deviation of gravity acceleration in Z direction
15. **TimeBodyAccelerometerJerkMeanX** - Average of mean body linear acceleration jerk in X direction
16. **TimeBodyAccelerometerJerkMeanY** - Average of mean body linear acceleration jerk in Y direction
17. **TimeBodyAccelerometerJerkMeanZ** - Average of mean body linear acceleration jerk in Z direction
18. **TimeBodyAccelerometerJerkStdX** - Average of standard deviation of body linear acceleration jerk in X direction
19. **TimeBodyAccelerometerJerkStdY** - Average of standard deviation of body linear acceleration jerk in Y direction
20. **TimeBodyAccelerometerJerkStdZ** - Average of standard deviation of body linear acceleration jerk in Z direction
21. **TimeBodyGyroscopeMeanX** - Average of mean angular velocity in X direction
22. **TimeBodyGyroscopeMeanY** - Average of mean angular velocity in Y direction
23. **TimeBodyGyroscopeMeanZ** - Average of mean angular velocity in Z direction
24. **TimeBodyGyroscopeStdX** - Average of standard deviation of angular velocity in X direction
25. **TimeBodyGyroscopeStdY** - Average of standard deviation of angular velocity in Y direction
26. **TimeBodyGyroscopeStdZ** - Average of standard deviation of angular velocity in Z direction
27. **TimeBodyGyroscopeJerkMeanX** - Average of mean angular velocity jerk in X direction
28. **TimeBodyGyroscopeJerkMeanY** - Average of mean angular velocity jerk in Y direction
29. **TimeBodyGyroscopeJerkMeanZ** - Average of mean angular velocity jerk in Z direction
30. **TimeBodyGyroscopeJerkStdX** - Average of standard deviation of angular velocity jerk in X direction
31. **TimeBodyGyroscopeJerkStdY** - Average of standard deviation of angular velocity jerk in Y direction
32. **TimeBodyGyroscopeJerkStdZ** - Average of standard deviation of angular velocity jerk in Z direction
33. **TimeBodyAccelerometerMagnitudeMean** - Average of mean magnitude of body acceleration
34. **TimeBodyAccelerometerMagnitudeStd** - Average of standard deviation of body acceleration magnitude
35. **TimeGravityAccelerometerMagnitudeMean** - Average of mean magnitude of gravity acceleration
36. **TimeGravityAccelerometerMagnitudeStd** - Average of standard deviation of gravity acceleration magnitude
37. **TimeBodyAccelerometerJerkMagnitudeMean** - Average of mean magnitude of body linear acceleration jerk
38. **TimeBodyAccelerometerJerkMagnitudeStd** - Average of standard deviation of body linear acceleration jerk magnitude
39. **TimeBodyGyroscopeMagnitudeMean** - Average of mean magnitude of angular velocity
40. **TimeBodyGyroscopeMagnitudeStd** - Average of standard deviation of angular velocity magnitude
41. **TimeBodyGyroscopeJerkMagnitudeMean** - Average of mean magnitude of angular velocity jerk
42. **TimeBodyGyroscopeJerkMagnitudeStd** - Average of standard deviation of angular velocity jerk magnitude

**Frequency Domain Signals:**
43. **FreqBodyAccelerometerMeanX** - Average of mean Fast Fourier Transform (FFT) of body acceleration in X direction
44. **FreqBodyAccelerometerMeanY** - Average of mean FFT of body acceleration in Y direction
45. **FreqBodyAccelerometerMeanZ** - Average of mean FFT of body acceleration in Z direction
46. **FreqBodyAccelerometerStdX** - Average of standard deviation of FFT of body acceleration in X direction
47. **FreqBodyAccelerometerStdY** - Average of standard deviation of FFT of body acceleration in Y direction
48. **FreqBodyAccelerometerStdZ** - Average of standard deviation of FFT of body acceleration in Z direction
49. **FreqBodyAccelerometerJerkMeanX** - Average of mean FFT of body linear acceleration jerk in X direction
50. **FreqBodyAccelerometerJerkMeanY** - Average of mean FFT of body linear acceleration jerk in Y direction
51. **FreqBodyAccelerometerJerkMeanZ** - Average of mean FFT of body linear acceleration jerk in Z direction
52. **FreqBodyAccelerometerJerkStdX** - Average of standard deviation of FFT of body linear acceleration jerk in X direction
53. **FreqBodyAccelerometerJerkStdY** - Average of standard deviation of FFT of body linear acceleration jerk in Y direction
54. **FreqBodyAccelerometerJerkStdZ** - Average of standard deviation of FFT of body linear acceleration jerk in Z direction
55. **FreqBodyGyroscopeMeanX** - Average of mean FFT of angular velocity in X direction
56. **FreqBodyGyroscopeMeanY** - Average of mean FFT of angular velocity in Y direction
57. **FreqBodyGyroscopeMeanZ** - Average of mean FFT of angular velocity in Z direction
58. **FreqBodyGyroscopeStdX** - Average of standard deviation of FFT of angular velocity in X direction
59. **FreqBodyGyroscopeStdY** - Average of standard deviation of FFT of angular velocity in Y direction
60. **FreqBodyGyroscopeStdZ** - Average of standard deviation of FFT of angular velocity in Z direction
61. **FreqBodyAccelerometerMagnitudeMean** - Average of mean FFT magnitude of body acceleration
62. **FreqBodyAccelerometerMagnitudeStd** - Average of standard deviation of FFT magnitude of body acceleration
63. **FreqBodyAccelerometerJerkMagnitudeMean** - Average of mean FFT magnitude of body linear acceleration jerk
64. **FreqBodyAccelerometerJerkMagnitudeStd** - Average of standard deviation of FFT magnitude of body linear acceleration jerk
65. **FreqBodyGyroscopeMagnitudeMean** - Average of mean FFT magnitude of angular velocity
66. **FreqBodyGyroscopeMagnitudeStd** - Average of standard deviation of FFT magnitude of angular velocity
67. **FreqBodyGyroscopeJerkMagnitudeMean** - Average of mean FFT magnitude of angular velocity jerk
68. **FreqBodyGyroscopeJerkMagnitudeStd** - Average of standard deviation of FFT magnitude of angular velocity jerk

## Notes
- All measurements are normalized and bounded within [-1,1]
- Features are normalized to have zero mean and unit variance
- The tidy dataset contains 180 observations (30 subjects × 6 activities) and 68 variables
- Each measurement variable represents the average of that variable for each subject-activity pair