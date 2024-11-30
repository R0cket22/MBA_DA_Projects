install.packages("dplyr")0
library(dplyr)
install.packages("tidyverse")
library(tidyverse)
#in R if we want to perform data analysis , manipulation
#or data wrangling we will use the dplyr
# dplyr has 6 functions using which we can perform 85% of data analysis
#1. select() - This will select only specific columns from our data

#if we only want region 

q1 = retail %>% select(Region)

#profit column 
q2 = retail %>% select(Profit)
 
q3 = retail %>% select(Region, City, Profit)

view(q3)


q4 = retail %>% select(`Customer ID`, `Product Line`, `Total Sales`)

q5 = retail %>% select(`Order ID`, Quantity, `Unit Price`)



# 2. Filter function - filter()


#get the data of customers from the south region 

q6 = retail %>% filter(Region == "South India")


# data of pro customers

q7 = retail %>%  filter(`Customer Type` == "Pro")

# data of order qty is more than 40
q8 = retail %>%  filter(Quantity>40)

# data of comapny faced a loss

q9 = retail %>%  filter(Profit<0)

# get the data of customer who bought education products using credit card

q10 = retail %>%  filter(`Product Line` == "Education" & `Payment Method` == "Credit Card")
view(q10)

# get the data of food and beverages products where the unit price is more than 5000

d1 = retail %>%  filter(`Product Line` == "Food and Beverages" & `Unit Price` > 5000)

# get the data of orders from panaji where the sales is more than 1L

d2 = retail %>% filter(City == "Panaji" & `Total Sales` > 100000)

# get the data which are from bangalore or made by trail cust

d3 = retail %>%  filter(`Customer Type` == "Trial" | City == "Bengaluru")


# 3. groupby()  4. Summarise()


d4 = retail %>% group_by(`Customer Type`) %>%  summarise(Total_Profit = sum(Profit))


#Find the average sales of each region

d5 = retail %>%  group_by(Region) %>%  summarise(Averegae_Sales = mean(`Total Sales`))
 
# FInd the average unit price of each product line

d6 = retail %>%  group_by(`Product Line`) %>%  summarise(Averegae_Price = mean(`Unit Price`))


# Find the minimum and maximum profit for each payment method

d7= retail %>%  group_by(`Payment Method`) %>%  summarise(Max_Profit = max(Profit), Min_Profit = min(Profit))


# Find the total quantity sold for each customer type
#has context menu


d8 = retail %>%  group_by(`Customer Type`) %>%  summarise(Total_qty = sum(Quantity))

#5. arrange() 

# Find the top 10 profitable cities

d9 = retail %>%  group_by(City) %>%  summarise (Total_Profit = sum(Profit)) %>% arrange(-Total_Profit) %>% 
  head(10)


# Find the least 10 profitable cities

a1 = retail %>%  group_by(City) %>%  summarise (Total_Profit = sum(Profit)) %>% arrange(Total_Profit) %>% tail(10)



# Find the top 3 product line based on total sales

a2 = retail %>%  group_by(`Product Line`) %>%  summarise (Total_sales = sum(`Total Sales`)) %>% arrange(-Total_sales) %>% head(3)


# Find the top 5 order id based on total profit

a3 = retail %>%  group_by(`Order ID`) %>%  summarise (Total_Profit = sum(`Profit`)) %>% arrange(-Total_Profit) %>% head(5)


# Find the bottom 3 customer ID based on total quantity ordered

a4 = retail %>%  group_by(`Customer ID`) %>%  summarise (Total_Qty = sum(Quantity)) %>% arrange(Total_Qty) %>% head(3)

#6.  mutate() - This adds a new column

a5 = retail %>%  mutate(Ratio= `Total Sales`/Profit)
view(a5)


# For every order there is a 5% discount. What is the sales

a6 = retail %>%  mutate(Discounted_Sales =  `Total Sales`-`Total Sales`*0.05 )

# after this 5% discount.


# Find the product line which has the highest total sales 
# and what is the sales to profit ratio for that product line

a7 = retail %>% group_by(`Product Line`) %>% 
  summarise(tot_sales = sum(`Total Sales`) , tot_profit = sum(Profit)) %>%
  arrange(-tot_sales) %>% mutate(ratio = tot_sales/tot_profit) %>%
  head(1)

# coverting sales from INR to USD

a8 = retail %>%  mutate(Sales_USD = (`Total Sales` * 0.012))


