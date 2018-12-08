# Missing values

x = c(NA, 1, NA, 2,3, NA)
is.na(x)
sum(is.na(x))
sum(c(T,F,T,F,F))
mean(x)   # by deafault cant calculate the mean if data is missing
mean(x, na.rm=T)
x
x[is.na(x)] = mean(x, na.rm=T)
x
x1 = c(4,6,8,9)
length(x1[x1 >= 6])
sum(x1 >= 6)
x1 >= 6 # values mor than or less than 6 in x1

x2 = rnorm(100000, mean=50, sd=5)
length(x2)
posn=sample(100000, size=30)
x2[posn] = NA
sum(is.na(x2))

install.packages("VIM")
library(VIM)

head(sleep) 
dim(sleep) #dimensions of sleep data
complete.cases(sleep)  # complete rows T/F
sum(complete.cases(sleep))
sum(!complete.cases(sleep))
sleep[complete.cases(sleep),] #rows which are complete
sleep[!complete.cases(sleep),] # rows which are not compelte
colSums(is.na(sleep)) #how many data missing inwhich columns
rowSums(is.na(sleep)) #which row how many data are missing
