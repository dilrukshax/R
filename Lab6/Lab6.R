setwd("C:/Users/dilan/OneDrive/Documents/SLIIT/2ST YEAR 2ST SEMESTER/Probability and Statistics - IT2110/Lab/Lab6")
getwd()

data6 <- read.table("Forest.txt", header = TRUE, sep = ",")
data6

attach(data6)

#Q2
summary(data6)
str(data6)

#Q3
#517 observation 

#Q4
max(wind)
min(wind)

#Q5
summary(temp )

#Q6
boxplot(wind, horizontal = TRUE , outline = TRUE , pch = 25)

#Q7
#negative 

#Q8
median(temp)

sd(wind)

#Q10
IQR(wind)

#Q11
#2 way frequency table for day and variable 

freq <- table(day,month)
freq

#answer = 21

#Q12
mean(temp[month=="sep"])

#Q13
count <- table(day[month= "jul"])
names(count[count==max(count)])