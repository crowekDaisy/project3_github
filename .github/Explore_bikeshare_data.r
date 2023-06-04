
ny = read.csv('new_york_city.csv')
wash = read.csv('washington.csv')
chi = read.csv('chicago.csv')

head(chi)

library(ggplot2)

ggplot (data=chi,aes(x=Gender))+
geom_bar(color='red',fill='gray70')+
geom_text(stat='count', aes(label=..count..),vjust=-1)+
ggtitle('Counts by Gender in the Chicago Bikeshare')+
labs(y = "Count",x = "Gender")



chi = read.csv('chicago.csv')
library (ggplot2)
head(chi)


ggplot(aes(x=Start.Station),data=subset(chi, End.Station=="Streeter Dr & Grand Ave")) +
geom_bar(fill='gray70')+
coord_flip()+
geom_text(stat='count', aes(label=..count..),hjust=-.1)+
ggtitle('Starting Stations w/ Trips to Streeter Dr & Grand Ave')+
labs(y = "Count",x = "Starting Station")

chi = read.csv('chicago.csv')
library (ggplot2)
head(chi)

ggplot (data=chi,aes(x=Trip.Duration/60))+
geom_histogram(binwidth=1)+
xlim(0,60)+
ggtitle('Histogram:Trip Duration for Chicago Bikeshare')+
labs(x = "Trip Duration: Minutes",y="Frequency")



system('python -m nbconvert Explore_bikeshare_data.ipynb')
