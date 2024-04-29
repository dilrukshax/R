setwd("C:/Users/dilan/OneDrive/Documents/SLIIT/2ST YEAR 2ST SEMESTER/Probability and Statistics - IT2110/Lab/Lab3")
getwd()

data1 <- read.csv("DATA 3.csv", header = TRUE)
data1

#get date in edit mode
fix(data1)

#rename the columns 
names(data1) <- c("Age", "Gender", "Accommodation")
fix(data1)

#rename categorical data
data1$Gender <- factor(data1$Gender, c(1,2),c("Male","Female"))
data1$Accommodation <- factor(data1$Accommodation, c(1,2,3), c("Stays at Home", "Boarded Students", "Lodging"))


attach(data1)


#Q2
#frequency table
gender.freq<- table(Gender)
acc.freq <- table(Accommodation)

gender.freq
acc.freq

#pie chart
pie(gender.freq, "pie chart for gender")
pie(acc.freq, "pie chart from accommodation")


#barplot
barplot(gender.freq, main ="bar plot for gender", ylab= "Frequency")
abline(h=0)

barplot(acc.freq, main ="bar plot for Accommodation", ylab= "Frequency")
abline(h=0)


#boxplot
boxplot(Age, main =" boxplot for Age", ylab ="age", outline = 8)


#Q3
gender_acc.freq <- table(Gender,Accommodation)
gender_acc.freq

#stack bar chart
barplot(gender_acc.freq, main = "Gender and Accommodation", legend= rownames(gender_acc.freq))
abline(h=0)

#clustered bar chart
barplot(gender_acc.freq,beside = TRUE, main = "Gender and Accommodation", legend= rownames(gender_acc.freq))
abline(h=0)


#Q4
#side buy side boxplot
boxplot(Age~Gender, main = " age buy gender", xlab = "gender", ylab = "age")
boxplot(Age~Accommodation, main = " age buy Accommodation", xlab = "Accommodation", ylab = "age", outpch = 6)


#Q5
xtabs(Age~Gender+Accommodation)/gender_acc.freq

