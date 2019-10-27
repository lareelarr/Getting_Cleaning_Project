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


```r
names(tidyDF1)
```

```
##  [1] "ActivityName"                        
##  [2] "TimeBodyAcceleration_mean_X"         
##  [3] "TimeBodyAcceleration_mean_Y"         
##  [4] "TimeBodyAcceleration_mean_Z"         
##  [5] "TimeGravityAcceleration_mean_X"      
##  [6] "TimeGravityAcceleration_mean_Y"      
##  [7] "TimeGravityAcceleration_mean_Z"      
##  [8] "TimeBodyAccelerationJerk_mean_X"     
##  [9] "TimeBodyAccelerationJerk_mean_Y"     
## [10] "TimeBodyAccelerationJerk_mean_Z"     
## [11] "TimeBodyGyro_mean_X"                 
## [12] "TimeBodyGyro_mean_Y"                 
## [13] "TimeBodyGyro_mean_Z"                 
## [14] "TimeBodyGyroJerk_mean_X"             
## [15] "TimeBodyGyroJerk_mean_Y"             
## [16] "TimeBodyGyroJerk_mean_Z"             
## [17] "TimeBodyAccelerationMag_mean"        
## [18] "TimeGravityAccelerationMag_mean"     
## [19] "TimeBodyAccelerationJerkMag_mean"    
## [20] "TimeBodyGyroMag_mean"                
## [21] "TimeBodyGyroJerkMag_mean"            
## [22] "FreqBodyAcceleration_mean_X"         
## [23] "FreqBodyAcceleration_mean_Y"         
## [24] "FreqBodyAcceleration_mean_Z"         
## [25] "FreqBodyAccelerationJerk_mean_X"     
## [26] "FreqBodyAccelerationJerk_mean_Y"     
## [27] "FreqBodyAccelerationJerk_mean_Z"     
## [28] "FreqBodyGyro_mean_X"                 
## [29] "FreqBodyGyro_mean_Y"                 
## [30] "FreqBodyGyro_mean_Z"                 
## [31] "FreqBodyAccelerationMag_mean"        
## [32] "FreqBodyBodyAccelerationJerkMag_mean"
## [33] "FreqBodyBodyGyroMag_mean"            
## [34] "FreqBodyBodyGyroJerkMag_mean"        
## [35] "TimeBodyAcceleration_std_X"          
## [36] "TimeBodyAcceleration_std_Y"          
## [37] "TimeBodyAcceleration_std_Z"          
## [38] "TimeGravityAcceleration_std_X"       
## [39] "TimeGravityAcceleration_std_Y"       
## [40] "TimeGravityAcceleration_std_Z"       
## [41] "TimeBodyAccelerationJerk_std_X"      
## [42] "TimeBodyAccelerationJerk_std_Y"      
## [43] "TimeBodyAccelerationJerk_std_Z"      
## [44] "TimeBodyGyro_std_X"                  
## [45] "TimeBodyGyro_std_Y"                  
## [46] "TimeBodyGyro_std_Z"                  
## [47] "TimeBodyGyroJerk_std_X"              
## [48] "TimeBodyGyroJerk_std_Y"              
## [49] "TimeBodyGyroJerk_std_Z"              
## [50] "TimeBodyAccelerationMag_std"         
## [51] "TimeGravityAccelerationMag_std"      
## [52] "TimeBodyAccelerationJerkMag_std"     
## [53] "TimeBodyGyroMag_std"                 
## [54] "TimeBodyGyroJerkMag_std"             
## [55] "FreqBodyAcceleration_std_X"          
## [56] "FreqBodyAcceleration_std_Y"          
## [57] "FreqBodyAcceleration_std_Z"          
## [58] "FreqBodyAccelerationJerk_std_X"      
## [59] "FreqBodyAccelerationJerk_std_Y"      
## [60] "FreqBodyAccelerationJerk_std_Z"      
## [61] "FreqBodyGyro_std_X"                  
## [62] "FreqBodyGyro_std_Y"                  
## [63] "FreqBodyGyro_std_Z"                  
## [64] "FreqBodyAccelerationMag_std"         
## [65] "FreqBodyBodyAccelerationJerkMag_std" 
## [66] "FreqBodyBodyGyroMag_std"             
## [67] "FreqBodyBodyGyroJerkMag_std"
```


