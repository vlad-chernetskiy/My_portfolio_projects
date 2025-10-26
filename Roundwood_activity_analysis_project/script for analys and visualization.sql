-----------------------------------
--grouping data for visualizing 
select region,
avg(value) 
from forestlydata
where indicator='Cost of forest products sold within Ukraine' and region = 'Ukraine'
group by region

select breakdown,value
from forestlydata 
where breakdown_category='Types of forest product'

select 
breakdown, 
avg(value)
from forestlydata
where breakdown_category='Types of forest products' and unit_of_measure='UAH'
group by breakdown,
unit_of_measure
order by breakdown, 
unit_of_measure

select region, avg(value) as avarage_annual_value
from forestlydata 
where unit_of_measure ='Cubic meter' and breakdown_category='Types of work'
group by region

select year, sum(value),breakdown
from forestlydata
where region ='Ukraine' and unit_of_measure ='Ton'
group by year,breakdown

select year, sum(value),breakdown,breakdown_category
from forestlydata
where region ='Ukraine' and unit_of_measure ='Cubic meter'
group by year,breakdown,breakdown_category
order by year

select * from forestlydata
where breakdown_category='Types of work'



select region, sum(value),year ,breakdown,breakdown_category
	from forestlydata
where indicator='Amount of produced forest products'
	and unit_of_measure ='Cubic meter' 
	and year ='2017'
group by year, region ,breakdown,breakdown_category


DELETE FROM forestlydata
WHERE year = '2014';


select * from forestlydata
where year= '2017' and value is not null
order by value desc


update forestlydata
set value =
case 
when year ='2017' and unit_of_measure='Cubic meter' and value is not null then value /1000 
else value
end
----------------------------

select year, sum(value) as total_felled_forest
from forestlydata
where indicator='Amount of produced forest products' 
and (breakdown='Industrial roundwood'
or breakdown='Wood fuel'
or breakdown='Roundwood') 
and unit_of_measure ='Cubic meter'
and region != 'Ukraine'
group by year


select region, sum(value)as region_fellilng 
from forestlydata
where year ='2024' and indicator='Amount of produced forest products'  and unit_of_measure = 'Cubic meter'
and (breakdown='Industrial roundwood'
or breakdown='Wood fuel'
or breakdown='Roundwood')
and region !='Ukraine'
group by region


select region, year , sum(value)
from forestlydata
where indicator='Amount of produced forest products' 
and unit_of_measure = 'Cubic meter'
and (breakdown='Industrial roundwood'
or breakdown='Wood fuel'
or breakdown='Roundwood')
and region !='Ukraine'
and value is not null
group by region,year
order by year

select 
from forestlydata

select breakdown, year,unit_of_measure, sum(value)
from forestlydata
where indicator='Amount of produced forest products'
and breakdown_category='Types of forest products'
and (breakdown='Industrial roundwood'
or breakdown='Wood fuel'
or breakdown='Roundwood')
group by breakdown, year,unit_of_measure
order by year

delete from forestlydata 
where region ='Ukraine'

select distinct region, year, avg(value)
from forestlydata
where  unit_of_measure='UAH per m3' 
group by region, year
order by region

select region, year, breakdown_category, breakdown ,sum(value)
from forestlydata
where indicator ='Cost of forest products sold within Ukraine'
group by year, region, breakdown_category, breakdown

--check the calculation 
with total_revenue as
(
select year,
region,
sum(value) as total_revenue
from forestlydata
where unit_of_measure= 'UAH'
and 
(breakdown ='Wood fuel' or breakdown = 'Industrial Roundwood')
group by year,region
),
total_volume as
 (
select year,
region,
sum(value) as total_volume 
from forestlydata
where unit_of_measure ='Cubic meter' and (breakdown ='Wood fuel' or breakdown = 'Industrial Roundwood')
group by year,region
 )

select 
r.region, 
r.year ,
r.total_revenue,
v.total_volume,
r.total_revenue / nullif(v.total_volume,0) as cost_per_m3
from total_revenue r
right join total_volume v
on 
r.year = v.year and r.region=v.region
order by cost_per_m3 


select sum(value), 
year
from forestlydata 
where indicator ='Amount of produced forest products'and
unit_of_measure='Cubic meter'and
breakdown ='Roundwood'
group by year
order by year

-- use CTE for select valueble cost 
with wood_fuel_cost as
(
select avg(value)as wood_fuel_cost, year 
from forestlydata 
where breakdown= 'Wood fuel' and year > '2017'
and unit_of_measure ='UAH per m3'
group by year 
),
industrial_rw_cost as 
(
select avg(value)as industrial_rw_cost ,year
from forestlydata
where breakdown ='Industrial roundwood' and year > '2017'
and unit_of_measure ='UAH per m3'
group by year
)
select r.wood_fuel_cost ,
v.year ,
v.industrial_rw_cost
from industrial_rw_cost v
join wood_fuel_cost r
on r.year=v.year
order by year 


select avg(value)as industrial_rw_cost ,year
from forestlydata
where breakdown ='Industrial roundwood' 
and unit_of_measure ='UAH per m3'
group by year
order by year