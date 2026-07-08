USE DATABASE TRAVEL_DW;

CREATE OR REPLACE PROCEDURE SP_MASTER_PIPELINE()

RETURNS STRING

LANGUAGE SQL

EXECUTE AS OWNER

AS
$$

DECLARE

    V_RUN_ID STRING;

BEGIN

    ----------------------------------------------------
    -- Generate Run Id
    ----------------------------------------------------

    V_RUN_ID := UUID_STRING();

    ----------------------------------------------------
    -- Audit Start
    ----------------------------------------------------

    INSERT INTO PIPELINE_AUDIT
    (
        PIPELINE_NAME,
        PIPELINE_RUN_ID,
        START_TIME,
        STATUS
    )

    VALUES
    (
        'MASTER_PIPELINE',
        V_RUN_ID,
        CURRENT_TIMESTAMP(),
        'RUNNING'
    );

    ----------------------------------------------------
    -- Bronze
    ----------------------------------------------------
	
	INSERT INTO PIPELINE_EXECUTION_LOG
(
RUN_ID,
PIPELINE_NAME,
STEP_NAME,
STEP_STATUS,
START_TIME
)

VALUES
(
V_RUN_ID,
'MASTER_PIPELINE',
'LOAD_BRONZE',
'STARTED',
CURRENT_TIMESTAMP()
);

    CALL SP_LOAD_BRONZE();
	
	UPDATE PIPELINE_EXECUTION_LOG

SET

END_TIME=CURRENT_TIMESTAMP(),

STEP_STATUS='SUCCESS'

WHERE

RUN_ID=V_RUN_ID

AND STEP_NAME='LOAD_BRONZE';

    ----------------------------------------------------
    -- Silver
    ----------------------------------------------------
	
	INSERT INTO PIPELINE_EXECUTION_LOG
(
RUN_ID,
PIPELINE_NAME,
STEP_NAME,
STEP_STATUS,
START_TIME
)

VALUES
(
V_RUN_ID,
'MASTER_PIPELINE',
'LOAD_SILVER',
'STARTED',
CURRENT_TIMESTAMP()
);

    CALL SP_LOAD_SILVER();
	
	UPDATE PIPELINE_EXECUTION_LOG

SET

END_TIME=CURRENT_TIMESTAMP(),

STEP_STATUS='SUCCESS'

WHERE

RUN_ID=V_RUN_ID

AND STEP_NAME='LOAD_SILVER';

    ----------------------------------------------------
    -- Gold
    ----------------------------------------------------
	
	INSERT INTO PIPELINE_EXECUTION_LOG
(
RUN_ID,
PIPELINE_NAME,
STEP_NAME,
STEP_STATUS,
START_TIME
)

VALUES
(
V_RUN_ID,
'MASTER_PIPELINE',
'LOAD_GOLD',
'STARTED',
CURRENT_TIMESTAMP()
);

    CALL SP_LOAD_GOLD();
	
	UPDATE PIPELINE_EXECUTION_LOG

SET

END_TIME=CURRENT_TIMESTAMP(),

STEP_STATUS='SUCCESS'

WHERE

RUN_ID=V_RUN_ID

AND STEP_NAME='LOAD_GOLD';

    ----------------------------------------------------
    -- Audit End
    ----------------------------------------------------

    UPDATE PIPELINE_AUDIT

    SET

        END_TIME = CURRENT_TIMESTAMP(),

        STATUS='SUCCESS'

    WHERE PIPELINE_RUN_ID=V_RUN_ID;

    RETURN 'Pipeline completed successfully';

EXCEPTION

WHEN OTHER THEN

UPDATE PIPELINE_AUDIT

SET

END_TIME=CURRENT_TIMESTAMP(),

STATUS='FAILED',

ERROR_MESSAGE=SQLERRM

WHERE PIPELINE_RUN_ID=V_RUN_ID;

RETURN SQLERRM;

END;

$$;