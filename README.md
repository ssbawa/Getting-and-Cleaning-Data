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



The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/ window).  The sensor acceleration signal,  which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components; therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

2.	Details on Records
-	Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
-	Triaxial Angular velocity from the gyroscope. 
-	A 561-feature vector with time and frequency domain variables. 
-	Its activity label. 
-	An identifier of the subject who carried out the experiment.

3.	Files Included
-	README.txt
-	features_info.txt': Shows information about the variables used on the feature vector.
-	features.txt': List of all features.
-	activity_labels.txt': Links the class labels with their activity name.
-	train/X_train.txt': Training set.
-	train/y_train.txt': Training labels.
-	test/X_test.txt': Test set.
-	test/y_test.txt': Test labels.



a.	The following files are available for the train and test data. Their descriptions are equivalent. 
-	Train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
-	Train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
-	Train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
-	Train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

##### Also refer the code book for more information.  

  
