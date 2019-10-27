## Note: This script requires setwd("./Projects/Getting_Cleaning_Project")
library(dplyr)
## Create variables for fileanames
file1 <- "./data/X_train.txt"
file2 <- "./data/y_train.txt"
file3 <- "./data/X_test.txt"
file4 <- "./data/y_test.txt"
file5 <- "./data/features.txt"

## 1. Load data into data frames and merge##
# Input training data
X_train <- read.delim(file1, header = FALSE, sep = "")
Y_train <- read.delim(file2, header = FALSE, sep = "")
features <- read.delim(file5, header = FALSE, sep = "")
names(Y_train) <- "Activity"
names(X_train) <- features[,2]
train_DF <- cbind(Y_train, X_train); rm(X_train); rm(Y_train)
# Input test data
X_test <- read.delim(file3, header = FALSE, sep = "")
Y_test <- read.delim(file4, header = FALSE, sep = "")
names(X_test) <- features[,2] ; rm(features)
names(Y_test) <- "Activity"
test_DF <- cbind(Y_test, X_test); rm(Y_test); rm(X_test)
# Merge Test and Train data sets
mergeDF <- rbind(train_DF, test_DF); rm(test_DF); rm(train_DF)


## 2. Extract only the measurements on the mean and standard deviation for each measurement.
# There are duplicate variables in the dataset, so these must be removed first
temp1 <- mergeDF[,!duplicated(names(mergeDF))]; rm(mergeDF)
# select only columns corresponding to Activity, mean() and std()
temp2 <- select(temp1, Activity, contains("mean()"),contains("std()"))

## 3. Uses descriptive activity names to name the activities in the data set
# Add descriptive name column
temp3 <- mutate(temp2, ActivityName = factor(Activity,
labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", 
           "STANDING", "LAYING")))
# Move column to second position in data frame
temp4 <- select(temp3, ActivityName, contains("mean()"),contains("std()"))
temp5 <- temp4
## 4. Appropriately label the data set with descriptive variable names.
names(temp5) <- sub("^t","Time",names(temp4)) # replace first "t" with "Time
names(temp5) <- sub("^f","Freq",names(temp5)) # replace first "f" with Freq
names(temp5) <- gsub("-","_",names(temp5)) # replace dshes with underscores
names(temp5) <- gsub("Acc","Acceleration",names(temp5)) # replace "Acc" with "Acceleration"
names(temp5) <- gsub("\\(\\)","",names(temp5)) # remove parentheses

tidyDF1 <- temp5
rm(temp1); rm(temp2); rm(temp3); rm(temp4); rm(temp5) # clear temporary variables

## 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject.
ActivityGroup <- group_by(tidyDF1,ActivityName)
ActivitySummary <- summarize_all(ActivityGroup, list(mean))
rm(ActivityGroup)