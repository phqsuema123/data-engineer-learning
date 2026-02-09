CREATE EXTERNAL TABLE  raw_zone.customers(
  customerid string, 
  companyname string, 
  contactname string, 
  contacttitle string, 
  address string, 
  city string, 
  region string, 
  postalcode string, 
  country string, 
  phone string, 
  fax string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '1'
)
LOCATION
  's3://rukndi-mydeom/raw_zone/customers/'