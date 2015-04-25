library(dplyr)

## read in data files
set_train <- read.table("UCI HAR Dataset//train//X_train.txt")
set_test <- read.table("UCI HAR Dataset//test//X_test.txt")

subject_train <- read.table("UCI HAR Dataset//train//subject_train.txt")
subject_test <- read.table("UCI HAR Dataset//test//subject_test.txt")

activity_train <- read.table("UCI HAR Dataset//train//y_train.txt")
activity_test <- read.table("UCI HAR Dataset//test//y_test.txt")

features <- read.table("UCI HAR Dataset//features.txt")


## generate merged data
train <- bind_cols(subject_train, activity_train, set_train)
test <- bind_cols(subject_test, activity_test, set_test)

features <- make.names(features[,2], unique = TRUE)
names(train) <- c("subject", "activity", features)
names(test) <- c("subject", "activity", features)

merged <- bind_rows(train, test)


# use descriptive activity names
dict <- list("walking" = 1, "walking_upstairs" = 2, "walking_downstairs" = 3,
             "sitting" = 4, "standing" = 5, "laying" = 6)
for (idx in 1:6){
    merged$activity <- replace(merged$activity, merged$activity == dict[idx], names(dict[idx]))
}

## extract measurements of mean and deviation of signals
merged_sub <- select(merged, subject, activity, contains("mean..", ignore.case = FALSE), contains("std.."))

## create data set with the average of each variable above for each subject and activity
merged_sub_sum <- summarise_each(group_by(merged_sub, subject, activity), funs(mean))
