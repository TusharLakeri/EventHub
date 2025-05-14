create database eventhub;
use eventhub;
CREATE TABLE usertable (
email varchar(50) not null unique primary key,
pass varchar(1000) not null,
college varchar(50) not null,
username varchar(50) unique
);
CREATE TABLE events (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    event_date DATE NOT NULL,
    image VARCHAR(255) NOT NULL,
    college_name varchar(255) Not null,
    department varchar(20) Not null,
    referencelink text not null,
    event_type varchar(20) not null,
    username varchar(50), 
    foreign key(username)references usertable(username) on delete cascade
);
CREATE TABLE password_resets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    otp VARCHAR(6),
    expires_at DATETIME NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);