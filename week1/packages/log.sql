
-- *** The Lost Letter ***
SELECT * from packages
where from_address_id = (
    Select id from addresses
    where addresses.address = "900 Somerville Avenue"
);

select * from addresses
where id = 854;
-- *** The Devious Delivery ***
-- *** Check 50 does not see results from this queries as correct ***
Select * from packages
where
contents like "%duck%"
and from_address_id is NULL;

select * from addresses
where id = 50;
-- *** The Forgotten Gift ***
SELECT * from packages
where to_address_id = (
    Select id from addresses
    where addresses.address = "728 Maple Place"
)
and from_address_id = (
    Select id from addresses
    where addresses.address = "109 Tileston Street"
);

select * from scans
where package_id = 9523;

select * from drivers
where id = 17;


