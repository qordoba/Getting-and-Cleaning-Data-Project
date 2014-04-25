Getting-and-Cleaning-Data-Project
=================================

This file is the codebook for the project of the course "Getting and Cleaning Data"

The output of the project should be as follows;

* a tidy data set as described below,
* a link to a Github repository with your script for performing the analysis,  
* a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The R script called "run_analysis.R" does the following. 
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


The experiment is done in the same order as the 5 steps mentioned earlier. 

N.B: To run the R script, the files must be loaded in the working directory under a directory called "UCI HAR Dataset"

##  The R script works as follows 

###  First Step: Reading Data
The first step is to read the data and bind the train with the test data. 

### Second Step: Extracting certain measurements
Extracts only the measurements on the mean and standard deviation for each measurement. 
the features files has the name of each measurement, we use the "grep" function to extract the names that has "mean" or "std" in it. 

### Third Step: Naming properly
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive activity names. 

### Fourth Step: Creating the tidy data
Creates a second, independent tidy data set with the average of each variable for each activity and each subject.