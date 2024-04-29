
setwd("C:/Users/dilan/OneDrive/Documents/SLIIT/2ST YEAR 2ST SEMESTER/Probability and Statistics - IT2110/Lab/Lab2")
getwd()

#Control Statements
#if, else if, else

x <- -2 
if(x>0){
  print("positive number")
}else if(x<0) {
  print("negative number")
}else{
  print("Zero")
}


#while loop
y<- 1
while(y <6){
  print(y)
  y = y+1
}

#for loop
6:10
for (i in 1:10) {
  print(i)
  
}


######Importing and Exporting  ######

data1 <- read.csv("DATA 2.csv")
fix("data1")  # edit mode
data1
  
  
  
#text file data importing 
data2 <- read.table("data.txt", header = TRUE, sep = " , ")
fix("data2")  # edit mode
data2


#write.table() and write.csv() functions can be used to write a data frame to a file.   
#> write.csv(dataframe, file = filename) 
#> 
#> 


index <- c(1,2,3)
Name<- c("kumara", "nimal", "Sunil")
marks <- c(25,50,34)
  
dataframe <- data.frame(index,Name,marks)
dataframe  
  
write.csv(dataframe, "dataframe1.csv")
write.table(dataframe, "dataframe2.txt")
  


#Functions

funtion1 <- function(a,b){
  y<-a+b
  print(y)
}

funtion1(10,5)


#Q1

Quadroots <- function(a, b, c){
  X1 = (-b+sqrt(b*2-4*a*c))/2*a
  X2 = (-b-sqrt(b*2-4*a*c))/2*a
  print(X1)
  print(X2)
}

Quadroots(2, 3, 1)
  
  

x <- c(1,2,3)   
x[1]/x[2]^3-1+2*x[3]-x[2-1] 


#Q4

vec1 <- c(1:20)
sum(vec1%%3 == 0)

#Q6

data3 <- c(24, 67, 45, 23)
max <- 0
maxindex <- 0

for(i in 1:length(data3)){
  if(max<-data3[i]){
    max<- data3[i]
    maxindex<- i
  }
}
  
maxindex
max


#Q7
which.max(data3)
  
  
