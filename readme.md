Coursera Course Project For Getting and Cleaning Data


This script downloads the results of  experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. THe resulting data, which can be found at 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

is raw, and not tidy. Therefore, this script simply takes this raw data, and tidies it up.

It does this by:
 combining the test and raw data information provided
 Taking the varaiable names from the differnt files, and combining them into the same table as the raw data. 
 
 A description of the files based on the course project is :
 

Merges the training and the test sets to create one data set.

Extracts only the measurements on the mean and standard deviation for each measurement. 

Uses descriptive activity names to name the activities in the data set

Appropriately labels the data set with descriptive variable names. 

From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
