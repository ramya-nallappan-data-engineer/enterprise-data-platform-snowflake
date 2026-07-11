from config.config import CUSTOMER_FILE
from utilities.csv_reader import read_csv


def load_customers():

    dataframe = read_csv(CUSTOMER_FILE)

    from validation.validate_customer import validate_customer
    if dataframe is not None:

        print(dataframe.head())
    
        report = validate_customer(dataframe)
    
        print()
    
        print("="*60)
    
        print("CUSTOMER VALIDATION REPORT")
    
        print("="*60)
    
        for line in report:
    
            print(line)

    else:

        print("Customer file could not be loaded.")

if __name__ == "__main__":

    load_customers()