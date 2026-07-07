/*
========================================================
Enterprise Data Platform
Sample Users
========================================================
*/

--------------------------------------------------------
-- Sample Users
--------------------------------------------------------

CREATE USER IF NOT EXISTS ENGINEER_USER
PASSWORD='ChangeMe123!'
DEFAULT_ROLE=DATA_ENGINEER_ROLE
DEFAULT_WAREHOUSE=ETL_WH
MUST_CHANGE_PASSWORD=TRUE;

CREATE USER IF NOT EXISTS ANALYST_USER
PASSWORD='ChangeMe123!'
DEFAULT_ROLE=DATA_ANALYST_ROLE
DEFAULT_WAREHOUSE=REPORTING_WH
MUST_CHANGE_PASSWORD=TRUE;

CREATE USER IF NOT EXISTS BI_USER
PASSWORD='ChangeMe123!'
DEFAULT_ROLE=BI_DEVELOPER_ROLE
DEFAULT_WAREHOUSE=REPORTING_WH
MUST_CHANGE_PASSWORD=TRUE;