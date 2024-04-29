print(50:100)
#this is comment
help(class) # get help
?vector

getwd() # get directory 

#2 method
setwd("C:/Users/dilan/OneDrive/Documents/SLIIT/ST YEAR 2ST SEMESTER/Probability and Statistics - IT2110/Lab/Lab1") # change the directory
getwd()

#2 method
setwd("C:\\Users\\it22561770\\Desktop\\lab1")

install.packages("ggplot2") 



#operator
123+456
789-789
58/25
98*89
8**9
3^6
365%%5
7895%/%8

X = 2
Y=3
X>Y
X<Y

A=1
B=2

A>=B
A<=B

A!=B





#Variables


#assigned operations 
#local Variables
X<- 2
a=5

#global Variables
Y<<- 4



#Vectors -  a sequence of numbers or characters, or higher-dimensional arrays like matrices.
X<-c(1,2,3,4)
X
class(X)

Y<-c("A","C","S","W")
Y
class(Y)



#Factor -  a sequence assigning a category to each index.  

gender<-c(0,1,0,0,0,0,1,1,1,1)
Gender<-factor(gender,c(1,0),c("male", "female"))
Gender

furit <- c(1,2,3,1,3,2,2,3)
#1 = apple 2 = kiwi 3 = mango
Furit<-factor(furit,c(1,2,3),c("apple", "kiwi", "mango"))
Furit

#Lists - a collection of objects that may themselves be complicated.

y<-5
x<-c(1,2,4)
z<-c("sa","u", 'B')
data<-list(x,y,z)
data

#Matrix
mat1<-matrix(c(1,2,4,5),nrow=2,ncol=2,byrow= TRUE)
mat1

mat2<-matrix(c(1,2,4,5),nrow=2,ncol=2,byrow= FALSE)
mat2

#Data Frame - a table-like structure (experimental results often collected in this form).
name <- c("a","b","c","b")
height<-c(34,23,12,45)
weight<-c(3,4,5,5)
data <-data.frame(name,height,weight)
data
