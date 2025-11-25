Amazon Product Review Sentiment Analysis

A Social Media Analytics Project


Overview

This repository contains a complete sentiment analysis project focused on Amazon Alexa product reviews. The goal is to extract customer sentiment from review text using NLP techniques, perform exploratory data analysis (EDA), build and compare machine learning models, and present insights through an interactive dashboard.

This project demonstrates how social media analytics and text mining can support product improvement, customer experience management, and business decision-making.

Contents
1. Scripts and Notebooks

Social_media_analytics.ipynb – Python notebook containing data cleaning, text preprocessing, EDA, sentiment analysis, model training, tuning, and evaluation.

2. Dataset

amazon_alexa.csv – Amazon Alexa product review dataset consisting of ratings, review text, product variations, and derived sentiment labels.

3. Documentation

SMA_Project.docx – Full project report including introduction, use case, methodology, EDA, model comparison, dashboard notes, and business recommendations.

4. Dashboard

SMA.twbx – Tableau packaged workbook showcasing sentiment trends, model performance, keyword frequencies, and confusion matrices.

Project Objectives
1. Sentiment Understanding

Identify key themes in positive and negative reviews.

Understand customer satisfaction drivers and pain points.

2. Data Cleaning & NLP Preprocessing

Removing punctuation, stopwords, and noise.

Tokenization and TF-IDF feature extraction.

Transforming unstructured text into numerical vectors.

3. Exploratory Data Analysis (EDA)

Review distribution by rating and sentiment.

Word clouds for positive and negative reviews.

Review length and keyword frequency patterns.

Correlation insights between rating and sentiment.

4. Model Building & Evaluation

Implement and compare multiple classification models.

Tune hyperparameters to optimize overall performance.

Evaluate models using accuracy, precision, recall, and F1-score.

5. Business Insights

Translate analytical findings into product, customer experience, and marketing recommendations.

Dataset Description

The dataset includes 3,150 Amazon Alexa product reviews sourced from Kaggle.
Each review contains both numerical and textual features:

rating – Customer rating (1–5)

date – Review date

variation – Product model/variation

verified_reviews – Free-text written review

feedback – Sentiment label (1 = positive, 0 = negative)

Dataset Characteristics

Approximately 92% positive and 8% negative reviews.

Text lengths range from short phrases to long detailed feedback.

Strong correlation between star ratings and sentiment labels.

Ideal dataset for supervised NLP-based sentiment classification.

Exploratory Data Analysis (EDA)

Key EDA components include:

Sentiment Distribution

Highly imbalanced dataset with dominant positive sentiment.

Rating Trends

Majority of ratings fall between 4 and 5 stars.

Review Length Analysis

Negative reviews tend to be longer and more descriptive.

Word Cloud Analysis

Positive terms: love, great, easy, music, fun.

Negative terms: problem, return, issue, doesn’t.

Correlation Heatmap

Strong rating–sentiment alignment

Weak negative correlation between review length and rating

Overall, EDA reveals customer satisfaction is generally high, with negative reviews offering targeted improvement opportunities.

Model Implementation and Comparison

Three supervised machine learning models were developed:

Logistic Regression

Naïve Bayes

Random Forest

Preprocessing Pipeline

Tokenization

Stopword removal

TF-IDF vectorization

Train-test split (80–20)

Performance (Untuned Models)

Logistic Regression: ~92% accuracy

Naïve Bayes: ~92% accuracy

Random Forest: ~94% accuracy

Performance (After Hyperparameter Tuning)

Logistic Regression: 94% accuracy (highest and best balance of metrics)

Naïve Bayes: 93%

Random Forest: ~92% (marginal improvement)

Key Insight

Text classification for this dataset is effectively captured by linear models like Logistic Regression, which offered the strongest and most stable results after tuning.

Dashboard Overview

The Tableau dashboard provides a visual summary of findings:

Model Performance

Tuned vs Untuned accuracy comparison

Clear visualization of improvements from hyperparameter tuning

Confusion Matrix

Highlights classification strengths and misclassification patterns

Sentiment Distribution

Breakdown of total positive and negative reviews

Keyword Frequencies

Top recurring terms in reviews

Shows customer language patterns and common concerns

Dashboard Strengths

Clear layout across four modules

Consistent colour coding for comparison

Useful for both technical and business users

Business Interpretation & Recommendations
Customer Sentiment Insights

Strong overall satisfaction with Alexa devices

Positive reviews highlight convenience, sound quality, ease of use

Negative reviews mention connectivity problems, voice recognition issues, and device responsiveness

Product-Level Recommendations

Improve Wi-Fi pairing and connectivity stability

Enhance voice recognition across accents and environments

Strengthen quality assurance for refurbished units

Customer Experience Recommendations

Build troubleshooting guides for common issues

Provide tutorials for smart home integration

Display top-rated features in product listings

Strategic Impact

Automated sentiment tracking enables early detection of issues

Helps optimize marketing, product development, and customer service workflows

Requirements
Python Libraries

pandas

numpy

matplotlib

seaborn

scikit-learn

nltk

Dashboard Software

Tableau Desktop or Tableau Public

Usage

Clone the repository.

Open Social_media_analytics.ipynb and run all cells.

Load amazon_alexa.csv in the same directory.

Open SMA.twbx for dashboard exploration.

Refer to SMA_Project.docx for detailed documentation.

Authors

Rishabh Singh

Sumit Raghuvanshi

Harshal Aman