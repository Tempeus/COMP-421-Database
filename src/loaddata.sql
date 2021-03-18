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

INSERT INTO PATIENT VALUES (10000, 'Dummy 0', 01111111, '1991-01-01','F','2020-12-10', 'Montreal', '123 Town 1', 'A0B0C0',0, 'Health Care Workers');
INSERT INTO PATIENT VALUES (10001, 'Dummy 1', 10111111, '1991-01-02','M','2020-12-11', 'Montreal', '234 Town 2', 'A0B0C1',0, 'Elderly >=65');
INSERT INTO PATIENT VALUES (10002, 'Dummy 2', 11011111, '1991-01-03','F','2020-12-12', 'Montreal', '345 Town 3', 'A0B1C0',0, 'Teachers');
INSERT INTO PATIENT VALUES (10003, 'Dummy 3', 11101111, '1991-01-04','M','2020-12-13', 'Montreal', '456 Town 4', 'A0B1C1',0, 'Everybody else');
INSERT INTO PATIENT VALUES (10004, 'Dummy 4', 11110111, '1991-01-05','M','2020-12-14', 'Montreal', '567 Town 5', 'A1B0C0',0, 'Proximity to second priority');
INSERT INTO PATIENT VALUES (10005, 'Dummy 5', 11111011, '1991-01-06','F','2020-12-15', 'Montreal', '678 Town 6', 'A1B0C1',0, 'Everybody else');
INSERT INTO PATIENT VALUES (10006, 'Dummy 6', 11111101, '1991-01-07','F','2020-12-16', 'Montreal', '789 Town 7', 'A1B1C0',0, 'Everybody else');
INSERT INTO PATIENT VALUES (10007, 'Dummy 7', 11111110, '1991-01-08','M','2021-01-17', 'Montreal', '891 Town 8', 'A1B1C1',0, 'Everybody else');
INSERT INTO PATIENT VALUES (10008, 'Dummy 8', 00111111, '1991-01-09','F','2021-01-18', 'Montreal', '123 Town 9', 'A2B0C0',0, 'Everybody else');
INSERT INTO PATIENT VALUES (10009, 'Dummy 9', 10011111, '1991-01-10','F','2020-12-19', 'Montreal', '234 Town10', 'A2B0C1',0, 'Health Care Workers');
INSERT INTO PATIENT VALUES (10010, 'Dummy10', 11001111, '1991-01-11','M','2020-12-20', 'Montreal', '345 Town11', 'A2B1C0',0, 'Elderly >=65');
INSERT INTO PATIENT VALUES (10011, 'Dummy11', 11100111, '1991-01-12','F','2020-12-21', 'Montreal', '456 Town11', 'A2B1C1',0, 'Teachers');
INSERT INTO PATIENT VALUES (10012, 'Dummy12', 11110011, '1991-01-13','M','2020-12-22', 'Montreal', '567 Town12', 'A3B0C0',0, 'Everybody else');
INSERT INTO PATIENT VALUES (10013, 'Dummy13', 11111001, '1991-01-14','M','2020-12-23', 'Montreal', '678 Town13', 'A3B0C1',0, 'Proximity to second priority');
INSERT INTO PATIENT VALUES (10014, 'Dummy14', 11111100, '1991-01-15','F','2020-12-24', 'Montreal', '781 Town14', 'A3B1C0',0, 'Everybody else');
INSERT INTO PATIENT VALUES (10015, 'Dummy15', 00011111, '1991-01-16','F','2020-12-25', 'Montreal', '123 Town15', 'A3B1C1',0, 'Everybody else');
INSERT INTO PATIENT VALUES (10016, 'Dummy16', 10001111, '1991-01-17','M','2021-01-26', 'Montreal', '234 Town16', 'A4B0C0',0, 'Everybody else');
INSERT INTO PATIENT VALUES (10017, 'Dummy17', 11000111, '1991-01-18','F','2021-01-27', 'Montreal', '345 Town17', 'A4B0C1',0, 'Everybody else');
INSERT INTO PATIENT VALUES (10018, 'Dummy18', 11100011, '1991-01-19','F','2020-12-28', 'Montreal', '456 Town18', 'A4B1C0',0, 'Health Care Workers');
INSERT INTO PATIENT VALUES (10019, 'Dummy19', 11110001, '1991-01-20','M','2020-12-29', 'Montreal', '567 Town19', 'A4B1C1',0, 'Elderly >=65');
INSERT INTO PATIENT VALUES (10020, 'Dummy20', 11111000, '1991-01-21','F','2020-12-30', 'Montreal', '678 Town20', 'A5B0C0',0, 'Teachers');
INSERT INTO PATIENT VALUES (10021, 'Dummy21', 00001111, '1991-01-22','M','2020-12-31', 'Montreal', '420 Town21', 'A5B0C1',0, 'Everybody else');
INSERT INTO PATIENT VALUES (10022, 'Dummy22', 10000111, '1991-01-23','M','2020-01-01', 'Montreal', '421 Town22', 'A5B1C0',0, 'Proximity to second priority');
INSERT INTO PATIENT VALUES (10023, 'Dummy23', 11000011, '1991-01-24','F','2020-01-02', 'Montreal', '422 Town23', 'A5B1C1',0, 'Everybody else');
INSERT INTO PATIENT VALUES (10024, 'Dummy24', 11100001, '1991-01-25','F','2020-01-03', 'Montreal', '423 Town24', 'A6B0C0',0, 'Everybody else');
INSERT INTO PATIENT VALUES (10025, 'Dummy25', 11110000, '1991-01-26','M','2021-01-04', 'Montreal', '424 Town25', 'A6B0C1',0, 'Everybody else');
INSERT INTO PATIENT VALUES (10026, 'Dummy26', 11111111, '1991-01-27','F','2021-01-04', 'Montreal', '425 Town26', 'A6B1C0',0, 'Everybody else');
INSERT INTO PATIENT VALUES (10027, 'Dummy27', 11111112, '1991-01-26','M','2021-01-04', 'Montreal', '426 Town25', 'A6B1C1',0, 'Everybody else');
INSERT INTO PATIENT VALUES (10028, 'Dummy28', 11111112, '1991-01-27','F','2021-01-04', 'Montreal', '427 Town26', 'A7B0C0',0, 'Everybody else');
INSERT INTO PATIENT VALUES (10029, 'Dummy29', 11111113, '1991-01-26','M','2021-01-04', 'Montreal', '428 Town25', 'A7B0C1',0, 'Everybody else');
INSERT INTO PATIENT VALUES (10030, 'Dummy30', 11111114, '1991-01-27','F','2021-01-04', 'Montreal', '429 Town26', 'A7B1C0',0, 'Everybody else');
INSERT INTO PATIENT VALUES (10031, 'Dummy31', 11111115, '1991-01-26','M','2021-01-04', 'Montreal', '430 Town25', 'A7B1C1',0, 'Everybody else');
INSERT INTO PATIENT VALUES (10032, 'Dummy32', 11111116, '1991-01-27','F','2021-01-04', 'Montreal', '431 Town26', 'A8B0C0',0, 'Everybody else');
INSERT INTO PATIENT VALUES (10033, 'Dummy33', 11111117, '1991-01-26','M','2021-01-04', 'Montreal', '432 Town25', 'A8B0C1',0, 'Everybody else');
INSERT INTO PATIENT VALUES (10034, 'Dummy34', 11111118, '1991-01-27','F','2021-01-04', 'Montreal', '433 Town26', 'A8B1C0',0, 'Everybody else');
INSERT INTO PATIENT VALUES (10035, 'Dummy35', 11111119, '1991-01-27','F','2021-01-05', 'Montreal', '434 Town26', 'A9B1C3',0, 'Everybody else');


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
 (01,'2022-07-25','2021-02-09',200,'Pfizer-BioNTech','Jewish General')
,(02,'2022-09-14','2021-02-11',300,'Moderna','Ala Mhigo Clinic')
,(03,'2022-09-16','2021-02-12',100,'Pfizer-BioNTech','Crossroads Hospital')
,(04,'2022-10-19','2021-03-01',300,'Moderna','Waverly Community Center')
,(05,'2022-10-23','2021-03-04',50,'Moderna','Limsa Lominsa Community Center')
;

INSERT INTO VIAL (vialnum,batchnum,vaccinename) VALUES
 (99265,01,'Pfizer-BioNTech')
,(51981,05,'Moderna')
,(99265,02,'Moderna')
,(60050,03,'Pfizer-BioNTech')
,(51912,05,'Moderna')
,(20135,04,'Moderna')
,(10962,03,'Pfizer-BioNTech')
,(30216,01,'Pfizer-BioNTech')
,(70126,02,'Moderna')
,(95018,03,'Pfizer-BioNTech')
,(32015,02,'Moderna')
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
 (01,'20:30:00','2021-02-06','Jewish General',983651,'Pfizer-BioNTech',1,99265,215947635,'2021-04-15')
,(02,'21:00:00','2021-07-28','Jewish General',841591,'Moderna',5,51981,581984965,'2021-07-21')
,(03,'19:00:00','2021-08-12','Jewish General',705136,'Moderna',2,99265,549891519,'2021-08-05')
,(04,'21:00:00','2021-01-27','Jewish General',315460,'Pfizer-BioNTech',3,60050,215947635,'2021-12-24')
,(05,'18:50:00','2022-01-31','Ala Mhigo Clinic',631529,'Moderna',5,51912,216872265,'2022-01-26')
,(06,'9:00:00','2022-04-01','Ala Mhigo Clinic',618294,'Moderna',4,20135,265189752,'2022-03-29')
,(07,'10:00:00','2021-03-20','Jewish General',NULL,NULL,NULL,NULL,NULL,NULL)
,(08,'11:00:00','2022-05-27','Crossroads Hospital',906431,'Pfizer-BioNTech',3,10962,216583150,'2022-05-19')
,(09,'9:30:00','2022-06-10','Crossroads Hospital',165498,'Pfizer-BioNTech',1,30216,457620651,'2022-06-06')
,(10,'18:50:00','2021-03-20','Jewish General',420516,'Moderna',2,70126,NULL,NULL)
;

INSERT INTO SLOT VALUES (01,'12:30:00', '2021-01-31', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 01, 236481, '2021-02-21');
INSERT INTO SLOT VALUES (02,'12:30:00', '2021-01-31', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 08, 10002, '2021-02-21');
INSERT INTO SLOT VALUES (03,'12:30:00', '2021-01-31', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 09, 10003, '2021-02-21');
INSERT INTO SLOT VALUES (04,'12:30:00', '2021-01-31', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 10, 10004, '2021-02-21');
INSERT INTO SLOT VALUES (05,'12:30:00', '2021-01-31', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 11, 10005, '2021-02-21');
INSERT INTO SLOT VALUES (06,'12:30:00', '2021-01-31', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 12, 10006, '2021-02-21');

INSERT INTO SLOT VALUES (01,'12:30:00', '2021-02-06', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 02, 825172, '2021-02-21');
INSERT INTO SLOT VALUES (02,'13:30:00', '2021-02-06', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 03, 212331, '2021-02-21');
INSERT INTO SLOT VALUES (04,'15:30:00', '2021-02-06', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 04, 812345, '2021-02-21');
INSERT INTO SLOT VALUES (05,'16:30:00', '2021-02-06', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 05, 634712, '2021-02-21');
INSERT INTO SLOT VALUES (02,'12:30:00', '2021-02-06', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 14, 10008, '2021-02-21');
INSERT INTO SLOT VALUES (03,'12:30:00', '2021-02-06', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 15, 10009, '2021-02-21');
INSERT INTO SLOT VALUES (04,'12:30:00', '2021-02-06', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 16, 10010, '2021-02-21');

INSERT INTO SLOT VALUES (01,'12:30:00', '2021-03-01', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 06, 236481, '2021-02-21');
INSERT INTO SLOT VALUES (02,'12:30:00', '2021-03-01', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 17, 10011, '2021-02-21');
INSERT INTO SLOT VALUES (03,'12:30:00', '2021-03-01', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 18, 10012, '2021-02-21');
INSERT INTO SLOT VALUES (04,'12:30:00', '2021-03-01', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 19, 10013, '2021-02-21');
INSERT INTO SLOT VALUES (05,'12:30:00', '2021-03-01', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 20, 10014, '2021-02-21');
INSERT INTO SLOT VALUES (06,'12:30:00', '2021-03-01', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 21, 10015, '2021-02-21');
INSERT INTO SLOT VALUES (07,'12:30:00', '2021-03-01', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 22, 10016, '2021-02-21');
INSERT INTO SLOT VALUES (08,'12:30:00', '2021-03-01', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 23, 10017, '2021-02-21');
INSERT INTO SLOT VALUES (09,'12:30:00', '2021-03-01', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 24, 10018, '2021-02-21');

INSERT INTO SLOT VALUES (01,'12:30:00', '2021-03-03', 'Crossroads Hospital', NULL, NULL,  NULL, NULL, NULL, NULL);
INSERT INTO SLOT VALUES (02,'12:30:00', '2021-03-03', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 25, 10019, '2021-02-21' );
INSERT INTO SLOT VALUES (03,'12:30:00', '2021-03-03', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 26, 10020, '2021-02-21' );
INSERT INTO SLOT VALUES (04,'12:30:00', '2021-03-03', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 27, 10021, '2021-02-21' );
INSERT INTO SLOT VALUES (05,'12:30:00', '2021-03-03', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 28, 10022, '2021-02-21' );
INSERT INTO SLOT VALUES (06,'12:30:00', '2021-03-03', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 29, 10023, '2021-02-21' );
INSERT INTO SLOT VALUES (07,'12:30:00', '2021-03-03', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 30, 10024, '2021-02-21' );
INSERT INTO SLOT VALUES (08,'12:30:00', '2021-03-03', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 31, 10025, '2021-02-21' );
INSERT INTO SLOT VALUES (09,'12:30:00', '2021-03-03', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 32, 10026, '2021-02-21' );
INSERT INTO SLOT VALUES (10,'12:30:00', '2021-03-03', 'Crossroads Hospital', 165498, 'Pfizer-BioNTech', 02, 33, 10027, '2021-02-21' );

INSERT INTO SLOT VALUES (01,'12:30:00', '2021-04-03', 'Crossroads Hospital', NULL, NULL,  NULL, NULL, NULL, NULL);
INSERT INTO SLOT VALUES (02,'12:30:00', '2021-04-03', 'Crossroads Hospital', NULL, NULL,  NULL, NULL, NULL, NULL);
INSERT INTO SLOT VALUES (03,'12:30:00', '2021-04-03', 'Crossroads Hospital', 165498, 'Moderna',  01, 07, 10028, '2021-02-21');
INSERT INTO SLOT VALUES (04,'12:30:00', '2021-04-03', 'Crossroads Hospital', 165498, 'Moderna',  01, 08, 10029, '2021-02-21');
INSERT INTO SLOT VALUES (05,'12:30:00', '2021-04-03', 'Crossroads Hospital', 165498, 'Moderna',  01, 09, 10030, '2021-02-21');
INSERT INTO SLOT VALUES (06,'12:30:00', '2021-04-03', 'Crossroads Hospital', 165498, 'Moderna',  01, 10, 10031, '2021-02-21');
INSERT INTO SLOT VALUES (07,'12:30:00', '2021-04-03', 'Crossroads Hospital', 165498, 'Moderna',  01, 11, 10032, '2021-02-21');

INSERT INTO SLOT VALUES (01,'2021-03-20', '12:30:00', 'Jewish General',  165498, 'Pfizer-BioNTech', 02, 07, 712346, '2021-02-01');
INSERT INTO SLOT VALUES (02,'2021-03-20', '13:30:00', 'Jewish General',  NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO SLOT VALUES (03,'2021-03-20', '14:30:00', 'Jewish General',  165498, 'Moderna', 01, 12, 10033, '2021-02-21');
INSERT INTO SLOT VALUES (04,'2021-03-20', '15:30:00', 'Jewish General',  165498, 'Moderna', 01, 13, 10034, '2021-02-21');
INSERT INTO SLOT VALUES (05,'2021-03-20', '16:30:00', 'Jewish General',  165498, 'Moderna', 01, 14, 10035, '2021-02-21');
INSERT INTO SLOT VALUES (06,'2021-03-20', '16:30:00', 'Jewish General',  165498, 'Moderna', 01, 14, 10007, '2021-02-21');

INSERT INTO SLOT VALUES (01, '2021-01-16', '12:30:00','Ala Mhigo Clinic', 105460, 'Pfizer-BioNTech', 01, 01, 3452734, '2021-01-22');
INSERT INTO SLOT VALUES (02, '2021-01-16', '13:30:00','Ala Mhigo Clinic', 105460, 'Pfizer-BioNTech', 01, 02, 125463, '2021-01-23');
INSERT INTO SLOT VALUES (03, '2021-01-16', '14:30:00','Ala Mhigo Clinic', 105460, 'Pfizer-BioNTech', 01, 03, 235678, '2021-01-24');
INSERT INTO SLOT VALUES (04, '2021-01-16', '15:30:00','Ala Mhigo Clinic', 105460, 'Pfizer-BioNTech', 01, 04, 10000, '2021-01-24');
INSERT INTO SLOT VALUES (05, '2021-01-16', '16:30:00','Ala Mhigo Clinic', 105460, 'Pfizer-BioNTech', 01, 05, 10001, '2021-01-24');

INSERT INTO NURSEASSIGN (nurseliscennum,locname,vaccdate) VALUES
 (983651,'Jewish General','2021-02-06')
,(841591,'Jewish General','2021-07-28')
,(705136,'Jewish General','2021-08-12')
,(315460,'Jewish General','2021-01-27')
,(631529,'Ala Mhigo Clinic','2022-01-31')
,(618294,'Ala Mhigo Clinic','2022-04-01')
;