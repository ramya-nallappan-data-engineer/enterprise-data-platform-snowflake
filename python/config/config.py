import os

PROJECT_ROOT = os.path.dirname(os.path.dirname(os.path.dirname(__file__)))

DATA_FOLDER = os.path.join(PROJECT_ROOT, "sample_data")

CUSTOMER_FILE = os.path.join(DATA_FOLDER, "customers.csv")
HOTEL_FILE = os.path.join(DATA_FOLDER, "hotels.csv")
BOOKING_FILE = os.path.join(DATA_FOLDER, "bookings.csv")
PAYMENT_FILE = os.path.join(DATA_FOLDER, "payments.csv")
REVIEW_FILE = os.path.join(DATA_FOLDER, "reviews.csv")