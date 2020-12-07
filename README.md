# breast-cancer-diagnostic-wisconsin-dataset

Implementing big data technologies to analyze the wisconsin breast cancer dignostic dataset to predict the type of cancer given parameters.

## Steps for data preparation
Create an EMR cluster on your AWS account with the following specifications:
Instance type - m4.large

Load data.csv, .sh and .hql files to hadoop home directory.

Run the .sh and .hql files using sh and hive -f hive.hql commands

## Run Hive data analysis

- Load data to Hive
- Add hive-commands.sql to Hadoop
- Run hive -f hive-commands.hql to get the distribution of features

## Steps to Run model

### Option 1

- upload the notebook to your s3 bucket
- create an EMR cluster with spark configuration
- Get the notebook from s3 and run it

### Option 2

- Get the python file
- Copy the python file to hdfs (cluster created using spark)
- Run the python file spark-submit Pyspark-models.py
