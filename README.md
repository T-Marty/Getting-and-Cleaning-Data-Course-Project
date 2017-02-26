# Coursera *Getting and Cleaning Data* course project - UCI HAR Data Set

One of the most exciting areas in all of data science right now is wearable computing - see for example [this article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/).

In this project, data collected from the accelerometer and gyroscope of the Samsung Galaxy S smartphone was retrieved, worked with, and cleaned, to prepare a tidy data that can be used for later analysis.

This repo contains the following files:

- `README.md` - provides an overview of the data set and how it was created.
- `tidyData.txt` - the tidy data set extracted from the original data UCI HAR data.
- `CodeBook.md`, the code book describing the contents of 'tidyData.txt'.
- `run_analysis.R`, the R script that was used to create the tidy data set.

## Study Design and Data Collection

The source data used for this project was obtained from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#), which describes the study design and data collection:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
> 
> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Construction of the tidy data set - 'tidyData.txt'

The R script `run_analysis.R` can be run to reproduce the tidy data set if the working directory is the original unzipped UCI HAR folder. 
It retrieves the source data set and transforms it to produce the final data set by implementing the following steps (see the Code book for details, as well as the comments in the script itself):

- Loads the required packages.
- Reads in the necessary data.
- Merges the training and the test data to create one data set. This is done first by row, for files containing data on the same variable, and then by column, to combine different variables.
- Feature names and activity names are extracted from the data set and applied as labels.
- All mesurements  which are not means and standard deviations of the original measurements are discarded. The resulting data is present in GlobalEnv as data.table object 'DATA'.
- A second, independent data set is created with the average of each variable for each activity and each subject. This data is present in GlobalEnv as data.table object 'aggrDATA'.
- The second data set, 'aggrDATA' is written to a .txt file named `tidyData.txt`.
*All intermediate variables created within 'run_analysis.R' are removed once they longer needed to conserve working memory. 

The final data set has the following features:
- One variable per column
- Each different observation of each variable is in a different row
- All variables within the table are of the same "kind"

The file `tidyData.txt` in this repo was created by running the `run_analysis.R` script using R version 3.2.3 (2015-12-10) on Windows 7 64-bit.
