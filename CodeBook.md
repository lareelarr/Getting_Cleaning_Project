---
title: "Human Activity Recognition (Tidy Data Format) Codebook"
author: "Larry Mannings"
date: "October 27, 2019"
output: html_document
---



# Introduction

The datasets described in this code book represent data that has been sourced from the Human Activity Recognition (HAR) Using Smartphones Dataset,
Version 1.0. This database built was from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. For more information o the HAR database, please visit <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones> .

# Dataset Information
This tidy data format consists of 2 datasets that were subsetted from the aformentioned HAR database. 

Dataset *tidyDF1* contains a subset of merged HAR datasets from test and training experiments. This merged data was cleaned using Tidy Data principles and subsetted to extract only the measurements on the mean and standard deviation for each measurement criteria.

Dataset *ActivitySummary* contains the average of each variable for each activity and each subject.

# Attribute Information
For each record in the data set it is provided.

1. A 66-feature vector with means and standard deviations of time and frequency domain variables.

2. Its activity label, categorized by the following

    - WALKING

    - WALKING_UPSTAIRS
  
    - WALKING_DOWNSTAIRS
  
    - SITTING
  
    - STANDING
  
    - LAYING
    
3. A subject identifier for one of the 30 subjects participating in the study.


```r
names(tidyDF1)
```

```
##  [1] "Subject"                             
##  [2] "ActivityName"                        
##  [3] "TimeBodyAcceleration_mean_X"         
##  [4] "TimeBodyAcceleration_mean_Y"         
##  [5] "TimeBodyAcceleration_mean_Z"         
##  [6] "TimeGravityAcceleration_mean_X"      
##  [7] "TimeGravityAcceleration_mean_Y"      
##  [8] "TimeGravityAcceleration_mean_Z"      
##  [9] "TimeBodyAccelerationJerk_mean_X"     
## [10] "TimeBodyAccelerationJerk_mean_Y"     
## [11] "TimeBodyAccelerationJerk_mean_Z"     
## [12] "TimeBodyGyro_mean_X"                 
## [13] "TimeBodyGyro_mean_Y"                 
## [14] "TimeBodyGyro_mean_Z"                 
## [15] "TimeBodyGyroJerk_mean_X"             
## [16] "TimeBodyGyroJerk_mean_Y"             
## [17] "TimeBodyGyroJerk_mean_Z"             
## [18] "TimeBodyAccelerationMag_mean"        
## [19] "TimeGravityAccelerationMag_mean"     
## [20] "TimeBodyAccelerationJerkMag_mean"    
## [21] "TimeBodyGyroMag_mean"                
## [22] "TimeBodyGyroJerkMag_mean"            
## [23] "FreqBodyAcceleration_mean_X"         
## [24] "FreqBodyAcceleration_mean_Y"         
## [25] "FreqBodyAcceleration_mean_Z"         
## [26] "FreqBodyAccelerationJerk_mean_X"     
## [27] "FreqBodyAccelerationJerk_mean_Y"     
## [28] "FreqBodyAccelerationJerk_mean_Z"     
## [29] "FreqBodyGyro_mean_X"                 
## [30] "FreqBodyGyro_mean_Y"                 
## [31] "FreqBodyGyro_mean_Z"                 
## [32] "FreqBodyAccelerationMag_mean"        
## [33] "FreqBodyBodyAccelerationJerkMag_mean"
## [34] "FreqBodyBodyGyroMag_mean"            
## [35] "FreqBodyBodyGyroJerkMag_mean"        
## [36] "TimeBodyAcceleration_std_X"          
## [37] "TimeBodyAcceleration_std_Y"          
## [38] "TimeBodyAcceleration_std_Z"          
## [39] "TimeGravityAcceleration_std_X"       
## [40] "TimeGravityAcceleration_std_Y"       
## [41] "TimeGravityAcceleration_std_Z"       
## [42] "TimeBodyAccelerationJerk_std_X"      
## [43] "TimeBodyAccelerationJerk_std_Y"      
## [44] "TimeBodyAccelerationJerk_std_Z"      
## [45] "TimeBodyGyro_std_X"                  
## [46] "TimeBodyGyro_std_Y"                  
## [47] "TimeBodyGyro_std_Z"                  
## [48] "TimeBodyGyroJerk_std_X"              
## [49] "TimeBodyGyroJerk_std_Y"              
## [50] "TimeBodyGyroJerk_std_Z"              
## [51] "TimeBodyAccelerationMag_std"         
## [52] "TimeGravityAccelerationMag_std"      
## [53] "TimeBodyAccelerationJerkMag_std"     
## [54] "TimeBodyGyroMag_std"                 
## [55] "TimeBodyGyroJerkMag_std"             
## [56] "FreqBodyAcceleration_std_X"          
## [57] "FreqBodyAcceleration_std_Y"          
## [58] "FreqBodyAcceleration_std_Z"          
## [59] "FreqBodyAccelerationJerk_std_X"      
## [60] "FreqBodyAccelerationJerk_std_Y"      
## [61] "FreqBodyAccelerationJerk_std_Z"      
## [62] "FreqBodyGyro_std_X"                  
## [63] "FreqBodyGyro_std_Y"                  
## [64] "FreqBodyGyro_std_Z"                  
## [65] "FreqBodyAccelerationMag_std"         
## [66] "FreqBodyBodyAccelerationJerkMag_std" 
## [67] "FreqBodyBodyGyroMag_std"             
## [68] "FreqBodyBodyGyroJerkMag_std"
```


