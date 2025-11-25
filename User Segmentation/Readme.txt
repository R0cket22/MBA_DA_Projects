User Segmentation Using Mobile App Usage Data

A Mobile Analytics Project


Overview

This repository contains a complete mobile analytics project focused on user segmentation based on mobile app usage behaviour. The objective is to transform raw app activity data into insights through Exploratory Data Analysis (EDA), clustering (k-means), screen time analytics, and an interactive dashboard.

This project demonstrates how user behaviour can be analyzed to support retention, monetization, and personalized engagement strategies in digital products.

Contents
1. Scripts and Notebooks

MA_project.ipynb – Python notebook for data cleaning, visualization, clustering, and segmentation.

2. Dataset

segmented_users_clean.csv – Cleaned dataset containing user-level behavioural metrics.

3. Documentation

MOBILE ANALYTICS PROJECT.docx – Detailed report including methodology, segmentation analysis, dashboard explanation, and strategic recommendations.

4. Dashboard

MA.twbx – Tableau packaged workbook for interactive analysis and visual exploration.

Project Objectives
1. Data Cleaning

Handling missing values, duplicates, and unrealistic outliers.

Encoding categorical variables.

Normalizing and scaling numerical features.

Feature engineering (daily averages, dominant categories).

2. Exploratory Data Analysis (EDA)

Understanding screen time distribution.

Analysing app category preferences.

Correlation heatmaps for behavioural patterns.

Identifying potential segmentation cues.

3. User Segmentation (K-Means Clustering)

Identifying behavioural groups using k-means.

Determining optimal cluster count with the Elbow Method.

4. Insight Generation

Extracting behavioural differences across segments.

Highlighting necessary product and marketing strategies.

5. Strategic Decision Support

Helping businesses optimize retention, engagement, and monetization through data-driven segmentation.

Key Features of the Dataset

Each row represents a user and includes:

UserID – Anonymized identifier

AvgDailyScreenTime (minutes)

AvgDailyAppLaunches

AvgDailyInteractions

DominantCategory (Social, Productivity, Utilities, Entertainment)

Analysis Highlights
1. Data Cleaning

Removed missing values, duplicates, and outliers.

Encoded categories.

Performed scaling for clustering.

Visualizations and Key EDA Insights

The notebook and dashboard contain several exploratory and analytical visualizations:

Histograms for screen time distribution

Bar charts for category-level usage

Correlation heatmaps

Scatter plots for cluster visualization

Boxplots for productivity vs non-productivity usage

Bubble charts for engagement comparison

Treemaps for top apps by screen time

Major Observations

Social and entertainment apps dominate screen time.

Screen time is strongly correlated with interactions.

Behaviour clearly separates into light, balanced, and heavy usage groups.

User Segmentation (K = 4)

Four meaningful user clusters were identified:

1. Socially Engaged Users

Approximately 33 minutes/day

Highest interactions

Social and communication heavy

Suitable for targeted advertisements and social engagement features

2. Productivity and Social Hybrid Users

Approximately 28 minutes/day

Balanced usage

Engage equally in productivity and social apps

Benefit from gamified features and collaborative tools

3. Entertainment-Heavy Users

Approximately 38 minutes/day

Passive engagement, fewer interactions

Respond well to premium subscriptions and content bundles

4. Utility-First Light Users

Approximately 27 minutes/day

Task-driven behaviour

Require onboarding improvement and retention-focused nudges

Dashboard Summary

The Tableau dashboard is divided into three sections:

Top Section

Screen time distribution

Category-wise screen time comparison

Middle Section

Cluster-wise segmentation insights

Average behavioural metrics by cluster

Bottom Section

Productivity vs non-productivity screen time

Engagement comparison across clusters

Dashboard Strengths

Consistent colour scheme for clusters

Clean layout with minimal cognitive load

Interactive filters enabling tailored exploration

Strategic Recommendations
1. Improving Retention

Utility-first and hybrid users need personalised nudges, onboarding flows, and reminders.

2. Enhancing Monetization

Entertainment-heavy users respond better to subscription models and bundled content.

3. Optimizing Ad Strategy

Socially engaged users display high interaction rates, making them ideal for ad-driven revenue.

4. Product Feature Development

Hybrid users benefit from time-tracking features, workflow integration, and gamification.

Ethical Considerations

Dataset is anonymized and compliant with privacy standards.

No personally identifiable information is used.

Segmentation is applied for aggregated insight, not individual profiling.

Visualizations maintain integrity with proper scaling and unbiased representation.

Requirements
Python Libraries

pandas

numpy

matplotlib

seaborn

scikit-learn

Dashboard

Tableau Desktop or Tableau Public

Usage Instructions

Clone the repository.

Open MA_project.ipynb to run the complete analysis.

Load segmented_users_clean.csv in the same directory.

Open MA.twbx in Tableau to explore the interactive dashboard.

Refer to MOBILE ANALYTICS PROJECT.docx for in-depth analysis and findings.

Authors

Rishabh Singh
