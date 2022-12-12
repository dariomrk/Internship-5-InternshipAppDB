-- Populate Cities (10 entries)
insert into Cities (Id, Name) values (1, 'Split');
insert into Cities (Id, Name) values (2, 'Zagreb');
insert into Cities (Id, Name) values (3, 'Yiyang');
insert into Cities (Id, Name) values (4, 'Calabaca');
insert into Cities (Id, Name) values (5, 'Tongjiaxi');
insert into Cities (Id, Name) values (6, 'Sorongan');
insert into Cities (Id, Name) values (7, 'Nechanice');
insert into Cities (Id, Name) values (8, 'Apopa');
insert into Cities (Id, Name) values (9, 'Jepara');
insert into Cities (Id, Name) values (10, 'Oss');

SELECT * FROM Cities;

-- Populate Members (4 entries)
insert into Members (Id,FirstName, LastName, Gender, PersonalIdNumber, DateOfBirth, ResidenceCityId) values (1,'Ante', 'Antic', 'Male', '87232951558', '1999-08-10', 1);
insert into Members (Id,FirstName, LastName, Gender, PersonalIdNumber, DateOfBirth, ResidenceCityId) values (2,'Mate', 'Matic', 'Male', '87295443558', '2006-03-11', 3);
insert into Members (Id,FirstName, LastName, Gender, PersonalIdNumber, DateOfBirth, ResidenceCityId) values (3,'Ana', 'Anic', 'Male', '87097951558', '2001-03-22', 2);
insert into Members (Id,FirstName, LastName, Gender, PersonalIdNumber, DateOfBirth, ResidenceCityId) values (4,'Klara', 'Klaric', 'Male', '87133341558', '2000-01-30', 1);

SELECT * FROM Members;

-- Populate Fields (4 entries)
insert into Fields (Id,ManagerId,Name) values (1,1,'Development');
insert into Fields (Id,Managerid,Name) values (2,2,'Design');
insert into Fields (Id,Managerid,Name) values (3,3,'Multimedia');
insert into Fields (Id,Managerid,Name) values (4,4,'Marketing');

SELECT * FROM Fields;

-- Populate Interns (20 entries)
insert into Interns (Id, FirstName, LastName, Gender, PersonalIdNumber, DateOfBirth, ResidenceCityId) values (1, 'Björn', 'Schimon', 'Female', '91906655002', '2005-10-03', 1);
insert into Interns (Id, FirstName, LastName, Gender, PersonalIdNumber, DateOfBirth, ResidenceCityId) values (2, 'Maéna', 'Horribine', 'Female', '38111571833', '2003-09-29', 1);
insert into Interns (Id, FirstName, LastName, Gender, PersonalIdNumber, DateOfBirth, ResidenceCityId) values (3, 'Maëline', 'Baiyle', 'Female', '14976039939', '2005-02-11', 1);
insert into Interns (Id, FirstName, LastName, Gender, PersonalIdNumber, DateOfBirth, ResidenceCityId) values (4, 'Océanne', 'Penkman', 'Male', '16625761489', '2006-07-23', 1);
insert into Interns (Id, FirstName, LastName, Gender, PersonalIdNumber, DateOfBirth, ResidenceCityId) values (5, 'Réservés', 'Minmagh', 'Female', '90604342836', '2000-10-15', 3);
insert into Interns (Id, FirstName, LastName, Gender, PersonalIdNumber, DateOfBirth, ResidenceCityId) values (6, 'Mélissandre', 'Cleminson', 'Male', '12737459214', '1999-10-31', 1);
insert into Interns (Id, FirstName, LastName, Gender, PersonalIdNumber, DateOfBirth, ResidenceCityId) values (7, 'Valérie', 'Hattiff', 'Female', '91148145933', '2005-04-11', 5);
insert into Interns (Id, FirstName, LastName, Gender, PersonalIdNumber, DateOfBirth, ResidenceCityId) values (8, 'Cécile', 'Burlingame', 'Female', '19633833688', '2005-04-22', 3);
insert into Interns (Id, FirstName, LastName, Gender, PersonalIdNumber, DateOfBirth, ResidenceCityId) values (9, 'Desirée', 'Philcox', 'Female', '69516098116', '1999-05-13', 1);
insert into Interns (Id, FirstName, LastName, Gender, PersonalIdNumber, DateOfBirth, ResidenceCityId) values (10, 'Cinéma', 'Greystoke', 'Female', '31838848032', '2004-04-13', 3);
insert into Interns (Id, FirstName, LastName, Gender, PersonalIdNumber, DateOfBirth, ResidenceCityId) values (11, 'Océane', 'Dafforne', 'Male', '72885828139', '2002-02-25', 3);
insert into Interns (Id, FirstName, LastName, Gender, PersonalIdNumber, DateOfBirth, ResidenceCityId) values (12, 'Anaëlle', 'Trudgeon', 'Male', '41872195242', '2004-11-10', 1);
insert into Interns (Id, FirstName, LastName, Gender, PersonalIdNumber, DateOfBirth, ResidenceCityId) values (13, 'Rébecca', 'Kedward', 'Male', '47442008970', '2005-08-21', 2);
insert into Interns (Id, FirstName, LastName, Gender, PersonalIdNumber, DateOfBirth, ResidenceCityId) values (14, 'Véronique', 'Arnowitz', 'Male', '97870910252', '2003-01-28', 3);
insert into Interns (Id, FirstName, LastName, Gender, PersonalIdNumber, DateOfBirth, ResidenceCityId) values (15, 'Illustrée', 'Ninnis', 'Female', '83564511037', '2004-11-10', 2);
insert into Interns (Id, FirstName, LastName, Gender, PersonalIdNumber, DateOfBirth, ResidenceCityId) values (16, 'Liè', 'Treend', 'Male', '73555872972', '2001-02-27', 1);
insert into Interns (Id, FirstName, LastName, Gender, PersonalIdNumber, DateOfBirth, ResidenceCityId) values (17, 'Börje', 'Pace', 'Female', '10077766768', '2000-02-07', 2);
insert into Interns (Id, FirstName, LastName, Gender, PersonalIdNumber, DateOfBirth, ResidenceCityId) values (18, 'Eliès', 'Leyes', 'Male', '88182613714', '2004-01-12', 2);
insert into Interns (Id, FirstName, LastName, Gender, PersonalIdNumber, DateOfBirth, ResidenceCityId) values (19, 'Médiamass', 'Paye', 'Female', '06822628921', '2002-06-08', 2);
insert into Interns (Id, FirstName, LastName, Gender, PersonalIdNumber, DateOfBirth, ResidenceCityId) values (20, 'Réjane', 'Ryan', 'Female', '16761070928', '2000-03-07', 1);
																											  
SELECT * FROM Interns;

-- Populate Internships
insert into Internships (Id, StartAt, EndAt, Phase, ManagerId) values (1, '2018-04-17T13:15:03Z', '2018-10-20T11:29:45Z', 'Past',1);
insert into Internships (Id, StartAt, EndAt, Phase, ManagerId) values (2, '2022-09-09T16:14:08Z', '2023-10-26T01:41:37Z', 'Ongoing',1);
insert into Internships (Id, StartAt, EndAt, Phase) values (3, '2023-11-17T20:21:50Z', '2024-07-14T15:03:13Z', 'Planned');

SELECT * FROM Internships;

-- Populate Assignments
insert into Assignments (Id, Title, Description, FieldId, InternshipId) values (1, 'Charlie', 'Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum.', 1, 2);
insert into Assignments (Id, Title, Description, FieldId, InternshipId) values (2, 'Juliett', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus.', 2, 2);
insert into Assignments (Id, Title, Description, FieldId, InternshipId) values (3, 'Mike', 'Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 3, 2);
insert into Assignments (Id, Title, Description, FieldId, InternshipId) values (4, 'Bravo', 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 4, 1);
insert into Assignments (Id, Title, Description, FieldId, InternshipId) values (5, 'Papa', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 1, 1);

SELECT * FROM Assignments;

-- Populate InternsAssignments

-- Populate InternsFieldsInternships


