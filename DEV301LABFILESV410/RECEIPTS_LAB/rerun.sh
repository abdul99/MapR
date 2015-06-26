#!/bin/bash

export HADOOP_HOME=/Users/mhshayeb/hadoop-2.7.0
#export LD_LIBRARY_PATH=$HADOOP_HOME/lib/native/Linux-amd64-64
export CLASSPATH=$HADOOP_HOME/share/hadoop/mapreduce/*:$HADOOP_HOME/share/hadoop/mapreduce/lib/*:$HADOOP_HOME/share/hadoop/common/lib/*:$HADOOP_HOME/share/hadoop/common/*:$HADOOP_HOME/share/hadoop/tools/lib/*:$HADOOP_HOME/share/hadoop/yarn/*:$HADOOP_HOME/share/hadoop/yarn/lib/*
export HADOOP_CLASSPATH=$CLASSPATH

USER=`whoami`

#/Users/mhshayeb/Desktop/MapR/DEV301LABFILESV410/RECEIPTS_LAB/OUT

rm -rf /Users/mhshayeb/RECEIPTS_LAB/OUT
hdfs dfs -mkdir /mhshayeb/OUT
#hdfs dfs -put /Users/mhshayeb/Desktop/MapR/DEV301LABFILESV410/RECEIPTS_LAB/DATA/receipts.txt
hadoop jar Receipts.jar Receipts.ReceiptsDriver /mhshayeb/receipts.txt /mhshayeb/OUT12
