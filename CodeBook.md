#Codebook for wearable computing dataset
**Variables**

**subject**                    1..2
    *Subject number*
                               1..30 .Unique identifier assigned to each subject

**label**                      6..18
    *Acitivity label*
                           "WALKING"
                           "WALKING_UPSTAIRS"
                           "WALKING_DOWNSTAIRS"
                           "SITTING"
                           "STANDING"
                           "LAYING"

**Variables**

"Subject"
"Activity"
"ActivityId"
"TimeBodyAccelerationMeanX"
"TimeBodyAccelerationMeanY"
"TimeBodyAccelerationMeanZ"
"TimeBodyAccelerationStandarDiviationX"
"TimeBodyAccelerationStandarDiviationY"
"TimeBodyAccelerationStandarDiviationZ"
"TimeGravityAccelerationMeanX"
"TimeGravityAccelerationMeanY"
"TimeGravityAccelerationMeanZ"
"TimeGravityAccelerationStandarDiviationX"
"TimeGravityAccelerationStandarDiviationY"
"TimeGravityAccelerationStandarDiviationZ"
"TimeBodyAccelerationJerkMeanX"
"TimeBodyAccelerationJerkMeanY"
"TimeBodyAccelerationJerkMeanZ"
"TimeBodyAccelerationJerkStandarDiviationX"
"TimeBodyAccelerationJerkStandarDiviationY"
"TimeBodyAccelerationJerkStandarDiviationZ"
"TimeBodyGyroMeanX"
"TimeBodyGyroMeanY"
"TimeBodyGyroMeanZ"
"TimeBodyGyroStandarDiviationX"
"TimeBodyGyroStandarDiviationY"
"TimeBodyGyroStandarDiviationZ"
"TimeBodyGyroJerkMeanX"
"TimeBodyGyroJerkMeanY"
"TimeBodyGyroJerkMeanZ"
"TimeBodyGyroJerkStandarDiviationX"
"TimeBodyGyroJerkStandarDiviationY"
"TimeBodyGyroJerkStandarDiviationZ"
"TimeBodyAccelerationMagnitudMean"
"TimeBodyAccelerationMagnitudStandarDiviation"
"TimeGravityAccelerationMagnitudMean"
"TimeGravityAccelerationMagnitudStandarDiviation"
"TimeBodyAccelerationJerkMagnitudMean"
"TimeBodyAccelerationJerkMagnitudStandarDiviation"
"TimeBodyGyroMagnitudMean"
"TimeBodyGyroMagnitudStandarDiviation"
"TimeBodyGyroJerkMagnitudMean"
"TimeBodyGyroJerkMagnitudStandarDiviation"
"FrequencyBodyAccelerationMeanX"
"FrequencyBodyAccelerationMeanY"
"FrequencyBodyAccelerationMeanZ"
"FrequencyBodyAccelerationStandarDiviationX"
"FrequencyBodyAccelerationStandarDiviationY"
"FrequencyBodyAccelerationStandarDiviationZ"
"FrequencyBodyAccelerationMeanFreqX"
"FrequencyBodyAccelerationMeanFreqY"
"FrequencyBodyAccelerationMeanFreqZ"
"FrequencyBodyAccelerationJerkMeanX"
"FrequencyBodyAccelerationJerkMeanY"
"FrequencyBodyAccelerationJerkMeanZ"
"FrequencyBodyAccelerationJerkStandarDiviationX"
"FrequencyBodyAccelerationJerkStandarDiviationY"
"FrequencyBodyAccelerationJerkStandarDiviationZ"
"FrequencyBodyAccelerationJerkMeanFreqX"
"FrequencyBodyAccelerationJerkMeanFreqY"
"FrequencyBodyAccelerationJerkMeanFreqZ"
"FrequencyBodyGyroMeanX"
"FrequencyBodyGyroMeanY"
"FrequencyBodyGyroMeanZ"
"FrequencyBodyGyroStandarDiviationX"
"FrequencyBodyGyroStandarDiviationY"
"FrequencyBodyGyroStandarDiviationZ"
"FrequencyBodyGyroMeanFreqX"
"FrequencyBodyGyroMeanFreqY"
"FrequencyBodyGyroMeanFreqZ"
"FrequencyBodyAccelerationMagnitudMean"
"FrequencyBodyAccelerationMagnitudStandarDiviation"
"FrequencyBodyAccelerationMagnitudMeanFreq"
"FrequencyBodyBodyAccelerationJerkMagnitudMean"
"FrequencyBodyBodyAccelerationJerkMagnitudStandarDiviation"
"FrequencyBodyBodyAccelerationJerkMagnitudMeanFreq"
"FrequencyBodyBodyGyroMagnitudMean"
"FrequencyBodyBodyGyroMagnitudStandarDiviation"
"FrequencyBodyBodyGyroMagnitudMeanFreq"
"FrequencyBodyBodyGyroJerkMagnitudMean"
"FrequencyBodyBodyGyroJerkMagnitudStandarDiviation"
"FrequencyBodyBodyGyroJerkMagnitudMeanFreq"

**Data**

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tbodyacc-xyz

tgravityacc-xyz

tbodyaccjerk-xyz

tbodygyro-xyz

tbodygyrojerk-xyz

tbodyaccmag

tgravityaccmag

tbodyaccjerkmag

tbodygyromag

tbodygyrojerkmag

fbodyacc-xyz

fbodyaccjerk-xyz

fbodygyro-xyz

fbodyaccmag

fbodyaccjerkmag

fbodygyromag

fbodygyrojerkmag

The set of variables that were estimated from these signals are:

mean: Mean value

std: Standard deviation

**Transformation**

All the values are means, aggregated over 30 subjects and 6 activities, hence the resulting dataset is 180 rows by 68 columns.