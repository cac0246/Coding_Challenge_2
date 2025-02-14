##Question 2 ##

library(ggplot2)

DON <- read.csv("MycotoxinData.csv", na.strings = "na")

ggplot(DON, aes(x = Treatment, y = DON, color = Cultivar)) +
  geom_boxplot() +
  xlab("") +
  ylab("DON (ppm)")

##Question 3 ##

ggplot(DON, aes(x = Treatment, y = DON, color = Cultivar)) +
  stat_summary(fun=mean,geom = "bar") +
  stat_summary(fun.data = mean_se, geom = "errorbar") +
  xlab("") +
  ylab("DON (ppm)")

## Question 4 ##

#Boxplot#
ggplot(DON, aes(x = Treatment, y = DON, color = Cultivar, fill = Cultivar)) +
  geom_boxplot() +
  xlab("") +
  ylab("DON (ppm)")
  geom_point(position = position_jitterdodge(dodge.width = 0.9), shape = 21, color = "black") #solve some of the overlaping layers

#Barchart#
ggplot(DON, aes(x = Treatment, y = DON, color = Cultivar, fill = Cultivar)) +
  stat_summary(fun=mean,geom = "bar", color = "black") +
  stat_summary(fun.data = mean_se, geom = "errorbar") +
  xlab("") +
  ylab("DON (ppm)") +
  geom_point(position = position_jitterdodge(dodge.width = 0.9), shape = 21) #solve some of the overlaping layers

##Question 5 ##

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

ggplot(DON, aes(x = Treatment, y = DON, color = Cultivar)) +
  geom_boxplot() +
  xlab("") +
  ylab("DON (ppm)") +
  geom_point(position = position_jitterdodge(dodge.width = 0.9), shape = 21, fill = "#009E73") 

#Barchart#
ggplot(DON, aes(x = Treatment, y = DON, color = Cultivar)) +
  stat_summary(fun=mean,geom = "bar", color = "black", fill = "#D55E00") +
  stat_summary(fun.data = mean_se, geom = "errorbar") +
  xlab("") +
  ylab("DON (ppm)") +
  geom_point(position = position_jitterdodge(dodge.width = 0.9), shape = 21)
  
##Question 6 ##

ggplot(DON, aes(x = Treatment, y = DON, color = Cultivar)) +
  geom_boxplot() +
  xlab("") +
  ylab("DON (ppm)") +
  facet_wrap("Cultivar")
geom_point(position = position_jitterdodge(dodge.width = 0.9), shape = 21, fill = "#009E73")

#Barchart#
ggplot(DON, aes(x = Treatment, y = DON, color = Cultivar)) +
  stat_summary(fun=mean,geom = "bar", color = "black", fill = "#D55E00") +
  stat_summary(fun.data = mean_se, geom = "errorbar") +
  xlab("") +
  ylab("DON (ppm)") +
  facet_wrap("Cultivar") +
  geom_point(position = position_jitterdodge(dodge.width = 0.9), shape = 21) #solve some of the overlaping layers

##Question 7 ##

ggplot(DON, aes(x = Treatment, y = DON, color = Cultivar)) +
  geom_boxplot() +
  xlab("") +
  ylab("DON (ppm)") +
  facet_wrap("Cultivar") +
  geom_point(position = position_jitterdodge(dodge.width = 0.9), shape = 21, fill = "#009E73", alpha = 0.5)

#Barchart#
ggplot(DON, aes(x = Treatment, y = DON, color = Cultivar)) +
  stat_summary(fun=mean,geom = "bar", color = "black", fill = "#D55E00") +
  stat_summary(fun.data = mean_se, geom = "errorbar") +
  xlab("") +
  ylab("DON (ppm)") +
  facet_wrap("Cultivar") +
  geom_point(position = position_jitterdodge(dodge.width = 0.9), shape = 21, alpha = 0.5) 

## Question 8 ##

ggplot(DON, aes(x = Treatment, y = DON, fill = Cultivar)) +
  geom_dotplot(binaxis = "y", stackdir = "center", binposition = "all") +
  xlab("") +
  ylab("DON (ppm)") +
  facet_wrap("Cultivar") +
theme(axis.text.x = element_text(angle = 45, hjust = 1))

# We choose the dotplot because is useful because it allows a visualization of individual data points but preserv the overall distribution. 

