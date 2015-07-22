# Getting and Cleaning Data Project
## Johns Hopkins and Coursera, July, 2015

This this repo contains the course project for the Getting and Cleaning Data course. The contents of this README file :

* Introduction
* Details
* Processing
* Output
* Repository Contents
* References

## Introduction

The project reads in data from Human Activity Recognition Using Smartphones Data Set, commonly called the Samsung Dataset.  This project cleans and processes the dataset to create a tidy dataset in which the means are computed for measures of means and standard deviations.

## Details
  
Requirements

*   Libraries `plyr` and `dplyr` installed
*   Dataset installed in directory "UCI HAR Dataset"
*   Change working directory to "UCI HAR Dataset" using `setwd("UCI_HAR_Dataset")`
*   Download the git repo to "UCI HAR Dataset" directory
*   Source() and run script run_analysis.R
  
## Processing
The R script called run_analysis.R that does the following. 

    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement. 
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names. 
    5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Output
Tidy data is a standard way of mapping the meaning of a dataset to its structure. A dataset is messy or tidy depending on how rows, columns and tables are matched up with observations, variables and types. In tidy data:

*    Each variable forms a column.
*    Each observation forms a row.
*    Each type of observational unit forms a table.

The output from the project is a tidy dataset meeting the above requirements.  It is a file with headers and 180 observations of 68 variables. Measurements are summarized by subject ID and activity and represent the mean of group of means and stand deviations.

To read in the file use: 
    `tidydata    <- read.table("tidydata.txt", header = TRUE)`

## Repository Contents
        README.md       (this file)
        codebook.md     describing the data
        run_analysis.R  script that does the processing
        tidydata.txt    tidy output from processing
        
## References

Data source: 

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. Retrieved from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Tidy Data Described:

*  Hadley Wickham http://www.jstatsoft.org/v59/i10/paper
*  David Hood  https://class.coursera.org/getdata-030/forum/thread?thread_id=107
*  Tutorial with R code: https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html


  

