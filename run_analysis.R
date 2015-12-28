
# Load and process X_test & y_test data.

testVariables <- read.table("/Users/aosman/Desktop/rfiles/gettingData/cproject/test/X_test.txt")
testLabels <- read.table("/Users/aosman/Desktop/rfiles/gettingData/cproject/test/y_test.txt")
subject_test <- read.table("/Users/aosman/Desktop/rfiles/gettingData/cproject/test/subject_test.txt")
trainVariables <- read.table("/Users/aosman/Desktop/rfiles/gettingData/cproject/train/X_train.txt")
trainLabels <- read.table("/Users/aosman/Desktop/rfiles/gettingData/cproject/train/y_train.txt")
subject_train <- read.table("/Users/aosman/Desktop/rfiles/gettingData/cproject/train/subject_train.txt")


#Get activity labels and the column data names first
activityLabels <- read.table("/Users/aosman/Desktop/rfiles/gettingData/cproject/activity_labels.txt")[,2]
features <- read.table("/Users/aosman/Desktop/rfiles/gettingData/cproject/features.txt")[,2]


##use regex/pattern matching to get the indexes (i.e. the 'TRUE' locaitons) of the mean and std deviations only
mean_std_features <- grepl("std|mean", features)

#assign the test and train Variables the proper variable names
names(testVariables) = features
names(trainVariables) = features
testVariables = testVariables[,mean_std_features]
trainVariables = trainVariables[,mean_std_features]

# Load activity labels
testLabels[,2] = activityLabels[testLabels[,1]]
trainLabels[,2] = activityLabels[trainLabels[,1]]

names(testLabels) = c("Activity_ID", "Activity_Label")
names(trainLabels) = c("Activity_ID", "Activity_Label")
names(subject_test) = "Subject Number"
names(subject_train) = "Subject Number"

testData <- cbind(subject_test, testLabels, testVariables)
trainData <- cbind(subject_train, trainLabels, trainVariables)

#merge the two datasets together
allData = rbind(testData, trainData)

write.table
