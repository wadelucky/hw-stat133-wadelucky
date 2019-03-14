
# title: shots-data
# description: plot the shotting data of a player or all of them in Season 2016-2017
# input(s): some data like team name, game date, season, period, minutes_remaining, seconds_remaining, shot_made, action_type, shot_type, shot_distance, opponent, x, and y
# output(s): summary of everyone and the total of them(aka the Hampton Five)
library(dplyr)
curry <- read.csv("../data/stephen-curry.csv", stringsAsFactors = FALSE)
curry<-mutate(curry,name="Stephen Curry")
curry$shot_made_flag[curry$shot_made_flag=='y']<-"shot_yes"
curry$shot_made_flag[curry$shot_made_flag=='n']<-"shot_no"
curry<-mutate(curry,minute=curry$period*12-curry$minutes_remaining)

iguodala<-read.csv("../data/andre-iguodala.csv", stringsAsFactors = FALSE)
iguodala<-mutate(iguodala,name="Andre Iguodala")
iguodala$shot_made_flag[iguodala$shot_made_flag=='y']<-"shot_yes"
iguodala$shot_made_flag[iguodala$shot_made_flag=='n']<-"shot_no"
iguodala<-mutate(iguodala,minute=iguodala$period*12-iguodala$minutes_remaining)

green<-read.csv("../data/draymond-green.csv", stringsAsFactors = FALSE)
green<-mutate(green,name="Draymond Green")
green$shot_made_flag[green$shot_made_flag=='y']<-"shot_yes"
green$shot_made_flag[green$shot_made_flag=='n']<-"shot_no"
green<-mutate(green,minute=green$period*12-green$minutes_remaining)

durant<-read.csv("../data/kevin-durant.csv", stringsAsFactors = FALSE)
durant<-mutate(durant,name="Kevin Durant")
durant$shot_made_flag[durant$shot_made_flag=='y']<-"shot_yes"
durant$shot_made_flag[durant$shot_made_flag=='n']<-"shot_no"
durant<-mutate(durant,minute=durant$period*12-durant$minutes_remaining)

thompson<-read.csv("../data/klay-thompson.csv", stringsAsFactors = FALSE)
thompson<-mutate(thompson,name="Klay Thompson")
thompson$shot_made_flag[thompson$shot_made_flag=='y']<-"shot_yes"
thompson$shot_made_flag[thompson$shot_made_flag=='n']<-"shot_no"
thompson<-mutate(thompson,minute=thompson$period*12-thompson$minutes_remaining)

sink(file="../output/andre-iguodala-summary.txt")
summary(iguodala)
sink()

sink(file="../output/klay-thompson-summary.txt")
summary(thompson)
sink()

sink(file="../output/kevin-durant-summary.txt")
summary(durant)
sink()

sink(file="../output/draymond-green-summary.txt")
summary(green)
sink()

sink(file="../output/stephen-curry-summary.txt")
summary(curry)
sink()

temp<-rbind(curry,durant,green,thompson,iguodala)
write.csv(temp,file="../data/shots-data.csv")

sink(file="../output/shots-data-summary.txt")
summary(temp)
sink()