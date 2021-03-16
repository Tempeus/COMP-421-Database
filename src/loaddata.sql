CONNECT TO cs421;

INSERT INTO PRIORITY (category,prioritynumber) VALUES
 ('Health Care Workers',1)
,('Elderly',1)
,('Immunologically Compromised',1)
,('Teachers',2)
,('Children below 10',2)
,('Those in physical proximity to first priority',2)
,('Essential Service Workers',3)
,('Those in physical proximity to second priority',3)
,('Everyone Else',4)
;

INSERT INTO PATIENT (hinsurenum,patientname,phonenumber,dateofbirth,gender,registrationdate,patientcity,patientstreetaddress,patientpostalcode,numofdoses,category) VALUES
 (228879580,'Jane Doe','5144936369','1938-10-15', 'female','2021-02-01','Montreal','4932 Yoho Valley','N4B 2A1',0,'Those in physical proximity to second priority')
,(581984965,'Danika Portillo','4385022468','1940-09-27','female','2021-03-11','Pitt Meadows','190 Silver Springs Blvd','V3Y 8K3',1,'Health Care Workers')
,(549891519,'Ingrid Buck','4387741891','1947-05-04','female','2021-03-21','Cap-Pelé', '597 Garafraxa St', 'E4N 6L9',1,'Health Care Workers')
,(215947635,'Pedro Price','5145381035','1950-09-01','male','2021-04-05','Sainte-Adèle','4540 Ganges Road', 'J8B 7Y4', 2,'Teachers')
,(902152473,'Kurt Joyce','4384906920','1955-12-02','male','2021-06-06','Sainte-Adèle','4301 Sheppard Ave', 'J5X 9Y3', 3,'Immunologically Compromised')
,(216872265,'Ben Hebert','5146866194','1974-10-15','male','2021-08-10','Waverley','4534 49th Avenue', 'B2R 2A5',0,'Children below 10')
,(265189752,'Adeline Davies','4387893208','1977-12-17','female','2021-09-13','Morden','738 Dominion St', 'R6M 7L9',1,'Essential Service Workers')
,(216583150,'Sallie Rutledge','5145254537','1987-03-03','female', '2021-10-04','Toronto', '1281 Albert Street', 'M4W 0B3', 2,'Everyone Else')
,(457620651,'Emmie Barry','5146584205','1994-12-11','female','2021-11-18','St. Stephen','894 River Street', 'E3L 9A8', 0,'Those in physical proximity to first priority')
,(519802942,'Nishat Prova','5145501729','2003-04-07','male', '2021-12-29','Montreal', '3671 rue St-Paul', 'E8P 6R4',0,'Elderly')
;

INSERT INTO LOCATION (locname,locationstreetaddress,locationcity,locationpostalcode) VALUES
 ('Jewish General','3755 Chemin de la Côte-Sainte-Catherine','Montreal','H3T 1E2')
,('Grand Garden General Hospital','295 Sixth Street','Pitt Meadows','M3P 3K3')
,('Rose Medical Center','252 Water Street','Cap-Pelé','N1G 6A5')
,('Swanlake Community Hospital','4107 Embro St','Sainte-Adèle','M0E 8A9')
,('Crossroads Hospital','519 McGabim St','Montreal','L0R 4I1')
,('Waverly Community Center','221 rue Levy','Waverley','J0J 2X7')
,('Morden Community Center','1079 Rue De La Gare','Morden','A1X 7B5')
,('Limsa Lominsa Community Center','1711 Halsey Avenue','Toronto','J8L 0S4')
,('Ala Mhigo Clinic','4655 Reserve St','St. Stephen','L3Z 1N2')
,('Kugane Clinic','40 McGill Road','Inkerman','A1W 8S1')
;

INSERT INTO HOSPITAL (locname) VALUES
 ('Jewish General')
,('Grand Garden General Hospital')
,('Rose Medical Center')
,('Swanlake Community Hospital')
,('Crossroads Hospital')
;

INSERT INTO NURSE (nurseliscennum,nursename,locname) VALUES
 (165498,'Tri-tin Truong','Jewish General')
,(841591,'Aiysha Murillo','Grand Garden General Hospital')
,(519821,'Stephen Melendez','Rose Medical Center')
,(315460,'Jiya Massey','Rose Medical Center')
,(631529,'Luka Morley','Crossroads Hospital')
,(105460,'Ava-May Samuels','Jewish General')
,(618294,'Kali Chang','Swanlake Community Hospital')
,(906431,'Dominika Merritt','Rose Medical Center')
,(705136,'Kason Holman','Jewish General')
,(420516,'Amisha Kouma','Crossroads Hospital')
,(983651,'Soraya Goff','Swanlake Community Hospital')
;

INSERT INTO VACCINE (vaccinename,waitperiod,requiredose) VALUES
 ('Pfizer-BioNTech',4,2)
,('Moderna',5,2)
;

INSERT INTO BATCH (batchnum,expdate,manufacturedate,numofvial,vaccinename,locname) VALUES
 (1,'2022-07-25','2021-02-09',200,'Pfizer-BioNTech','Jewish General')
,(2,'2022-09-14','2021-02-11',300,'Moderna','Ala Mhigo Clinic')
,(3,'2022-09-16','2021-02-12',100,'Pfizer-BioNTech','Crossroads Hospital')
,(4,'2022-10-19','2021-03-01',300,'Moderna','Waverly Community Center')
,(5,'2022-10-23','2021-03-04',50,'Moderna','Limsa Lominsa Community Center')
;

INSERT INTO VIAL (vialnum,batchnum,vaccinename) VALUES
 (99265,1,'Pfizer-BioNTech')
,(51981,5,'Moderna')
,(99265,2,'Moderna')
,(60050,3,'Pfizer-BioNTech')
,(51912,5,'Moderna')
,(20135,4,'Moderna')
,(10962,3,'Pfizer-BioNTech')
,(30216,1,'Pfizer-BioNTech')
,(70126,2,'Moderna')
,(95018,3,'Pfizer-BioNTech')
,(32015,2,'Moderna')
;

INSERT INTO VACCINATIONDATE (vaccdate,locname) VALUES
 ('2021-02-06','Jewish General')
,('2021-07-28','Jewish General')
,('2021-08-12','Jewish General')
,('2021-01-27','Jewish General')
,('2022-01-31','Ala Mhigo Clinic')
,('2022-04-01','Ala Mhigo Clinic')
,('2021-03-20','Jewish General')
,('2022-05-27','Crossroads Hospital')
,('2022-06-10','Crossroads Hospital')
;

INSERT INTO SLOT (vaccslot,stime,vaccdate,locname,nurseliscennum,vaccinename,batchnum,vialnum,hinsurenum,dateassigned) VALUES
 (1,'20:30:00','2021-02-06','Jewish General',983651,'Pfizer-BioNTech',1,99265,228879580,'2021-04-15')
,(2,'21:00:00','2021-07-28','Jewish General',841591,'Moderna',5,51981,581984965,'2021-07-21')
,(3,'19:00:00','2021-08-12','Jewish General',705136,'Moderna',2,99265,549891519,'2021-08-05')
,(4,'21:00:00','2021-01-27','Jewish General',315460,'Pfizer-BioNTech',3,60050,215947635,'2021-12-24')
,(5,'18:50:00','2022-01-31','Ala Mhigo Clinic',631529,'Moderna',5,51912,216872265,'2022-01-26')
,(6,'9:00:00','2022-04-01','Ala Mhigo Clinic',618294,'Moderna',4,20135,265189752,'2022-03-29')
,(7,'10:00:00','2021-03-20','Jewish General',NULL,NULL,NULL,NULL,NULL,NULL)
,(8,'11:00:00','2022-05-27','Crossroads Hospital',906431,'Pfizer-BioNTech',3,10962,216583150,'2022-05-19')
,(9,'9:30:00','2022-06-10','Crossroads Hospital',165498,'Pfizer-BioNTech',1,30216,457620651,'2022-06-06')
,(10,'18:50:00','2021-03-20','Jewish General',420516,'Moderna',2,70126,NULL,NULL)
;

INSERT INTO NURSEASSIGN (nurseliscennum,locname,vaccdate) VALUES
 (983651,'Jewish General','2021-02-06')
,(841591,'Jewish General','2021-07-28')
,(705136,'Jewish General','2021-08-12')
,(315460,'Jewish General','2021-01-27')
,(631529,'Ala Mhigo Clinic','2022-01-31')
,(618294,'Ala Mhigo Clinic','2022-04-01')
;