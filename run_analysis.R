# 1. Merge the training and test dataset

# Fitst load the training data and check the dimensions 
subj_train <- read.table('./train/subject_train.txt')
X_train <- read.table('./train/X_train.txt')
y_train <- read.table('./train/y_train.txt')

cat('Subject_id    : ', dim(subj_train), ' ')
cat('Activity label: ', dim(y_train), ' ')
cat('Training data : ', dim(X_train), ' ')

# Combine them and name the id and activity label columns
train <- cbind(subj_train, y_train, X_train)
names(train)[1:2] <- c('id','activity')

head(train)
cat('Training data combined : ', dim(train), ' ')

# Load the test data and check the dimensions 
subj_test <- read.table('./test/subject_test.txt')
X_test <- read.table('./test/X_test.txt')
y_test <- read.table('./test/y_test.txt')

cat('Subject_id    : ', dim(subj_test), ' ')
cat('Activity label: ', dim(y_test), ' ')
cat('Testing data : ', dim(X_test), ' ')

# Combine them and name the id and activity label columns
test <- cbind(subj_test, y_test, X_test)
names(test)[1:2] <- c('id','activity')

head(test)
cat('Test data combined : ', dim(test),' ')

# Now merge training and test data together
merged <- rbind(train,test)
cat('Merged data : ', dim(merged),' ')


# 2.Extract only the measurements on the mean and standard deviation for
#   each measurement

# Load features names and get indices for the feature names with mean and std
features <- read.table('features.txt')[,2]
indices <- grep('(.*mean.*)|(.*std.*)',features)

# Extract targeted columns using indices
# (Previously combined id and activity columns so added 2 to indices)
merged <- merged[, c(1,2,indices + 2)]
cat('Merged data with selected columns: ', dim(merged), ' ')

# Add variable names to the selected data set
colnames(merged)[-(1:2)] <- features[indices]
head(merged)

# 3. Use descriptive activity names to name the activities in the data set

# Load the activity labels and change the integer labels to activity names
# respectively
activity_labels <- read.table('activity_labels.txt')

merged$activity <- factor(merged$activity,
                          levels = activity_labels$V1,
                          labels = activity_labels$V2,
                          ordered = FALSE)

head(merged$activity)

# 4.Appropriately labels the data set with descriptive variable names

# Remove '()' from variable names
names(merged) <- sub('\\()','',names(merged))
head(merged)

names(merged) <- sub('\\()','',names(merged))
names(merged)

# Lastly order the dataframe by id 
# and change the name of dataframe to 'tidy_data'
library(plyr)
tidy_data <- arrange(merged,id)
head(tidy_data)
tail(tidy_data)

# 5.Create a second, independent tidy data set with the average of each 
#   variable for each actibity and each subject

grouping_vars <- c('activity','id')
data_vars <- 3:81
tidy_data_2 <- ddply(tidy_data, grouping_vars, function(x) colMeans(x[data_vars]))
head(tidy_data_2)

# Save dataframe as csv file 
write.csv(tidy_data_2,'tidy_data_2.csv',row.names = FALSE)

test <- read.csv('tidy_data_2.csv')
head(test,20)
tail(test,5)
