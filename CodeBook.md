##Code Book

Code Book for Course Project for Getting and Cleaning Data

============================================

As noted in the 'features_info.txt' file in the original dataset:
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. (n.b. these patterns are broken out into separate x, y and z variables within both the original dataset and the 'mean_summary' dataset). 

Based on this information, the variables found in the included 'mean_summary' data frame are defined as follows:

subject  
Integers 1 through 30 identifying the experiment's 30 volunteers (age 19-48)

activity  
The six activities observed for each of the thirty subjects:  
1. walking  
2. walking upstairs  
3. walking downstairs  
4. sitting  
5. standing  
6. laying  


The following variable names represent the mean values and standard deviation for each of the observed signals:

tBodyAccStdX  
Standard deviation for the time domain body acceleration signal along the x axis.

 
tBodyAccStdY  
Standard deviation for the time domain body acceleration signal along the y axis.


tBodyAccStdZ  
Standard deviation for the time domain body acceleration signal along the z axis.


tGravityAccStdX  
Standard deviation for the time domain gravity acceleration signal along the x axis.


tGravityAccStdY  
Standard deviation for the time domain gravity acceleration signal along the y axis.


tGravityAccStdZ  
Standard deviation for the time domain gravity acceleration signal along the z axis.


tBodyAccJerkStdX  
Standard deviation for the time domain body acceleration jerk signal along the x axis.

 
tBodyAccJerkStdY  
Standard deviation for the time domain body acceleration jerk signal along the y axis.


tBodyAccJerkStdZ  
Standard deviation for the time domain body acceleration jerk signal along the z axis.


tBodyGyroStdX  
Standard deviation for the time domain body gyroscope signal along the x axis.


tBodyGyroStdY  
Standard deviation for the time domain body gyroscope signal along the y axis.


tBodyGyroStdZ  
Standard deviation for the time domain body gyroscope signal along the z axis.


tBodyGyroJerkStdX  
Standard deviation for the time domain body gyroscope jerk signal along the x axis.


tBodyGyroJerkStdY  
Standard deviation for the time domain body gyroscope jerk signal along the y axis.


tBodyGyroJerkStdZ  
Standard deviation for the time domain body gyroscope jerk signal along the z axis.


tBodyAccMagStd  
Standard deviation for the magnitude of the three-dimensional time domain body acceleration signal.


tGravityAccMagStd  
Standard deviation for the magnitude of the three-dimensional time domain gravity signal.


tBodyAccJerkMagStd  
Standard deviation for the magnitude of the three-dimensional time domain body acceleration jerk signal.


tBodyGyroMagStd  
Standard deviation for the magnitude of the three-dimensional time domain body gyroscope signal.


tBodyGyroJerkMagStd  
Standard deviation for the magnitude of the three-dimensional time domain body gyroscope jerk signal.


fBodyAccStdX  
Standard deviation for the frequency domain body acceleration signal along the x axis.


fBodyAccStdY  
Standard deviation for the frequency domain body acceleration signal along the y axis.


fBodyAccStdZ  
Standard deviation for the frequency domain body acceleration signal along the z axis.


fBodyAccJerkStdX  
Standard deviation for the frequency domain body acceleration jerk signal along the x axis.


fBodyAccJerkStdY  
Standard deviation for the frequency domain body acceleration jerk signal along the y axis.


fBodyAccJerkStdZ  
Standard deviation for the frequency domain body acceleration jerk signal along the z axis.


fBodyGyroStdX  
Standard deviation for the frequency domain body gyroscope signal along the x axis.


fBodyGyroStdY  
Standard deviation for the frequency domain body gyroscope signal along the y axis.


fBodyGyroStdZ  
Standard deviation for the frequency domain body gyroscope signal along the z axis.


fBodyAccMagStd  
Standard deviation for the magnitude of the three-dimensional frequency domain body acceleration signal.


fBodyAccJerkMagStd  
Standard deviation for the magnitude of the three-dimensional frequency domain body acceleration jerk signal.


fBodyGyroMagStd  
Standard deviation for the magnitude of the three-dimensional frequency domain body gyroscope signal.


fBodyGyroJerkMagStd  
Standard deviation for the magnitude of the three-dimensional frequency domain body gyroscope jerk signal.


tBodyAccMeanX  
Mean value for the time domain body acceleration signal along the x axis.


tBodyAccMeanY  
Mean value for the time domain body acceleration signal along the y axis.


tBodyAccMeanZ  
Mean value for the time domain body acceleration signal along the z axis.


tGravityAccMeanX   
Mean value for the time domain gravity acceleration signal along the x axis.


tGravityAccMeanY  
Mean value for the time domain gravity acceleration signal along the y axis.


tGravityAccMeanZ  
Mean value for the time domain gravity acceleration signal along the z axis.


tBodyAccJerkMeanX  
Mean value for the time domain body acceleration jerk signal along the x axis.


tBodyAccJerkMeanY  
Mean value for the time domain body acceleration jerk signal along the y axis.


tBodyAccJerkMeanZ  
Mean value for the time domain body acceleration jerk signal along the z axis.


tBodyGyroMeanX  
Mean value for the time domain body gyroscope signal along the x axis.


tBodyGyroMeanY  
Mean value for the time domain body gyroscope signal along the y axis.


tBodyGyroMeanZ  
Mean value for the time domain body gyroscope signal along the z axis.


tBodyGyroJerkMeanX  
Mean value for the time domain body gyroscope jerk signal along the x axis.


tBodyGyroJerkMeanY  
Mean value for the time domain body gyroscope jerk signal along the y axis.


tBodyGyroJerkMeanZ  
Mean value for the time domain body gyroscope jerk signal along the z axis.


tBodyAccMagMean  
Mean value for the magnitude of the three-dimensional time domain body acceleration signal.


tGravityAccMagMean  
Mean value for the magnitude of the three-dimensional time domain gravity acceleration signal.


tBodyAccJerkMagMean  
Mean value for the magnitude of the three-dimensional time domain body acceleration jerk signal.


tBodyGyroMagMean  
Mean value for the magnitude of the three-dimensional time domain gyroscope signal.


tBodyGyroJerkMagMean  
Mean value for the magnitude of the three-dimensional time domain gyroscope jerk signal.


fBodyAccMean  
Mean value for the frequency domain body acceleration signal along the x axis.


fBodyAccMeanY  
Mean value for the frequency domain body acceleration signal along the y axis.


fBodyAccMeanZ  
Mean value for the frequency domain body acceleration signal along the z axis.


fBodyAccJerkMeanX  
Mean value for the frequency domain body acceleration jerk signal along the x axis.


fBodyAccJerkMeanY  
Mean value for the frequency domain body acceleration jerk signal along the y axis.


fBodyAccJerkMeanZ  
Mean value for the frequency domain body acceleration jerk signal along the z axis.


fBodyGyroMeanX  
Mean value for the frequency domain body gyroscope signal along the x axis.

 
fBodyGyroMeanY  
Mean value for the frequency domain body gyroscope signal along the y axis.


fBodyGyroMeanZ  
Mean value for the frequency domain body gyroscope signal along the z axis.


fBodyAccMagMean  
Mean value for the magnitude of the three-dimensional frequency domain body acceleration signal.


fBodyAccJerkMagMean  
Mean value for the magnitude of the three-dimensional frequency domain body acceleration jerk signal.


fBodyGyroMagMean  
Mean value for the magnitude of the three-dimensional frequency domain body gyroscope signal.


fBodyGyroJerkMagMean  
Mean value for the magnitude of the three-dimensional frequency domain body gyroscope jerk signal.
