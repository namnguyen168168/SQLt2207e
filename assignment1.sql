create table Classrooms(
	Name varchar(255),
	Code varchar(20) primary key,
	Room varchar(20)
);
create table Subjects(
	Name varchar(255),
	ID varchar(20) primary key
);
create table Students(
	Name varchar(255),
	Code varchar(20) primary key,
	Birthday date,
	ClassCode varchar(20) foreign key references Classrooms(Code)
);
create table Results(
	Mark int,
	ID int primary key,
	Result varchar(50),
	StudentCode varchar(20) foreign key references Students(Code),
	SubjectID varchar(20) foreign key references Subjects(ID)
);
create table StudentSubjects(
	StudentCode varchar(20) foreign key references Students(Code),
	SubjectID varchar(20) foreign key references Subjects(ID)
);