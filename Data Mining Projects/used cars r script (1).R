# Load necessary libraries
library(ggplot2)
library(dplyr)

# Load the dataset
data <- read.csv(file.choose())
View(data)
# Step 1: Data Cleaning

# Clean 'kmDriven' column: Remove commas and ' km', convert to numeric
data$kmDriven <- as.numeric(gsub(",| km", "", data$kmDriven))

# Clean 'AskPrice' column: Remove currency symbols and commas, convert to numeric
data$AskPrice <- as.numeric(gsub("[^0-9.]", "", data$AskPrice))

# checking for any null values in the data

sum(is.na(data))

# handling missing values
ndt = na.omit(data)

sum(is.na(ndt))

# Check for duplicates and remove them

ndt <- distinct(ndt)

ndt

#dropping unecessary columns

dt1 = ndt[-c(9,10)]
View(dt1)
str(dt1)

dt1$AskPrice = as.integer(dt1$AskPrice)
# 2.2 Visualize distributions
# Distribution of 'AskPrice'
hist(dt1$AskPrice, 
     breaks = 100,
     main = "Distribution of Ask Price", 
     xlab = "Ask Price", 
     ylab = "Frequency", 
     col = "#2F308F", 
     xaxt = "n")
axis(1, at = pretty(data$AskPrice), labels = format(pretty(dt1$AskPrice), big.mark = ",", scientific = FALSE))

# Distribution of 'kmDriven'
hist(dt1$kmDriven, 
     breaks = 100, 
     main = "Distribution of km Driven", 
     xlab = "km Driven", 
     ylab = "Frequency", 
     col = "green", 
     xaxt = "n")
axis(1, at = pretty(dt1$kmDriven), labels = format(pretty(dt1$kmDriven), big.mark = ",", scientific = FALSE))
# Scatter plot: 'AskPrice' vs 'kmDriven'
plot(dt1$kmDriven, dt1$AskPrice, 
     main = "Ask Price vs km Driven", 
     xlab = "km Driven", 
     ylab = "Ask Price", 
     col = "blue", 
     pch = 20, 
     xaxt = "n", 
     yaxt = "n")
axis(1, at = pretty(dt1$kmDriven), labels = format(pretty(dt1$kmDriven), big.mark = ",", scientific = FALSE))
axis(2, at = pretty(dt1$AskPrice), labels = format(pretty(dt1$AskPrice), big.mark = ",", scientific = FALSE))
# Boxplot: 'AskPrice' by Fuel Type
boxplot(dt1$AskPrice ~ dt1$FuelType, 
        main = "Ask Price by Fuel Type", 
        xlab = "Fuel Type", 
        ylab = "Ask Price", 
        col = rainbow(length(unique(dt1$FuelType))), 
        yaxt = "n")
axis(2, at = pretty(dt1$AskPrice), labels = format(pretty(dt1$AskPrice), big.mark = ",", scientific = FALSE))
#Boxplot: 'AskPrice' by Transmission Type
boxplot(dt1$AskPrice ~ dt1$Transmission, 
        main = "Ask Price by Transmission Type", 
        xlab = "Transmission", 
        ylab = "Ask Price", 
        col = rainbow(length(unique(dt1$Transmission))), 
        yaxt = "n")
axis(2, at = pretty(dt1$AskPrice), labels = format(pretty(dt1$AskPrice), big.mark = ",", scientific = FALSE))


# Top 10 Car Brands
# Count the top 10 car brands
brand_count <- dt1 %>% count(Brand, sort = TRUE) %>% top_n(10)


barplot(brand_count$n, 
        names.arg = brand_count$Brand, 
        las = 1, # Horizontal labels
        col = "purple", 
        main = "Top 10 Car Brands", 
        xlab = "Brand", 
        ylab = "Frequency", 
        cex.names = 0.7) # Reduce font size of labels

