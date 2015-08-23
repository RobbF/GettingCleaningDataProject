##load dplyr package for arrange, group_by and summarise_each functions
library(dplyr)

##set working directory to dataset folder
setwd("UCI HAR Dataset")

##upload test data, activities and subjects
test_results <- read.table('test/X_test.txt')
test_activity <- read.table('test/y_test.txt')
test_subject <- read.table('test/subject_test.txt')

##upload train data, activities and subjects
train_results <- read.table('train/X_train.txt')
train_activity <- read.table('train/y_train.txt')
train_subject <- read.table('train/subject_train.txt')

##create training table by column binding 
train_data <- cbind(train_subject, train_activity, train_results)

##create test table
test_data <- cbind(test_subject, test_activity, test_results)

##merge test and train tables to create merged data
merge_data <- rbind(train_data, test_data)

##upload features.txt and use to create column variable headings
variable_names <- read.table('features.txt', stringsAsFactors = FALSE)[,2]

##use gsub to clean up variable names for readability, to standardize spelling, remove redundancy
##and to remove characters(parentheses and dashes) that complicate programmatic use
variable_names <- gsub('-mean\\(\\)','Mean',variable_names) ##reformat mean variables to simplify use
variable_names <- gsub('-std\\(\\)','Std',variable_names) ##reformat std variables to simplify use
variable_names <- gsub('Mean-','Mean',variable_names) ##remove dashes before X, Y, and Z indicators 
variable_names <- gsub('Std-','Std',variable_names) ##remove dashes before X, Y, and Z indicators 
variable_names <- gsub('BodyBody','Body',variable_names) ##remove apparent doubling typo in original list

##use gsub to filter out final seven angle variables in variable name list (see README.md)
variable_names <- gsub('Mean,gravityMean','',variable_names) 
variable_names <- gsub('JerkMean\\),','',variable_names) 
variable_names <- gsub('Mean,gravity','',variable_names) 
variable_names <- gsub('gravityMean','',variable_names) 

##compile final column names (subject, activity, and variable_names) and apply to merge_data
variable_names <- c('subject', 'activity', variable_names)
colnames(merge_data) <- variable_names

##subset only columns that contain mean and standard deviation variables
##by running grep on list of variable names to extract desired columns
std_vbl <- grep('Std', variable_names)
mean_vbl <- grep('Mean', variable_names)

##create vector of subject and activity column names (index 1 and 2) plus
## standard deviation (std_vbl) and mean (mean_vbl) column names
col_filter <- c(1,2,std_vbl, mean_vbl)

##apply column filter to merged data frame 
filtered_data <- merge_data[,col_filter]
fd <- filtered_data ##simplify data frame name for ease of use

##replace the integers (1 - 6) indicating the six separate activities of the 30 subjects
##with clearly descriptive text
fd$activity <- as.character(fd$activity)
fd$activity[fd$activity == "1"] <- "walking"
fd$activity[fd$activity == "2"] <- "walking upstairs"
fd$activity[fd$activity == "3"] <- "walking downstairs"
fd$activity[fd$activity == "4"] <- "sitting"
fd$activity[fd$activity == "5"] <- "standing"
fd$activity[fd$activity == "6"] <- "laying"

##ucreate data frame that lists the calculated mean for all of the mean (Mean) 
##and standard deviation (Std) observations in arranged fd table.
##group table into subsets (using dplyr's group_by function) by subject and then by activity,
##and then use summarise_each (in dplyr package) to calculate all means for grouped subsets
mean_summary <- fd %>% group_by(subject, activity) %>% summarise_each(funs(mean))

##upload resulting mean_summary table as txt file to UCI HAR Dataset folder
write.table(mean_summary, file = 'mean_summary.txt', row.names = FALSE)

##return working directory to main level
setwd('..')