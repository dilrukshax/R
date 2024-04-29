setwd("C:/Users/dilan/OneDrive/Documents/SLIIT/2ST YEAR 2ST SEMESTER/Probability and Statistics - IT2110/Lab/Lab5")
getwd()


data5 <- read.table("Data.txt", header = TRUE, sep = ",")
data5

names(data5) <- c("x1", "x2")
attach(data5) #run 2 times


#Q1
hist(x2, main = "Number of shareholders", )
abline(h=0)

#Q2
histogram <- hist(x2, main = "Number of shareholders", breaks = seq(130,270, length=8), right = FALSE )
abline(h=0)

#n = number of classes 
#length = n+1


#Q3
#1-step - identifying break points 
breaks <- round(histogram$breaks)
breaks
# identrfy the frecqunce of each class
freq <- histogram$counts
freq

# identry thhe mid point each class
mid <- histogram$mids
mid

#create empty vector
classes <- c()

for(i in 1:length(breaks)-1){
  classes[i] <- paste0("[", breaks[i], ",", breaks[i+1],"]")
}
cbind(Classes = classes,frequency= freq)


#Q4
#
lines(histogram$mid,freq)

plot(mid,freq,type = "l", main = "Frequency polygon from number " ,
     ylim = c(0,max(freq)) )
plot(mid,freq,type = "o", main = "Frequency polygon from number " , xlab = "", ylab = "",
     ylim = c(0,max(freq)) )
plot(mid,freq,type = "p", main = "Frequency polygon from number " , xlab = "", ylab = "",
     ylim = c(0,max(freq)) )


#Q5
Cum.freq <- cumsum(freq)
Cum.freq


new <- c()
for(i in 1:length(breaks)){
  if(i==1){
    new[i]= 0
  }else{
    new[i]= Cum.freq[i-1]
  }
}

plot(mid,freq,type = "o", main = "Frequency polygon from number " , xlab = "", ylab = "",
     ylim = c(0,max(Cum.freq)) )
cbind(Upper=breaks.Cum.freq=new)


