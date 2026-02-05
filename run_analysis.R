# Getting and Cleaning Data Course Project
# run_analysis.R

library(dplyr)

# 1. Read activity labels and features
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt",
                              col.names = c("code", "activity"))
features <- read.table("UCI HAR Dataset/features.txt",
                       col.names = c("index", "feature"),
                       check.names = FALSE)

# 2. Read training data
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt",
                            col.names = "subject")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt",
                      col.names = features$feature,
                      check.names = FALSE)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt",
                      col.names = "code")

# 3. Read test data
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt",
                           col.names = "subject")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt",
                     col.names = features$feature,
                     check.names = FALSE)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt",
                     col.names = "code")

# 4. Merge training and test sets
x_merged <- rbind(x_train, x_test)
y_merged <- rbind(y_train, y_test)
subject_merged <- rbind(subject_train, subject_test)
merged_data <- cbind(subject_merged, y_merged, x_merged)

# 5. Extract only mean and std measurements
mean_std_features <- grep("mean\\.\\.|std\\.\\.", colnames(merged_data), value = TRUE)
selected_data <- merged_data %>% select(subject, code, all_of(mean_std_features))

# 6. Use descriptive activity names
selected_data$code <- activity_labels[selected_data$code, 2]

# 7. Clean variable names
names(selected_data) <- gsub("\\.\\.\\.", "_", names(selected_data))
names(selected_data) <- gsub("\\.\\.", "_", names(selected_data))
names(selected_data) <- gsub("\\.", "_", names(selected_data))
names(selected_data) <- gsub("^t", "Time_", names(selected_data))
names(selected_data) <- gsub("^f", "Frequency_", names(selected_data))
names(selected_data) <- gsub("Acc", "Accelerometer", names(selected_data))
names(selected_data) <- gsub("Gyro", "Gyroscope", names(selected_data))
names(selected_data) <- gsub("Mag", "Magnitude", names(selected_data))
names(selected_data) <- gsub("BodyBody", "Body", names(selected_data))
names(selected_data) <- gsub("_mean_", "Mean", names(selected_data))
names(selected_data) <- gsub("_std_", "Std", names(selected_data))
names(selected_data)[2] <- "activity"

# 8. Create tidy dataset with averages
tidy_data <- selected_data %>%
  group_by(subject, activity) %>%
  summarise(across(everything(), mean), .groups = "drop")

# 9. Save tidy dataset
write.table(tidy_data, "tidy_data.txt", row.names = FALSE)

# 10. Print success message
message("Tidy dataset saved as 'tidy_data.txt'")