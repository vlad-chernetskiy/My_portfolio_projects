--looking for not informative columns and deleting them 
select * from forestlydata
where unit_of_measure='UAH'

select scaling, sum("2024")
from forestlyproject 
where region='Cherkaska' and unit_of_measure = 'Cubic meter'
and (breakdown='Industrial roundwood'
or breakdown='Wood fuel'
or breakdown='Roundwood')
and region !='Ukraine'
group by scaling

 where species_composition_of_stands = 'Not applicable'
 select distinct confidentiality from forestlyproject;
 select distinct scaling, count(scaling) 
 from forestlydata
group by scaling

select distinct breakdown,breakdown_category 
from forestlydata
-----------------------------------
select * from forestlyproject
select breakdown,scaling,breakdown,breakdown_category,"2017"
from forestlyproject
group by indicator;
-----------------------------------
--deleting-not-informative-columns
alter table forestlydata 
--drop column confidentiality
--drop column "2025";
--drop column decimals_displayed
--drop column species_composition_of_stands
--drop column system_and_types_of_felling
--drop column types_of_cells
drop column scaling 
-----------------------------------
--creating a new table with a vertical data format 
create table ForestlyData
(
indicator varchar(255), 
Region varchar(255),
Breakdown_category varchar(255),
Breakdown varchar(255),
Species_composition_of_stands varchar(255),
Forms_of_reproduction varchar(255),
System_and_types_of_felling varchar(255),
Types_of_cells varchar(255),
Frequency varchar(255),
Unit_of_measure varchar(255),
Scaling varchar(255),
Decimals_displayed varchar(255),
Year varchar(255),
Value float
);
-------------------------------------
--change the null cells to 0 cells
update forestlydata
set value = null where value =0
--converting to the same scaling
select scaling,
		value ,
case 
when scaling ='Tens' then value * 10 
when scaling = 'Thousands' then value*1000
when scaling = 'Millions' then value *1000000
else value *1
end as confirmed_value 
from forestlydata;

update forestlydata 
set value =
case 
when scaling ='Tens' then value * 10 
when scaling = 'Thousands' then value*1000
when scaling = 'Millions' then value *1000000
else value *1
end;

