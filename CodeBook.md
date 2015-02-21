## A general description of the codebook and its contents.

File name: run_analysis. R

Major steps:

1. Libraries used: httr and plyr

2. Download and unzip raw data from URL source

3. Extract features data from files to be used for column names and load into data.frame
    ./UCI HAR Dataset/features.txt

4. Extract test data from files and load into data.frame
    ./UCI HAR Dataset/test/subject_test.txt
    ./UCI HAR Dataset/test/x_test.txt
    ./UCI HAR Dataset/test/y_test.txt

5. Label data.frame columns based on features.txt file

6. Extract train data from filesand load into data.frame
    ./UCI HAR Dataset/train/subject_train.txt
    ./UCI HAR Dataset/train/X_train.txt
    ./UCI HAR Dataset/train/y_train.txt

7. Label data.frame columns based on features.txt file

8. Merges the test and train data.frame into one data.frame

9. Grep column names and extracts mean and standard deviation measurements only 

10. Use activity_labels.txt to label data.frame column with descriptive variable names.   

11. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
