# Enterprise Data Warehouse Design

**Source Systems**
Website
Mobile App
Payment Gateway
Hotel Master
Customer Portal

**Bronze Layer** Raw Data
Bookings
Customers
Hotels
Payments
Reviews

**Silver Layer** Cleaned Data
Customer

	Customer_ID
	Name
	Country
	Created_Date

Hotel

	Hotel_ID
	Hotel_Name
	City
	Country
	Rating

Booking

	Booking_ID
	Customer_ID
	Hotel_ID
	Checkin_Date
	Checkout_Date
	Amount
	Booking_Status

Payment

	Payment_ID
	Booking_ID
	Payment_Mode
	Payment_Status
	Amount
	
**Gold Layer** Business Models

Revenue by Country

Bookings by Month

Hotel Occupancy

Customer Lifetime Value

Cancellation Rate

Top Selling Hotels

**Simple Architecture**

                Source Systems
                      │
       ┌──────────────┼───────────────┐
       │              │               │
   Website        Mobile App     Payment API
       │              │               │
       └──────────────┼───────────────┘
                      │
                 Bronze Layer
                      │
                 Silver Layer
                      │
                  Gold Layer
                      │
          Dashboards / Analytics
		  
**Data Quality Checks**

Duplicate Detection

Null Validation

Referential Integrity

Data Type Validation

Business Rule Validation

**Performance Optimization**

Clustering

Partition Strategy

Warehouse Sizing

Incremental Loading

Query Optimization

Materialized Views

**Security**

RBAC

Role-based Access

Data Masking

Encryption

Secure Views

**Monitoring**

Pipeline Failures

Load Time

Execution Time

Warehouse Cost

Data Freshness