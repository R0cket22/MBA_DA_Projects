Overview

This repository contains a comprehensive analysis and predictive modeling project for house prices in India. It includes data cleaning, visualization, and the application of machine learning models to predict house prices effectively within the Indian real estate market.

Contents

Scripts

da_project.py: Python script for data cleaning, visualization, and predictive modeling.

Dataset

House Price India.csv: The dataset used for analysis, containing detailed information about houses.

Documentation

Data-Analysis-and-Predictive-Modeling-of-House-Prices-in-India.pdf: A document summarizing the analysis objectives, methods, and findings.

Objectives

Data Cleaning: Standardizing columns, handling missing values, and removing duplicates.

Exploratory Data Analysis (EDA): Understanding the distribution of house prices, relationships between features, and identifying trends.

Predictive Modeling: Applying machine learning models to predict house prices accurately.

Key Features of the Dataset

Price: The price of the house.

Living Area: The living area in square feet.

Number of Bedrooms: Total bedrooms in the house.

Distance from Airport: Distance from the nearest airport in kilometers.

Additional features include bathrooms, lot area, number of floors, and built year.

Analysis Highlights

Data Cleaning

Addressed missing values and duplicates.

Handled outliers using percentile-based filtering.

Visualizations

Histograms: Distribution of house prices.

Scatter Plot: Relationship between price and living area.

Boxplots: Price variations by the number of bedrooms and outliers in house prices.

Predictive Modeling

Linear Regression: Interpretable but limited by linear assumptions.

Lasso Regression: Performed feature selection by penalizing less important variables.

Ridge Regression: Controlled overfitting with L2 regularization.

Random Forest Regressor: Best model with an R² score of 0.674, effectively capturing non-linear relationships.

Model Performance

Cross-validation ensured model generalization.

Random Forest achieved the highest performance among all models.

Next Steps

Feature Expansion: Add more features such as amenities and regional data.

Model Refinement: Experiment with other machine learning algorithms.

Real-World Application: Develop tools for real estate professionals and homeowners to make data-driven decisions.

Requirements

Python Libraries:

pandas

matplotlib

seaborn

scikit-learn

Dataset (House Price India.csv) in the same directory as the Python script.

Usage

Clone this repository.

Open the script da_project.py in a Python environment.

Run the script to clean data, visualize trends, and apply predictive models.

Author

Rishabh SinghDetailed analysis and project documentation.