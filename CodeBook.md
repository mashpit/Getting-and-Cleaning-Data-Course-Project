Variable Selection 
=================

The variables used in the tidy.txt dataset created for this course project were taken from the “Human Activity Recognition Using Smartphones Dataset Version 1.0” (Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012).

As described in the features_info.txt file included with the original data:

“The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ

tGravityAcc-XYZ

tBodyAccJerk-XYZ

tBodyGyro-XYZ

tBodyGyroJerk-XYZ

tBodyAccMag

tGravityAccMag

tBodyAccJerkMag

tBodyGyroMag

tBodyGyroJerkMag

fBodyAcc-XYZ

fBodyAccJerk-XYZ

fBodyGyro-XYZ

fBodyAccMag

fBodyAccJerkMag

fBodyGyroMag

fBodyGyroJerkMag”

Means (mean) and standard deviations (std) were calculated for each of these measurements in the original dataset. In the tidy.txt dataset, averages of the means and standard deviations for each measurement were calculated for each subject-activity set. There were 30 subjects in all, and each subject performed six different activities. The “subject” column indicates the numeric subject IDs for each subject, and the “activity” column describes the activity performed in each observation in words. The remaining column names are as follows:

"tBodyAccmeanX"        
"tBodyAccmeanY"       
"tBodyAccmeanZ"        
"tGravityAccmeanX"     
"tGravityAccmeanY"     
"tGravityAccmeanZ"    
"tBodyAccJerkmeanX"    
"tBodyAccJerkmeanY"    
"tBodyAccJerkmeanZ"    
"tBodyGyromeanX"      
"tBodyGyromeanY"       
"tBodyGyromeanZ"       
"tBodyGyroJerkmeanX"   
"tBodyGyroJerkmeanY"  
"tBodyGyroJerkmeanZ"   
"tBodyAccMagmean"      
"tGravityAccMagmean"   
"tBodyAccJerkMagmean" 
"tBodyGyroMagmean"     
"tBodyGyroJerkMagmean" 
"fBodyAccmeanX"        
"fBodyAccmeanY"       
"fBodyAccmeanZ"        
"fBodyAccJerkmeanX"    
”fBodyAccJerkmeanY"    
”fBodyAccJerkmeanZ"   
"fBodyGyromeanX"       
"fBodyGyromeanY"       
"fBodyGyromeanZ"       
"fBodyAccMagmean"     
"fBodyAccJerkMagmean"  
"fBodyGyroMagmean"     
"fBodyGyroJerkMagmean" 
"tBodyAccstdX"        
"tBodyAccstdY"         
"tBodyAccstdZ"         
"tGravityAccstdX"      
"tGravityAccstdY"     
"tGravityAccstdZ"      
"tBodyAccJerkstdX"     
"tBodyAccJerkstdY"     
"tBodyAccJerkstdZ"    
"tBodyGyrostdX"        
"tBodyGyrostdY"        
"tBodyGyrostdZ"        
"tBodyGyroJerkstdX"   
"tBodyGyroJerkstdY"    
"tBodyGyroJerkstdZ"    
"tBodyAccMagstd"       
"tGravityAccMagstd"   
"tBodyAccJerkMagstd"   
"tBodyGyroMagstd"      
"tBodyGyroJerkMagstd"  
"fBodyAccstdX"        
"fBodyAccstdY"         
"fBodyAccstdZ"         
"fBodyAccJerkstdX"    
"fBodyAccJerkstdY"    
"fBodyAccJerkstdZ"     
"fBodyGyrostdX"        
"fBodyGyrostdY"        
"fBodyGyrostdZ"       
"fBodyAccMagstd"       
"fBodyAccJerkMagstd"   
"fBodyGyroMagstd"      
"fBodyGyroJerkMagstd" 

where each variable is an average of the mean or standard deviation of each measurement as described earlier in this document for each subject-activity combination. If the variable name includes the word “mean,” then it is an average of the means of that measurement for a subject-activity pair. If the variable name includes the phrase “std,” then it is an average of the standard deviations of that measurement for a subject-activity set.
