## Getting and Cleaning Data Course Project  



The purpose of this project is to demonstrate the skills of reconstructing the data table from the raw data to be ready for analysis and examine the understandings of the concept of _tidy data_.

We are to write a R script 'run_analysis.R' to merge different pieces of data together into one table and make it clean and tidy following below instructions.  

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement. 
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names. 
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

Data: 
Human Activity Recognition Using Smartphones Dataset  
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  

### Repository Contents  



|File name      |Description         |
|---------------|--------------------|
|*README.md       |Documentation of the project |
|*run_analysis.R |R script to create a tidy data set|
|*tidy_data_2.csv |csv file of the final data table of the project|
|*CodeBook.md |Description of the features|
|train/ subject_train.txt|Identifier of the subjects for training data (7352,1)|
|train/ X_train.txt|Records of Triaxial acceleration from the accelerometer / Triaxial Angular velocity from the gyroscope. (7352,561)|
|train/ y_train.txt|Activity labels (7352,1)|
|test/ subject_test.txt|Identifier of the subjects for training data (2947,1)|
|test/ X_test.txt|Records of Triaxial acceleration from the accelerometer / Triaxial Angular velocity from the gyroscope. (2947,561)|
|test/ y_test.txt|Activity labels (2947,1)|
|activity_labels.txt|Description of activities corresponding to the activity labels (6,2)|
|features.txt|Feature names (561,2)|  

- _The file names starting with \* are to be reviewed._  
- _The numbers in parentheses are the dimensions of data._

### Steps to merge/transform the data sets 

---

run_analysis.R script does

**Combine all 6 files together(line 4-31)**  

1. combine subject id, activity labels, observational data for training data by columns.
2. combine subject id, activity labels, observational data for test data by columns.
3. combine 2 dataframes above by rows 

**Extract only the measurements on the mean and standard deviation for each measurement.(line 33-43)**  

1. Load the variable names from features.txt
2. Use regular expressions to extract the indices of the variable names containing mean/std. (Note: I did not include the variable names like 'angle(tBodyAccJerkMean),gravityMean)' because the figures are the angles between vectors according to their codebook.)
3. Subset the columns using indices from previous step from the merged data.

**Change integer labels to actual activity names in the activity column(line 46-57)**

1. Activity names are stored as integer label in 'activity' column. Factored this column and labeled with actual activity names using data from 'activity_label.txt'

**Appropriately labels the data set with descriptive variable names(line 59-74)**  

1. Label the columns 
2. Remove '()' from all the variable names.(Note: I did not change variable names to keep them descriptive and short. Details of variable names are explained in the code book.)  

**Create a second, independent tidy data set with the average of each variable for each activity and each subject(line 76-88)**  

1. Group the data by activity then subject id. 
2. Calculated each mean values.
3. wrote the data in csv file 'final_df.csv.  





