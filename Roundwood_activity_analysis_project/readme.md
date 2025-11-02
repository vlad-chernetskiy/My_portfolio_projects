# **Roundwood activity analysis project** :deciduous_tree:
## Overview
This project has been created for analysis roundwood activities in Ukraine by data set [Forest management activities](https://stat.gov.ua/en/datasets/forest-management-activities) from [Ukrstat.com](https://stat.gov.ua/en). 
## Purpouse
The goals of this project: 
- Analyse the dinamics of roundwood felling and sales in Ukraine.
- Identify relationships between main metrics.
- Conduct correlation and regression anaylses to understand causal patterns.
- Create a forecast of future felling values and prices 
## Contains
Project is devided by parts: 
- [Data cleaning ](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Roundwood_activity_analysis_project/cleaning%20script.sql)
- [Transform into long format](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Roundwood_activity_analysis_project/ForestDataCleaning.py)
- [Transforming and preparint data for analysis](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Roundwood_activity_analysis_project/script%20for%20analys%20and%20visualization.sql)
- [correlation and regression analysis with Python by Jupyter Notebook](https://github.com/vlad-chernetskiy/My_portfolio_projects/tree/main/Roundwood_activity_analysis_project/analysis_scripts)
-  [Visualization within Talbeau](https://public.tableau.com/app/profile/vlad.chernetskiy/viz/ForestlyActivitiesProjectRemaster/detalview) 
###  Data cleaning :
Have been deleted all dupliactes, data has been aggregated and procesing for visualization by SQL , precisely PosgreSQL. Here is [script for cleaning](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Roundwood_activity_analysis_project/cleaning%20script.sql) 
### Data Transformation
Is this part cleaned data set had been conducted to long format for further procesing and visualizaiton . For this has been written a [script for transforming](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Roundwood_activity_analysis_project/ForestDataCleaning.py). In result I got a [long format dataset](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Roundwood_activity_analysis_project/forestdata1.3.zip).
 ### Calculation and preparing data for analisis
Had been calculated costs per cubic meter by region, finded a key metrics to be analysed. Builded useful and clean datasets for researching a correlations and regression analysis. In result have been selected two files([data1](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Roundwood_activity_analysis_project/data-1759582857171.csv) , [data2](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Roundwood_activity_analysis_project/data-1760369971750.csv)) for analysis by [SQL script](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Roundwood_activity_analysis_project/script%20for%20analys%20and%20visualization.sql) for further correlation and regresstion analysis. 
### Analysis & Forecasting
For finding insights and forecasting values of price and felling were created:
- correlation analysis for detecting relations with main metrics: year, inductrial/fuel wood prices and volume of felling. In result was finded a strong correlation between all metrics.
- conducted regresstion analysis for building and testing relationships
- detecting lag effects(e.g., changes in prices delayed after felling) for metrics which dependenced by felling volume.
- Build basic predictive models of felling and price trends. 
### Visualization
For visualization has been created a dashboard which contains:
- Yearly felling and revenue trends.
- Avarage price per cubic meter for industrial and fuel wood.
- KPI dynamics compared to the previous year.


  <img width="1149" height="664" alt="image" src="https://github.com/user-attachments/assets/c0bab29f-d9ea-4268-aab5-2e0e9aab39a5" />

A dashboard you can seen in [my profile in Tableau Public].(https://public.tableau.com/app/profile/vlad.chernetskiy/viz/ForestlyActivitiesProjectRemaster/detalview)    
## Key insights
- Total felling volume has been steadily decreaseing since 2015.
- Prices of industrial roundwood and wood fuel have steadily increasing, suggesting supply reduction and higher demand.
- Lagged regresstion indicates that wood fuel prices reactions follow felling volume changes with a 1-year delay. 
## Tech Stack
- Data cleaning and data transforming: Excel, PostgreSQL, Python, Pandas, NumPy
- Analysis and prediction models: Python(Pandas, NumPy, SciPy, Statsmodels, Matplotlib, Seaborn)
- Visualization : Tableau
## Conclusions
- The analysis revealed a clear inverse correlation between felling volumes and roundwood prices - when production decreases, prices increases.
- Inductrial roundwood reacts to market changs faster than wood fuel , showing higher price elsticity.
- A one-year lag effect suggests that market prices abjust to production shifts with delay.
- Since 2015 year volumes of felling have declined while prices increased, indicating reduces supply and possible policy constraints.
- Ukrainian roundwood market shows stabilization and gredual recovery after 2022, with industrial roundwood as a most profitalbe segment. 

