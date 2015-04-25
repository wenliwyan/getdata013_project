# getdata013_project
## Getting and Cleanning Data (Apr 6  -Mar 3, 2015)

This is a repo submitted for the course's peer assessments, and contains:

_run_analysis.R_, R script that does the following:
1. Merges the training set and the test set.
    * UCI HAR Dataset//train//X_train.txt -- 7352 obs. (windows) of 561 vars (features estimated from signals)
    * UCI HAR Dataset//test//X_test.txt -- 2947 obs. of 561 vars
    `The sensor signals are captured at a rate of 50Hz, then processed and sampled in windows of 2.56 s; 
     there are 30 subjects(volunteers) in all, performing 6 different activities;
     70% of volunteers were selected generating the training data while 30% the test data.`
    * UCI HAR Dataset//train//y_train.txt -- 7352 obs. of 1 var
    * UCI HAR Dataset//test//y_test.txt -- 2947 obs. of 1 var     
2. Extracts only the measurements on the mean and standard deviation for each measurement.
    `variables with names contain mean() or std()`
3. Uses descriptive activity names to name the activities in the data set
    * UCI HAR Dataset//activity_labels.txt
4. Appropriately labels the data set with descriptive variable names.
    * UCI HAR Dataset//featurs.txt
5. From the data set in step 4, creates a second, independent _tidy data_ set with the average 
of each variable for each activity and each subject.

_CodeBook.md_, a code book that describes the variables, the data, and any transformations or work 
that I performed to clean up the data.

_README.md_

Excerpt from the project's description:
>One of the most exciting areas in all of data science right now is wearable computing. 
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.
A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
