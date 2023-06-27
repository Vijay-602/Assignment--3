#QUESTION 1
library(ggplot2)
data("iris")
sepal<-iris$Species
ggplot(iris,aes(x=Petal.Length,y=Sepal.Length))+
  geom_point(aes(shape=sepal,color=sepal))+
  labs(title = "SEPAL.LENGTH VS PETAL.LENGTH")
#SEPAL LENGTH AND PETAL LENGTH ARE DIRECTLY PROPOTIONAL

#QUESTION 2
library(ggplot2)
data("txhousing")
complete.cases(txhousing)
TOTAL<-aggregate(volume~city,txhousing,sum)
ggplot(TOTAL, aes(x = city,y=volume)) +
  geom_bar(stat = "identity",fill="red")+labs(title = "Total Volume by City",x="City",y="Total Volume")+
  theme(axis.text.x = element_text(angle = 45, hjust = 1, vjust = 1))
#Above plot gives Total Volume by a city
sales<-aggregate(sales~year,txhousing,sum)
ggplot(sales,aes(x=year,y=sales))+geom_bar(stat = "identity",fill="blue")+
  labs(title = "TOTAL SALES BY YEAR",x="Year",y="Tota Sales")
#Above plot gives Total sales year wise

#QUESTION 3
library(ggplot2)
data <- read.csv("titanic.csv")
lives <- which(data$Survived == 0)
lived <- data[lives,]
Sex <- lived$Sex
Sex<-as.factor(Sex)
life<-data$Survived == 1
life<-as.factor(life)
levels(life)<-c("Died","Survived")
ggplot(data, aes(x  = Fare,y=life)) +
  geom_boxplot(aes(col=Sex))+labs(title = "Fare vs Survival",x="Fare",y="")