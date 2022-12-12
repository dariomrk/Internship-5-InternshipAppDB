-- Entity Cities
CREATE TABLE Cities (
	Id SERIAL PRIMARY KEY,
	Name VARCHAR(30) NOT NULL
);

-- Entity People
CREATE TABLE People (
	Id SERIAL PRIMARY KEY,
	FirstName VARCHAR(30) NOT NULL,
	LastName VARCHAR(30) NOT NULL,
	PersonalIdNumber CHAR(11) NOT NULL,
	DateOfBirth DATE NOT NULL,
	ResidenceCityId INT REFERENCES Cities(Id) NOT NULL
);

-- Entity Members
CREATE TABLE Members (
	Id SERIAL PRIMARY KEY,
	PersonId INT REFERENCES People(Id) NOT NULL
);

-- Entity Internships
CREATE TYPE InternshipPhase AS ENUM ('Ongoing', 'Past', 'Planned'); -- Fixed number set of values
CREATE TABLE Internships (
	Id SERIAL PRIMARY KEY,
	StartAt TIMESTAMP,
	EndAt TIMESTAMP,
	Phase InternshipPhase NOT NULL,
	ManagerId INT REFERENCES Members(Id)
);

-- Entity Interns
CREATE TABLE Interns (
	Id SERIAL PRIMARY KEY,
	PersonId INT REFERENCES People(Id),
	InternshipId INT REFERENCES Internships(Id)
);

-- Entity Fields
CREATE TABLE Fields (
	Id SERIAL PRIMARY KEY,
	NAME VARCHAR(30) NOT NULL,
	ManagerId INT REFERENCES Members(Id)
);

-- Entity Assignments
CREATE TABLE Assignments (
	Id SERIAL PRIMARY KEY,
	Title VARCHAR(30) NOT NULL,
	Description VARCHAR(3000),
	FieldId INT REFERENCES Fields(Id) NOT NULL,
	InterhsipId INT REFERENCES Internships(Id) -- Assignment can be for future use (no existing Internships.Id)
);

-- Entity InternsAssignments
CREATE TABLE InternsAssignments (
	InternId INT REFERENCES Interns(Id),
	AssignmentId INT REFERENCES Assignments(Id),
	PRIMARY KEY (InternId, AssignmentId),
	Reviewer INT REFERENCES Members(Id),
	Grade INT NOT NULL
);

-- Entity InternsFields
CREATE TYPE InternStatus AS ENUM ('Intern', 'Kicked', 'InternshipDone'); -- Fixed set of values
CREATE TABLE InternsFields (
	InternId INT REFERENCES Interns(Id),
	FieldId INT REFERENCES Fields(Id),
	Status InternStatus NOT NULL,
	InternshipId INT REFERENCES Internships(Id) NOT NULL
);

-- Entity InternshipsInterns
CREATE TABLE InternshipsInterns (
	InternId INT REFERENCES Interns(Id),
	InternshipId INT REFERENCES Internships(Id),
	PRIMARY KEY (InternId,InternshipId)
);
