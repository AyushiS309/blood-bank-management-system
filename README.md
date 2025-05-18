# 🩸 Blood Bank Management System – SQL Project

Welcome to the **Blood Bank Management System**, a simple yet effective SQL project designed to manage blood donors, hospital records, and blood request tracking using a structured relational database. This project is built entirely using **MySQL** and demonstrates how databases can help streamline real-world systems.

---

## 📂 Project Overview

This repository contains everything you need to get started with the project, including:

* ✅ SQL script to create and set up the database
* ✅ All necessary tables with relationships and constraints
* ✅ Sample data with 50+ realistic records
* ✅ Common queries to interact with the data

---

## 🧱 Database Structure

The system is built on a few key tables:

* **Donors** – Stores donor details like name, age, blood group, contact info, and last donation date.
* **Hospitals** – Contains information about registered hospitals.
* **Requests** – Logs blood requests made by hospitals, including request date, units, and status.
* **BloodInventory** – Maintains the current blood stock levels grouped by blood type.

All tables are connected with proper **foreign key constraints** to ensure data integrity.

---

## 🧩 ER Diagram

The ER (Entity-Relationship) diagram visually explains the structure of the database, including:

* One-to-many relationship between Hospitals and Requests
* One-to-many relationship between Donors and Blood Inventory (if modeled that way)
* Primary and foreign keys clearly defined for relational mapping

---

## 🔧 Technologies Used

* **Database:** MySQL 8.0
* **Tools:** MySQL Workbench for visualization and query execution
* **Version Control:** Git & GitHub

---

## 🚀 Getting Started

To run the project on your system:

1. Install **MySQL** and **MySQL Workbench**
2. Clone this repository or download the `.sql` file
3. Open MySQL Workbench and execute the following:

   ```sql
   SOURCE path/to/bloodbankdb.sql;
   ```
