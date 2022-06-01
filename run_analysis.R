# Load the libraries
library(dplyr)

# 1. Merge the training and test dataset

# Fitst load the training data and check the dimensions 
subj_train <- read.table('./train/subject_train.txt')
X_train <- read.table('./train/X_train.txt')
y_train <- read.table('./train/y_train.txt')

# Combine them and name the id and activity label columns
train <- cbind(subj_train, y_train, X_train)
names(train)[1:2] <- c('id','activity')

cat('Combined training data : ', dim(train), ' ')

# Load the test data and check the dimensions 
subj_test <- read.table('./test/subject_test.txt')
X_test <- read.table('./test/X_test.txt')
y_test <- read.table('./test/y_test.txt')

# Combine them and name the id and activity label columns
test <- cbind(subj_test, y_test, X_test)
names(test)[1:2] <- c('id','activity')

cat('Combined test data : ', dim(test), ' ')

# Merge training and test data together
merged <- rbind(train,test)
cat('Merged data : ', dim(merged),' ')
View(merged)

# 2.Extract only the measurements on the mean and standard deviation for
#   each measurement

# Load features names and get indices for the feature names with mean and std
features <- read.table('features.txt')[,2]
indices <- grep('(.*mean.*)|(.*std.*)',features)

# Extract targeted columns using indices
# (Previously combined id and activity columns so added 2 to indices)
merged <- merged[, c(1,2,indices + 2)]
cat('Merged data with selected columns: ', dim(merged), ' ')


# 3. Use descriptive activity names to name the activities in the data set

# Load the activity labels and change the integer labels to activity names
# respectively
activity_labels <- read.table('activity_labels.txt')

merged$activity <- factor(merged$activity,
                          levels = activity_labels$V1,
                          labels = activity_labels$V2,
                          ordered = FALSE)

View(merged)

# 4.Appropriately labels the data set with descriptive variable names

# Add variable names to the selected data set
colnames(merged)[-(1:2)] <- features[indices]


# Remove '()' from variable names
names(merged) <- sub('\\()','',names(merged))
View(merged)


# Lastly order the dataframe by id 
# and change the name of dataframe to 'tidy_data'

tidy_data <- arrange(merged,id)
View(tidy_data)

# 5.Create a second, independent tidy data set with the average of each 
#   variable for each activity and each subject

tidy_data_2 <- tidy_data %>%
      group_by(activity, id) %>%
      summarize_all(mean) %>% 
      arrange(activity, id)

View(tidy_data_2)
cat('final dataset dimention: ',dim(tidy_data_2))

# Save dataframe as csv file 
write.csv(tidy_data_2,'tidy_data_2.csv',row.names = FALSE)


