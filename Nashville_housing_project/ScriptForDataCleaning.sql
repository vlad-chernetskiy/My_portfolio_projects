--checking all raws where property address in null
select 
a.ParcelID,
b.ParcelID,
a.UniqueID ,
b.UniqueID,
a.PropertyAddress,
b.PropertyAddress 
from datacleaning a
join datacleaning b
on a.ParcelID=b.ParcelID
and a.UniqueID!=b.UniqueID
where a.PropertyAddress is null;

-- ------------------------------

UPDATE datacleaning AS a
SET PropertyAddress =
    CASE
        WHEN a.PropertyAddress IS NULL THEN b.PropertyAddress
        ELSE b.PropertyAddress 
    END
FROM datacleaning AS b
WHERE a.ParcelID = b.ParcelID
  AND a.UniqueID != b.UniqueID
  AND a.PropertyAddress IS NULL;
------------------------------------

--breaking out address into the different columns(address, city)
-- for this we will using the substrings and char index
SELECT SUBSTRING(propertyaddress FROM 1 FOR POSITION(',' in propertyaddress)-1) AS Address,
SUBSTRING(propertyaddress FROM  POSITION(',' in propertyaddress)+1 FOR LENGTH(propertyaddress)) AS City
FROM datacleaning;

ALTER TABLE datacleaning
add column property_address varchar(255);
update datacleaning 
set property_address = SUBSTRING(propertyaddress FROM 1 FOR POSITION(',' in propertyaddress)-1);

ALTER TABLE datacleaning
add column property_city varchar(255);
update datacleaning 
set property_city = SUBSTRING(propertyaddress FROM  POSITION(',' in propertyaddress)+1 FOR LENGTH(propertyaddress));

select * from datacleaning;
 alter table datacleaning
 drop column property_address;

--standartizing all columns---------

select distinct (soldasvacant),count(soldasvacant)
from datacleaning
group by soldasvacant;

select soldasvacant,
case 
when soldasvacant ='Y' then 'Yes'
when soldasvacant ='N' then 'No'
else soldasvacant
end
from datacleaning;

update datacleaning
set soldasvacant =
case 
when soldasvacant ='Y' then 'Yes'
when soldasvacant ='N' then 'No'
else soldasvacant
end;

select * from datacleaning;

select * 
from datacleaning
where ownername is null;

--delete duplicates----------
delete from datacleaning 
where UniqueID in(
	select UniqueID
	from(
		select *,
		Row_number() over (
		partition by ParcelID,
			 PropertyAddress,
			 saleprice,
			 saledate,
			 legalreference
			 order by 
			 UniqueID
		)row_num
	from datacleaning
	) as duplicates
where row_num>1
);

alter table datacleaning 
drop column PropertyAddress;
----------------------------
