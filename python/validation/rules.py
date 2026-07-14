import re

EMAIL_PATTERN = r'^[\w\.-]+@[\w\.-]+\.\w+$'

MANDATORY_COLUMNS = [
    "CUSTOMER_ID",
    "EMAIL"
]

VALIDATION_RULES = {

    "duplicate_rows": {

        "warning_threshold":1,
        
        "failure_threshold":100

    },

    "null_primary_key": {

        "allowed": 0

    }

}