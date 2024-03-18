CREATE OR REPLACE TABLE `data-etl-uber.uber_data_engineering_bigQuery.tbl_analytics` AS (
SELECT 
f.trip_id,
f.VendorID,
d.tpep_pickup_datetime,
d.tpep_dropoff_datetime,
p.passenger_count,
t.trip_distance,
r.rate_code_name,
pay.payment_type_name,
f.fare_amount,
f.extra,
f.mta_tax,
f.tip_amount,
f.tolls_amount,
f.improvement_surcharge,
f.total_amount
FROM 
`data-etl-uber.uber_data_engineering_bigQuery.fact_table` f
JOIN `data-etl-uber.uber_data_engineering_bigQuery.datetime_dim` d  ON f.datetime_id=d.datetime_id