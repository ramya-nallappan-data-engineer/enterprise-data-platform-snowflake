/*
========================================================
Project : Enterprise Data Platform
Platform : Snowflake
Object   : Roles
Author   : Ramya Nallappan
========================================================

Purpose
-------
Create enterprise roles following Role-Based Access Control (RBAC).

*/

--------------------------------------------------------
-- Create Roles
--------------------------------------------------------

CREATE ROLE IF NOT EXISTS PLATFORM_ADMIN_ROLE
COMMENT='Platform administrators with full environment management privileges';

CREATE ROLE IF NOT EXISTS DATA_ENGINEER_ROLE
COMMENT='Responsible for ELT pipelines, transformations, and data engineering activities';

CREATE ROLE IF NOT EXISTS DATA_ANALYST_ROLE
COMMENT='Responsible for querying curated business data';

CREATE ROLE IF NOT EXISTS BI_DEVELOPER_ROLE
COMMENT='Responsible for dashboards and reporting';

CREATE ROLE IF NOT EXISTS READ_ONLY_ROLE
COMMENT='Read-only access for business consumers';