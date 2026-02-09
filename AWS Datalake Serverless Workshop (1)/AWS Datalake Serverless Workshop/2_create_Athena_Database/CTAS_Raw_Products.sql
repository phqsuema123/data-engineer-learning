CREATE TABLE demo_temp_zone.products
WITH (
  format = 'PARQUET',
  parquet_compression = 'SNAPPY',
  external_location = 's3://rukndi-mydeom/raw_zone/products'
)
AS
SELECT
  productid, 
  productname, 
  supplierid, 
  categoryid, 
  quantityperunit, 
  unitprice double, 
  unitsinstock, 
  unitsonorder, 
  reorderlevel, 
  discontinued
FROM
  landing_zone.products

drop table  demo_temp_zone.products