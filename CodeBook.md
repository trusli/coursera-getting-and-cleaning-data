A general description of the codebook and its contents.

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

Libraries used: httr and plyr

Download and unzip raw data from URL source

Extract features data from files to be used for column names and load into data.frame
    ./UCI HAR Dataset/features.txt

Extract test data from files and load into data.frame
    ./UCI HAR Dataset/test/subject_test.txt
    ./UCI HAR Dataset/test/x_test.txt
    ./UCI HAR Dataset/test/y_test.txt
Label data.frame columns based on features.txt file

Extract train data from filesand load into data.frame
    ./UCI HAR Dataset/train/subject_train.txt
    ./UCI HAR Dataset/train/X_train.txt
    ./UCI HAR Dataset/train/y_train.txt
Label data.frame columns based on features.txt file

Merges the test and train data.frame into one data.frame
Grep column names and extracts mean and standard deviation measurements only 
Use activity_labels.txt to label data.frame column with descriptive variable names.   
Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
