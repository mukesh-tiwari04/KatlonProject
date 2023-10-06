select * from released_package_executed order by id desc;

select * from log order by 1 desc limit 100;

select * from log where prog_id = 617 order by 1 desc limit 100;

select * from clients_users ;

SELECT * from serialization_standards;

UPDATE clients_users  SET pass=MD5('tnt1234')  WHERE id=438;

select * from subjects_groups;

select * from clients_users_api_tokens;

select * from serial_pools_weblinks where serial_pools_id = 205 and status = 0;

delete from serial_pools_weblinks where serial_pools_id = 205 and status = 'a';

SELECT * FROM serial_pools where id = 205;

select * from ac_machine_types;

SELECT * FROM tnt_serials ts;

select * from serial_pools_serials_crypto_import_task order by 1 desc;

select * from serial_pools_serials_crypto_import_task where id = 142;

SELECT * FROM curecloud.serial_pools_serials_crypto_import spsci WHERE spsci.order_id = 'e0ab9c2a-0bb2-4a9e-9094-04c05685d659' AND spsci.task_id = 106;

SELECT * FROM curecloud.serial_pools_serials_crypto_import spsci WHERE spsci.serial_number in ('C5wq3x3Q2ASvT' ,'eBYq9cAXHX26z','0aWwPOTHdf4Qv');

 select * from serial_pools_serials where serial_pools_id = 30 and status = 0 order by 1 ASC;

 select * from audit_serial_pools where id = 30 ORDER by 1 DESC;

SELECT * FROM curecloud.serial_pools_serials sps WHERE sps.serial_pools_id = 30 and sps.serial_number IN(
SELECT spsci.serial_number FROM curecloud.serial_pools_serials_crypto_import spsci WHERE spsci.order_id = 'd75f946f-bd36-4cf9-8bea-95f226e83de5'
AND spsci.task_id = 142) and sps.status = 0 order by 1 ASC;

select * from production_orders_items where production_orders_id =1375; 

select * from production_orders_issues where production_orders_id =1375; 

select * from serial_pools_serials_crypto_import_task where id = 142;

SELECT
                        spscit.id,
                        COUNT(spscit.id) -- INTO l_task_id, l_flushsrnoCnt
                    FROM serial_pools_serials_crypto_import_task AS spscit
                        JOIN serial_pools_serials_crypto_import AS spsci
                            ON spsci.task_id = spscit.id
                    WHERE spscit.order_id = '97fc2a61-fe16-4e96-8b36-9d3710d08399'
                    AND spscit.pool_id = 30
                    GROUP BY spscit.id;

select * from serial_pools_weblinks where serial_pools_id = 258 and status = 0 ORDER BY 1 DESC limit 100000;

select * from subjects;

select * from subjects_properties;

SELECT * from ac_programs;

select * from clients_users_api_tokens;

select * from certificates_codes_helping_staion;

SELECT  t.TABLE_SCHEMA as 'Schema_Name', 'Tables' Object_Type,t.TABLE_NAME AS 'Object_Name'
FROM information_schema.TABLES AS t
WHERE t.TABLE_SCHEMA IN ('curecloud','curecloud_integrations','emvo','mmmp')

select * from tbl_shippingorder_shipment_types;

select * from certificates_codes where production_order_id = 1319;

select LENGTH(serial_weblinks) from serial_pools_weblinks where serial_pools_id = 257 and status = 0;

select * from tnt_locations where id = 147 order BY 1 DESC;

select * from tnt_locations_properties where tnt_locations_id = 156;

select * from shipping_orders WHERE id = 342;

select * from shipping_orders_properties WHERE shipping_orders_id = 343;

select * from shipping_orders_properties_dictonary; 

6	  Sold to
10	Delivery Number
11	Advance Ship Notice (ASN)
100	Source Owning Party
139	sender_id
140	receiver_id

select * from audit_tnt_systems where ip_address = '192.9.220.173';


select * from curecloud_integrations.tasks  order by 1 desc;

SELECT it.TABLE_SCHEMA AS `Database`, it.TABLE_NAME AS `Table`, ROUND((DATA_LENGTH + INDEX_LENGTH) / 1024 / 1024) AS `Size (MB)`, it.TABLE_ROWS as numberOFrows, count(ic.table_name) as numberOFcolumns
FROM  information_schema.TABLES it left Join information_schema.columns ic
on it.table_name=ic.table_name
group by it.table_name;

select * from tnt_systems where ip_address = '172.16.55.245';

call rp_sendBatchN (1494);

select * from shipping_orders where id= 371;

select * from serialization_standards;

Select * FROM messages WHERE message_num=4105; -- Client-Get serial weblinks for production --  Return unused links to the pool 