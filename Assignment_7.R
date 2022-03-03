
library(ggplot2)

library("RColorBrewer")
display.brewer.all(colorblindFriendly = TRUE)
colours<-brewer.pal(n = 12, name = "Paired")

#import data
  titanic <- read.table("titanic.csv", header = TRUE, sep = ",")
titanic

#q1 bar charts for gender, passenger class and survival)
  ggplot(titanic, aes(x = factor(Sex))) +  geom_bar(fill = "Red")

    ggplot(titanic, aes(x = factor(Pclass))) +  geom_bar(fill = "Blue")

      ggplot(titanic, aes(x = factor(Survived))) +  geom_bar(fill = "Yellow")

#q2 histogram of age, boxplots of age by passenger class and age based on survival
  hist(titanic$Age, breaks = 10, col=colours(10))

    boxplot(titanic$Age ~ titanic$Pclass, col=colours[c(2,6,10)])

      boxplot(titanic$Age ~ titanic$Survived, col=colours[c(2,6)])

#q3 histogram for fare with table showing those who didn't pay
  

