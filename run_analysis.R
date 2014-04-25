# # Source of data for the project:
# Here are the data for the project: 
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
# 
# Instructions: 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive activity names. 
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## Inputing the data
## 1. Merges the training and the test sets to create one data set.
X_tmp1 <- read.table("UCI HAR Dataset/train/X_train.txt")
X_tmp2 <- read.table("UCI HAR Dataset/test/X_test.txt")
X <- rbind(X_tmp1, X_tmp2)

Y_tmp1 <- read.table("UCI HAR Dataset/train/y_train.txt")
Y_tmp2 <- read.table("UCI HAR Dataset/test/y_test.txt")
Y <- rbind(Y_tmp1, Y_tmp2)

S_tmp1 <- read.table("UCI HAR Dataset/train/subject_train.txt")
S_tmp2 <- read.table("UCI HAR Dataset/test/subject_test.txt")
Subject <- rbind(S_tmp1, S_tmp2)

features <- read.table("UCI HAR Dataset/features.txt")
activities <- read.table("UCI HAR Dataset/activity_labels.txt")

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## the features files has the name of each measurement, we use the "grep" function to
## extract the names that has "mean" or "std" in it. 

indices <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
X <- X[, indices]
names(X) <- features[indices, 2]

# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive activity names. 
Y[,1] = activities[Y[,1], 2]
names(Y) <- "activity"
names(Subject) <- "subject"

# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
Data <- cbind(Subject, Y, X)
write.table(Data, "merged selected data.txt")
