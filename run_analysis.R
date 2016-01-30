###################################################################################################
#1.	Merges the training and the test sets to create one data set.##############################
###################################################################################################

#Here we are going to read the TEST data from the different sources.
X_test<-read.table(".\\UCI HAR Dataset\\test\\X_test.txt",sep="")
y_test<-read.table(".\\UCI HAR Dataset\\test\\y_test.txt",sep="")
subject_test<-read.table(".\\UCI HAR Dataset\\test\\subject_test.txt",sep="")

#Here we are going to read the TRAIN data set.
X_train<-read.table(".\\UCI HAR Dataset\\train\\X_train.txt",sep="")
y_train<-read.table(".\\UCI HAR Dataset\\train\\y_train.txt",sep="")
subject_train<-read.table(".\\UCI HAR Dataset\\train\\subject_train.txt",sep="")


#Now we procedure with the ACTIVITY AND FEATURE file
activity_labels <- read.table(".\\UCI HAR Dataset\\activity_labels.txt", col.names = c("ActivityId", "Activity"))
feature<-read.table(".\\UCI HAR Dataset\\features.txt",colClasses = c("character"))


#Now we are going to merge the the trainig and test data set in a single table.
test_data<-cbind(cbind(X_test,subject_test),y_test)
traning_data<-cbind(cbind(X_train,subject_train),y_train)
sensor_data<-rbind(test_data,traning_data)
#now we are going to labeling the data Set.
complement_lable1<-c(562,563)
complement_lable2<-c("Subject","ActivityId")
complement_lable<-cbind(V1=complement_lable1,V2=complement_lable2)
col_names_sersor<-rbind(feature,complement_lable)

names(sensor_data)<-col_names_sersor$V2 #here we add the "Subject" and "ActivityId" name to "sensor_data"

###################################################################################################
#2.Extracts only the measurements on the mean and standard deviation for each measurement.#########
###################################################################################################

sensor_data_mean_and_std<-sensor_data[,grepl("mean|std|Subject|ActivityId",names(sensor_data))]

###################################################################################################
#3. Uses descriptive activity names to name the activities in the data set.########################
###################################################################################################

sensor_data_mean_and_std<-merge(sensor_data_mean_and_std,activity_labels,by.x = "ActivityId",by.y = "ActivityId")


###################################################################################################
#4.	Appropriately labels the data set with descriptive variable names.#########################
###################################################################################################


names(sensor_data_mean_and_std)<-gsub('^t',"Time",names(sensor_data_mean_and_std))
names(sensor_data_mean_and_std)<-gsub('^f',"Frequency",names(sensor_data_mean_and_std))
names(sensor_data_mean_and_std)<-gsub('Acc',"Acceleration",names(sensor_data_mean_and_std))
names(sensor_data_mean_and_std)<-gsub('\\(|\\)',"",names(sensor_data_mean_and_std))
names(sensor_data_mean_and_std)<-gsub('.std',"StandarDiviation",names(sensor_data_mean_and_std))
names(sensor_data_mean_and_std)<-gsub('Mag',"Magnitud",names(sensor_data_mean_and_std))
names(sensor_data_mean_and_std)<-gsub('-',"",names(sensor_data_mean_and_std))
names(sensor_data_mean_and_std)<-gsub('mean',"Mean",names(sensor_data_mean_and_std))


######################################################################################################
#5. From the data set in step 4, creates a second, independent tidy data set with the average ########
#of each variable for each activity and each subject.                                         ########
######################################################################################################
library(plyr)
library(dplyr)

tidyData <- aggregate(. ~Subject + Activity, sensor_data_mean_and_std, mean)

write.table(tidyData,row.name=FALSE,file = "tidyData.txt")



