create database cancer;

CREATE TABLE cancer.data
(
id int,
diagnosis varchar(100),
radius_mean float,
texture_mean float,
perimeter_mean float,
area_mean float,
smoothness_mean float,
compactness_mean float,
concavity_mean float,
concave_points_mean float,
symmetry_mean float,
fractal_dimension_mean float,
radius_se float,
texture_se float,
perimeter_se float,
area_se float,
smoothness_se float,
compactness_se float,
concavity_se float,
concave_points_se float,
symmetry_se float,
fractal_dimension_se float,
radius_worst float,
texture_worst float,
perimeter_worst float,
area_worst float,
smoothness_worst float,
compactness_worst float,
concavity_worst float,
concave_points_worst float,
symmetry_worst float,
fractal_dimension_worst float
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

--Load the data from HDFS into the created hive table
load data inpath '/breast-cancer-analysis/data.csv' into table cancer.data;
