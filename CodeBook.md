A general description of the codebook and its contents.

Major steps:
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
