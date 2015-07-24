## run_analysis.R         July 2015     Kourik, J.L.
## Coursera Getting and Cleaning Data Course Project
##
## -----------------------------------------------------------------
## STEP 0. Housekeeping processing
##  Assumptions:
##    "UCI HAR Dataset" has been loaded
##    Working directory changed to "UCI HAR Dataset"
##    packages plyr and dplyr have been loaded

  
    library(plyr)
    library(dplyr)

    ## read feature & activity labels
    features    <- read.csv("features.txt", sep = " ",  header = FALSE)
    activlabels <- read.csv("activity_labels.txt", sep = " ",  header = FALSE)

    ## read training data  (x= measurements y = activities sub = subjects)
    xtrain    <- read.table("train/x_train.txt")
    ytrain    <- read.csv("train/y_train.txt", sep = " ", header = FALSE)
    subtrain  <- read.csv("train/subject_train.txt", sep = " ", header = FALSE) 

    ## read test data
    xtest    <- read.table("test/x_test.txt")
    ytest    <- read.csv("test/y_test.txt", sep = " ", header = FALSE)
    subtest  <- read.csv("test/subject_test.txt", sep = " ", header = FALSE)

## -----------------------------------------------------------------
## STEP 1. Merge the training and the test sets to create one data set.

    ## user IDs and activity columns added
    traincols <-  cbind(xtrain,subtrain ,ytrain )
    testcols  <-  cbind(xtest, subtest , ytest )
    
    ## test & train data appended  & name columns
    alldata                  <- rbind( traincols,testcols )
    colnames(alldata)        <- features [,2]
    names(alldata)[562:563]  <- c("subject", "activity")
    
## -----------------------------------------------------------------
## STEP 2. Extracts only the measurements on the mean and standard 
##         deviation for each measurement. 
   
    ## select only desired columns
    selectfeatures  <- grep("mean\\(\\)|std\\(\\)", features[,2])
    selectfeatures  <- c(selectfeatures, 562, 563)
    selectdata      <- alldata[,selectfeatures]

## -----------------------------------------------------------------
## STEP 3. Uses descriptive activity names to name the activities in 
##         the data set

    ## convert activity number to activity lable e.g. 1 to walking
    selectdata [,68]  <-  activlabels[selectdata[,68],2]

## -----------------------------------------------------------------
## STEP 4. Appropriately labels the data set with descriptive variable names. 

    ## remove special characters from variable names 
    names(selectdata)  <-  gsub("\\(\\)", "", names(selectdata))
    ## change varible names to all lowercase
    names(selectdata) <- tolower(names(selectdata))

## -----------------------------------------------------------------
## STEP 5. From the data set in step 4, creates a second, independent 
##         tidy data set with the average of each variable for each 
##         activity and each subject.
    
    tidydata <- selectdata %>%  group_by(subject, activity) %>% summarise_each(funs(mean))
  
    write.table ( tidydata, file = "tidydata.txt", row.names = FALSE)


    ## to read in the tidy file use the following command
    ## tidydata    <- read.table("tidydata.txt", header = TRUE)

## -------------------- end of script ------------------------------


