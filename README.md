# CES_Times_Series

The evolution of women in goverment and the ratio "production employees / supervisory employees" during time.

Based in the CES time series data set: https://www.bls.gov/data/#employment

Data has been provided as text files and loaded into Amazon PostgreSQL RDS.

To Access the data it can be done via PostgREST.

# PostgreSQL Tables and Views Creation

The scripts to replicate the Data in PostgreSQL are Table Creation.sql and Views Creation.sql

Then data can be loaded via pgAdmin or other tool via Import/Export Data.

Table Creation.sql contains the following tables:

  1. AllCESSeries
  2. Government_Employment
  3. datatype
  4. footnote
  5. industry
  6. period
  7. seasonal
  8. series
  9. supersector

Views Creation.sql contains the following views:

  1. Women_Goverment
  2. Production_Employees
  3. Non_Production_Employees
  4. Ratio_Production_Employees

# Data can be retrieved via PostgREST

Assuming PostgreSQL and PostgREST are already setup.

The file employment.conf contains the connection data to the AWS PostgreSQL Database.

To retrieve the data is only required ot copy employment.conf to PostgREST folder.

##Running postgrest installed from a package manager##

postgrest employment.conf

##Running postgrest binary##

./postgrest employment.conf

As in the CMD the commands to retrieve the required data are:

"curl http://localhost:3000/Women_Goverment"

"curl http://localhost:3000/Ratio_Production_Employees"

