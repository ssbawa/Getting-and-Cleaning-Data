Getting-and-Cleaning-Data
=========================

Code for assignment of Getting and Cleaning Data

A) Set the working directory to C:/Data_Sci. If you dont have this directory you will have to create a directory to run the code. 

B) The code gets the raw data from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
as projectdata.zip and unzips the file.

C) Read the test and train data from the current working directory and subfolder UCI HAR Dataset

test/subject_test.txt
test/X_test.txt
test/y_test.txt

train/subject_train.txt
train/X_train.txt
train/y_train.txt

D) After reading merge the respective files (X, Y, Subject) by rbind as we dont have keys

E) Read the features  file and get the required means and standard devaiation columns only. Clean the column names. 

F) Join activity and Y files(merged one)

G) Merge all the files to get the raw data from the assignment. 

H) validate that we have 10299 rows and 68 columns

I) remove the - and other characters from the dataset.

J) Find the mean by subject and activity. Clean the unwanted subject and activity.  

K) The final dataset should be   30 subjects and 6 activity (180 rows) and original 68 Columns. 

L) write the data to file merged_data.txt with rownames false


  
