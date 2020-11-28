# create a directory for project
hdfs dfs -mkdir /breast-cancer-analysis

#scp the data.csv file to the home directory
scp -i <path_to_emr_key_pair> data.csv hadoop@ec2-0-0-0-0.compute-1.amazon.com:/home/hadoop/

# Import dataset to the directory
hadoop fs -put data.csv /breast-cancer-analysis/
