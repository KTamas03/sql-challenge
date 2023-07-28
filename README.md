# sql-challenge
Module 9 Challenge - SQL

As a new data engineer at Pewlett Hackard (a fictional company), the first major task was to do a research project about people whom the company employed during the 1980s and 1990s. All that remained of the employee database from that period were six CSV files.

Repository Folders and Contents:
- EmployeeSQL:
  - data:
    - departments.csv
    - dep_emp.csv
    - dept_manager.csv
    - employees.csv
    - salaries.csv
    - titles.csv
  - scripts:
    - queries_kt.sql
    - table_schemata_kt.sql
  - ERD:
    - ERD - Pewlett Hackard Employees 80s and 90s.png
    - Schema Descriptions -Pewlett Hackard Employees 80s and 90s.pdf
## Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Installing](#installing)
- [Usage](#usage)
- [Contributing](#contributing)

## About
The purpose of this project was to perform:
- Data Modelling: design an Entity Relationship Diagram (ERD) of six tables to hold the data from the six CSV files (mentioned above).
- Data engineering: import the CSV files into a new SQL database, and using sql language to manipulate data.
- Data analysis: answer some questions about the data.

## Getting Started
Programs/software used:
- Microsoft Excel: to view csv files. Should be available by default on all PCs.
- QuickDBD: to sketch an ERD of the tables for the data contained in the csv files. (http://www.quickdatabasediagrams.com/) No need to register, diagram can be generated on the website for free.
- PostgreSQL: is a relational database management system (RDBMS). An RDBMS consists of tables and their predefined relationships. Postgres stores the data. Refer to "Installing" section below.
- pgAdmin: The pgAdmin tool functions as the window into the database. It's where queries are written, run and then the results of running them are reviewed. pgAdmin provides access to that data. Refer to "Installing" section below.

## Installing
In order to perform the Data Engineering and Analysis component of this project, install PostgreSQL & pgAdmin: 
- In your browser, go to Download PostgreSQLLinks: https://www.enterprisedb.com/downloads/postgres-postgresql-downloads.
- Select the download option for your operating system and the latest version 14.x of PostgreSQL.
- After downloading the latest version of PostgreSQL 14.x, double-click the postgresql-14.7-2-windows-x64.exe file. Note: The exact file version may be slightly different.
- Go through the Setup Wizard and install PostgreSQL. Keep the default location C:\Program Files\PostgreSQL\14.
- Select the components to be installed. Uncheck the option to install Stack Builder.
- Add your data directory. Keep the default location C:\Program Files\PostgreSQL\14\data.
- Enter postgres as the password. Be sure to record this password for future use.
- Keep the default port as 5432. In the Advanced Options, set the locale as [Default locale].
- The final screen will be the Pre Installation Summary.
- When you are done, the Postgres 14 folder can be accessed from the Start menu of your computer.
  - This folder contains the pgAdmin 4 application.
  - To confirm the installation, start pgAdmin (this will open in a new browser window). Connect to the default server by clicking on it and entering the password if prompted.

## Usage
A step by step series of examples that tell you how to get a development env running.

## Contributing
Contributors names.
