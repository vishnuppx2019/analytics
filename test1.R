#vector

# Normal distributio with mean 80 adn SD 10
sales = rnorm (100,mean=80,sd=10)
sales
#trunc round ,floor,celing
sales = trunc (sales)
sales
summary(sales)
boxplot(sales)
mean(sales)
median(sales)
hist(sales)
plot(density(sales))
# sales between 10-50
range(sales)
#matrix

m1= matrix(100:123, ncol=2)
m1

colSums(m1)
colMeans(m1)
m1[,1]
colnames(m1)= c('A','B')
head(m1)

#data Frames

sname=paste('student',1:30,sep='_')

sname
(marks= trunc(runif(30,50,90)))
?runif
(gender = sample(c('M','F'), replace=T, size=30, prob=c(0.7,0.3)))
df1= data.frame(sname, marks, gender)
head(df1)

#list who have scored between 60 and 70 and find average score of male and female and sorting of the list in some order

install.packages(dplyr)
library(dplyr)

df1 %>% group_by(gender) %>% summarise(mean(marks), n(), min(marks), max(marks))

names(df1)
str(df1)
summary(df1)
df1[(order(df1$marks, decreasing =T)),c('sname', 'marks')]
df1[(order(df1$marks,decreasing =T)),-3]
?arrangeWindows
df1 %>% select(sname, marks) %>% arrange(desc(marks))
df1 %>% sample_frac(0.3)
df1 %>% sample_n(3)

#Linear
# LR
#import file
df =read.csv(file,choose())
