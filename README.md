Notes:

* run_analysis.R assumes the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip has been downloaded and extracted to a directory named "data" within this repository's working directory.
* running the tidy_data() function after sourcing run_analysis.R will process the data and create tidy.csv, which contains the average of all standard deviation or mean related data elements for each activity and subject.