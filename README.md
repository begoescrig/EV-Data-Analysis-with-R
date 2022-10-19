# EV-analytics-with-R

The Green Deal adopted by the new European Commission sets a clear objective: by 2050, transport emissions will have to be reduced by 90 %, compared to 1990 levels. To this end, the transition from the use of fossil fuels for mobility, to the use of alternative fuels, needs to be accelerated. Production and use of alternative fuels must be ramped up.

The roll out of a sufficiently dense, widespread network of alternative fuels infrastructure is one important element of this overall transition to low- and zero-emission alternative fuels. Alternative fuels, including the infrastructure to recharge and refuel them, are developing in Europe at an accelerating pace. Private vehicle users, market actors and policy makers alike depend on comprehensive, reliable, targeted and timely data and information on alternative fuels vehicles and infrastructure developments in the EU.

The Commission has therefore installed the European Alternative Fuels Observatory – EAFO. Having started in 2015, it has developed over the years into a key reference point for information about alternative fuels in Europe, where all interested parties find data on vehicles and infrastructure, and information on public incentives and legislation.C – EAFO. Having started in 2015, it has developed over the years into a key reference point for information about alternative fuels in Europe, where all interested parties find data on vehicles and infrastructure, and information on public incentives and legislation.

The dataset created for this proyect comes from the European Alternative Fuels Observatory web https://alternative-fuels-observatory.ec.europa.eu/consumer-portal/available-electric-vehicle-models, and https://ev-database.org/ 
[ev.xlsx](https://github.com/begoescrig/EV-analytics-with-R/files/9820701/ev.xlsx)

With the following analysis we want to answer some important questions like. What is the most sustainable vehicle? Which vehicle should I buy? How many times a month do I have to recharge my vehicle if I want to use it to go to work every day? How much time do I need to fully recharge my vehicle? Where can I recharge my vehicle when making a trip? How many stops should I make?...

First of all we install the packages and libraries necessary to work in R.

#the str() function returns information about the name, class and observations of each of the columns

Classes ‘tbl_df’, ‘tbl’ and 'data.frame':	250 obs. of  9 variables:
  $ model       : chr  "Aiways U5" "Audi e-tron 50 quattro" "Audi e-tron 55 quattro" "Audi e-tron GT quattro" ...
$ brand       : chr  "Aiways" "Audi" "Audi" "Audi" ...
$ price       : num  39.7 62 66.4 106 146.1 ...
$ energy      : num  191 231 237 202 210 270 262 219 228 182 ...
$ range       : num  330 280 365 420 405 320 330 295 380 285 ...
$ battery     : num  63 64.7 86.5 85 85 86.5 86.5 64.7 86.5 52 ...
$ fastchargue : num  380 470 590 1030 1000 510 530 490 610 360 ...
$ topspeed    : num  150 190 200 245 250 210 210 190 200 160 ...
$ acceleration: num  7.5 6.8 5.7 4.1 3.3 4.5 4.5 6.8 5.7 9 ...

summary(ev)
#the summary() function returns the min., 1st Qu., Median, Mean, 3rd Qu. and max. of each of the columns

model              brand               price            energy     
Length:250         Length:250         Min.   : 21.94   Min.   :109.0  
Class :character   Class :character   1st Qu.: 44.81   1st Qu.:173.0  
Mode  :character   Mode  :character   Median : 56.44   Median :191.0  
Mean   : 66.51   Mean   :200.7  
3rd Qu.: 69.89   3rd Qu.:220.5  
Max.   :297.50   Max.   :295.0  
range          battery        fastchargue        topspeed      acceleration   
Min.   : 95.0   Min.   : 16.70   Min.   :   0.0   Min.   :125.0   Min.   : 2.100  
1st Qu.:261.2   1st Qu.: 52.00   1st Qu.: 310.0   1st Qu.:150.0   1st Qu.: 5.400  
Median :350.0   Median : 68.00   Median : 470.0   Median :160.0   Median : 7.500  
Mean   :347.0   Mean   : 68.03   Mean   : 523.3   Mean   :177.1   Mean   : 7.900  
3rd Qu.:418.8   3rd Qu.: 82.05   3rd Qu.: 650.0   3rd Qu.:200.0   3rd Qu.: 9.975  
Max.   :695.0   Max.   :118.00   Max.   :1270.0   Max.   :322.0   Max.   :19.100  

#We build the correlation matrix for the numeric variables: price, energy consumption, range, battery size, fastcharge,  top speed and acceleration
price energy  range battery fastchargue topspeed acceleration
price         1.000  0.028  0.599   0.637       0.566    0.691       -0.501
energy        0.028  1.000 -0.390   0.072      -0.320   -0.271        0.458
range         0.599 -0.390  1.000   0.877       0.742    0.744       -0.745
battery       0.637  0.072  0.877   1.000       0.637    0.690       -0.617
fastchargue   0.566 -0.320  0.742   0.637       1.000    0.797       -0.733
topspeed      0.691 -0.271  0.744   0.690       0.797    1.000       -0.866
acceleration -0.501  0.458 -0.745  -0.617      -0.733   -0.866        1.000

#the pairs plot

![ev pairs](https://user-images.githubusercontent.com/94619879/196699468-94ffdeda-0714-47c1-97b4-7b819a8e3b74.png)

#and the correlation plot

![ev cor](https://user-images.githubusercontent.com/94619879/196699521-7d708189-2e80-497e-a6de-38fbd7b75523.png)

#We build the correlation plot for Audi models
![audi cor](https://user-images.githubusercontent.com/94619879/196699655-ef323e5a-c7e5-4105-ba2a-191b84844e3d.png)

#for tesla models
![tesla cor](https://user-images.githubusercontent.com/94619879/196699850-99815de7-9923-4e01-8459-131a837d9d9b.png)

#for Mercedes models
![mer cor](https://user-images.githubusercontent.com/94619879/196699885-6f5fa29d-e489-4b67-8b64-8c1553ee2462.png)

#for Toyoya models
![toy cor](https://user-images.githubusercontent.com/94619879/196700200-073ab87b-d2ba-4198-8147-ccf8a6acdeb4.png)

#for Hyundai models
![hyu cor](https://user-images.githubusercontent.com/94619879/196700285-dc0273ed-7854-44b7-b486-71c3a3d8f765.png)

#for Peugeot models
![peu cor](https://user-images.githubusercontent.com/94619879/196700333-a72ee02c-f0e2-4a25-96c1-8e349d427834.png)

#for Lucid models
![luc cor](https://user-images.githubusercontent.com/94619879/196700395-2765064a-2bb1-4755-84d6-91a8b2ed8d3a.png)

#and for Kia models
![kia cor](https://user-images.githubusercontent.com/94619879/196700434-c5662ad9-6fba-45ed-9bbb-8c7e93f5cc07.png)


