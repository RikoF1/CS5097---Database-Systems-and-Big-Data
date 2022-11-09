CREATE TABLE Branch(
	branch_id char(5),
	street varchar(255),
	city varchar(255),
	postcode varchar(7),
	phone_number1 int(10),
	phone_number2 int(10),
	phone_number3 int(10),
	manager_ID char(5),
	PRIMARY KEY (branch_id)
);
CREATE TABLE Staff(
	staff_id varchar(5),
	Fname varchar(30),
	Lname varchar(30),
	street varchar(255),
	postcode varchar(7),
	position varchar(15),
	salary float(8),
	supervisor varchar(5),
	branch_id varchar(5),
	PRIMARY KEY (staff_id)
);
CREATE TABLE PropertyForRent(
	branch_id varchar(5),
	property_id varchar(5),
	PRIMARY KEY (property_id)
);
CREATE TABLE Has(
	branch_id char(5) references Branch(branch_id),
	staff_id varchar(5) references Staff(staff_id),
	PRIMARY KEY (branch_id, staff_id)
);
