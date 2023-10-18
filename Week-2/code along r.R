##SLIDE NO.5
#Load R packages for data science 
library(tidyverse)
#Data in starwars data-set 
starwars

##SLIDE NO.7
#Salient features of the data-set (in doc format under help in viewer)
?starwars
##only applies for this dataset that alr has documentation

##SLIDE NO.8 
#Catch a glimpse of starwars data-set
glimpse(starwars)
##other ways to look at dataset 
print(starwars)
view(starwars)
head(starwars) 
tail(starwars)
##see different columns and total no. of rows and columns 

##SLIDE NO.10 
#Access column "height" (from DS named starwars)
starwars$height

##SLIDE NO.11 
#Access column "mass" (from DS named starwars)
starwars$mass

##SLIDE NO.12
#Access column "gender" (from DS named starwars)
starwars$gender

##SLIDE NO.13 
#Access column "gender" (alternate)
starwars$films[1:3]

##SLIDE NO.14 
#Rows of interest 
filter_rows <- c("Luke Skywalker", "R2-D2", "Darth Vader") #extracts row corresponding to Luke Skywalker 
starwars %>% filter(name%in%filter_rows)

##SLIDE NO.15
#rows of interest 
filter_rows <- c("Luke Skywalker","R2-D2") 
#extract rows in "rows" 
starwars %>% filter(name%in%filter_rows) %>% select(name,height,mass,homeworld,films)

##SLIDE NO.16 
#Rows of interest 
filter_rows <- c("Luke Skywalker", "R2-D2") 
#extract rows corresponding to Luke Skywalker 
starwars %>% filter(name%in%filter_rows) %>% pull(films)

##SLIDE NO.17 
#Number of rows in the data-set 
nrow(starwars) ##87 
ncol(starwars) ##14
dim(starwars) ##(87),(14)

##SLIDE NO.23 
#Invoke the library 
install.packages("Tmisc")
library(Tmisc)
#filter data-set I in quartet 
quartet %>% filter(set=="I")

library(Tmisc)
#filter data-set II in quartet 
quartet %>% filter(set=="II")

##SLIDE NO.24
#Invoke the library 
library(Tmisc)
#Filter the data-set III in quartet 
quartet %>% filter(set=="III")

#Invoke the library 
library(Tmisc)
#Filter data-set IV in quartet
quartet %>% filter(set=="IV")

##SLIDE NO. 25 
#Obtain the needed statistics 
quartet %>% 
  summarise(
    mean_x = mean(x),
    mean_y = mean(y),
    sd_x = sd(x),
    sd_y = sd(y),
    r = cor(x,y)
)


##SLIDE NO. 29 
#Plot the data 
ggplot(data=starwars)

##SLIDE NO.30
#Plot height along x-axis 
ggplot(data=starwars,mapping=aes(x=height))

##SLIDE NO.31
#Plot mass along y-axis 
ggplot(data=starwars,mapping=aes(x=height,y=mass))

##SLIDE NO.32
ggplot(data=starwars,mapping=aes(x=height,y=mass))+geom_point()
#to indicate that data should be presented as data points 

##SLIDE NO. 33
ggplot(data=starwars,mapping=aes(x=height,y=mass))+geom_point()+labs(x="Height(cm)",y="Weight(Kg)")

##SLIDE NO. 34
ggplot(data=starwars, mapping=aes(x=height,y=mass))+geom_point()+labs(x="Height(cm)",y="Weight(Kg)",title="Mass versus Height")

##SLIDE NO. 35
ggplot(data=starwars,mapping=aes(x=height,y=mass)) +
  geom_point() +
  labs(x="Height (cm)",y="Weight (Kg)",
       title="Mass versus Height",
       caption="Source: tidyverse/ starwars dataset")

##SLIDE NO. 40 
#install package 
install.packages("shiny") #Invoke package
library(shiny)
#run example from the library 
runExample("01_hello")

##SLIDE NO. 42
install.packages("shiny")
library(shiny)
runExample("06_tabsets")

