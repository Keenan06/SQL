CREATE TABLE profession(
	prof_id bigserial constraint prof_key PRIMARY KEY ,
	profession varchar(30)
);

CREATE TABLE zip_code(
	zip_code bigint constraint zip_key PRIMARY KEY,
	city varchar(20),
	state_name varchar(20)
);

CREATE TABLE status(
	status_id bigserial constraint status_key PRIMARY KEY,
	status varchar(20)
);

CREATE TABLE my_contacts(
	contact_id bigserial constraint contact_key PRIMARY KEY,
	last_name varchar(50),
	first_name varchar(50),
	phone bigint,
	email varchar(50),
	gender character(1),
	birthday date,
	prof_id integer references profession(prof_id),
	zip_code integer references zip_code(zip_code),
	status_id integer references status(status_id)
);

CREATE TABLE interests(
	interest_id bigserial constraint interest_key PRIMARY KEY,
	interest varchar(30)
);

CREATE TABLE contact_interest(
	contact_id integer references my_contacts(contact_id),
	interest_id integer references interests(interest_id)
);

CREATE TABLE seeking(
	seeking_id bigserial constraint seeking_key PRIMARY KEY,
	seeking varchar(10)
);

CREATE TABLE contact_seeking(
	contact_id integer references my_contacts(contact_id),
	seeking_id integer references seeking(seeking_id)
);

