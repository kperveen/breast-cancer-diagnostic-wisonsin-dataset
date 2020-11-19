# create a directory for project
hdfs dfs -mkdir /breast-cancer-analysis

# Import dataset
hadoop fs -put data.csv /breast-cancer-analysis/