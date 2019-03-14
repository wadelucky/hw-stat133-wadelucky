#title: creation of shot charts
#description: process given data, create corresponding graphs
#inputs: dataframe of player's data
#outputs: using x and y coordinates to generate a graph whether made a shot or not in the whole season

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

library(jpeg)
library(grid)
library(ggplot2)
court_file<-"../images/nba-court.jpg"
court_image<-rasterGrob(
  readJPEG(court_file),
  width=unit(1,"npc"),
  height=unit(1,"npc")
)
 
klay_scatterplot <- ggplot(data = thompson) + geom_point(aes(x = x, y = y, color = shot_made_flag))
#klay_scatterplot

# shot chart with court background 
klay_shot_chart <- ggplot(data = thompson) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) + ggtitle('Shot Chart: Klay Thompson (2016 season)') + theme_minimal()
#klay_shot_chart

pdf(file="../images/klay-thompson-shot-chart.pdf",width=6.5,height=5)
ggplot(data = thompson) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) + ggtitle('Shot Chart: Klay Thompson (2016 season)') + theme_minimal()
dev.off()

pdf(file="../images/andre-iguodala-thot-chart.pdf",width=6.5,height=5)
ggplot(data = iguodala) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) + ggtitle('Shot Chart: Andre Iguodala (2016 season)') + theme_minimal()
dev.off()

pdf(file="../images/kevin-durant-shot-chart.pdf",width=6.5,height=5)
ggplot(data = durant) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) + ggtitle('Shot Chart: Kevin Durant (2016 season)') + theme_minimal()
dev.off()

pdf(file="../images/draymond-green-shot-chart.pdf",width=6.5,height=5)
ggplot(data = green) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) + ggtitle('Shot Chart: Draymond Green (2016 season)') + theme_minimal()
dev.off()

pdf(file="../images/stephen-curry-shot-chart.pdf",width=6.5,height=5)
ggplot(data = curry) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) + ggtitle('Shot Chart: Stephen Curry (2016 season)') + theme_minimal()
dev.off()

shots_data=read.csv("../data/shots-data.csv")
pdf(file="../images/gsw-shot-charts.pdf",width=8,height=7)
ggplot(data = shots_data) + 
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) + 
  ylim(-50, 420) +
  ggtitle('Shot Chart: GSW (2016 season)') +
  theme_minimal()+
  facet_wrap(~name)
dev.off()

shots_data=read.csv("../data/shots-data.csv")
png(file="../images/gsw-shot-charts.png")
ggplot(data = shots_data,width=8,height=7) + 
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) + 
  ylim(-50, 420) +
  ggtitle('Shot Chart: GSW (2016 season)') +
  theme_minimal()+
  facet_wrap(~name)
dev.off()

