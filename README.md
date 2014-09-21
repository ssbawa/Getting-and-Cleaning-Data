Getting-and-Cleaning-Data

====================


1. Code Description

Code for assignment of Getting and Cleaning Data

A) Set the working directory to C:/Data_Sci. If you dont have this directory you will have to create a directory to run the code. 

B) The code gets the raw data from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
as projectdata.zip and unzips the file.

C) Read the test and train data from the current working directory and subfolder UCI HAR Dataset. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. So the number of columns should be same but the number of rows ideals should vary.Also Subject has the subject data for each row, Y has the activity data for each row and the X has all  statistical data for features (refer code book for attrubutes)  . 
test/subject_test.txt
test/X_test.txt
test/y_test.txt
train/subject_train.txt
train/X_train.txt
train/y_train.txt

* deatails on files in code document and below.

D) After reading merge the respective files of train and test (X, Y, Subject) by rbind as we dont have keys. The number of columns should remain same and rows should get appended.

E) Read the features  file and get the required means and standard devaiation columns only. Clean the column names of any additional characters except alphabets

F) Join activity and Y files(merged one). This will give names to the activity in final dataset.  

G) Merge all the files to get the raw data from the assignment. 
H) validate that we have 10299 rows and 68 columns
I) remove the - and other characters from the dataset.
J) Find the mean by subject and activity. Clean the unwanted subject and activity.  
K) The final dataset should be   30 subjects and 6 activity (180 rows) and original 68 Columns. 
L) write the data to file merged_data.txt with rownames false



2.	Files Included
-	README.txt
-	features_info.txt': Shows information about the variables used on the feature vector.
-	features.txt': List of all features.
-	activity_labels.txt': Links the class labels with their activity name.
-	train/X_train.txt': Training set.
-	train/y_train.txt': Training labels.
-	test/X_test.txt': Test set.
-	test/y_test.txt': Test labels.



3.	Activity Data
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING




#Note - Refer Code book.
