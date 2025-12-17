# Hotel Management — Normalization Assignment (Day 0)

This repository contains the normalization solution for the Hotel Management case study.
Source: `Assignmen 0 

## Summary
The system covers:
- Room booking (registered customers)
- Service management (Food, Laundry, Site Visits)
- Invoice generation

## Normalized Schema (3NF)
- Customer(CustomerID, CustomerName, CustomerEmail)
- Room(RoomID, RoomType, RoomRent)
- Booking(BookingID, BookingDate, CustomerID, RoomID, CheckInDate, CheckOutDate)
- ServiceType(ServiceID, ServiceName)
- MenuItem(MenuItemID, MenuItemName, Price)
- BookingFood(BookingFoodID, BookingID, MenuItemID, Quantity)
- BookingLaundry(BookingLaundryID, BookingID, NoOfClothes)
- VehicleType(VehicleTypeID, VehicleName, RatePerDay)
- BookingSiteVisit(BookingSiteID, BookingID, VehicleTypeID, Days)
- Invoice(InvoiceID, BookingID, InvoiceDate, InvoiceTotal)


## How charges are calculated
- Food: sum(quantity × MenuItem.Price)
- Laundry: NoOfClothes × ₹20 (or configurable rate)
- Site Visits: VehicleType.RatePerDay × Days
- Room charge: RoomRent × Nights


DAY-3 

📌 Topics Covered

Database selection (USE)

Table creation (CREATE TABLE)

Data insertion (INSERT)

Data retrieval (SELECT)

Data update (UPDATE)

Data deletion (DELETE)

Table alteration (ALTER)

Auto Increment & Primary Key

NULL handling

Backup table creation

DELETE vs TRUNCATE vs DROP

Transaction basics

