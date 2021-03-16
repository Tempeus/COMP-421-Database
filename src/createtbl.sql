CONNECT TO cs421;

CREATE TABLE PRIORITY
(
    category VARCHAR(100) NOT NULL
    ,prioritynumber INTEGER NOT NULL
    ,PRIMARY KEY(category)
);

CREATE TABLE PATIENT
(
    hinsurenum INTEGER NOT NULL
    ,patientname VARCHAR(30) NOT NULL
    ,phonenumber VARCHAR(15) NOT NULL
    ,dateofbirth VARCHAR(30) NOT NULL
    ,gender VARCHAR(6) NOT NULL
    ,registrationdate VARCHAR(30) NOT NULL
    ,patientcity VARCHAR(30) NOT NULL
    ,patientstreetaddress VARCHAR(30) NOT NULL
    ,patientpostalcode VARCHAR(7) NOT NULL
    ,numofdoses INTEGER NOT NULL
    ,category VARCHAR(100) NOT NULL
    ,PRIMARY KEY(hinsurenum)
    ,FOREIGN KEY(category) REFERENCES PRIORITY
);

CREATE TABLE LOCATION
(
    locname VARCHAR(30) NOT NULL
    ,locationstreetaddress VARCHAR(100) NOT NULL
    ,locationcity VARCHAR(30) NOT NULL
    ,locationpostalcode VARCHAR(7) NOT NULL
    ,PRIMARY KEY(locname)
);

CREATE TABLE HOSPITAL
(
    locname VARCHAR(30) NOT NULL
    ,PRIMARY KEY (locname)
    ,FOREIGN KEY (locname) REFERENCES LOCATION
);

CREATE TABLE NURSE
(
    nurseliscennum INTEGER NOT NULL
    ,nursename VARCHAR(30) NOT NULL
    ,locname VARCHAR(30) NOT NULL
    ,PRIMARY KEY(nurseliscennum)
    ,FOREIGN KEY(locname) REFERENCES HOSPITAL
);

CREATE TABLE VACCINE
(
    vaccinename VARCHAR(30) NOT NULL
    ,waitperiod INTEGER NOT NULL
    ,requiredose INTEGER NOT NULL
    ,PRIMARY KEY(vaccinename)
);

CREATE TABLE BATCH
(
    batchnum INTEGER NOT NULL
    ,expdate DATE NOT NULL
    ,manufacturedate DATE NOT NULL
    ,numofvial INTEGER NOT NULL
    ,vaccinename VARCHAR(30) NOT NULL
    ,locname VARCHAR(30) NOT NULL
    ,PRIMARY KEY(batchnum, vaccinename)
    ,FOREIGN KEY(vaccinename) REFERENCES VACCINE
    ,FOREIGN KEY(locname) REFERENCES LOCATION
    ,CONSTRAINT check_date CHECK (manufacturedate < expdate)
);

CREATE TABLE VIAL
(
    vialnum INTEGER NOT NULL
    ,batchnum INTEGER NOT NULL
    ,vaccinename VARCHAR(30) NOT NULL
    ,PRIMARY KEY(vaccinename, batchnum, vialnum)
    ,FOREIGN KEY(batchnum, vaccinename) REFERENCES BATCH
);

CREATE TABLE VACCINATIONDATE
(
    vaccdate DATE NOT NULL
    ,locname VARCHAR(30) NOT NULL
    ,PRIMARY KEY(vaccdate, locname)
    ,FOREIGN KEY(locname) REFERENCES LOCATION
);

CREATE TABLE SLOT
(
    vaccslot INTEGER NOT NULL
    ,stime TIME NOT NULL
    ,vaccdate DATE NOT NULL
    ,locname VARCHAR(30) NOT NULL
    ,nurseliscennum INTEGER
    ,vaccinename VARCHAR(30)
    ,batchnum INTEGER
    ,vialnum INTEGER
    ,hinsurenum INTEGER
    ,dateassigned DATE
    ,PRIMARY KEY(vaccslot, stime, vaccdate, locname)
    ,FOREIGN KEY(vaccdate, locname) REFERENCES VACCINATIONDATE
    ,FOREIGN KEY(nurseliscennum) REFERENCES NURSE
    ,FOREIGN KEY(vaccinename, batchnum, vialnum) REFERENCES VIAL
    ,FOREIGN KEY(hinsurenum) REFERENCES PATIENT
);

CREATE TABLE NURSEASSIGN
(
    nurseliscennum INTEGER NOT NULL
    ,locname VARCHAR(30) NOT NULL
    ,vaccdate DATE NOT NULL
    ,PRIMARY KEY(nurseliscennum, locname, vaccdate)
    ,FOREIGN KEY(nurseliscennum) REFERENCES NURSE
    ,FOREIGN KEY(vaccdate, locname) REFERENCES VACCINATIONDATE
);
