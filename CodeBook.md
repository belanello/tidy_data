### Codebook



Originally, there are 561 features but reduced to 81 features with only mean and standard deviation values(all normalized). In the final dataset "tidy_data_2.csv", observations are grouped by 6 different activities and then 30 identifiers of the subjects. The values of each row are the averages for each id in a specific activity.   

[The feature information] *_from the original codebook_  

The features come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

|  |Feature name|Data description|Data class|Range
|---:|:---|:---|:---:|:---
1|activity|Activity labels/<br>WALKING,<br>WALKING_UPSTAIRS,<br>WALKING_DOWNSTAIRS,<br>SITTING,<br>STANDING,<br>LAYING|factor|
2|id|Identifier of the subjects|integer|[1,30]
3|tBodyAcc-mean-X|The body acceleration time domain signal in X axis /mean|numeric|[-1, 1] 
4|tBodyAcc-mean-Y|The body acceleration time domain signal in Y axis /mean|numeric|[-1, 1] 
5|tBodyAcc-mean-Z|The body acceleration time domain signal in Z axis /mean|numeric|[-1, 1] 
6|tBodyAcc-std-X|The body acceleration time domain signal in X axis /std|numeric|[-1, 1] 
7|tBodyAcc-std-Y|The body acceleration time domain signal in Y axis /std|numeric|[-1, 1] 
8|tBodyAcc-std-Z|The body acceleration time domain signal  in Z axis /std|numeric|[-1, 1] 
9|tGravityAcc-mean-X|The gravity acceleration time domain signal  in X axis / mean|numeric|[-1, 1] 
10|tGravityAcc-mean-Y|The gravity acceleration time domain signal  in Y axis / mean|numeric|[-1, 1] 
11|tGravityAcc-mean-Z|The gravity acceleration time domain signal  in Z axis / mean|numeric|[-1, 1] 
12|tGravityAcc-std-X|The gravity acceleration time domain signal  in X axis / std|numeric|[-1, 1] 
13|tGravityAcc-std-Y|The gravity acceleration time domain signal  in Y axis / std|numeric|[-1, 1] 
14|tGravityAcc-std-Z|The gravity acceleration time domain signal  in Z axis / std|numeric|[-1, 1] 
15|tBodyAccJerk-mean-X|The body acceleration time domain jerk signal in X axis / mean |numeric|[-1, 1] 
16|tBodyAccJerk-mean-Y|The body acceleration time domain jerk signal in Y axis / mean |numeric|[-1, 1] 
17|tBodyAccJerk-mean-Z|The body acceleration time domain jerk signal in Z axis / mean |numeric|[-1, 1] 
18|tBodyAccJerk-std-X|The body acceleration time domain jerk signal in X axis /std|numeric|[-1, 1] 
19|tBodyAccJerk-std-Y|The body acceleration time domain jerk signal in Y axis /std|numeric|[-1, 1] 
20|tBodyAccJerk-std-Z|The body acceleration time domain jerk signal in Z axis / std|numeric|[-1, 1] 
21|tBodyGyro-mean-X|The body angular velocity time domain signal in X axis/mean|numeric|[-1, 1] 
22|tBodyGyro-mean-Y|The body angular velocity time domain signal in Y axis/mean|numeric|[-1, 1] 
23|tBodyGyro-mean-Z|The body angular velocity time domain signal in Z axis/mean|numeric|[-1, 1] 
24|tBodyGyro-std-X|The body angular velocity time domain signal in X axis/std|numeric|[-1, 1] 
25|tBodyGyro-std-Y|The body angular velocity time domain signal in Y axis/std|numeric|[-1, 1] 
26|tBodyGyro-std-Z|The body angular velocity time domain signal in Z axis/std|numeric|[-1, 1] 
27|tBodyGyroJerk-mean-X|The body angular velocity time domain jerk signal in X axis/mean|numeric|[-1, 1] 
28|tBodyGyroJerk-mean-Y|The body angular velocity time domain jerk signal in Y axis/mean|numeric|[-1, 1] 
29|tBodyGyroJerk-mean-Z|The body angular velocity time domain jerk signal in Z axis/mean|numeric|[-1, 1] 
30|tBodyGyroJerk-std-X|The body angular velocity time domain jerk signal in X axis/std|numeric|[-1, 1] 
31|tBodyGyroJerk-std-Y|The body angular velocity time domain jerk signal in Y axis/std|numeric|[-1, 1] 
32|tBodyGyroJerk-std-Z|The body angular velocity time domain jerk signal in Z axis/std|numeric|[-1, 1] 
33|tBodyAccMag-mean|The magnitude of  three-dimensional signals(euclidian norm)/mean|numeric|[-1, 1] 
34|tBodyAccMag-std|The magnitude of  three-dimensional signals(euclidian norm)/std|numeric|[-1, 1] 
35|tGravityAccMag-mean|The magnitude of  three-dimensional signals(euclidian norm)/mean|numeric|[-1, 1] 
36|tGravityAccMag-std|The magnitude of  three-dimensional signals(euclidian norm)/std|numeric|[-1, 1] 
37|tBodyAccJerkMag-mean|The magnitude of  three-dimensional signals(euclidian norm)/mean|numeric|[-1, 1] 
38|tBodyAccJerkMag-std|The magnitude of  three-dimensional signals(euclidian norm)/std|numeric|[-1, 1] 
39|tBodyGyroMag-mean|The magnitude of  three-dimensional signals(euclidian norm)/mean|numeric|[-1, 1] 
40|tBodyGyroMag-std|The magnitude of  three-dimensional signals(euclidian norm)/std|numeric|[-1, 1] 
41|tBodyGyroJerkMag-mean|The magnitude of  three-dimensional signals(euclidian norm)/mean|numeric|[-1, 1] 
42|tBodyGyroJerkMag-std|The magnitude of  three-dimensional signals(euclidian norm)/std|numeric|[-1, 1] 
43|fBodyAcc-mean-X|The body acceleration frequency domain signal in X axis /mean|numeric|[-1, 1] 
44|fBodyAcc-mean-Y|The body acceleration frequency domain signal in Y axis /mean|numeric|[-1, 1] 
45|fBodyAcc-mean-Z|The body acceleration frequency domain signal in Z axis /mean|numeric|[-1, 1] 
46|fBodyAcc-std-X|The body acceleration frequency domain signal in X axis /std|numeric|[-1, 1] 
47|fBodyAcc-std-Y|The body acceleration frequency domain signal in Y axis /std|numeric|[-1, 1] 
48|fBodyAcc-std-Z|The body acceleration frequency domain signal  in Z axis /std|numeric|[-1, 1] 
49|fBodyAcc-meanFreq-X|The body acceleration frequency domain signal in X axis / mean frequency|numeric|[-1, 1] 
50|fBodyAcc-meanFreq-Y|The body acceleration frequency domain signal in Y axis / mean frequency|numeric|[-1, 1] 
51|fBodyAcc-meanFreq-Z|The body acceleration frequency domain signal in Z axis / mean frequency|numeric|[-1, 1] 
52|fBodyAccJerk-mean-X|The body acceleration frequency domain jerk signal in X axis / mean |numeric|[-1, 1] 
53|fBodyAccJerk-mean-Y|The body acceleration frequency domain jerk signal in Y axis / mean |numeric|[-1, 1] 
54|fBodyAccJerk-mean-Z|The body acceleration frequency domain jerk signal in Z axis / mean |numeric|[-1, 1] 
55|fBodyAccJerk-std-X|The body acceleration frequency domain jerk signal in X axis /std|numeric|[-1, 1] 
56|fBodyAccJerk-std-Y|The body acceleration frequency domain jerk signal in Y axis /std|numeric|[-1, 1] 
57|fBodyAccJerk-std-Z|The body acceleration frequency domain jerk signal in Z axis / std|numeric|[-1, 1] 
58|fBodyAccJerk-meanFreq-X|The body acceleration frequency domain jerk signal in X axis / mean frequency|numeric|[-1, 1] 
59|fBodyAccJerk-meanFreq-Y|The body acceleration frequency domain jerk signal in Y axis / mean frequency|numeric|[-1, 1] 
60|fBodyAccJerk-meanFreq-Z|The body acceleration frequency domain jerk signal in Z axis / mean frequency|numeric|[-1, 1] 
61|fBodyGyro-mean-X|The body angular velocity frequency domain signal in X axis/mean|numeric|[-1, 1] 
62|fBodyGyro-mean-Y|The body angular velocity frequency domain signal in Y axis/mean|numeric|[-1, 1] 
63|fBodyGyro-mean-Z|The body angular velocity frequency domain signal in Z axis/mean|numeric|[-1, 1] 
64|fBodyGyro-std-X|The body angular velocity frequency domain signal in X axis/std|numeric|[-1, 1] 
65|fBodyGyro-std-Y|The body angular velocity frequency domain signal in Y axis/std|numeric|[-1, 1] 
66|fBodyGyro-std-Z|The body angular velocity frequency domain signal in Z axis/std|numeric|[-1, 1] 
67|fBodyGyro-meanFreq-X|The body angular velocity frequency domain signal in X axis/mean frequency|numeric|[-1, 1] 
68|fBodyGyro-meanFreq-Y|The body angular velocity frequency domain signal in Y axis/mean frequency|numeric|[-1, 1] 
69|fBodyGyro-meanFreq-Z|The body angular velocity frequency domain signal in Z axis/mean frequency|numeric|[-1, 1] 
70|fBodyAccMag-mean|The magnitude of  three-dimensional signals(euclidian norm)/mean|numeric|[-1, 1] 
71|fBodyAccMag-std|The magnitude of  three-dimensional signals(euclidian norm)/std|numeric|[-1, 1] 
72|fBodyAccMag-meanFreq|The magnitude of  three-dimensional signals(euclidian norm)/mean frequency|numeric|[-1, 1] 
73|fBodyBodyAccJerkMag-mean|The magnitude of  three-dimensional signals(euclidian norm)/mean|numeric|[-1, 1] 
74|fBodyBodyAccJerkMag-std|The magnitude of  three-dimensional signals(euclidian norm)/std|numeric|[-1, 1] 
75|fBodyBodyAccJerkMag-meanFreq|The magnitude of  three-dimensional signals(euclidian norm)/mean frequency|numeric|[-1, 1] 
76|fBodyBodyGyroMag-mean|The magnitude of  three-dimensional signals(euclidian norm)/mean |numeric|[-1, 1] 
77|fBodyBodyGyroMag-std|The magnitude of  three-dimensional signals(euclidian norm)/std|numeric|[-1, 1] 
78|fBodyBodyGyroMag-meanFreq|The magnitude of  three-dimensional signals(euclidian norm)/mean frequency|numeric|[-1, 1] 
79|fBodyBodyGyroJerkMag-mean|The magnitude of  three-dimensional signals(euclidian norm)/mean |numeric|[-1, 1] 
80|fBodyBodyGyroJerkMag-std|The magnitude of  three-dimensional signals(euclidian norm)/std|numeric|[-1, 1] 
81|fBodyBodyGyroJerkMag-meanFreq|The magnitude of  three-dimensional signals(euclidian norm)/mean frequency|numeric|[-1, 1] 


