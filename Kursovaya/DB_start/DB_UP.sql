CREATE TABLE Specialtys (
  ID INT PRIMARY KEY,
  Title VARCHAR(255),
  Descr TEXT
);

CREATE TABLE Plot (
  ID INT PRIMARY KEY,
  Title VARCHAR(255),
  Plot_code INT
);

CREATE TABLE Doctors (
  ID INT PRIMARY KEY,
  Full_Name VARCHAR(255),
  Specialty INT REFERENCES Specialtys(ID),
  Plot INT REFERENCES Plot(ID)
);

CREATE TABLE Offices (
  ID INT PRIMARY KEY,
  Number INT,
  Descr TEXT
);

CREATE TABLE Adresses (
  ID INT PRIMARY KEY,
  Adress VARCHAR(255),
  Plot INT REFERENCES Plot(ID)
);

CREATE TABLE Patients (
  ID INT PRIMARY KEY,
  Full_Name VARCHAR(255),
  Date_of_birth DATE,
  Address INT REFERENCES Adresses(ID),
  Phone_number VARCHAR(20)
);

CREATE TABLE Reception_schedule (
  ID INT PRIMARY KEY,
  Date_and_time TIMESTAMP,
  Doctor INT REFERENCES Doctors(ID),
  Patient INT REFERENCES Patients(ID),
  Office INT REFERENCES Offices(ID)
);