create table Students(
	Name varchar(255),
	Code varchar(20) primary key,
	Birthday date
);
create table Classrooms(
	Name varchar(255),
	Code varchar(20) primary key,
	Room int
);
create table Grades(
	Grade int,
	Result varchar(20),
	ID int primary key
);
create table Subjects(
	Name varchar(255),
	ID int primary key
);
create table StudentSubjects(
	StudentCode varchar(20) foreign key references Students(Code),
	SubjectID int foreign key references Subjects(ID)
);