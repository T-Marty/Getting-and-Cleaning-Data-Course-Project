
# Code book for Coursera *Getting and Cleaning Data* Tidy Data Set

The tidy data set ('tidyData.txt' within this repo) has been derived from data contained within the UCI HAR Dataset located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
See the `README.md` file of this repo for more information on how 'tidyData.txt' was created.

## Study Design

The source data used for this project was obtained from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#), which describes the study design and data collection:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
> 
> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Code book
NOTE:
  All acceleration variables are in standard gravity units.  
  Features are normalized and bounded within [-1,1].  
  
1  -  'subject'  
		The number of the subject (1 to 30) performing the activity.  
		  
		  
2  -  'activityName'  
		The name of the physical activity being conducted.  
		WALKING  
		WALKING UPSTAIRS  
		WALKING DOWNSTAIRS  
		SITTING  
		STANDING  
		LAYING  
		 
		   
3  -  'activityNo'  
		The number of the physical activity (1 to 6) being conducted. The numbering is consistent with the 'activityName'.  
		  
4  -  'tBodyAcc-mean()-X'  
		Mean acceleration due to body movement along the X-axis, as measured in the time domain.  
		  
  
5  -  'tBodyAcc-mean()-Y'  
		Mean acceleration due to body movement along the Y-axis, as measured in the time domain.  
  
		  
6  -  'tBodyAcc-mean()-Z'  
		Mean acceleration due to body movement along the Z-axis, as measured in the time domain.  
		  
		    
7  -  'tBodyAcc-std()-X'  
		Standard deviation of acceleration due to body movement along the X-axis, as measured in the time domain.  
  
  
8  -  'tBodyAcc-std()-Y'  
		Standard deviation of acceleration due to body movement along the Y-axis, as measured in the time domain.  
  
		  
9  -  'tBodyAcc-std()-Z'  
		Standard deviation of acceleration due to body movement along the Z-axis, as measured in the time domain.  
  
  
10  - 'tGravityAcc-mean()-X'
		Mean gravitational acceleration measured along the X-axis, as measured in the time domain.


11  -  'tGravityAcc-mean()-Y'  
		Mean gravitational acceleration measured along the Y-axis, as measured in the time domain.  
		  
  
12  -  'tGravityAcc-mean()-Z'  
		Mean gravitational acceleration measured along the Z-axis, as measured in the time domain.  
		  
		  
13  -  'tGravityAcc-std()-X'  
		Standard deviation of gravitational acceleration measured along the X-axis, as measured in the time domain.  
  
  
14  -  'tGravityAcc-std()-Y'  
		Standard deviation of gravitational acceleration measured along the Y-axis, as measured in the time domain.  
		  
		  
15  -  'tGravityAcc-std()-Z'  
		Standard deviation of gravitational acceleration measured along the Y-axis, as measured in the time domain.  
		  
		  
16  -  'tBodyAccJerk-mean()-X'  
		Mean derivative in time of acceleration due to body movement along the X-axis.  
		  
		  
17  -  'tBodyAccJerk-mean()-Y'  
		Mean derivative in time of acceleration due to body movement along the Y-axis.  
		  
		  
18  -  'tBodyAccJerk-mean()-Z'  
		Mean derivative in time of acceleration due to body movement along the Z-axis.  
		  
		  
19  -  'tBodyAccJerk-std()-X'  
		Standard deviation of derivative in time of acceleration due to body movement along the X-axis.  
		  
		  
20  -  'tBodyAccJerk-std()-Y'  
		Standard deviation of derivative in time of acceleration due to body movement along the Y-axis.  
		  
		  
21  -  'tBodyAccJerk-std()-Z'  
		Standard deviation of derivative in time of acceleration due to body movement along the Z-axis.  
		  
		  
22  -  'tBodyGyro-mean()-X'  
		Mean angular velocity due to body movement about the X-axis, as measured in time.  
		  
		  
23  -  'tBodyGyro-mean()-Y'  
		Mean angular velocity due to body movement about the Y-axis, as measured in time.  
		  
		  
24  -  'tBodyGyro-mean()-Z'  
		Mean angular velocity due to body movement about the Z-axis, as measured in time.  
		  
		  
25  -  'tBodyGyro-std()-X'  
		Standard deviation of angular velocity due to body movement about the X-axis, as measured in time.  		
		  
  
26  -  'tBodyGyro-std()-Y'  
		Standard deviation of angular velocity due to body movement about the Y-axis, as measured in time.  	
	  
	    
27  -  'tBodyGyro-std()-Z'  
		Standard deviation of angular velocity due to body movement about the Z-axis, as measured in time.  	
		  
  
28  -  'tBodyGyroJerk-mean()-X'  
		Mean time-derivative of angular velocity due to body movement about the X-axis.  
		  
		  
29  -  'tBodyGyroJerk-mean()-Y'  
		Mean time-derivative of angular velocity due to body movement about the Y-axis.  
		  
		  
30  -  'tBodyGyroJerk-mean()-Z'  
		Mean time-derivative of angular velocity due to body movement about the Z-axis.  
		  
		  
31  -  'tBodyGyroJerk-std()-X'  
		Standard deviation of time-derivative of angular velocity due to body movement about the X-axis.  
		  
		  
32  -  'tBodyGyroJerk-std()-Y'  
		Standard deviation of time-derivative of angular velocity due to body movement about the Y-axis.  
		  
		  
33  -  'tBodyGyroJerk-std()-Z'  
		Standard deviation of time-derivative of angular velocity due to body movement about the Z-axis.  
		  
		  
34  -  'tBodyAccMag-mean()'  
		Mean magnitude (Euclidean norm) of 3-dimensional (X,Y,Z) acceleration due to body movement, as measured in time.  
  
  
35  -  'tBodyAccMag-std()'  
		Standard deviation of magnitude (Euclidean norm) of 3-dimensional (X,Y,Z) acceleration due to body movement, as measured in time.  
  
  		
36  -  'tGravityAccMag-mean()'  
		Mean magnitude (Euclidean norm) of 3-dimensional (X,Y,Z) graviational acceleration, as measured in time.  
		  
		  
37  -  'tGravityAccMag-std()'  
		Standard deviation of magnitude (Euclidean norm) of 3-dimensional (X,Y,Z) graviational acceleration, as measured in   time.  
	  	
		  
38  -  'tBodyAccJerkMag-mean()'  
		Mean  magnitude (Euclidean norm) of 3-dimensional (X,Y,Z) time-derivative of body acceleration.  
  
  
39  -  'tBodyAccJerkMag-std()'  
		Standard deviation of magnitude (Euclidean norm) of 3-dimensional (X,Y,Z) time-derivative of body acceleration.  
  
  
40  -  'tBodyGyroMag-mean()'  
		Mean magnitude (Euclidean norm) of 3-dimensional (X,Y,Z) angular velocity due to body movement, as measured in time.  
  
		  
41  -  'tBodyGyroMag-std()'  
		Standard deviation of magnitude (Euclidean norm) of 3-dimensional (X,Y,Z) angular velocity due to body movement, as measured in time.  
		  
		
		  
42  -  'tBodyGyroJerkMag-mean()'  
		Mean of magnitude (Euclidean norm) of 3-dimensional (X,Y,Z) time-derivative of angular velocity due to body movement.  
		  
		  
43  -  'tBodyGyroJerkMag-std()'  
		Standard deviation of magnitude (Euclidean norm) of 3-dimensional (X,Y,Z) time-derivative of angular velocity due to body movement.  
	  	
	  	
44  -  'fBodyAcc-mean()-X'  
		Mean acceleration due to body movement along the X-axis, as measured in the frequency domain.  
		  
  
45  -  'fBodyAcc-mean()-Y'  
		Mean acceleration due to body movement along the Y-axis, as measured in the frequency domain.  
		  
  
46  -  'fBodyAcc-mean()-Z'  
		Mean acceleration due to body movement along the Z-axis, as measured in the frequency domain.  
		  
  
47  -  'fBodyAcc-std()-X'  
		Standard dviation of acceleration due to body movement along the X-axis, as measured in the frequency domain.  
		  
  
48  -  'fBodyAcc-std()-Y'  
		Standard dviation of acceleration due to body movement along the Y-axis, as measured in the frequency domain.  
		  
  
49  -  'fBodyAcc-std()-Z'  
		Standard dviation of acceleration due to body movement along the Z-axis, as measured in the frequency domain.  
		  
  
50  -  'fBodyAccJerk-mean()-X'  
		Mean time derivative of acceleration due to body movement along the X-axis, as measured in the frequency domain.  
		  
		  
51  -  'fBodyAccJerk-mean()-Y'  
		Mean time derivative of acceleration due to body movement along the Y-axis, as measured in the frequency domain.  
		  
		  
52  -  'fBodyAccJerk-mean()-Z'  
		Mean time derivative of acceleration due to body movement along the Z-axis, as measured in the frequency domain.  
		  
		  
53  -  'fBodyAccJerk-std()-X'  
		Standard deviation of time derivative of acceleration due to body movement along the X-axis, as measured in the frequency domain.  
		  
		  
54  -  'fBodyAccJerk-std()-Y'  
		Standard deviation of time derivative of acceleration due to body movement along the Y-axis, as measured in the   frequency domain.  
		  
		  
55  -  'fBodyAccJerk-std()-Z'  
		Standard deviation of time derivative of acceleration due to body movement along the Z-axis, as measured in the frequency domain.  
		  
		  
56  -  'fBodyGyro-mean()-X'  
		Mean angular velocity due to body movement about the X-axis, as measured in the frequency domain.  
		  
		  
57  -  'fBodyGyro-mean()-Y'  
		Mean angular velocity due to body movement about the Y-axis, as measured in the frequency domain.  
		  
  
58  -  'fBodyGyro-mean()-Z'  
		Mean angular velocity due to body movement about the Z-axis, as measured in the frequency domain.  
		  
		  
59  -  'fBodyGyro-std()-X'  
		Standard deviation of angular velocity due to body movement about the X-axis, as measured in the frequency domain.  
		  
		  
60  -  'fBodyGyro-std()-Y'  
		Standard deviation of angular velocity due to body movement about the Y-axis, as measured in the frequency domain.  
		  
		  
61  -  'fBodyGyro-std()-Z'  
		Standard deviation of angular velocity due to body movement about the Z-axis, as measured in the frequency domain.  
		  
		  
62  -  'fBodyAccMag-mean()'  
		Mean magnitude (Euclidean norm) of 3-dimensional (X,Y,Z) acceleration due to body movement, as measured in the frequency domain.  
		  
		  
63  -  'fBodyAccMag-std()'  
		Standard deviation of magnitude (Euclidean norm) of 3-dimensional (X,Y,Z) acceleration due to body movement, as measured in the frequency domain.  
		  
		
64  -  'fBodyBodyAccJerkMag-mean()'  
		Mean magnitude (Euclidean norm) of 3-dimensional (X,Y,Z) derivative of angular velocity due to body movement, as measured in the frequency domain.   
  
  
65  -  'fBodyBodyAccJerkMag-std()'  
		Standard deviation of magnitude (Euclidean norm) of 3-dimensional (X,Y,Z) derivative of angular velocity due to body movement, as measured in the frequency domain.   
  
		  
66  -  'fBodyBodyGyroMag-mean()'  
		Mean of magnitude (Euclidean norm) of 3-dimensional (X,Y,Z) angular velocity due to body movement, as measured in the frequency domain.   
		  
		    
67  -  'fBodyBodyGyroMag-std()'  
		Standard deviation of magnitude (Euclidean norm) of 3-dimensional (X,Y,Z) angular velocity due to body movement, as measured in the frequency domain.  
		  
		  
68  -  'fBodyBodyGyroJerkMag-mean()'  
		Mean of magnitude (Euclidean norm) of 3-dimensional (X,Y,Z) derivative of angular velocity due to body movement, as measured in the frequency domain.  
		  
		  
69  -  'fBodyBodyGyroJerkMag-std()'  
		Standard deviation of magnitude (Euclidean norm) of 3-dimensional (X,Y,Z) derivative of angular velocity due to body movement, as measured in the frequency domain.   
