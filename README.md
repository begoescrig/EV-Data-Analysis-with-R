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




