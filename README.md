## Getting and Cleaning Data Course project

The data we use in this project is collected from the accelerometers from the Samsung Galaxy S smartphone.
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]  
We are to write a R script 'run_analysis.R' to merge different pieces of data together into one table and make it clean and tidy following below instructions.

>1. Merges the training and the test sets to create one data set.
>2. Extracts only the measurements on the mean and standard deviation for each measurement. 
>3. Uses descriptive activity names to name the activities in the data set
>4. Appropriately labels the data set with descriptive variable names. 
>5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### 1. Merges the training and the test sets to create one data set.

Before write the script, I deleted the unnecessary files and reorganize directories
for easier access. below is original directories and a reoraganized directories.


original directory   
```    
UCI HAR Dataset/train/subject_train.txt
                      X_train.txt
                      y_train.txt
                      Inertial Signals/body_acc_x_train.txt etc
            
               /test/subject_test.txt
                     X_test.txt
                     y_text.txt
                     Inertial Signals/body_acc_x_train.txt etc
                     
               activity_labels.txt
               features.txt
               features_info.txt
               README.txt
```              
New directory  
```  
               activity_labels.txt
               features.txt
               original_codebook/features_info.txt
                                 README.txt
               train/subject_train.txt
                     X_train.txt
                     y_train.txt
               
               test/subject_test.txt
                    X_test.txt
                    y_text.txt

```
Steps to merge 6 files
-1. Merge training data files (subject_train.txt(7352,1),
                              y_train.txt(7352,1),
                              X_train.txt(7352,561))

-> 7352 rows * 562 columns   

-2. Merge test data files     (subject_test.txt(2947,1),
                              y_test.txt(2947,1),
                              X_test.txt(2947,561))

-> 2947 rows * 561 coolumns

-3. Merge training and test data together
-> 10299 rows * 563 columns

### 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

-1.read the variable names from features.txt and extract only the variable names containing mean/std. Note that I did not include the variable names like 'angle(tBodyAccJerkMean),gravityMean)' because the figures are angles between vectors according to their codebook.  

-2.subset the data using indices from previous step from the merged data.


#### 3. Use descriptive activity names to name the activities in the data set

Activity names are stored as integer label in 'activity' column. Factored this column and labeled with actual activity names using data from 'activity_label.txt'

#### 4.Appropriately labels the data set with descriptive variable names
Variable names of the merged data have still '()'. Removed them all but I did not change any variable names since it already descriptive enough.

#### 5.Create a second, independent tidy data set with the average of each 
variable for each actibity and each subject

Group the data by activity then subject id. Calculated each mean values.
wrote the data in csv file.


