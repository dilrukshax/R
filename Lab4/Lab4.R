setwd("C:/Users/dilan/OneDrive/Documents/SLIIT/2ST YEAR 2ST SEMESTER/Probability and Statistics - IT2110/Lab/Lab4")
getwd()


data <- read.table("DATA 4.txt", header = TRUE, sep = "")
data

names(data) <- c("Team", "Attendance", "Salary", "Years")
data

attach(data)


boxplot(Attendance, main= "bloxplot of attendence", outline = TRUE, xlab= "Attendance", horizontal = TRUE)
boxplot(Salary, main= "bloxplot of Salary", outline = TRUE, xlab= "Salary", horizontal = TRUE)
boxplot(Years, main= "bloxplot of Years", outline = TRUE, xlab= "Years", horizontal = TRUE)

hist(Attendance,main = "histogran for attendence" , ylab = "Frequency")
abline(h=0)
hist(Salary,main = "histogran for Salary" , ylab = "Frequency")
abline(h=0)
hist(Years,main = "histogran for Years" , ylab = "Frequency")
abline(h=0)

stem(Attendance)
stem(Salary)
stem(Years)

mean(Attendance)
mean(Salary)
mean(Years)

median(Attendance)
median(Salary)
median(Years)

sd(Attendance)
sd(Salary)
sd(Years)

summary(Attendance)
summary(Salary)
summary(Years)


quantile(Attendance)
quantile(Attendance) [4]


IQR(Attendance)
IQR(Salary)
IQR(Years)


#Q3
#function that accept arguments years  give the mode
get.modes <- function(y){
  counts <- table(y)
  names(counts)[counts==max(counts)]
}

get.modes(Years)


#Q3

get.outliers <- function(y){
  q1 <- quantile(y) [2]
  q3 <- quantile(y) [4]
  iqr <- q3-q1
  minimum <- q1 - 1.5 *iqr
  maximum <- q3 + 1.5 *iqr
  print (paste("upper bound" ,maximum))
  print(paste("lower bound" ,minimum))
  print(paste("outliers", paste(sort(y[y<minimum|y>maximum]), collapse = ",")))

}

get.outliers(Years)



