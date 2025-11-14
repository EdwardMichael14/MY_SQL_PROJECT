use cape_codd;
-- 2.17
select sku, sku_description
from INVENTORY; 

-- 2.18 
select sku_description, sku
from INVENTORY;

-- 2.19
select warehouseID as ID
from inventory;

-- 2.20 to get unique values
select distinct WarehouseID as ID
from inventory;

-- 2.21
select warehouseID, SKU, SKU_Description, QuantityOnHand, QuantityOnOrder
from inventory;

-- 2.22
select *
from inventory;

-- 2.23
select *
from inventory
where QuantityOnHand > 0;

-- 2.24

select SKU, SKU_Description
from inventory
where  QuantityOnHand = 0;

-- 2.25

select SKU, SKU_Description, WarehouseID 
from inventory where QuantityOnHand = 0
order by WarehouseID asc;

-- 2.26
select SKU, SKU_Description, WarehouseID 
from inventory where QuantityOnHand = 0
order by WarehouseID desc, SKU asc;

-- 2.27
select SKU, SKU_Description, WarehouseID 
from inventory where QuantityOnHand = 0 and QuantityOnOrder = 0
order by WarehouseID desc, SKU asc;

-- 2.28
select SKU, SKU_Description, WarehouseID 
from inventory where QuantityOnOrder = 0
order by WarehouseID desc, SKU asc;

-- 2.29

select SKU, SKU_Description, WarehouseID 
from inventory where QuantityOnHand > 1  and  QuantityOnHand < 10;

-- 2.30
 
select SKU, SKU_Description, WarehouseID 
from inventory where QuantityOnHand between 2 and 9;

-- 2.31
select distinct SKU, SKU_Description
from inventory where SKU_Description  Like 'Half-Dome%';

-- 2.32
select distinct SKU, SKU_Description
from inventory where SKU_Description like '%climb%';

-- 2.33
select distinct SKU, SKU_Description
from inventory where SKU_Description like '__d%';

-- 2.34
select 

-- 2.36



