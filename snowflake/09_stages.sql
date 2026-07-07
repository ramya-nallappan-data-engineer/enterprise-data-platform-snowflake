USE DATABASE ENTERPRISE_DW;

USE SCHEMA LANDING;

-----------------------------------------------------
-- Internal Stage
-----------------------------------------------------

CREATE OR REPLACE STAGE LANDING_STAGE
COMMENT='Landing stage for raw source files';

-----------------------------------------------------
-- Verify
-----------------------------------------------------

SHOW STAGES;