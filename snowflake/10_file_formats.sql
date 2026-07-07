USE DATABASE ENTERPRISE_DW;

USE SCHEMA LANDING;

-----------------------------------------------------
-- CSV File Format
-----------------------------------------------------

CREATE OR REPLACE FILE FORMAT CSV_FORMAT
TYPE = CSV
FIELD_DELIMITER = ','
SKIP_HEADER = 1
FIELD_OPTIONALLY_ENCLOSED_BY='"'
NULL_IF=('NULL','null','')
EMPTY_FIELD_AS_NULL=TRUE;

-----------------------------------------------------
-- Verify
-----------------------------------------------------

SHOW FILE FORMATS;