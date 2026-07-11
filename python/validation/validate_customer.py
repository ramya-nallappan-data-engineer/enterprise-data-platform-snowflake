import pandas as pd
import re


def validate_customer(dataframe):

    validation_errors = []

    # -----------------------------
    # Check Duplicate Customer IDs
    # -----------------------------

    duplicate_ids = dataframe["CUSTOMER_ID"].duplicated().sum()

    validation_errors.append(
        f"Duplicate CUSTOMER_ID : {duplicate_ids}"
    )

    # -----------------------------
    # Null Customer IDs
    # -----------------------------

    null_ids = dataframe["CUSTOMER_ID"].isnull().sum()

    validation_errors.append(
        f"Null CUSTOMER_ID : {null_ids}"
    )

    # -----------------------------
    # Null Email
    # -----------------------------

    null_email = dataframe["EMAIL"].isnull().sum()

    validation_errors.append(
        f"Null EMAIL : {null_email}"
    )

    # -----------------------------
    # Invalid Email Format
    # -----------------------------

    invalid_email = 0

    pattern = r'^[\w\.-]+@[\w\.-]+\.\w+$'

    for email in dataframe["EMAIL"]:

        if pd.isna(email):

            continue

        if re.match(pattern, email) is None:

            invalid_email += 1

    validation_errors.append(
        f"Invalid EMAIL : {invalid_email}"
    )

    return validation_errors