## downlad the file in curremt working directory if does not exist 
if (!file.exists("C:/Data_Sci")) {dir.create("C:/Data_Sci")}
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "projectdata.zip",
              mode = "wb")
## unzip the file

unzip("projectdata.zip") 


## read all the test and train data for project
test_subject <- read.table("C:/Data_Sci/UCI HAR Dataset/test/subject_test.txt")
## dim 2947*1
X_test <- read.table("C:/Data_Sci/UCI HAR Dataset/test/X_test.txt")
## dim 2947*561
y_test <- read.table("C:/Data_Sci/UCI HAR Dataset/test/y_test.txt")
## dim 2947*1

train_subject <- read.table("C:/Data_Sci/UCI HAR Dataset/train/subject_train.txt")
## dim 7352*1
X_train <- read.table("C:/Data_Sci/UCI HAR Dataset/train/X_train.txt")
## dim 7352*561
y_train <- read.table("C:/Data_Sci/UCI HAR Dataset/train/y_train.txt")
## dim 7352*1

## 1. merge data as per project assignment. Checked Dimensions totals for verification. 
merge_subject <- rbind(test_subject,train_subject)
## dim 10299*1
merge_X  <-  rbind(X_test, X_train)
## dim 10299*1
merge_Y  <-  rbind(y_test, y_train)  
## dim 10299*1




##2. Extracting only mean and SD as per assignment.   
features <- read.table("C:/Data_Sci/UCI HAR Dataset/features.txt")
#dim 561*2, so I have 561 columns as per X_train
extract_columns <- grep("mean\\(\\)|std\\(\\)", features[, 2])
extract_data <- merge_X[,extract_columns]
names(extract_data) <- gsub("\\(\\)", "", features[extract_columns, 2]) 
# remove "()" 



#dim 10299*66 - correct columns check by find

## 3. Uses descriptive activity names to name the activities in the data set as per assignment.
activity <- read.table("C:/Data_Sci/UCI HAR Dataset/activity_labels.txt")
activity[, 2] <- tolower(gsub("_", "", activity[, 2]))
activity <- activity[merge_Y[, 1], 2] 
names(merge_subject) <- "subject" 
assign_data <- cbind(merge_subject, activity, extract_data) 
##dim(assign_data) 10299*68 , added 2 coloums ok

## 4. Appropriately labels the data set with descriptive variable names as per assignment.
# raw names handled before cbind, removeing  "-" in column names
names(assign_data) <- gsub("-", "", names(assign_data)) 
## dim(assign_data) 10299*68 


## 5. average of each variable for each activity and each subject as per assignment
assign_data$activity <- as.factor(assign_data$activity)
assign_data$subject <- as.factor(assign_data$subject)
final_data = aggregate(assign_data, by=list(activity=assign_data$activity, subject=assign_data$subject), mean)
## cleaning the mean of average and subject by removing columns--(crazy)
final_data[,3] <- NULL 
final_data[,3] <- NULL

##dim(final_data) (30*6) rows and original 68 Columns. 

## write the data to file merged_data.txt

write.table(final_data, "merged_data.txt", row.names=FALSE)


  