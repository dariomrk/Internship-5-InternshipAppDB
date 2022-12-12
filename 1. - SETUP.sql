-- Entity Cities
CREATE TABLE Cities (
	Id SERIAL PRIMARY KEY,
	Name VARCHAR(30) NOT NULL
);

-- Entity Interns
CREATE TYPE Gender AS ENUM ('Female', 'Male');
CREATE TABLE Interns (
	Id SERIAL PRIMARY KEY,
	FirstName VARCHAR(30) NOT NULL,
	LastName VARCHAR(30) NOT NULL,
	Gender Gender NOT NULL,
	-- Personal Id number length must be equal to 11.
	PersonalIdNumber VARCHAR(11) NOT NULL CHECK(
		LENGTH(PersonalIdNumber) = 11
	),
	-- Age must be a value between 16 and 24.
	DateOfBirth DATE NOT NULL CHECK (
		DATE_PART('year' ,AGE(NOW(), DateOfBirth)) >= 16 AND
		DATE_PART('year' ,AGE(NOW(), DateOfBirth)) <= 24
	),
	ResidenceCityId INT REFERENCES Cities(Id) NOT NULL
);

-- Entity Members
CREATE TABLE Members (
	Id SERIAL PRIMARY KEY,
	FirstName VARCHAR(30) NOT NULL,
	LastName VARCHAR(30) NOT NULL,
	Gender Gender NOT NULL,
	-- Personal Id number length must be equal to 11.
	PersonalIdNumber VARCHAR(11) NOT NULL CHECK(
		LENGTH(PersonalIdNumber) = 11
	),
	-- Age must be a value between 16 and 24.
	DateOfBirth DATE NOT NULL CHECK (
		DATE_PART('year' ,AGE(NOW(), DateOfBirth)) >= 16 AND
		DATE_PART('year' ,AGE(NOW(), DateOfBirth)) <= 24
	),
	ResidenceCityId INT REFERENCES Cities(Id) NOT NULL
);

-- Entity Internships
CREATE TYPE InternshipPhase AS ENUM ('Ongoing', 'Past', 'Planned');
CREATE TABLE Internships (
	Id SERIAL PRIMARY KEY,
	StartAt TIMESTAMP,
	EndAt TIMESTAMP,
	Phase InternshipPhase NOT NULL,
	ManagerId INT REFERENCES Members(Id)
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
	-- Assignment does not have to be used in a internship, hence why it is nullable.
	InterhsipId INT REFERENCES Internships(Id)
);

-- Entity InternsAssignments
CREATE TABLE InternsAssignments (
	InternId INT REFERENCES Interns(Id),
	AssignmentId INT REFERENCES Assignments(Id),
	PRIMARY KEY (InternId, AssignmentId),
	Reviewer INT REFERENCES Members(Id),
	Grade INT NOT NULL CHECK (
		Grade >= 1 AND Grade <= 5
	)
);

-- Entity InternsFieldsInternships
CREATE TYPE InternStatus AS ENUM ('Kicked', 'Active', 'Done');
CREATE TABLE InternsFieldsInternships (
	InternId INT NOT NULL,
	FieldId INT NOT NULL,
	InternshipId INT NOT NULL,
	PRIMARY KEY(InternId, FieldId, InternshipId),
	Status InternStatus NOT NULL
)
