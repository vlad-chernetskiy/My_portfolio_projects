# ** Roundwood activity analysis project ** :deciduous_tree:
## Overview
This project I have been analysis roundwood activities in Ukraine by data set [Forest management activities](https://stat.gov.ua/en/datasets/forest-management-activities) from [Ukrstat.com](https://stat.gov.ua/en). 
## Purpouse
The goals of my project: 
- Analyse the dinamics of roundwood felling and sales in Ukraine.
- Identify relationships between main metrics.
- Conduct correlation and regression anaylses to understand causal patterns.
- Create a forecast of future felling values and prices 
## Contains
Project participate is devided parts: 
- [Data cleaning by SQL(PosgreSQL)](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Roundwood_activity_analysis_project/cleaning%20script.sql)
- [Transform into long format using Python](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Roundwood_activity_analysis_project/ForestDataCleaning.py)
- [Calculating some values and preparing talbes for analysis in SQL](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Roundwood_activity_analysis_project/script%20for%20analys%20and%20visualization.sql)
- [Visualization within Talbeau](https://public.tableau.com/app/profile/vlad.chernetskiy/viz/ForestlyActivitiesProjectRemaster/detalview) 
- correlation and regression analysis with Python by Jupyter Notebook
###  Data cleaning :
In this part was used a SQL, precisely PosgreSQL [script for cleaning](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Roundwood_activity_analysis_project/cleaning%20script.sql) 
### Data Transformation
For Transforming has been used Pandas for parcing a file and NumPy for making a long format. For this has been written a [script for transforming](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Roundwood_activity_analysis_project/ForestDataCleaning.py). In result I got a [prepared dataset for analysis and visualization](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Roundwood_activity_analysis_project/forestdata1.3.zip).
 ### Calculation and data preparing data for visualization
Some calculations in SQL and preparing some data for visualization. In result got a [SQL script](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Roundwood_activity_analysis_project/script%20for%20analys%20and%20visualization.sql) with values that can be used in visualization and analysis.
### Analysis & Forecasting
for finding insights and forecasting values of price and felling were created:
- correlation analysis for detecting relations with main metrics: year, inductrial/fuel wood prices and volume of felling. In result was finded a strong correlation between all metrics.
- conducted regresstion analysis for building and testing relationships
- detecting lag effects(e.g., changes in prices delayed after felling) for metrics which dependenced by felling volume.
- Build basic predictive models of felling and price trends. 
### Visualization
For visualization has been created a dashboard which contains:
- Yearly felling and revenue trends.
- Avarage price per cubic meter for industrial and fuel wood.
- KPI dynamics compared to the previous year.
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

