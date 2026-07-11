from config.config import CUSTOMER_FILE
from utilities.csv_reader import read_csv


def load_customers():

    dataframe = read_csv(CUSTOMER_FILE)

    print(dataframe.head())


if __name__ == "__main__":

    load_customers()