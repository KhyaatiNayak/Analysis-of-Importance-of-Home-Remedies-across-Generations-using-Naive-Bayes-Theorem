Home_Remedies <- read.csv("C:/Users/vicky/Desktop/MU PROJECT/Home_Remedies_CleanedData.csv", stringsAsFactors=TRUE)
hr=data.frame(Home_Remedies)
View(hr)
library(tidyverse)
#### Gender,Locality,Education and Age with preference bar chart ####
ggplot(data=hr)+
  geom_bar(mapping=aes(x=Gender,fill=Home.Remedies))

ggplot(data=hr)+
  geom_bar(mapping=aes(x=Locality,fill=Home.Remedies))

ggplot(data=hr)+
  geom_bar(mapping=aes(x=Education,fill=Home.Remedies))

ggplot(data=hr)+
  geom_bar(mapping=aes(x=Age,fill=Home.Remedies))






#### Facet grid bar ####
ggplot(data = hr)+
  geom_bar(mapping = aes(x=Home.Remedies,fill=Age))+
  facet_grid(.~Gender)

ggplot(data = hr)+
  geom_bar(mapping = aes(x=Home.Remedies,fill=Locality))+
  facet_grid(.~Education)



#### pie####
labels = c("Always","Most of the time","Never","Once in a while")
colors = c(1,7,6,5)
par(mfrow=c(2,2))

x=c(summary(hr$Sore.throat...Cough))
pie(x, labels, main='How often do we use Home Remedies for Sore Throat / Cough', col=colors, init.angle=180, clockwise=TRUE)

x=c(summary(hr$Running.Nose))
pie(x, labels, main='How often do we use Home Remedies for Running Nose', col=colors, init.angle=180, clockwise=TRUE)

x=c(summary(hr$Diarrhoea))
pie(x, labels, main='How often do we use Home Remedies for Diarrhoea', col=colors, init.angle=180, clockwise=TRUE)

x=c(summary(hr$Back.Joint.pain))
pie(x, labels, main='How often do we use Home Remedies for Back Join pain', col=colors, init.angle=180, clockwise=TRUE)

x=c(summary(hr$Constipation))
pie(x, labels, main='How often do we use Home Remedies for Constipation', col=colors, init.angle=180, clockwise=TRUE)

x=c(summary(hr$Headache))
pie(x, labels, main='How often do we use Home Remedies for Headache', col=colors, init.angle=180, clockwise=TRUE)

x=c(summary(hr$Wounds...minor.cuts.and.bruises))
pie(x, labels, main='How often do we use Home Remedies for Wounds / minor cuts and bruises', col=colors, init.angle=180, clockwise=TRUE)

x=c(summary(hr$Sleeping.problems...nervousness))
pie(x, labels, main='How often do we use Home Remedies for Sleeping problems / nervousness', col=colors, init.angle=180, clockwise=TRUE)




labels1 = c("Sore.throat...Cough","Running.Nose","Diarrhoea","Back.Joint.pain","Constipation","Headache","Wounds...minor.cuts.and.bruises","Sleeping.problems...nervousness")
colors1 = c(1,2,3,4,5,6,7,8)
par(mfrow=c(1,1))

x=c(18,46,167,118,115,96,77,171)
pie(x, labels1, main='Never', col=colors1, init.angle=180, clockwise=TRUE)

x=c(127,133,192,187,146,160,166,151)
pie(x, labels1, main='Once in a while', col=colors1, init.angle=180, clockwise=TRUE)

x=c(280,259,140,177,202,198,206,139)
pie(x, labels1, main='Most of the time', col=colors1, init.angle=180, clockwise=TRUE)

x=c(115,102,41,58,77,86,91,79)
pie(x, labels1, main='Always', col=colors1, init.angle=180, clockwise=TRUE)



#### Symptoms_Boxplot ####
ggplot(data=hr)+
  geom_boxplot(mapping=aes(x=Sore.throat...Cough,y=hr2$Age1), fill="darkseagreen1")+
  coord_flip()

ggplot(data=hr)+
  geom_boxplot(mapping=aes(x=Running.Nose,y=hr2$Age1), fill="peachpuff")+
  coord_flip()

ggplot(data=hr)+
  geom_boxplot(mapping=aes(x=Diarrhoea,y=hr2$Age1), fill="paleturquoise1")+
  coord_flip()

ggplot(data=hr)+
  geom_boxplot(mapping=aes(x=Back.Joint.pain,y=hr2$Age1), fill="plum1")+
  coord_flip()

ggplot(data=hr)+
  geom_boxplot(mapping=aes(x=Constipation,y=hr2$Age1), fill="darkseagreen1")+
  coord_flip()

ggplot(data=hr)+
  geom_boxplot(mapping=aes(x=Headache,y=hr2$Age1), fill="peachpuff")+
  coord_flip()

ggplot(data=hr)+
  geom_boxplot(mapping=aes(x=Wounds...minor.cuts.and.bruises,y=hr2$Age1), fill="paleturquoise1")+
  coord_flip()

ggplot(data=hr)+
  geom_boxplot(mapping=aes(x=Sleeping.problems...nervousness,y=hr2$Age1), fill="plum1")+
  coord_flip()



####Remedy_FacetGrid ####
ggplot(data = hr)+
  geom_bar(mapping = aes(x=Kadha...Herbal.Teas,fill=Age))+
  facet_grid(.~Age)

ggplot(data = hr)+
  geom_bar(mapping = aes(x=Apply.Turmeric..Haldi.on.wounds.and.acne...pimple,fill=Age))+
  facet_grid(.~Age)

ggplot(data = hr)+
  geom_bar(mapping = aes(x=Drink.Haldi.Turmeric.milk,fill=Age))+
  facet_grid(.~Age)

ggplot(data = hr)+
  geom_bar(mapping = aes(x=Using.Hot.water.steam,fill=Age))+
  facet_grid(.~Age)

ggplot(data = hr)+
  geom_bar(mapping = aes(x=Gargling.for.Sore.throat,fill=Age))+
  facet_grid(.~Age)

ggplot(data = hr)+
  geom_bar(mapping = aes(x=Aloe.Vera...Onion.Juice...Egg.for.Hair,fill=Age))+
  facet_grid(.~Age)

ggplot(data = hr)+
  geom_bar(mapping = aes(x=Fennel.seeds.for.Constipation,fill=Age))+
  facet_grid(.~Age)

ggplot(data = hr)+
  geom_bar(mapping = aes(x=Other.Home.Remedies,fill=Age))+
  facet_grid(.~Age)

ggplot(data = hr)+
  geom_bar(mapping = aes(x=Never.used.any.home.remedies,fill=Age))+
  facet_grid(.~Age)





#### trial ####


#### symptoms_FacetGrid #####
ggplot(data = hr)+
  geom_bar(mapping = aes(x=Sore.throat...Cough,fill=Age))+
  facet_grid(Age~.)

ggplot(data = hr)+
  geom_bar(mapping = aes(x=Running.Nose,fill=Age))+
  facet_grid(Age~.)

ggplot(data = hr)+
  geom_bar(mapping = aes(x=Diarrhoea,fill=Age))+
  facet_grid(Age~.)

ggplot(data = hr)+
  geom_bar(mapping = aes(x=Back.Joint.pain,fill=Age))+
  facet_grid(Age~.)

ggplot(data = hr)+
  geom_bar(mapping = aes(x=Constipation,fill=Age))+
  facet_grid(Age~.)

ggplot(data = hr)+
  geom_bar(mapping = aes(x=Headache,fill=Age))+
  facet_grid(Age~.)

ggplot(data = hr)+
  geom_bar(mapping = aes(x=Wounds...minor.cuts.and.bruises,fill=Age))+
  facet_grid(Age~.)

ggplot(data = hr)+
  geom_bar(mapping = aes(x=Sleeping.problems...nervousness,fill=Age))+
  facet_grid(Age~.)



#### Remedy_Boxplot ####

ggplot(data=hr)+
  geom_boxplot(mapping=aes(x=Gender,y=Home.Remedies))+
  coord_flip()


Home_Remedies2 <- read.csv("C:/Users/vicky/Desktop/MU PROJECT/Home_Remedies_AgeCopy.csv", stringsAsFactors=TRUE)
hr2=data.frame(Home_Remedies2)

ggplot(data=hr)+
  geom_boxplot(mapping=aes(x=Kadha...Herbal.Teas,y=hr2$Age1))+
  coord_flip()

ggplot(data=hr)+
  geom_boxplot(mapping=aes(x=Apply.Turmeric..Haldi.on.wounds.and.acne...pimple,y=hr2$Age1))+
  coord_flip()

ggplot(data=hr)+
  geom_boxplot(mapping=aes(x=Drink.Haldi.Turmeric.milk,y=hr2$Age1))+
  coord_flip()

ggplot(data=hr)+
  geom_boxplot(mapping=aes(x=Using.Hot.water.steam,y=hr2$Age1))+
  coord_flip()

ggplot(data=hr)+
  geom_boxplot(mapping=aes(x=Gargling.for.Sore.throat,y=hr2$Age1))+
  coord_flip()

ggplot(data=hr)+
  geom_boxplot(mapping=aes(x=Aloe.Vera...Onion.Juice...Egg.for.Hair,y=hr2$Age1))+
  coord_flip()

ggplot(data=hr)+
  geom_boxplot(mapping=aes(x=Fennel.seeds.for.Constipation,y=hr2$Age1))+
  coord_flip()

ggplot(data=hr)+
  geom_boxplot(mapping=aes(x=Other.Home.Remedies,y=hr2$Age1))+
  coord_flip()

ggplot(data=hr)+
  geom_boxplot(mapping=aes(x=Never.used.any.home.remedies,y=hr2$Age1))+
  coord_flip()



