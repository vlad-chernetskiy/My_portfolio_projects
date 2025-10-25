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
- ##  Data cleaning :page_with_curl:
  In this part I deleted noninforing columns, for example Frequency, decimals displayed, Confidentuality etc. These columns had not important information or mostly hadn't information (The biggest part of Confidentiality was 'Condfidential statistical informatioin' value, or Frequency had only one value 'Annual' in every row). With using PostgreSQL was writen [script for cleaning](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Roundwood_activity_analysis_project/cleaning%20script.sql) a data set and getting a value into a right scaling. 
  

