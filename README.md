Coursera course: Getting and Cleaning data 

Course Project description and instruction:
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following. 
    Merges the training and the test sets to create one data set.
    Extracts only the measurements on the mean and standard deviation for each measurement. 
    Uses descriptive activity names to name the activities in the data set
    Appropriately labels the data set with descriptive variable names. 
    Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
    
Download date: February 18,2015
Data files from the zip files that are processed:
./UCI HAR Dataset/features.txt
./UCI HAR Dataset/test/subject_test.txt
./UCI HAR Dataset/test/x_test.txt
./UCI HAR Dataset/test/y_test.txt
./UCI HAR Dataset/train/subject_train.txt
./UCI HAR Dataset/train/X_train.txt
./UCI HAR Dataset/train/y_train.txt

The output is a tidy data text file produced using write.table() with row.name=FALSE
subject_activity.txt 

It contains 79 measurements (averages) for each subject and each activity. 
 $ tBodyAcc-std()-X_mean             
 $ tBodyAcc-std()-Y_mean        
 $ tBodyAcc-std()-Z_mean           
 $ tGravityAcc-std()-X_mean       
 $ tGravityAcc-std()-Y_mean           
 $ tGravityAcc-std()-Z_mean        
 $ tBodyAccJerk-std()-X_mean          
 $ tBodyAccJerk-std()-Y_mean          
 $ tBodyAccJerk-std()-Z_mean          
 $ tBodyGyro-std()-X_mean             
 $ tBodyGyro-std()-Y_mean             
 $ tBodyGyro-std()-Z_mean           
 $ tBodyGyroJerk-std()-X_mean          
 $ tBodyGyroJerk-std()-Y_mean         
 $ tBodyGyroJerk-std()-Z_mean        
 $ tBodyAccMag-std()_mean             
 $ tGravityAccMag-std()_mean         
 $ tBodyAccJerkMag-std()_mean          
 $ tBodyGyroMag-std()_mean            
 $ tBodyGyroJerkMag-std()_mean        
 $ fBodyAcc-std()-X_mean              
 $ fBodyAcc-std()-Y_mean               
 $ fBodyAcc-std()-Z_mean               
 $ fBodyAccJerk-std()-X_mean        
 $ fBodyAccJerk-std()-Y_mean          
 $ fBodyAccJerk-std()-Z_mean     
 $ fBodyGyro-std()-X_mean             
 $ fBodyGyro-std()-Y_mean        
 $ fBodyGyro-std()-Z_mean          
 $ fBodyAccMag-std()_mean              
 $ fBodyBodyAccJerkMag-std()_mean     
 $ fBodyBodyGyroMag-std()_mean        
 $ fBodyBodyGyroJerkMag-std()_mean    
 $ tBodyAcc-mean()-X_mean          
 $ tBodyAcc-mean()-Y_mean            
 $ tBodyAcc-mean()-Z_mean        
 $ tGravityAcc-mean()-X_mean         
 $ tGravityAcc-mean()-Y_mean         
 $ tGravityAcc-mean()-Z_mean          
 $ tBodyAccJerk-mean()-X_mean          
 $ tBodyAccJerk-mean()-Y_mean         
 $ tBodyAccJerk-mean()-Z_mean          
 $ tBodyGyro-mean()-X_mean            
 $ tBodyGyro-mean()-Y_mean            
 $ tBodyGyro-mean()-Z_mean            
 $ tBodyGyroJerk-mean()-X_mean         
 $ tBodyGyroJerk-mean()-Y_mean        
 $ tBodyGyroJerk-mean()-Z_mean         
 $ tBodyAccMag-mean()_mean            
 $ tGravityAccMag-mean()_mean          
 $ tBodyAccJerkMag-mean()_mean        
 $ tBodyGyroMag-mean()_mean           
 $ tBodyGyroJerkMag-mean()_mean        
 $ fBodyAcc-mean()-X_mean              
 $ fBodyAcc-mean()-Y_mean             
 $ fBodyAcc-mean()-Z_mean         
 $ fBodyAcc-meanFreq()-X_mean         
 $ fBodyAcc-meanFreq()-Y_mean         
 $ fBodyAcc-meanFreq()-Z_mean         
 $ fBodyAccJerk-mean()-X_mean         
 $ fBodyAccJerk-mean()-Y_mean         
 $ fBodyAccJerk-mean()-Z_mean          
 $ fBodyAccJerk-meanFreq()-X_mean      
 $ fBodyAccJerk-meanFreq()-Y_mean     
 $ fBodyAccJerk-meanFreq()-Z_mean     
 $ fBodyGyro-mean()-X_mean            
 $ fBodyGyro-mean()-Y_mean            
 $ fBodyGyro-mean()-Z_mean            
 $ fBodyGyro-meanFreq()-X_mean         
 $ fBodyGyro-meanFreq()-Y_mean        
 $ fBodyGyro-meanFreq()-Z_mean        
 $ fBodyAccMag-mean()_mean            
 $ fBodyAccMag-meanFreq()_mean         
 $ fBodyBodyAccJerkMag-mean()_mean     
 $ fBodyBodyAccJerkMag-meanFreq()_mean 
 $ fBodyBodyGyroMag-mean()_mean       
 $ fBodyBodyGyroMag-meanFreq()_mean    
 $ fBodyBodyGyroJerkMag-mean()_mean    
 $ fBodyBodyGyroJerkMag-meanFreq()_mean


