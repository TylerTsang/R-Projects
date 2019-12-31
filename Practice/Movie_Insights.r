# Find current directory and set new working directory with file
getwd()
setwd()
movie <- read.csv('Movie_Data.csv')

# setting up packages
library(ggplot2)

# Quick Summary of Data
head(movie)
colnames(movie)
str(movie)

# Setting filters for select genres + studios
unique(movie$Genre)
unique(movie$Studio)
filt <- (movie$Genre == "action") | (movie$Genre == "adventure") | (movie$Genre == "animation") | (movie$Genre == "comedy") | (movie$Genre == "drama")
filt2 <- (movie$Studio == 'Buena Vista Studios') | (movie$Studio == 'Universal') | (movie$Studio == 'Fox') | (movie$Studio == 'WB') | (movie$Studio == 'Sony') | (movie$Studio == 'Paramount Pictures')

