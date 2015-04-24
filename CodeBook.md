---
title: "CodeBook"
output: html_document
---

h6. Experiment info
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

h6. Raw data
Both the training data set and test data set contains a number of files that must be combined to create a complete data set.  The X files (e.g. X_test.txt) contains, for each observation a 561-feature vector with time and frequency domain variables.  the Y files (e.g. y_test.txt) contains, for each observation, the id activity being performed at the time of the observation.  The subject file (e.g. subject_test.txt) contains, for each observation, the id of the subject being observed for each observation.

h6. Data manipulation
For both the test data and the training data, the x file, y file, and subject files are loaded and combined into 3 data frames containing the full observation, activity, and subject data.  The activity data is merged with a file containing the names of the activities being performed, and each of the 561 columns in the x_file vectors is appropriately named from data in features.txt.  All of the features that aren't related to standard deviation or mean observations are removed.

This data was then melted then recast to show the mean of every remaining observation for each subject and activity type.