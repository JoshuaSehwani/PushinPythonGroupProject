library(plyr)
library(dplyr)
library(magrittr)
library(ggplot2)
library(ggrepel)

online_carsale = read.csv("C:\\Users\\14154\\Desktop\\DS 311\\group_project\\PushinPythonGroupProject\\sale\\Online_Cars_Sale_Marketplace.csv")

popular_mpg = online_carsale %>% group_by(MaxMPG) %>% count()

g_popular_mpg = ggplot(popular_mpg, aes(MaxMPG, n)) + geom_bar(stat = "identity")

g_popular_mpg_10_50 = g_popular_mpg + scale_x_continuous(limits=c(10, 50))

g_popular_mpg

g_popular_mpg_10_50

mpg_above_30 = subset(online_carsale, MaxMPG >= 30)

mpg_above_30_automatic = mpg_above_30[grep("Automatic", mpg_above_30$Transmission),]

nrow(mpg_above_30_automatic)
nrow(mpg_above_30)
nrow(mpg_above_30_automatic)/nrow(mpg_above_30) * 100
