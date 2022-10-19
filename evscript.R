#We install the packages:
install.packages("plotly")
install.packages("ggplot2")
install.packages("extrafont")

#We install the libraries:
library(tidyverse)
library(Rcmdr)
library(corrplot)
library(GGally)
library(readxl)
library(psych)
library(plotly)
library(ggplot2)

#We import the dataset "ev"
library(readxl)
ev <- read_excel("C:/Users/begoe/Desktop/ev/ev.xlsx")
View(ev)

str
summary(ev)

#We delete the "model" column from ev dataframe because is a character list
ev$model=NULL

#we also delete the "brand" column
ev$brand=NULL

#We build the correlation matrix for the numeric variables: price, energy consumption, range, battery size, fastcharge,  tops peed and acceleration
ev.cor<-cor(ev, method="pearson")
print(ev.cor)
round(ev.cor, digits=3)

#We build the pairs plot for ev 
pairs(ev)

#We build the correlation plot for ev
corPlot(ev.cor)

#We import the "ev" dataset again with all the variables
library(readxl)
ev <- read_excel("C:/Users/begoe/Desktop/ev/ev.xlsx")
View(ev)

#We select all the variables for "Audi" from the dataframe
ev.audi<-ev[2:17,3:9]
print(ev.audi)

#We build the correlation matrix
audi.cor<-cor(ev.audi, method="pearson")
print(audi.cor)
round(audi.cor, digits=3)

#We build the pairs plot 
pairs(ev.audi)

#We build the correlation plot
corPlot(audi.cor)

#We select all the variables for "Tesla" from the dataframe
ev.tesla<-ev[213:222,3:9]
print(ev.tesla)

#We build the correlation matrix
tesla.cor<-cor(ev.tesla, method="pearson")
print(tesla.cor)
round(tesla.cor, digits=3)

#We build the pairs plot 
pairs(ev.tesla)

#We build the correlation plot
corPlot(tesla.cor)

#We select all the variables for "Mercedes" from the dataframe
ev.mer<-ev[98:128,3:9]
print(ev.mer)

#We build the correlation matrix
mer.cor<-cor(ev.mer, method="pearson")
print(mer.cor)
round(mer.cor, digits=3)

#We build the pairs plot 
pairs(ev.mer)

#We build the correlation plot
corPlot(mer.cor)

#We select all the variables for "Toyota" from the dataframe
ev.toy<-ev[223:232,3:9]
print(ev.toy)

#We build the correlation matrix
toy.cor<-cor(ev.toy, method="pearson")
print(toy.cor)
round(toy.cor, digits=3)

#We build the pairs plot 
pairs(ev.toy)

#We build the correlation plot 
corPlot(toy.cor)

#We select all the variables for "Hyundai" from the dataframe
ev.hyu<-ev[72:79,3:9]
print(ev.hyu)

#We build the correlation matrix
hyu.cor<-cor(ev.hyu, method="pearson")
print(hyu.cor)
round(hyu.cor, digits=3)

#We build the pairs plot 
pairs(ev.hyu)

#We build the correlation plot 
corPlot(hyu.cor)

#We select all the variables for "Peugeot" from the dataframe
ev.peu<-ev[156:169,3:9]
print(ev.peu)

#We build the correlation matrix
peu.cor<-cor(ev.peu, method="pearson")
print(peu.cor)
round(peu.cor, digits=3)

#We build the pairs plot 
pairs(ev.peu)

#We build the correlation plot 
corPlot(peu.cor)

#We select all the variables for "Lucid" from the dataframe
ev.luc<-ev[92:96,3:9]
print(ev.luc)

#We build the correlation matrix
luc.cor<-cor(ev.luc, method="pearson")
print(luc.cor)
round(luc.cor, digits=3)

#We build the pairs plot 
pairs(ev.luc)

#We build the correlation plot 
corPlot(luc.cor)

#We select all the variables for "Kia" from the dataframe
ev.kia<-ev[84:88,3:9]
print(ev.kia)

#We build the correlation matrix
kia.cor<-cor(ev.kia, method="pearson")
print(kia.cor)
round(kia.cor, digits=3)

#We build the pairs plot 
pairs(ev.kia)

#We build the correlation plot 
corPlot(kia.cor)

#We build the plot to compare the price of all the different models of EV
ggplot(data=ev, aes(price, model)) +
  geom_col(color="blue", size= 0.5) +
  theme(text = element_text(size = 5, family = "sans")) +
  labs(x="price", y="model", title= "Price vs model")

 
  
  
  

  






