from datetime import datetime


def profile_dataframe(dataframe, dataset_name, primary_key):

    profile = {

        "dataset_name": dataset_name,

        "total_rows": len(dataframe),

        "total_columns": len(dataframe.columns),

        "duplicate_rows": dataframe.duplicated().sum(),

        "column_names": list(dataframe.columns),

        "null_values_per_column": dataframe.isnull().sum().to_dict(),
        
        "total_null_values": dataframe.isnull().sum().sum(),

        "unique_primary_keys": dataframe[primary_key].nunique(),

        "profile_generated_at": datetime.now(),

        "primary_key": primary_key

    }

    return profile