##README.md

#Course Project for the Getting and Cleaning Data Section of the Coursera/John Hopkins University Data Science Course


I. Contents of Dataset
=======================
The dataset includes the four following files:

1. README.md  - this README file.
2. run\_analysis.R - a script that will produce a data frame presenting the mean values from a subset of a larger dataset defined below.
3. mean\_summary.txt - the data frame that results from successfully running the 'run\_analysis.R' script.
4. CodeBook.md - defining the variable names included in the mean\_summary data frame.  


II. Introduction and Instructions for Use
=========================================
The 'mean\_summary' dataset is derived from the much larger Human Activity Recognition Using Smartphones Dataset. In order to run the 'run\_analysis.R script', it is necessary to first download this original dataset from the following link:

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

This zip file should be unpacked in the same folder where you have stored the 'run\_analysis.R' script. After this file is unpacked, the 'run\_analysis.R' script can be run, which will result in the subset dataset ('mean\_summary.txt') being created and saved inside the UCI Har Dataset folder (the top level folder for the larger dataset).  


III. Description of the 'run\_analysis.R' Script
================================================
In order to create the mean\_summary dataset, 'run\_analysis.R' executes the following steps (also detailed in the comments within 'run\_analysis.R'):

1. Loads the dplyr package, in order to make use of this package's 'group\_by' and 'summarise\_each' functions.  
2. Sets the 'UCI HAR Dataset' folder as the working directory.  
3. Reads in the data from both the training and test sets of data containted in UCI HAR Dataset and creates two data frames, one for the test data ('test\_data') and one for the training data ('train\_data').  
4. Merges the resulting test and training data frames into a merged data frame ('merge\_data').  
5. Derives a list of variable names for all of the observations in the original dataset from the 'features.txt' file available in the UCI Har Dataset folder.  
6. Cleans up the variable names to create consistent naming (unlike the original dataframe, where mean is usually indicated in variable names as '-mean()' but occasionally as 'Mean'). Parentheses and dashes are also cleaned from variable names to ease complication with programmatic use of variable names. 
7. In addition to cleaning and standardizing variable names for all mean values and standard deviations in the merge\_data dataframe, the function 'gsub' is used to remove 'Mean' from the names in the final seven 'angle' observations in the original dataset as they represent mean value data of a different nature from the preceding 554 observations (I therefore chose to remove these observations from the final mean and standard deviations data frame). The seven 'angle' variables thereby removed from the larger dataset are as follows: 
  1. angle(tBodyAccMean,gravity)
  2. angle(tBodyAccJerkMean),gravityMean)
  3. angle(tBodyGyroMean,gravityMean)
  4. angle(tBodyGyroJerkMean,gravityMean)
  5. angle(X,gravityMean)
  6. angle(Y,gravityMean)
  7. angle(Z,gravityMean)  
8. Two additional variable names are added to the beginning of the 'variable\_names' vector, one ('subject') for the subjects in the experiment and one ('activity') for the activities monitored in the experiment.  
9. After the final 'variable\_names' vector is set, these names are applied as column names to the merge\_data data frame.  
10. A subset of this larger data frame (filtered\_data) which includes only mean values and standard deviations from the original dataset is then created by filtering out variables that have neither "Mean" (for mean value) or "Std" (for standard deviation) in the variable name. This results in a table with 68 columns (subject, activity, 33 mean values and 33 standard deviations) and 10299 rows (representing all of the observations recorded in the experiment).  
11. The integers in the activities column are replaced with the names of the actual activities that these integers (1-6) represent: walking, walking upstairs, walking downstairs, sitting, standing and laying.  
12. The resulting dataframe ('filtered\_data') is grouped, first by subject and then by activity, using 'group\_by' from the dplyr package.  
13. Mean values are derived from the grouped data frame using the dplyr package's summarise\_each function. These mean values are compiled into the final mean\_summary dataframe.  
14. The resulting mean\_summary data frame is written to a text file and saved in the UCI HAR Dataset folder.  
15. The working directory is reset to the parent folder housing both the run\_analysis.R script and the UCI HAR Dataset folder.    

IV. Description of Variable Names
=================================
The variable names provided in the 'mean_summary' data frame are defined in the code book provided here. (See CodeBook.md). While I did clean the variable names both for consistency and to remove symbols such as dashes and parentheses that complicated the variable names for programmatic use within R, I otherwise chose to retain the abbreviated nature of the original variable names in order to not have overly long variable names that would make the data frame unwieldy to view within R (as the column widths would be considerable). The meanings of each of the variable names are clearly defined within CodeBook.md.


V. How to View the Data Frame in 'mean_summary.txt' File
=====================================================
To view the data in 'mean_summary.txt' the following R code should be used ('mean_summary.txt' should be on main level of working directory):  
dat <- read.table('UCI HAR Dataset/mean_summary.txt', header = TRUE)  
View(dat)


VI. Why Should the Data Frame in 'mean_summary.txt' Be Considered 'Tidy'?
========================================================================
Per the rules governing tidy data sets:  
1. each column represents one variable (subject, activity, and 66 separate data points for each subject and activity).  
2. each row represents one observation (a mean value derived from all obervations for this subject and activity in original dataset).  


VII. Description of Original Dataset
===================================
The description for the original Human Activity Recognition Using Smartphones Dataset from which the mean values presented in mean\_summary.txt are derived is as follows:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features\_info.txt' for more details.

For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.

For more details, please refer to the README.txt and features\_info.txt in the UCI HAR Dataset folder.
