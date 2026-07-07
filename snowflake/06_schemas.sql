/*
========================================================
Enterprise Schemas
========================================================
*/

USE DATABASE ENTERPRISE_DW;

CREATE SCHEMA IF NOT EXISTS LANDING
COMMENT='Raw landing area';

CREATE SCHEMA IF NOT EXISTS BRONZE
COMMENT='Raw ingested data';

CREATE SCHEMA IF NOT EXISTS SILVER
COMMENT='Cleaned and standardized data';

CREATE SCHEMA IF NOT EXISTS GOLD
COMMENT='Business-ready analytical datasets';

CREATE SCHEMA IF NOT EXISTS AUDIT
COMMENT='Audit logs and execution metadata';

CREATE SCHEMA IF NOT EXISTS METADATA
COMMENT='Pipeline metadata and configuration';