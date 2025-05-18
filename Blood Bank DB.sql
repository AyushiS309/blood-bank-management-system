drop database if exists BloodBankDB;
create database BloodBankDB;
use BloodBankDB;

drop table if exists Donations, Requests, BloodStock, Donors, Hospitals;

create table Donors (
    donor_id int primary key auto_increment,
    name varchar(100),
    age int,
    gender enum('Male', 'Female', 'Other'),
    blood_group enum('A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-'),
    phone varchar(15),
    email varchar(100),
    last_donation_date date
);

create table Hospitals (
    hospital_id int primary key auto_increment,
    name varchar(100),
    address text,
    phone varchar(15),
    email varchar(100)
);

create table BloodStock (
    blood_group enum('A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-') primary key,
    units_available int
);

create table Donations (
    donation_id int primary key auto_increment,
    donor_id int,
    blood_group enum('A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-'),
    units_donated int,
    donation_date date,
    foreign key (donor_id) references Donors(donor_id),
    foreign key (blood_group) references BloodStock(blood_group)
);

create table Requests (
    request_id int primary key auto_increment,
    hospital_id int,
    blood_group enum('A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-'),
    units_requested int,
    request_date date,
    status enum('Pending', 'Approved', 'Rejected'),
    foreign key (hospital_id) references Hospitals(hospital_id),
    foreign key (blood_group) references BloodStock(blood_group)
);


insert into BloodStock values
('A+', 10), ('A-', 5), ('B+', 8), ('B-', 3), ('O+', 12), ('O-', 4), ('AB+', 6), ('AB-', 2);

insert into Donors (name, age, gender, blood_group, phone, email, last_donation_date) values
('Keerat kaur', 22, 'Female', 'A+', '9991112233', 'keerat@gmail.com', '2025-01-12'),
('Ravi Kumar', 30, 'Male', 'B+', '9992223344', 'ravi@gmail.com', '2025-02-03'),
('Pooja Sharma', 27, 'Female', 'O+', '9993334455', 'pooja@gmail.com', '2025-01-20'),
('Amit Joshi', 35, 'Male', 'AB+', '9994445566', 'amit@gmail.com', '2024-12-15'),
('Neha Verma', 24, 'Female', 'A-', '9995556677', 'neha@gmail.com', '2024-11-10'),
('Rohit Singh', 29, 'Male', 'B-', '9996667788', 'rohit@gmail.com', '2025-03-05'),
('Sakshi Mehta', 26, 'Female', 'O-', '9997778899', 'sakshi@gmail.com', '2024-10-18'),
('Karan Patel', 31, 'Male', 'A+', '9998889900', 'karan@gmail.com', '2025-02-22'),
('Divya Gupta', 23, 'Female', 'B+', '9999990001', 'divya@gmail.com', '2024-09-30'),
('Vikram Rana', 28, 'Male', 'O+', '9988776655', 'vikram@gmail.com', '2025-01-25'),
('Meena Kumari', 34, 'Female', 'AB+', '9988665544', 'meena@gmail.com', '2025-02-14'),
('Tarun Sinha', 30, 'Male', 'A-', '9988554433', 'tarun@gmail.com', '2025-03-01'),
('Simran Kaur', 27, 'Female', 'B-', '9988443322', 'simran@gmail.com', '2025-01-10'),
('Anuj Yadav', 25, 'Male', 'O-', '9988332211', 'anuj@gmail.com', '2024-12-05'),
('Sneha Rawat', 32, 'Female', 'A+', '9988221100', 'sneha@gmail.com', '2025-01-28');


insert into Hospitals (name, address, phone, email)values
('Apollo Hospital', 'Delhi', '9812345670', 'apollo@hosp.com'),
('Max Healthcare', 'Noida', '9823456781', 'max@hosp.com'),
('Fortis', 'Lucknow', '9834567892', 'fortis@hosp.com'),
('AIIMS', 'Delhi', '9845678903', 'aiims@hosp.com'),
('Medanta', 'Gurgaon', '9856789014', 'medanta@hosp.com'),
('Care Hospital', 'Hyderabad', '9867890125', 'care@hosp.com'),
('Sunrise Clinic', 'Pune', '9878901236', 'sunrise@hosp.com'),
('Jaslok Hospital', 'Mumbai', '9889012347', 'jaslok@hosp.com'),
('Global Hospital', 'Chennai', '9890123458', 'global@hosp.com'),
('Columbia Asia', 'Bangalore', '9901234569', 'columbia@hosp.com');

insert into Donations (donor_id, blood_group, units_donated, donation_date)values
(1, 'O+', 2, '2025-04-28'),
(2, 'AB-', 1, '2025-05-01'),
(3, 'A+', 3, '2025-05-02'),
(4, 'AB+', 4, '2025-05-03'),
(5, 'O-', 5, '2025-05-04'),
(6, 'A-', 6, '2025-05-05'),
(7, 'B-', 7, '2025-05-06'),
(8, 'AB-', 8, '2025-05-07'),
(9, 'A+', 9, '2025-05-08'),
(10, 'B+', 10, '2025-05-09'),
(11, 'O-', 1, '2025-05-10'),
(12, 'AB+', 2, '2025-05-11'),
(13, 'O-', 3, '2025-05-12'),
(14, 'A-', 4, '2025-05-13'),
(15, 'A+', 5, '2025-05-14');

insert into Requests (hospital_id, blood_group, units_requested, request_date, status)
values
(1, 'O+', 3, '2025-05-10', 'Pending'),
(2, 'A+', 2, '2025-05-12', 'Approved'),
(3, 'B+', 5, '2025-05-14', 'Pending'),
(4, 'AB+', 1, '2025-05-15', 'Rejected'),
(5, 'A-', 2, '2025-05-16', 'Pending'),
(6, 'O-', 4, '2025-05-17', 'Approved'),
(7, 'B-', 3, '2025-05-18', 'Approved'),
(8, 'AB-', 1, '2025-05-19', 'Pending'),
(9, 'O+', 2, '2025-05-20', 'Approved'),
(10, 'A+', 1, '2025-05-21', 'Rejected');

show databases;
select * from requests;