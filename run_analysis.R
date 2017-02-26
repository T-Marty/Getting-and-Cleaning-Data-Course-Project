
# Create path variable
dataPath <- getwd()

# Load required packages
library(data.table)
library(dplyr)
library(tidyr)

# Read training Data files
trainingFeatures <- read.table(file.path(dataPath,"train", "X_train.txt")) %>% 
        as.data.table()
trainingLabels <- read.table(file.path(dataPath,"train", "Y_train.txt")) %>%
        as.data.table()
trainingSubjects <- read.table(file.path(dataPath,"train", "subject_train.txt")) %>%
        as.data.table()

# Read test Data files
testFeatures <- read.table(file.path(dataPath,"test", "X_test.txt")) %>% as.data.table()
testLabels <- read.table(file.path(dataPath,"test", "Y_test.txt")) %>% as.data.table()
testSubjects <- read.table(file.path(dataPath,"test", "subject_test.txt")) %>%
        as.data.table()

###   1. MERGE TRAINING AND TEST DATA TO CREATE ONE DATA SET   ###
# Merge feature data
combinedFeatures <- rbind(trainingFeatures,testFeatures)
rm(testFeatures,trainingFeatures)
# Get feature names
featureNames <- read.table(file.path(dataPath, "features.txt"),stringsAsFactors = FALSE)
featureNames <- featureNames$V2
# Add feature names
names(combinedFeatures) <- featureNames
rm(featureNames)
# Merge label data
combinedLabels <- rbind(trainingLabels, testLabels)
names(combinedLabels) <- "activityNo"
rm(trainingLabels,testLabels)
# Merge subject data
combinedSubjects <- rbind(trainingSubjects,testSubjects)
names(combinedSubjects) <- "subject"
rm(trainingSubjects,testSubjects)
# Combine subject, feature, and label data
combinedData <- cbind(combinedSubjects, combinedLabels, combinedFeatures)
rm(combinedSubjects, combinedLabels, combinedFeatures)

###   2. EXTRACT ONLY THE MEASUREMENTS ON THE MEAN AND STDev FOR EACH MEASUREMENT   ###
featureNamesMeanStd <- grep("mean\\(\\)|std\\(\\)",names(combinedData))
wantedcols <- c(1,2,featureNamesMeanStd)
combinedData <- combinedData[,wantedcols,with=FALSE]
rm(featureNamesMeanStd,wantedcols)

###   3. USE DESCRIPTIVE ACTIVITY NAMES TO NAME THE ACTIVITIES IN THE DATA SET   ###
# Get label key
labelKey <- read.table(file.path(dataPath,"activity_labels.txt"))
names(labelKey) <- c("activityNo", "activityName")
# Merge label key with data
DATA <- merge(labelKey, combinedData , by="activityNo", all.x=TRUE)
rm(combinedData, labelKey, dataPath)
DATA$activityName <- as.character(DATA$activityName)

###   4. APPROPRIATELY LABEL DATA SET WITH DESCRIPTIVE VARIABLE NAMES   ###
## With the exception of 'subject', 'activityNo' and 'activityName' column names,
## the variable names provided in the 'features.txt' file have been used, as these
## are accurate and descriptive:
# leading 't' - time measurement
# leadinf 'f' - frequency measurement
# 'Body' - relating to body movement
# 'Gravity' - graviational acceleration
# 'Jerk' - acceleration due to sudden movement
# 'Gyro' - Gyroscope measurement
# 'Acc' - accelerometer measurement
# 'Mag' - magnitude of movement
# 'mean' - mean
# 'std' - standard deviation


###   5. CREATE A SECOND, INDEPENDENT TIDY DATA SET WITH THE AVERAGE OF EACH  ###
###      VARIABLE FOR EACH ACTIVITY AND SUBJECT                               ###
aggrDATA <- aggregate(.~subject - activityName, data=DATA, mean)
# Sort by activity and subject
aggrDATA <- arrange(aggrDATA, activityNo, subject)
# view the tidy data
View(DATA)
View(aggrDATA)
# Save aggrDATA to text file
write.table(aggrDATA,file = "tidyData.txt", row.name=FALSE)

