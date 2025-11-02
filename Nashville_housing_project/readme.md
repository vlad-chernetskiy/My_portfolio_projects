# **Nashville housing project**
## Overview
The data cleaning and visualization projetc of data from Kaggle. Origin data set you can download [here](https://www.kaggle.com/datasets/tmthyjames/nashville-housing-data?resource=download)
## Porpose
The goals of my project is: 
- Aggregate and clean the data.
- Represent the overview of property market in Nashvile and environmenting cities.
- Find insights between data and make hypothesises about relashionships between values.
## Contains 
Project is devided by parts:
- [Data cleaning and transforming.](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Nashville_housing_project/ScriptForDataCleaning.sql)
- [Correlation analysis]().
- [Visualization]().
## Data cleaning and transforming
Have been deleted all duplicates and null value have cunducted into 0 values. Have been devided column property adress by 2 part: property_city and property_adress for simplifising reading and visualization. Finded and corrected raws with a same parcelID but null value of address. Standartised a values of soldasvacant into more readble format. In result getted a [cleaned dataset](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Nashville_housing_project/sales.csv).   
