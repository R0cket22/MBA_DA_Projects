Fog Computing vs Cloud Computing in Real-Time Business Applications

A Comprehensive IoT Analytics Project


Overview

This repository presents a complete Internet of Things (IoT) project focused on comparing Fog Computing and Cloud Computing for real-time business applications. The objective is to evaluate both architectures based on latency, execution time, resource utilization, workload behaviour, and forecasting accuracy using a cleaned IoT dataset.
The project integrates exploratory data analysis (EDA), multi-tier performance comparison, dashboard development, and strategic recommendations for real-world use cases such as healthcare (remote patient monitoring), logistics, and smart cities.

Contents
1. Scripts and Notebooks

IOT_Project_.ipynb – Python notebook containing dataset loading, preprocessing, EDA, performance comparison, and visualization.

2. Dataset

iot_cleaned.csv – Cleaned IoT dataset capturing performance metrics across Cloud, Fog, Edge, and Device tiers.

3. Documentation

INTERNET OF THINGS PROJECT.docx – Full project report detailing fog vs cloud concepts, dataset relevance, analysis, dashboards, and recommendations.

4. Presentation

Fog vs Cloud PPT.pdf – Presentation summarizing fog and cloud architectures, key findings, case studies, and conclusions.

5. Dashboard

IOT Dashboard.twbx – Tableau dashboard for analyzing latency, execution time, resource allocation, and workload-wise performance.

Project Objectives
1. Architectural Comparison

Understand operational differences between fog and cloud computing.

Evaluate their suitability for real-time IoT applications.

2. Data Cleaning and Preparation

Handle inconsistencies, missing values, anomalies, and categorical encoding.

Normalize performance metrics for fair comparison across tiers.

3. Exploratory Data Analysis (EDA)

Analyze resource utilization (CPU, Memory).

Compare execution times, latency, jitter across workloads.

Explore relationships between processing tiers and system performance.

4. Performance Benchmarking

Directly compare Fog vs Cloud on key metrics.

Evaluate task-specific advantages (network traffic, image processing, video, analytics).

5. Dashboard Development

Create an interactive dashboard for architecture selection and performance analysis.

6. Strategic Recommendations

Propose the optimal architecture (fog, cloud, or hybrid) for real-time business scenarios.

Dataset Description

The dataset (iot_cleaned.csv) captures real IoT workload behaviour across multiple processing tiers.
It includes variables essential for benchmarking fog vs cloud:

Key Attributes

Workload_Type – Data Analytics, Image Processing, Video Processing, Network Traffic

Processing_Tier – Cloud, Fog, Edge, Device

CPU_Usage (%)

Memory_Usage (MB)

Network_Latency (ms)

Jitter (ms)

Task_Execution_Time (ms)

Predicted_Resource_Allocation (%)

Actual_Resource_Allocation (%)

Dataset Relevance

Enables direct Fog vs Cloud performance comparison.

Supports latency-critical analysis for healthcare, logistics, smart cities.

Includes predictive vs actual allocation (correlation ~0.97), enabling advanced analysis.

Reflects realistic IoT behaviour with memory usage ranging from 500–8200 MB and latency from ~8–40 ms.

Exploratory Data Analysis (EDA) Highlights
1. CPU Usage

Most workloads operate between 30–80% CPU, as shown in the histogram (Figure from page 6 of the PDF).

Balanced distribution suggests efficient resource utilization.

2. Memory Usage

Memory usage ranges from 500–8200 MB (boxplot on page 6).

High variability indicates heterogeneous IoT workloads.

3. Task Execution Time

Generally between 100–250 ms, with heavier workloads reaching 300 ms (page 6).

Video processing shows the highest execution times.

4. Workload-Specific Behaviour

Network Traffic: Fog performs best (lower latency).

Video Processing: Cloud performs better due to heavy memory requirements.

Data Analytics / Image Processing: Balanced across tiers.

5. Correlation Analysis

Predicted vs actual resource allocation correlation is ~0.97.

CPU, memory, and execution time show weak direct correlations, indicating multi-factor dependence.

Fog vs Cloud: Analytical Comparison
Cloud Computing

Lower latency (~25 ms).

Faster execution time (~174 ms).

Suitable for heavy workloads (image/video).

Highly scalable.

Fog Computing

Slightly higher latency (~26–27 ms) but more stable under traffic.

Better for real-time streaming and anomaly detection.

Reduces bandwidth by processing locally.

Critical for safety-sensitive tasks.

Summary

Cloud = scalability, consistency, heavy workload capability
Fog = immediacy, responsiveness, real-time safety

Dashboard Summary

The IOT Dashboard.twbx presents all insights visually.
As described on page 8:

Top Section

KPIs: Avg Latency, Avg Execution Time, Avg CPU Usage

Middle Section

Latency Across Workloads (Stacked Bar)

Execution Time Distribution (Boxplots by Tier)

Bottom Section

Forecast vs Actual Allocation

Latency vs Task Completion (Scatter)

Dashboard Strengths

Clear top-to-bottom analytical flow

Filters for Tier, Workload, Sensor Data

Supports both executives and engineers in decision-making

Case Studies Referenced

(from pages 4–5 of the PDF)

Healthcare (Remote Patient Monitoring)

Fog reduces emergency response time by 40%.

Instant anomaly detection (ECG, oxygen, heart rate).

Cloud supports long-term storage and predictive analytics.

Logistics & Fleet Management

DHL fog solution reduced latency from 300 ms to <100 ms.

Real-time cargo monitoring and vehicle health tracking.

Smart Cities

Fog-based traffic systems achieved <50 ms response.

Barcelona’s system reduced congestion by 30%.

Strategic Recommendations
For Real-Time Business Applications

A hybrid Fog–Cloud architecture is optimal.

Fog Layer

Handles local processing for milliseconds-level responsiveness.

Best for emergency alerts, streaming sensor data, and localized tasks.

Cloud Layer

Stores long-term records.

Performs predictive analytics across large datasets.

Ensures scalability and cost efficiency.

Final Recommendation

Adopt Hybrid Fog-Cloud architecture to balance:

Responsiveness

Scalability

Reliability

Bandwidth efficiency

Predictive capability

Requirements
Python Libraries

pandas

numpy

matplotlib

seaborn

scikit-learn

Dashboard

Tableau Desktop / Tableau Public

Usage Instructions

Clone the repository.

Place iot_cleaned.csv in the same directory as the notebook.

Open IOT_Project_.ipynb and run all sections sequentially.

Explore performance insights using IOT Dashboard.twbx.

Refer to the project report and PDF for contextual understanding.

Authors

Rishabh Singh
