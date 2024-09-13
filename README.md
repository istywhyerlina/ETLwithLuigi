# Final Project  -ETL Pipeline With Luigi

##Objectives

Every team has their own data stored in different places and media. Sales team owns data and stored sales data in PosgreSQL wrapped in docker image. Product team owns data and stored in csv format. Data Science data needs data scraped from a website for them do NLP about title of advertisements in https://www.olx.co.id
To make it more efficient, Data Engineer needed to build a data warehouse (Incworkx, n.d.)  A data warehouse is a type of data management system that is designed to enable and support business intelligence (BI) activities, especially analytics. Data warehouses are solely intended to perform queries and analysis and often contain large amounts of historical data. The data within a data warehouse is usually derived from a wide range of sources such as application log files and transaction applications (Oracle, n.d.).

##ETL Pipeline Design

This picture below depict how ETL process needed. We need to extract data from several sources, then transforming it so the data has correct format, enriched information etc before we load it into our datawarehouse. 
![](pic/untitled.png)
 
###Extract 

1.	Sales Data
Sales Data are stored in docker image: https://hub.docker.com/r/shandytp/amazon-sales-data-docker-db
2.	Product Data
Product data is stored in csv file format
3.	Scraped Data
Informations from website https://www.olx.co.id

###Transform

1.	Sales Data
-	Extract only numeric from discount_price and actual_price column
-	Fill nan with NULL VALUES
2.	Product Data
-	Only extract correct data based on id column
-	Drop several unnecessary-big data like 'sourceURLs','imageURLs'
-	Transform dateAdded from ISO datetime format to Timestamp with timezone format
-	 Transform DateUpdated from ISO datetime format to Timestamp with timezone format
3.	Scraped Data
-	Parsing the HTML
-	Transform date posted column into date format
-	Enrich the URL of posted ads
-	Split kelurahan and kabupaten_kota information

###Load

Load all the data into PosgreSQL database in Docker
##Procedures
###Installing Ubuntu and Install Python and Modules needed
In this project, I use Python in Ubuntu. Do not forget to install required modules.
###Create Functions in Python for Extract Transform and Load the Data

###Create Luigi Script

###Create Virtual Environment in Working Directory

Please follow this procedures : 
https://medium.com/@AgnesMbiti/creating-a-python-virtual-environment-on-ubuntu-22-04-5efc173ce655
don’t forget to activate venv

###Luigi Visualizer

Write this command after venv is activated:
luigid --port 8082 > /dev/null 2> /dev/null &

##ETL Scheduling

Using Crontab



 

