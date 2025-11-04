# **Nashville Housing Market Analysis**
## Overview
This project focuses on data cleaning, transformation, and visualization of a [housing dataset from Kaggle](https://www.kaggle.com/datasets/tmthyjames/nashville-housing-data?resource=download).
The main goal was to analyze the real estate market in the city of Nashville and identify key relationships between property characteristics and sale prices.

## Purpose

The main objectives of the project were to:
- Aggregate and clean the dataset for analysis.
- Provide an overview of the property market across different cities.
- Explore relationships between property features and sale price.
- Generate insights and hypotheses based on observed data patterns.

## Project Structure

The project consists of three main parts:

- Data Cleaning and Transformation

- Visualization (Tableau Dashboard)

- Correlation Analysis

## Tools and Technologies

- Python (Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn)

- Tableau Public for visualization

- Jupyter Notebook for data analysis and regression modeling

### 1. Data Cleaning and Transformation

The dataset initially contained duplicate entries, missing values, and inconsistent address formatting.

Main cleaning steps:

- Removed all duplicates.

- Replaced null values with 0 or appropriate defaults.

- Split the propertyAddress column into two separate columns: property_city and property_address.

- Corrected rows with the same parcelID but missing address information.

- Standardized the values in the SoldAsVacant column for better readability.

After cleaning, the [dataset](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Nashville_housing_project/sales.csv) was consistent and ready for visualization and analysis.

### 2. Visualization

A Tableau dashboard was created to represent main market trends by city, year, and property type.
It provides an overview of average sale prices, total property values, and acreage distribution.
<img width="1108" height="668" alt="image" src="https://github.com/user-attachments/assets/f1b6a09d-fb3e-48e0-9d1a-6c74462fcecf" />


👉 You can view the dashboard on[ my Tableau Public profile](https://public.tableau.com/app/profile/vlad.chernetskiy/viz/apartmentproject_17619167806030/Dashboard1).

From the dashboard, we can observe a clear trend: total appraised value and acreage appear to have some relationship with sale price.

### 3. Correlation Analysis

To verify this assumption, a [ orrelation matrix](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Nashville_housing_project/nashville_housing_corr%20(2).ipynb) were created in Python.

## Key findings:

- Acreage showed a weak correlation with sale price.

- Total property value demonstrated a strong positive correlation (r ≈ 0.66).

- This supports the hypothesis that the appraised value is a strong predictor of actual sale price.

## Key Insights

- Total value (appraised value) strongly influences property sale prices.

- Most properties sold were family homes with 2–4 bedrooms.

- The majority of sold properties were not vacant at the time of sale.

- Nashville remains the most active city in the dataset, combining reasonable prices with high property demand.

## Conclusions

The analysis confirms that the total appraised value is the most reliable indicator of sale price among the available variables.
Future work may include:

- Incorporating time-series trends for price evolution.

- Adding geospatial visualization to map neighborhood-level patterns.

- Building a predictive model to estimate future property prices.

