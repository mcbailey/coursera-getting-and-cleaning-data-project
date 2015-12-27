## CodeBook for Getting & Cleaning Data Course Project

### Introduction

An explanation for the original dataset used in this project can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Description of the data and transformations used can be found below.

### Transformation description

The original data from the source specfied has been transformed in the following ways

Datasets for both the 'Train' and 'Test'  were combined into a single dataframe.  Columns that contained features pertaining to the std or mean were preserved and column labels applied.  The activity column values were transformed from numeric placeholder to the descriptive text.

This single table was then used to calculate a new dataframe that contained the average of each feature for each subject and activity.

### Data Description

The resulting data is the mean value of each of the features listed below for each subject across all activities.

activity - Description of the activity subject is engaged in (Character)
subject - Unique ID of the subject (Numeric)

The following features represent the average of each variable for each activity and each subject.  Description of the individual fields are described in the original dataset and reprinted for convenience at the bottom of this document.

tBodyAcc-mean()-X          
tBodyAcc-mean()-Y           
tBodyAcc-mean()-Z           
tBodyAcc-std()-X           
tBodyAcc-std()-Y            
tBodyAcc-std()-Z            
tGravityAcc-mean()-X       
tGravityAcc-mean()-Y        
tGravityAcc-mean()-Z        
tGravityAcc-std()-X        
tGravityAcc-std()-Y         
tGravityAcc-std()-Z         
tBodyAccJerk-mean()-X      
tBodyAccJerk-mean()-Y       
tBodyAccJerk-mean()-Z       
tBodyAccJerk-std()-X       
tBodyAccJerk-std()-Y        
tBodyAccJerk-std()-Z        
tBodyGyro-mean()-X         
tBodyGyro-mean()-Y          
tBodyGyro-mean()-Z          
tBodyGyro-std()-X          
tBodyGyro-std()-Y           
tBodyGyro-std()-Z           
tBodyGyroJerk-mean()-X     
tBodyGyroJerk-mean()-Y      
tBodyGyroJerk-mean()-Z      
tBodyGyroJerk-std()-X      
tBodyGyroJerk-std()-Y       
tBodyGyroJerk-std()-Z       
tBodyAccMag-mean()         
tBodyAccMag-std()           
tGravityAccMag-mean()       
tGravityAccMag-std()       
tBodyAccJerkMag-mean()      
tBodyAccJerkMag-std()       
tBodyGyroMag-mean()        
tBodyGyroMag-std()          
tBodyGyroJerkMag-mean()     
tBodyGyroJerkMag-std()     
fBodyAcc-mean()-X           
fBodyAcc-mean()-Y           
fBodyAcc-mean()-Z          
fBodyAcc-std()-X            
fBodyAcc-std()-Y            
fBodyAcc-std()-Z           
fBodyAccJerk-mean()-X       
fBodyAccJerk-mean()-Y       
fBodyAccJerk-mean()-Z      
fBodyAccJerk-std()-X        
fBodyAccJerk-std()-Y        
fBodyAccJerk-std()-Z       
fBodyGyro-mean()-X          
fBodyGyro-mean()-Y          
fBodyGyro-mean()-Z         
fBodyGyro-std()-X           
fBodyGyro-std()-Y           
fBodyGyro-std()-Z          
fBodyAccMag-mean()          
fBodyAccMag-std()           
fBodyBodyAccJerkMag-mean() 
fBodyBodyAccJerkMag-std()   
fBodyBodyGyroMag-mean()     
fBodyBodyGyroMag-std()     
fBodyBodyGyroJerkMag-mean() 
fBodyBodyGyroJerkMag-std()

- mean(): Mean value
- std(): Standard deviation
- Features are normalized and bounded within [-1,1].

### Original Raw Data Description

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
