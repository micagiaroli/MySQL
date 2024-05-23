CREATE DATABASE transactionsprueba;
USE transactionsprueba;

#Creamos tabla companies
CREATE TABLE companies (
	company_id VARCHAR(8) PRIMARY KEY,
    company_name VARCHAR (255),
    phone VARCHAR (50),
    email VARCHAR (50),
    country VARCHAR (50),
    website VARCHAR (50)
    );
    
#insertamos los datos en la tabla companies sin wizard
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/companies.csv'
INTO TABLE companies
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(company_id,company_name,phone,email,country,website);

#Corroboramos la carga de datos
SELECT *
FROM companies;

#Creamos tabla credit_cards
CREATE TABLE credit_cards (
	id VARCHAR (10) PRIMARY KEY,
    user_id VARCHAR (10),
    iban VARCHAR (50),
    pan VARCHAR (50),
    pin VARCHAR (4),
    cvv VARCHAR (3),
    track1 VARCHAR (50),
    track2 VARCHAR (50),
    expiring_date VARCHAR (10)
    );

#insertamos los datos en la tabla credit_cards sin wizard
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/credit_cards.csv'
INTO TABLE credit_cards
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(id,user_id,iban,pan,pin,cvv,track1,track2,expiring_date);

#Corroboramos la carga de datos
SELECT * FROM credit_cards;




