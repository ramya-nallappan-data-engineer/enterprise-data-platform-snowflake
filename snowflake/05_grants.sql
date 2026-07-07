/*
========================================================
Role Grants
========================================================
*/

--------------------------------------------------------
-- Warehouse Grants
--------------------------------------------------------

GRANT USAGE
ON WAREHOUSE ETL_WH
TO ROLE DATA_ENGINEER_ROLE;

GRANT USAGE
ON WAREHOUSE REPORTING_WH
TO ROLE DATA_ANALYST_ROLE;

GRANT USAGE
ON WAREHOUSE REPORTING_WH
TO ROLE BI_DEVELOPER_ROLE;

--------------------------------------------------------
-- Database Grants
--------------------------------------------------------

GRANT USAGE
ON DATABASE ENTERPRISE_DW
TO ROLE DATA_ENGINEER_ROLE;

GRANT USAGE
ON DATABASE ENTERPRISE_DW
TO ROLE DATA_ANALYST_ROLE;

GRANT USAGE
ON DATABASE ENTERPRISE_DW
TO ROLE BI_DEVELOPER_ROLE;