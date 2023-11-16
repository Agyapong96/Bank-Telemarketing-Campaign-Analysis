# Bank Telemarketing Campaign Analysis

This R project focuses on analyzing a telemarketing campaign conducted by a Portuguese banking institution from 2008 to 2013. The objective of this analysis is to understand the influence of different client occupations on their response to a bank term deposit telemarketing campaign based on their banking information.

## Problem Statement
Telemarketing, a direct marketing method, has been widely used by industries like banking to promote various financial products and services. However, negative associations with telemarketing, such as scams and deceptive practices, have led to adverse perceptions among people. This study aims to delve into the relationship between client occupations and their willingness to accept a bank's telemarketing campaign for term deposits.

## Achievements and Limitations
Previous studies in the banking industry used classification and clustering models to predict client responses to telemarketing campaigns. However, they lacked in-depth analysis of individual variables and their impact on client responses. This study intends to bridge that gap by analyzing how different variables relate to each other and influence the likelihood of saying "yes" or "no" to the campaign.

## Dataset
The dataset comprises 45,211 instances collected during phone-based marketing campaigns for a bank term deposit. The campaign aimed to offer clients a savings account with a guaranteed interest rate. However, the client couldn't deposit or withdraw funds during the agreed-upon term (ranging from 3 months to 5 years).

## Survey of Selected Packages
Three automated Exploratory Data Analysis (EDA) packages in R were utilized to gain insights from the dataset:

DataExplorer: Offers automated EDA reports displaying descriptive statistics with graphics. However, it lacks scatterplots to illustrate relationships between variables.
Dlookr: Generates EDA reports in HTML/PDF formats and plots graphical representations, yet it doesn't depict frequency distributions of categorical variables.
SmartEDA: Utilizes statistical methods for descriptive statistics, distribution plots, and displays percentage distributions of categorical variables.
Case Study
The analysis aims to comprehend the effectiveness of the bank's telemarketing campaign and identify occupations more inclined to accept the campaign. The dataset includes 10 categorical variables and 7 numeric variables, covering aspects like age, occupation, marital status, loan defaults, communication type, and campaign outcomes.

## Findings
The investigation revealed that occupation type significantly influences clients' willingness to accept the campaign. Occupations like students and retirees exhibited higher percentages of acceptance compared to the overall dataset. This trend might be attributed to fewer financial responsibilities, making these groups more open to taking risks compared to other occupations.

