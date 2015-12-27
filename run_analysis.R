run_analysis <- function()
{
  # Read in data, labels and descriptions from file
  testData <- read.table("datasets/test/X_test.txt")
  testLabels <- read.table("datasets/test/y_test.txt") 
  testSubjects <- read.table("datasets/test/subject_test.txt")
  trainData <- read.table("datasets/train/X_train.txt")
  trainLabels <- read.table("datasets/train/y_train.txt") 
  trainSubjects <- read.table("datasets/train/subject_train.txt")
  features <- read.table("datasets/features.txt")
  activities <- read.table("datasets/activity_labels.txt")
  
  # Combined colums per dataset and merge the rows into in single dataframe
  combinedData <- rbind(cbind(testSubjects, testLabels, testData),
                        cbind(trainSubjects, trainLabels, trainData))
  
  # Subset the features to extract only columns for std and mean
  desiredFeatureCols <- grep("-(mean|std)\\(\\)", features[, 2])
  subsetColumn = desiredFeatureCols + 2; # add two to each value to avoid subject and activity
  
  # Subset data based on desired columns
  combinedData <- combinedData[, c(1,2,subsetColumn)]
  
  # Substitute descriptive column names
  names <- as.character(features[desiredFeatureCols, 2])
  colNames <- c("subject", "activity", names) ## Add first two field names manually
  colnames(combinedData) <- colNames
  
  # Replace activity values with descriptive names
  combinedData$activity <- factor(combinedData$activity,
                               activities$V1,
                               labels = activities$V2)
  
  # Turn subjects into factors
  combinedData$subject <- as.factor(combinedData$subject)
  
  # Find the mean of each entry by subject and activity
  tidyData = aggregate(combinedData[, 3:length(colnames(combinedData))], by=list(activity = combinedData$activity, subject=combinedData$subject), mean)
  
  # Export results
  write.table(tidyData, "tidy.txt", sep="\t")
}