from ingestion.load_customers import load_customers


def main():

    print("=" * 60)
    print("Enterprise Snowflake Data Platform")
    print("=" * 60)

    load_customers()


if __name__ == "__main__":

    main()