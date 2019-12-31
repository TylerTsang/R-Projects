# Find current directory and set new working directory with file
getwd()
setwd()
movie <- read.csv('Movie_Data.csv')

# setting up packages
library(ggplot2)

# Quick Summary of Data
head(movie)
summary(movie)
str(movie)

# Setting filters for select genres + studios
unique(movie$Genre)
unique(movie$Studio)
filt <- (movie$Genre == "action") | (movie$Genre == "adventure") | (movie$Genre == "animation") | (movie$Genre == "comedy") | (movie$Genre == "drama")
filt2 <- (movie$Studio == 'Buena Vista Studios') | (movie$Studio == 'Universal') | (movie$Studio == 'Fox') | (movie$Studio == 'WB') | (movie$Studio == 'Sony') | (movie$Studio == 'Paramount Pictures')
movie2 <- movie[filt & filt2,]

# Preparing to plot and layers
p <- ggplot(data=movie2, aes(x=Genre, y=Gross...US))

# Plotting data + plot types
q <- p+ 
  geom_jitter(aes(size=BudgetMillions, color=Studio))+
  geom_boxplot(alpha=0.7, outlier.colour = NA)

# Adding labels
q <- q +
  xlab('Genre') +
  ylab('Gross % US')+
  ggtitle('Domestic Gross % by Genre')
q

# Plot theme / aesthetics
q <- q +
  theme(
    plot.title = element_text(hjust = 0.5, size=18),
    axis.title.x = element_text(size=15),
    axis.title.y = element_text(size=15),
    axis.text.x = element_text(size=10),
    axis.text.y = element_text(size=10),
    legend.title = element_text(size = 12),
    legend.text = element_text(size = 10),
    text = element_text(family='Univers')
  )
q

# Final touches
q$labels$size <- 'Budget Millions'

q