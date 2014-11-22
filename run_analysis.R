##Read in the data
    features <- read.table("UCI HAR Dataset/features.txt")
    Xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
    Xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
    sub_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
    sub_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
    act_train <- read.table("UCI HAR Dataset/train/y_train.txt")
    act_test <- read.table("UCI HAR Dataset/test/y_test.txt")

##Prepare features for use as column headers by removing illegal characters from 
##feature names and make them unique.    
    headers <- make.names(features[,2], unique = TRUE)
    
##Add features as column headers
    colnames(Xtrain) <- headers

##Column-bind the "train" data 
    train_bind <- cbind(Xtrain, sub_train, act_train)
    
##Column-bind the "test" data
    test_bind <- cbind(Xtest, sub_test, act_test)
    
##Assign bound "test" data the same column names as "train" data so that a 
##row-bind can be performed
    names(test_bind) <- names(train_bind)

##Row-bind the "train" and "test" data
    alldata <- rbind(train_bind, test_bind)

##Rename subject column to be more descriptive    
    colnames(alldata)[562] <- "subject"

##Rename activity column to be more descriptive    
    colnames(alldata)[563] <- "activity"
    
##Change activity to a factor variable to name the activities with more
##descriptive activity names.   
    alldata$Activity <- factor(alldata$Activity, labels = c(
      "walking", "walking_upstairs", "walking_downstairs", "sitting", "standing"
      , "laying"))

##load dplyr and tidyr packages    
    library(dplyr) 
    library(tidyr)
 
##Load the data into a data frame tbl for use in dplyr.    
  alldata_tbl <- tbl_df(alldata)

##Extract only the measurements on the mean and standard deviation for each 
##measurement    
  mean_std <- select(alldata_tbl, contains("Mean"), contains("std"), subject, 
                     activity, ignore.case = TRUE)
  mean_std_only <- select(mean_std, -contains("meanFreq"), -contains("angle"))

##Clean up column names by fixing "BodyBody" typos and by removing periods.
  names(mean_std_only) <- gsub("BodyBody", "Body", names(mean_std_only))
  names(mean_std_only) <- gsub("\\.", "", names(mean_std_only))

##Create a data set with the average of each variable for each activity and each 
##subject.    
    aggregate <- group_by(mean_std_only, subject, activity)
    tidy <- summarise_each(aggregate, funs(mean))

##Upload data as a txt file.
write.table(tidy, file = "tidy.txt", row.names = FALSE)
