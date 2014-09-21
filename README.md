Getting-and-Cleaning-Data

====================


6. Code Description

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

4.	Feature Selection 
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

5.	Activity Data
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING


6.	Notes 
-	Features are normalized and bounded within [-1,1].
-	Each feature vector is a row on the text file.
-	For more information about this dataset contact: activityrecognition@smartlab.ws

7.	License:
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.





