Getting and cleaning data
For creating a tidy data set of wearable computing data originally from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Files in this repo

README.md -- you are reading it right now
CodeBook.md -- codebook describing variables, the data and transformations
run_analysis.R -- actual R code
run_analysis.R goals

You should create one R script called run_analysis.R that does the following: 1. Merges the training and the test sets to create one data set. 2. Extracts only the measurements on the mean and standard deviation for each measurement. 3. Uses descriptive activity names to name the activities in the data set 4. Appropriately labels the data set with descriptive activity names. 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

It should run in a folder of the Samsung data (the zip had this folder: UCI HAR Dataset) The script assumes it has in it's working directory the following files and folders:

activity_labels.txt
features.txt
test/
train/
The output is created in working directory with the name of tidy2.txt

Note: the R script is built to run without including any libraries for the purpose of this course.

run_analysis.R walkthrough

It follows the goals step by step.

Step 1:

Read X_test, Y_test, subject_test, X_train, Y_train, subject_train, activity_labels and feature into separate files.



Step 2:

Merge the TEST data (composed by X_test,subject_test and y_test) all together, do the same procedure with the TRAIN data (composed by X_train, subject_train and y_train)
onces obtainig the TEST and TRAIN data, merged these into a single data set, in this example we called as "sensor_data".

Step 3:

Add to the feature vector two new elements, which we called as "Subject" and "ActivityId", then match the new feature vector with the sensor_data.


Step 4:

select from senso_data  the variable that contain "mean", "std", then sotore in a new data frame (here we called as "sensor_data_mean_and_std"), you should also include "Subject" and "ActivityId".


Step 5:

Merge the "sensor_data_mean_and_std" and "activity_labels", the idea is to creat a data set with the corresponding activities labels. 
After that, we set the variable names with the a descriptive name the following lines show us the tranformation perform in the run_analysis file.
   -Replace "t" by "Time"
   -Replace "f" by "Frequency"
   -Replace "Acc" by "Acceleration"
   -Remove "()"
   -Replace "Mag" by "Magnitud"
   -Replace "Acc" by "Acceleration"
   -Remove "-"
   -Replace "mean" by "Mean"
   
