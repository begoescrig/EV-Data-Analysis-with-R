# EV Data Analysis with R

The Green Deal adopted by the new European Commission sets a clear objective: by 2050, transport emissions will have to be reduced by 90 %, compared to 1990 levels. To this end, the transition from the use of fossil fuels for mobility, to the use of alternative fuels, needs to be accelerated. Production and use of alternative fuels must be ramped up.

The roll out of a sufficiently dense, widespread network of alternative fuels infrastructure is one important element of this overall transition to low- and zero-emission alternative fuels. Alternative fuels, including the infrastructure to recharge and refuel them, are developing in Europe at an accelerating pace. Private vehicle users, market actors and policy makers alike depend on comprehensive, reliable, targeted and timely data and information on alternative fuels vehicles and infrastructure developments in the EU.

The Commission has therefore installed the European Alternative Fuels Observatory – EAFO. Having started in 2015, it has developed over the years into a key reference point for information about alternative fuels in Europe, where all interested parties find data on vehicles and infrastructure, and information on public incentives and legislation.C – EAFO. Having started in 2015, it has developed over the years into a key reference point for information about alternative fuels in Europe, where all interested parties find data on vehicles and infrastructure, and information on public incentives and legislation.

The dataset created for this project comes from the European Alternative Fuels Observatory web (https://alternative-fuels-observatory.ec.europa.eu/consumer-portal/available-electric-vehicle-models), and (https://ev-database.org/). 
[ev.xlsx](https://github.com/begoescrig/EV-analytics-with-R/files/9820701/ev.xlsx)

With the following analysis we want to answer some important questions like: what is the most sustainable vehicle? Which vehicle should I buy? How many times a month do I have to recharge my vehicle if I want to use it to go to work every day? How much time do I need to fully recharge my vehicle? Where can I recharge my vehicle when making a trip? How many stops should I make?...

#We build the correlation matrix for the numeric variables: price, energy consumption, range, battery size, fastcharge,  top speed and acceleration;

#the pairs plot

![ev pairs](https://user-images.githubusercontent.com/94619879/196699468-94ffdeda-0714-47c1-97b4-7b819a8e3b74.png)

#and the correlation plot

![ev cor](https://user-images.githubusercontent.com/94619879/196699521-7d708189-2e80-497e-a6de-38fbd7b75523.png)

#Observations:

#1. The battery is one of the key elements in Electric Vehicles. The correlation between Range (km) and Battery size (kWh) is 0.88. It shows that these two variables are highly positively correlated. 

#2. The correlation between Acceleration (sec) and Top Speed (km/h) is -0.87. It shows that these two variables are highly negatively correlated. 

#3. The correlation between price (€) and energy consumption (kWh/km) is 0.03. It shows that these two variables are not correlated at all, and on the other hand, the correlation between price (€) and the rest of variables or characteristics is > (-)5, reaching 0.69 when compared with the Top Speed (kmh).

#We import the "ev" dataset again with all the variables.
library(readxl)
ev <- read_excel("ev.xlsx")
View(ev)

#We select all the variables for "Audi" from the dataframe.
ev.audi<-ev[2:17,3:9]
print(ev.audi)

#We build the correlation matrix,
audi.cor<-cor(ev.audi, method="pearson")
print(audi.cor)
round(audi.cor, digits=3)

#the pairs plot,
pairs(ev.audi)

#and the correlation plot.
corPlot(audi.cor)

#We select all the variables for "Tesla" from the dataframe.
ev.tesla<-ev[213:222,3:9]
print(ev.tesla)

#We build the correlation matrix,
tesla.cor<-cor(ev.tesla, method="pearson")
print(tesla.cor)
round(tesla.cor, digits=3)

#the pairs plot,
pairs(ev.tesla)

#and the correlation plot.
corPlot(tesla.cor)

#We select all the variables for "Mercedes" from the dataframe.
ev.mer<-ev[98:128,3:9]
print(ev.mer)

#We build the correlation matrix,
mer.cor<-cor(ev.mer, method="pearson")
print(mer.cor)
round(mer.cor, digits=3)

#the pairs plot,
pairs(ev.mer)

#and the correlation plot.
corPlot(mer.cor)

#We select all the variables for "Toyota" from the dataframe.
ev.toy<-ev[223:232,3:9]
print(ev.toy)

#We build the correlation matrix,
toy.cor<-cor(ev.toy, method="pearson")
print(toy.cor)
round(toy.cor, digits=3)

#the pairs plot,
pairs(ev.toy)

#and the correlation plot. 
corPlot(toy.cor)

#We select all the variables for "Hyundai" from the dataframe.
ev.hyu<-ev[72:79,3:9]
print(ev.hyu)

#We build the correlation matrix,
hyu.cor<-cor(ev.hyu, method="pearson")
print(hyu.cor)
round(hyu.cor, digits=3)

#the pairs plot, 
pairs(ev.hyu)

#and the correlation plot.
corPlot(hyu.cor)

#We select all the variables for "Peugeot" from the dataframe.
ev.peu<-ev[156:169,3:9]
print(ev.peu)

#We build the correlation matrix,
peu.cor<-cor(ev.peu, method="pearson")
print(peu.cor)
round(peu.cor, digits=3)

#the pairs plot, 
pairs(ev.peu)

#and the correlation plot.
corPlot(peu.cor)

#We select all the variables for "Lucid" from the dataframe.
ev.luc<-ev[92:96,3:9]
print(ev.luc)

#We build the correlation matrix,
luc.cor<-cor(ev.luc, method="pearson")
print(luc.cor)
round(luc.cor, digits=3)

#the pairs plot, 
pairs(ev.luc)

#and the correlation plot. 
corPlot(luc.cor)

#We select all the variables for "Kia" from the dataframe.
ev.kia<-ev[84:88,3:9]
print(ev.kia)

#We build the correlation matrix,
kia.cor<-cor(ev.kia, method="pearson")
print(kia.cor)
round(kia.cor, digits=3)

#the pairs plot, 
pairs(ev.kia)

#and the correlation plot. 
corPlot(kia.cor)

#We build the plot to compare the price of the 250 different models of EV.
ggplot(data=ev, aes(price, model)) +
  geom_col(color="blue", size= 0.5) +
  theme(text = element_text(size = 5, family = "sans")) +
  labs(x="price", y="model", title= "Price vs model")

 
  
  
  

  








#We build the correlation plot for Audi models,
![audi cor](https://user-images.githubusercontent.com/94619879/196699655-ef323e5a-c7e5-4105-ba2a-191b84844e3d.png)

#for Tesla models,
![tesla cor](https://user-images.githubusercontent.com/94619879/196699850-99815de7-9923-4e01-8459-131a837d9d9b.png)

#for Mercedes models,
![mer cor](https://user-images.githubusercontent.com/94619879/196699885-6f5fa29d-e489-4b67-8b64-8c1553ee2462.png)

#for Toyoya models,
![toy cor](https://user-images.githubusercontent.com/94619879/196700200-073ab87b-d2ba-4198-8147-ccf8a6acdeb4.png)

#for Hyundai models,
![hyu cor](https://user-images.githubusercontent.com/94619879/196700285-dc0273ed-7854-44b7-b486-71c3a3d8f765.png)

#for Peugeot models,
![peu cor](https://user-images.githubusercontent.com/94619879/196700333-a72ee02c-f0e2-4a25-96c1-8e349d427834.png)

#for Lucid models,
![luc cor](https://user-images.githubusercontent.com/94619879/196700395-2765064a-2bb1-4755-84d6-91a8b2ed8d3a.png)

#and for Kia models.
![kia cor](https://user-images.githubusercontent.com/94619879/196700434-c5662ad9-6fba-45ed-9bbb-8c7e93f5cc07.png)

#We build the plot to compare the price of the 250 different models of EV.
![ev plot](https://user-images.githubusercontent.com/94619879/197350398-d6d4d0cf-5f4e-47eb-afb1-74e62d6a6601.png)




