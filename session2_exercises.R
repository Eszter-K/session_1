##Set 1
library(tidyverse)
library(ggplot2)
mpg %>% tbl_df

ggplot(data=mpg, aes(x=displ, y=hwy, colour=trans)) +
  geom_point()

ggplot(mpg, aes(x=displ, y=hwy)) +
  geom_point(colour="red") +
  geom_smooth()

ggplot(mpg, aes(x=displ, y=hwy, colour=drv)) +
  geom_point() +
  geom_smooth(method = "lm", se=F) 

#Because of factoring, ggplot assumes it needs to do a regression for each 
#group of data
ggplot(mpg, aes(x=displ, y=hwy, colour=factor(cyl))) + 
  geom_point() +
  geom_smooth()

#To override the default in geom_smooth (get a single line), 
#group=1 puts all the data in one group for geom_smooth only
ggplot(data=mpg, aes(x=displ, y=hwy, colour=factor(cyl))) + 
  geom_point() +
  geom_smooth(aes(group=1))

##Set 2
library(tidyverse)
mpg %>% tbl_df

ggplot(mpg, aes(x = displ, hwy, colour = factor(cyl))) + 
  geom_point() + geom_smooth(method = "lm", se = FALSE) +
scale_x_log10(breaks = seq(2,7, by=1)) +
  scale_y_log10(breaks=seq(20,40,by=10)) +
  labs(x="Displacement",
       y="MPG, highway",
       title= "Fuel economy and engine size",
       colour = "Cylinders") + 
  facet_wrap( ~ year, labeller = as_labeller(c(`1999` = "Model year 1999", 
                                               `2008` = "Model year 2008")))


