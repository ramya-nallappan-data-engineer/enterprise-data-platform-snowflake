from validation.rules import VALIDATION_RULES


def validate_profile(profile):

    warnings = []

    errors = []

    duplicate_rows = profile["duplicate_rows"]

    primary_key = profile["primary_key"]

    primary_key_nulls = profile["null_values_per_column"][primary_key]

    if duplicate_rows >= VALIDATION_RULES["duplicate_rows"]["failure_threshold"]:

        errors.append(
            f"{duplicate_rows} duplicate rows found."
        )

    elif duplicate_rows > 0:

        warnings.append(
            f"{duplicate_rows} duplicate rows found."
        )

    if primary_key_nulls > 0:

        errors.append(
            f"{primary_key_nulls} {primary_key} values are NULL."
        )

    if errors:

        status = "FAILED"

    elif warnings:

        status = "WARNING"

    else:

        status = "SUCCESS"

    validation_result = {

        "status": status,

        "errors": errors,

        "warnings": warnings

    }

    return validation_result