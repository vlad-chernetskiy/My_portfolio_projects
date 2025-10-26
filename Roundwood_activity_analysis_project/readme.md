# Roundwood activity analysis project :deciduous_tree:
In this project I have been analysis roundwood activities in Ukraine by data set [Forest management activities](https://stat.gov.ua/en/datasets/forest-management-activities) from [Ukrstat.com](https://stat.gov.ua/en). 
## Purpouse
Using the data from Official Ukrainian statistics site we can analyse the situation with Roundwood activities, create a basic understanding of sutuation with felling and selling roundwood products in Ukraine, find a correlations between different factors and make a forecast on the next years.
## Contains
Project participate is devided parts: 
- [Data cleaning by SQL(PosgreSQL)](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Roundwood_activity_analysis_project/cleaning%20script.sql)
- [Transform into long format using Python](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Roundwood_activity_analysis_project/ForestDataCleaning.py)
- Calculating some values and preparing talbes for analysis in SQL
- Visualization within Talbeau
- correlation and regression analysis with Python by Jupyter Notebook
- ###  Data cleaning :page_with_curl:
In this part was used a SQL, precisely PosgreSQL [script for cleaning](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Roundwood_activity_analysis_project/cleaning%20script.sql) 
- ### Transform into long format
For Transforming has been used Pandas for parcing a file and NumPy for making a long format. For this has been written a [script for transforming](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Roundwood_activity_analysis_project/ForestDataCleaning.py). In result I got a [prepared dataset for analysis and visualization](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Roundwood_activity_analysis_project/forestdata1.3.zip).
- ### Calculation and data preparing data for visualization
Some calculations in SQL and preparing some data for visualization. In result got a [SQL script](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Roundwood_activity_analysis_project/script%20for%20analys%20and%20visualization.sql) with values that can be used in visualization and analysis.
- ### Visualization
For visualization I used Tableau. The simple visualization with overview values and annual KPI has been created for looking for insights in data. A dashboard you can seen in [my profile](https://public.tableau.com/app/profile/vlad.chernetskiy/viz/ForestlyActivitiesProjectRemaster/detalview) in Tableau Public   
    
  

