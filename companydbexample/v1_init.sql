use companydbexample;

CREATE TABLE COMPANY(
	company_id INT not null,
    name varchar(255),
    website varchar(255),
    vatno varchar(32),
    type varchar(255) not null,
    lastmodified timestamp not null,
    datecreated date not null,
    PRIMARY KEY(company_id)
);
CREATE TABLE TELEPHONE(
	telephone_id INT not null,
    telprefix varchar(12) not null,
	telphoneno varchar(12) not null,
    telext varchar(12) not null,
    teltype varchar(12) not null,
    PRIMARY KEY(telephone_id)
);

CREATE TABLE COMPANY_TELEPHONE(
	type varchar(32) not null,
    company_id INT,
    telephone_id INT,
    FOREIGN KEY(company_id) references COMPANY(company_id),
    FOREIGN KEY(telephone_id) references TELEPHONE(telephone_id)
);
Create table Location(
	location_id INT,
    address varchar(255) not null,
    city varchar(32) not null,
    postcode varchar(32) not null,
    country varchar(32) not null,
    PRIMARY KEY(location_id)
);
CREATE TABLE COMPANY_LOCATION(
	type varchar(32) not null,
    company_id INT,
    location_id INT,
    Foreign key(company_id) references Company(company_id),
    Foreign key(location_id) references location(location_id)
);
Create Table email(
	email_id INT,
    address varchar(255) not null,
    Primary key(email_id)
);
CREATE TABLE Company_Email(
	company_id INT,
    email_id INT,
    Foreign key(company_id) references Company(company_id),
    foreign key(email_id) references Email(email_id)
);


CREATE TABLE CONTACT(
	contact_id INT not null,
    title varchar(12),
    firstname varchar(32) not null,
    lastname varchar(32) not null,
    lastmodified timestamp,
    datecreated date not null,
    PRIMARY KEY(contact_id)
);
create table company_contact(
	company_id INT,
    contact_id INT,
    role varchar(32) not null,
    Foreign key(company_id) references Company(company_id),
    foreign key(contact_id) references Contact(contact_id)
);
create table contact_location(
	contact_id INT,
    location_id INT,
    type varchar(32) not null,
    foreign key(contact_id) references Contact(contact_id),
    foreign key(location_id) references Location(location_id)
);
create table contact_telephone(
	contact_id INT,
    telephone_id INT,
    type varchar(32) not null,
    foreign key(contact_id) references Contact(contact_id),
    foreign key(telephone_id) references Telephone(telephone_id)
);
create table contact_email(
	contact_id INT,
    email_id INT,
    foreign key(contact_id) references Contact(contact_id),
    foreign key(email_id) references email(email_id)
);

CREATE TABLE INSTITUTION(
	institution_id INT not null,
    name varchar(255) not null,
    website varchar(255),
    roleno varchar(32),
    type varchar(255) not null,
    lastmodified timestamp,
    datecreated date not null,
    PRIMARY KEY(institution_id)
);
create table INSTITUTION_contact(
	institution_id INT,
    contact_id INT,
    role varchar(32) not null,
    foreign key(institution_id) references institution(institution_id),
    foreign key(contact_id) references Contact(contact_id)
);
create table institution_location(
	institution_id INT,
    location_id INT,
    type varchar(32) not null,
    foreign key(institution_id) references institution(institution_id),
    foreign key(location_id) references location(location_id)
);
create table institution_telephone(
	institution_id INT,
    telephone_id INT,
    type varchar(32) not null,
    foreign key(institution_id) references institution(institution_id),
    foreign key(telephone_id) references telephone(telephone_id)
);
create table institution_email(
	institution_id INT,
    email_id INT,
    foreign key(institution_id) references institution(institution_id),
    foreign key(email_id) references email(email_id)
);








