CREATE TABLE demo_temp_zone.suppliers
WITH (
  format = 'PARQUET',
  parquet_compression = 'SNAPPY',
  external_location = 's3://rukndi-mydeom/raw_zone/suppliers'
)
AS
SELECT
  supplierid, 
  companyname, 
  contactname, 
  contacttitle, 
  address, 
  city, 
  region, 
  postalcode, 
  country, 
  phone, 
  fax, 
  homepage
FROM
 landing_zone.suppliers

drop table  demo_temp_zone.suppliers