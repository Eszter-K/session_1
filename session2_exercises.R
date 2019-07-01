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
  geom_smooth(method = "lm", se=FALSE) 

ggplot(mpg, aes(x=displ, y=hwy, colour=factor(cyl))) + 
  geom_point() +
  geom_smooth()

