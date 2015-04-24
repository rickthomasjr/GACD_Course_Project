library(dplyr)
library(reshape2)

tidy_data <- function() {
features <- read.table('data/features.txt')
activities <- read.table('data/activity_labels.txt')
colnames(activities) <- c('id', 'name')

test <- read.table("data/test/X_test.txt")
train <- read.table("data/train/X_train.txt")
test_subjects <- read.table('data/test/subject_test.txt')
train_subjects <- read.table('data/train/subject_train.txt')
test_activities <- read.table('data/test/y_test.txt')
colnames(test_activities) = 'activity_id'
train_activities <- read.table('data/train/y_train.txt')
colnames(train_activities) = 'activity_id'

x_data <- rbind(test, train)
y_data <- rbind(test_activities, train_activities)
subjects <- rbind(test_subjects, train_subjects)

colnames(x_data) = make.names(features$V2, unique=TRUE, allow_=TRUE)
colnames(subjects) = 'subject_id'
y_data <- merge(y_data, activities, by.x = "activity_id", by.y = "id")
tidy1 <- select(x_data, contains('std'), contains('mean'))
tidy1 <- cbind(tidy1, subjects, y_data)

melted <- melt(tidy1, id=c("subject_id", "activity_id", "name"))
nicentidy <- dcast(melted, subject_id+name~variable, mean)
write.table(nicentidy, "tidy.txt", row.name=FALSE, sep="\t")
}