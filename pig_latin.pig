# open a pig shell to use HCatalog
pig -useHCatalog

# load table created in hive to Pig
DATA = LOAD 'cancer.data' USING org.apache.hive.hcatalog.pig.HCatLoader();
