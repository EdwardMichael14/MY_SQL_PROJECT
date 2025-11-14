use cape_codd;

-- 2.40

select SKU, SKU_Description, inventory.WarehouseID,warehouse.WarehouseID, WarehouseCity, WarehouseState 
from inventory join warehouse
on inventory.WarehouseID = warehouse.warehouseid
where warehouse.warehousecity = 'Atalanta'
or warehouse.warehousecity = 'Bangor'
or warehouse.warehousecity = 'Chicago';

-- 2.41

select SKU, SKU_Description, inventory.WarehouseID,warehouse.WarehouseID, WarehouseCity, WarehouseState
FROM Inventory join warehouse
Where WarehouseCity IN ('Atlanta', 'Bangor', 'Chicago');

-- 2.42

select SKU, SKU_Description, inventory.WarehouseID,warehouse.WarehouseID, WarehouseCity, WarehouseState 
from inventory join warehouse
on inventory.WarehouseID = warehouse.warehouseid
where warehouse.warehousecity != 'Atalanta'
or warehouse.warehousecity != 'Bangor'
or warehouse.warehousecity != 'Chicago';

-- 2.43
select SKU, SKU_Description, inventory.WarehouseID,warehouse.WarehouseID, WarehouseCity, WarehouseState
FROM Inventory join warehouse
Where WarehouseCity NOT IN ('Atlanta', 'Bangor', 'Chicago');

-- 2.44

select SKU_Description + 'is located in' + warehouseCity as ItemLocation
from inventory join warehouse;

-- 2.45

Select SKU, SKU_Description, WarehouseID
From Inventory 
Where WarehouseID in (select WarehouseID
From Warehouse
Where Manager = 'Lucille Smith'
);

-- 2.46
    
Select Inventory.SKU, Inventory.SKU_Description, Inventory.WarehouseID
From Inventory, Warehouse 
Where Inventory.WarehouseID = Warehouse.WarehouseID
and Warehouse.Manager = 'Lucille Smith';

-- 2.47

select Inventory.SKU, Inventory.SKU_Description, Inventory.WarehouseID
from Inventory join Warehouse 
on Inventory.WarehouseID = Warehouse.WarehouseID
Where Warehouse.Manager = 'Lucille Smith';

-- 2.48

-- Write an SQL statement to show the WarehouseID and average QuantityOnHand of 
-- all items stored in a warehouse managed by ‘Lucille Smith’. Use a subquery.

select WarehouseID, avg(QuantityOnHand) as AvgQuantityOnHand
from Inventory 
where WarehouseID in (select WarehouseID
from Warehouse
where Manager = 'Lucille Smith'
)
group by WarehouseID;

-- 2.49
-- Write an SQL statement to show the WarehouseID and average QuantityOnHand of 
-- all items stored in a warehouse managed by ‘Lucille Smith’. Use a join, but do not use 
-- JOIN ON syntax

select Inventory.WarehouseID, avg(Inventory.QuantityOnHand) as AvgQuantityOnHand
from Inventory, Warehouse
where Inventory.WarehouseID = Warehouse.WarehouseID
and Warehouse.Manager = 'Lucille Smith'
group by WarehouseID;


