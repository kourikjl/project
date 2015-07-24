##Getting and Cleaning Data Course Project Codebook

###Human Activity Recognition Using Smartphones Data Set, commonly called the Samsung Dataset, is available from:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Source Citation: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 

Here are the data for the project as provided by Johns Hopkins and Coursera:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data come from recordings of 30 subjects performing activities of daily living while carrying a waist-mounted smartphone with embedded inertial sensors.

### Files in \UCI HAR Dataset are documented via the source URL above.

* test/x_test.txt.........Measurements from experiments (30% of dataset)
* train/x_train.txt.......Measurements from experiments (70% of dataset)

* test/y_test.txt.........Activity for each row of measurement
* train/y_train.txt.......Activity for each row of measurement

* test/subject_test.txt...Identifiers for 30 subjects by row of  measurement
* train/subject_train.txt.Identifiers for 30 subjects by row of measurement

* features.txt.............Column labels for measurements
* features.info.txt.......Activity labels (e.g. Walking)

### Output from processing by run_analysis.R

* tidydata.txt.............Dataset compiled, cleaned, and computed from above files  
To read in the file use: 
    `tidydata    <- read.table("tidydata.txt", header = TRUE)`

### Tidydata.txt is

* 180 rows (observations) by 68 columns delimited by a space

* A row summarizes the measurements for each combination of subject ID (participant) and activity (e.g. Walking) measurements.

* Variable names were reduced from 561 by searching for, and saving, variables that contained "mean()" or "std()".  Note that variables containing meanFreq(), or other variations beyond "mean()" and "std()", would not be selected or saved.

* Variable names have been converted to lowercase  

####Tidydata has the following columns/headings:     

subject............... Subject ID range 1 - 30    
activity............... Valid activities are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING  

The remaining variables contain the mean of all means or standard deviations reported. Variable names indicate mean for mean and std for standard deviation.   

Measurement: The means and standard deviations were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

tbodyacc-mean-x     
tbodyacc-mean-y  
tbodyacc-mean-z  
tbodyacc-std-x  
tbodyacc-std-y  
tbodyacc-std-z  
tgravityacc-mean-x  
tgravityacc-mean-y   
tgravityacc-mean-z  
tgravityacc-std-x  
tgravityacc-std-y  
tgravityacc-std-z  
tbodyaccjerk-mean-x  
tbodyaccjerk-mean-y  
tbodyaccjerk-mean-z  
tbodyaccjerk-std-x  
tbodyaccjerk-std-y	
tbodyaccjerk-std-z	
tbodygyro-mean-x	
tbodygyro-mean-y	
tbodygyro-mean-z	
tbodygyro-std-x  
tbodygyro-std-y	 
tbodygyro-std-z	
tbodygyrojerk-mean-x  
tbodygyrojerk-mean-y  
tbodygyrojerk-mean-z  
tbodygyrojerk-std-x  
tbodygyrojerk-std-y  
tbodygyrojerk-std-z  
tbodyaccmag-mean  
tbodyaccmag-std  
tgravityaccmag-mean  
tgravityaccmag-std  
tbodyaccjerkmag-mean  
tbodyaccjerkmag-std  
tbodygyromag-mean  
tbodygyromag-std  
tbodygyrojerkmag-mean  
tbodygyrojerkmag-std  
fbodyacc-mean-x  
fbodyacc-mean-y  
fbodyacc-mean-z  
fbodyacc-std-x  
fbodyacc-std-y  
fbodyacc-std-z  
fbodyaccjerk-mean-x  
fbodyaccjerk-mean-y  
fbodyaccjerk-mean-z  
fbodyaccjerk-std-x  
fbodyaccjerk-std-y  
fbodyaccjerk-std-z  
fbodygyro-mean-x  
fbodygyro-mean-y  
fbodygyro-mean-z  
fbodygyro-std-x  
fbodygyro-std-y  
fbodygyro-std-z  
fbodyaccmag-mean  
fbodyaccmag-std  
fbodybodyaccjerkmag-mean  
fbodybodyaccjerkmag-std  
fbodybodygyromag-mean  
fbodybodygyromag-std  
fbodybodygyrojerkmag-mean  
fbodybodygyrojerkmag-std  

----- end of codebook.md -----