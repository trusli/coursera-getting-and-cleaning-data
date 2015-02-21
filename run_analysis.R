############################################################################################
#The purpose of this project is to demonstrate the ability to collect, work with, 
#and clean a data set.

#The goal is to prepare tidy data that can be used for later analysis.

# Major steps:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.   
# 5. From the data set in step 4, creates a second, independent tidy data set with the 
#    average of each variable for each activity and each subject.
############################################################################################

library(httr)
library(plyr)

# download and prepare raw data
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, destfile = "dataset.zip")
unzip("dataset.zip", list = FALSE, overwrite = TRUE)

dir.create("results")

# extract features data from files to be used for column names
features_data <- read.table("UCI HAR Dataset/features.txt",sep="",stringsAsFactors=F)

# extract test data from files and label the columns
subject_test_data <- read.table("UCI HAR Dataset/test/subject_test.txt",sep="",stringsAsFactors=F, col.names= "subject_id")
x_test_data <- read.table("UCI HAR Dataset/test/x_test.txt",sep="",stringsAsFactors=F)
colnames(x_test_data) <- as.vector(features_data[,2])
y_test_data <- read.table("UCI HAR Dataset/test/y_test.txt",sep="",stringsAsFactors=F, col.names= "activity_label")
all_test_data <- cbind(subject_test_data,y_test_data,x_test_data)

# extract train data from files and label the columns
subject_train_data <- read.table("UCI HAR Dataset/train/subject_train.txt",sep="",stringsAsFactors=F, col.names= "subject_id")
x_train_data <- read.table("UCI HAR Dataset/train/X_train.txt",sep="",stringsAsFactors=F)
colnames(x_train_data) <- as.vector(features_data[,2])
y_train_data <- read.table("UCI HAR Dataset/train/y_train.txt",sep="",stringsAsFactors=F,col.names= "activity_label")
all_train_data <- cbind(subject_train_data,y_train_data,x_train_data)

# 1. Merges the training and the test sets to create one data set.
all_data <- rbind(all_test_data, all_train_data)
all_data <- arrange(all_data, subject_id)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
mean_std_data <- all_data[,c(1,2,grep("std", colnames(all_data)), grep("mean", colnames(all_data)))]

# 3. Uses descriptive activity names to name the activities in the data set
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt",sep="",stringsAsFactors=F)
mean_std_data$activity_label <- factor(mean_std_data$activity_label, levels=activity_labels$V1, labels=activity_labels$V2)

# 4. Appropriately labels the data set with descriptive variable names.   

# 5. From the data set in step 4, creates a second, independent tidy data set with the 
#    average of each variable for each activity and each subject.
subject_activity <- ddply(mean_std_data, .(subject_id, activity_label), .fun=function(x){ colMeans(x[,-c(1:2)]) })
colnames(subject_activity)[-c(1:2)] <- paste(colnames(subject_activity)[-c(1:2)], "_mean", sep="")
write.table(subject_activity,"subject_activity.txt", row.name = FALSE)
