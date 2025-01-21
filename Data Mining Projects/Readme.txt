Overview

This repository contains an analysis of a used car dataset, focusing on data cleaning and exploratory data analysis (EDA). The goal is to extract meaningful insights to support decision-making in the used car market.

Contents

Scripts

used_cars_analysis.R: R script for data cleaning, visualization, and exploratory analysis.

Dataset

used_car_dataset.csv: The dataset used in the analysis, containing information about used cars.

Documentation

Used-Car-Dataset-Analysis.pdf: A comprehensive document summarizing the objectives, methods, and findings of the analysis.

Objectives

Data Cleaning: Standardizing columns, handling missing values, removing duplicates, and filtering unnecessary data.

Exploratory Data Analysis (EDA): Understanding the distribution of key features, relationships between variables, and identifying trends.

Insights for Decision-Making: Highlighting patterns in car prices, mileage, and brand preferences.

Key Features of the Dataset

kmDriven: Distance driven by the car.

AskPrice: The asking price for the car.

FuelType: The type of fuel the car uses.

Transmission: The transmission type of the car.

Additional features include car brand, model, and year.

Analysis Highlights

Data Cleaning

Removed commas and units in kmDriven.

Cleaned currency symbols in AskPrice.

Removed missing values and duplicates.

Dropped irrelevant columns such as PostedDate.

Visualizations

Histograms: Distribution of AskPrice and kmDriven.

Scatter Plot: Relationship between AskPrice and kmDriven.

Boxplots: Price variations by FuelType and Transmission.

Bar Chart: Top 10 car brands based on frequency.

Findings

Numerical Insights:

Distribution of AskPrice and kmDriven.

Ranges of key metrics like car age and mileage.

Categorical Analysis:

Price variations based on fuel type and transmission.

Brand Trends:

Leading car brands include Maruti Suzuki, Hyundai, Honda, and Toyota.

Next Steps

Predictive Modeling: Develop models to predict car prices based on the features.

Deeper Analysis: Investigate brand-specific trends and consumer preferences.

Data Enrichment: Integrate additional features like car condition, service history, and regional factors.

Requirements

R Packages:

ggplot2

dplyr

Dataset (used_car_dataset.csv) in the same directory as the R script.

Usage

Clone this repository.

Open the R script used_cars_analysis.R in RStudio.

Run the script to clean the dataset, generate visualizations, and explore insights.

Author

Rishabh Singh Comprehensive analysis and documentation.
