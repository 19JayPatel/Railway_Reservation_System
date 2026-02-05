# 🚆 Railway Reservation System  
### A Java JSP–Based Dynamic Web Application for Online Train Ticket Booking & Management

---

## 🛡️ Badges

![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
![JSP](https://img.shields.io/badge/JSP-007396?style=for-the-badge&logo=java&logoColor=white)
![Servlet](https://img.shields.io/badge/Servlet-4B8BBE?style=for-the-badge&logo=java&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)
![Apache Tomcat](https://img.shields.io/badge/Apache%20Tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=black)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

---

## 🎯 Project Banner

<p align="center">
  <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/java/java-original.svg" width="70"/>
  &nbsp;&nbsp;&nbsp;
  <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/mysql/mysql-original.svg" width="70"/>
</p>

---

## 📌 About the Project

The **Railway Reservation System** is a Java-based dynamic web application developed using **JSP and Servlets**.  
It allows users to search trains, book tickets, manage reservations, and enables administrators to control train and booking data efficiently.

This project demonstrates Java EE fundamentals, MVC architecture, and database-driven web application development.

---

## 🛠️ Tech Stack

| Technology | Description |
|----------|-------------|
| <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/java/java-original.svg" width="30"/> **Java** | Core backend programming language |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/java/java-original.svg" width="30"/> **JSP** | Dynamic UI rendering |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/java/java-original.svg" width="30"/> **Servlets** | Request handling & business logic |
| <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/mysql/mysql-original.svg" width="30"/> **MySQL (XAMPP)** | Relational database |
| <img src="https://upload.wikimedia.org/wikipedia/commons/f/fe/Apache_Tomcat_logo.svg" width="50"/> **Apache Tomcat** | Web server & servlet container |

---

## ✨ Application Features

### 👤 User Module
- User Registration
- User Login & Logout
- Train Search (Source & Destination)
- Ticket Booking
- View Booked Tickets
- Ticket Cancellation

### 🔐 Admin Module
- Admin Login
- Add / Update / Delete Train Details
- View All Reservations
- Manage Users & Bookings

---

## 🗄️ Database Design

- **Database Name:** `railway_reservation_system`
- **Database File:** `railway_reservation_system.sql`
- **Database Engine:** MySQL (XAMPP)


### Key Tables (Typical Structure)
- `users` – Stores user account details
- `trains` – Stores train information
- `bookings` – Stores ticket booking records
- `admin` – Admin authentication data

### Relationships
- One **user** → many **bookings**
- One **train** → many **bookings**

The database ensures data integrity using **primary keys**, **foreign keys**, and relational mapping.

---

## 📂 Project Folder Structure

```bash

Railway_Reservation_System/
├── src/
│   └── main/
│       ├── java/
│       │   └── db/
│       │       ├── AddTrainServlet.java
│       │       ├── AdminInsertServlet.java
│       │       ├── AdminLoginServlet.java
│       │       ├── BookTicketServlet.java
│       │       ├── CancelTicketServlet.java
│       │       ├── DBConnection.java
│       │       ├── DeleteTrainServlet.java
│       │       ├── UserLoginServlet.java
│       │       └── UserRegisterServlet.java
│       └── webapp/
│           ├── images/
│           ├── META-INF/
│           ├── WEB-INF/
│           ├── add_train.jsp
│           ├── admin_dashboard.jsp
│           ├── admin_Register.jsp
│           ├── adminLogin.jsp
│           ├── book_ticket.jsp
│           ├── contact.jsp
│           ├── footer.jsp
│           ├── header.css
│           ├── header.jsp
│           ├── hello.jsp
│           ├── index.jsp
│           ├── Loader.jsp
│           ├── logout.jsp
│           ├── main.css
│           ├── schedule.jsp
│           ├── user_login.jsp
│           ├── user_Register.jsp
│           ├── userlogout.jsp
│           ├── view_bookings.jsp
│           ├── view_trains.jsp
│           └── view_users.jsp
├── WEB-INF/
│   ├── web.xml
└── railway_reservation_system.sql

``` 
--- 

## ⚙️ Installation & Setup Guide

## 1️⃣ Prerequisites

1. JDK 8 or above

2. Apache Tomcat 9+

3. XAMPP (MySQL)

4. Eclipse IDE / NetBeans IDE

## 2️⃣ Database Setup

1. Start XAMPP

2. Start phpMyAdmin

3. Create a database:

```bash
railway_reservation_system
```

Import 

```bash
railway_reservation_system.sql
```

## Project Setup

1. Extract Railway_Reservation_System.zip

2. Open Eclipse

3. Import → Existing Dynamic Web Project

4. Configure Apache Tomcat Server

5. Update database credentials in:

```bash
DBConnection.java
```

## 4️⃣ Run the Project

Right-click project → Run on Server

Access:

```bash
http://localhost:8080/Railway_Reservation_System/
```

---

## Screenshot

## Home Page
![Home Page](https://github.com/19JayPatel/Railway_Reservation_System/blob/main/Output/Railway-Reservation-System.png)

---

## 👨‍💻 Author : Jay Sidapara

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?style=for-the-badge&logo=linkedin)](https://www.linkedin.com/in/jay-sidapara-b5a131298?utm_source=share_via&utm_content=profile&utm_medium=member_android)


