# **Nashville housing project**
## Overview
The data cleaning and visualization projetc of data from Kaggle. Origin data set you can download [here](https://www.kaggle.com/datasets/tmthyjames/nashville-housing-data?resource=download)
## Porpose
The goals of my project is: 
- Aggregate and clean the data.
- Represent the overview of property market in cities.
- Find insights between data and make hypothesises about relashionships between values.
## Contains 
Project is devided by parts:
- [Data cleaning and transforming.](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Nashville_housing_project/ScriptForDataCleaning.sql)
- [Visualization]().
- [Correlation analysis]().

## Data cleaning and transforming
Have been deleted all duplicates and null value have cunducted into 0 values. Have been devided column property adress by 2 part: property_city and property_adress for simplifising reading and visualization. Finded and corrected raws with a same parcelID but null value of address. Standartised a values of soldasvacant into more readble format. In result getted a [cleaned dataset](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Nashville_housing_project/sales.csv).  
## Visualization
Created dashboard with which represent all main trends by cities and by time. 
<img width="1094" height="670" alt="image" src="https://github.com/user-attachments/assets/2a9c39ba-8a37-4438-9fac-167657577b74" />
The dashboard you can find on [my profile in Tableau Public](https://public.tableau.com/app/profile/vlad.chernetskiy/viz/apartmentproject_17619167806030/Dashboard1).
From the dashboard be can make a assumption that total value and acreage are high correlated with saleprice.
## Correlation analysis 
For checking that is our assumption is true was conducted correlation analysis, builded by simple linear regression and created corerlation matrix which showed that acreage has a weak correlation with sale price, but total value, on the contrary, has quite strong correlation with sale price. For correlation analysis was written [python script](https://github.com/vlad-chernetskiy/My_portfolio_projects/blob/main/Nashville_housing_project/nashville_housing_corr%20(2).ipynb).
## Key insights:
After all operations with data found next insights:
 - Total value, or appraised value of the entire property, have strong influence on the sale price of property.
 - Most of sold was buied by families and mostly with 2-4 bedrooms.
 - Most of sold property was'nt vacant
 - The most popular city for buing property is Neshvile, its explained by not quite big price of properties, high land and building value and another factors.   

