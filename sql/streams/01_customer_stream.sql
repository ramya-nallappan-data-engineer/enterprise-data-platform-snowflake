USE DATABASE TRAVEL_DW;

USE SCHEMA BRONZE;

------------------------------------------------------
-- Customer Stream
------------------------------------------------------

CREATE OR REPLACE STREAM CUSTOMER_STREAM

ON TABLE CUSTOMER_BRONZE

APPEND_ONLY = FALSE;

------------------------------------------------------

SHOW STREAMS;