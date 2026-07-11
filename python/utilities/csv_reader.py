import pandas as pd


def read_csv(file_path):
    """
    Reads a CSV file and returns a pandas DataFrame.
    """

    try:
        dataframe = pd.read_csv(file_path)

        print(f"Successfully loaded {file_path}")

        return dataframe

    except Exception as error:

        print(f"Error reading {file_path}")

        print(error)

        return None