spotify = read.csv(file.choose())
view(spotify)

# create a histogram for beats per minuite

hist(spotify$Beats.Per.Minute)

hist(spotify$Beats.Per.Minute,
     breaks = 5, 
     main = 'Distribution of Beats per Minute',
     xlab = 'Beats per minute',
     ylab= 'No. of Songs',
     col='#FFFD61')

# histogram for valance 

hist(spotify$Valence.,
     breaks= 4,
     main= 'Distrubution of Valance',
     xlab = 'Valance',
     ylab = 'No. of songs',
     col ='#FF30C5')


#histogram for speechiness

hist(spotify$Speechiness.,
     breaks= 4,
     main= 'Distrubution of Speechiness',
     xlab = 'Speechiness',
     ylab = 'No. of songs',
     col ='#2CE1FF')

#boxplot for length column 

boxplot(spotify$Length.)

boxplot(spotify$Length.,
        horizontal =  T ,
        notch = T,
        main = 'boxplot for the duration of the song',
        xlab = 'Duration of the song',
        col= 'red')

# boxplot for valance 
boxplot(spotify$Valence. ,
        horizontal =  T ,
        notch = T,
        main = 'boxplot for the valance of the song',
        xlab = 'Valance of the song',
        col= 'blue')


# boxplot for Liveness
boxplot(spotify$Liveness,
        horizontal =  T ,
        notch = T,
        main = 'boxplot for the Liveness of the song',
        xlab = 'liveness of the song',
        col= 'purple')


#scatterplot between speechiness and popularity
plot(spotify$Speechiness., spotify$Popularity,
     col='blue')

plot(spotify$Length., spotify$Popularity,
     col='red')

plot(spotify$Energy, spotify$Loudness..dB..,
     col='#208BFF')


library(dplyr)

q1 = spotify %>% group_by(Genre) %>% summarise(total_popularity= sum(Popularity)) %>% 
  arrange(-total_popularity) %>% head(3)

barplot(xlab= q1$Genre,height=  q1$total_popularity)


q2 = spotify %>% group_by(Genre) %>% summarise()








