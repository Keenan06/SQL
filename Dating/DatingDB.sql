CREATE TABLE profession(
	prof_id bigserial constraint prof_key PRIMARY KEY ,
	profession_title varchar(30)
);

CREATE TABLE zip(
	zip_code bigint constraint zip_key PRIMARY KEY,
	city varchar(20),
	state_name varchar(20)
);

CREATE TABLE status(
	status_id bigserial constraint status_key PRIMARY KEY,
	status_relat varchar(20)
);

CREATE TABLE my_contacts(
	contact_id bigserial constraint contact_key PRIMARY KEY,
	last_name varchar(50),
	first_name varchar(50),
	phone bigint,
	email varchar(50),
	gender character(1),
	birthday date,
	profession integer references profession(prof_id),
	zip integer references zip(zip_code),
	status integer references status(status_id)
);

CREATE TABLE interests(
	interest_id bigserial constraint interest_key PRIMARY KEY,
	interest varchar(30)
);

CREATE TABLE contact_interest(
	contact_id integer references my_contacts(contact_id),
	interest_id integer references interest(interest_id)
);

CREATE TABLE seeking(
	seeking_id bigserial constraint seeking_key PRIMARY KEY,
	seek varchar(10)
);

CREATE TABLE contact_seeking(
	contact_id integer references my_contacts(contact_id),
	seeking_id integer references seeking(seeking_id)
);

INSERT INTO profession(profession_title)
VALUES
	('Employeed'),
	('Unemployeed')
;

INSERT INTO zip(zip_code, city, state_name)
VALUES 
	(90210, 'Oregon', 'Georgia'),
	(77650, 'Atlanta','Virginia'),
	(62578,'Houston', 'Texas'),
	(11092,'Washington', 'D.C.'),
	(99917,'Michegan', 'Masecheusetts'),
	(09023,'Alabama', 'Boston')
;

INSERT INTO status(status_relat)
VALUES
	('Divorced'),
	('Single'),
	('Complicated')
;

INSERT INTO my_contacts(last_name, first_name, phone, email, gender, birthday, prof_id, zip_code,status_id)
VALUES
	('Pienaar','Keenan', 0822277608, 'pienaarkeenan@gmail.com', 'M', '2000-06-13', 2,1,2),
	('Kats','Kyle',0857235708, 'Kylekats@gmail.com','F','2000-06-26',1,2,1),
	('Carugo','Ambre',0715988608,'bouncebunny@gmail.com','F', '1980-07-13',2,3,3),
	('Pieters','Arielle', 0834177484,'vetpieters@gmail.com','F','1999-05-15',1,4,2),
	('Sourlis', 'Cairo',0895007000, 'caironotegypt@gmail.com','F','1998-04-14',2,5,1),
	('Curley', 'Kayla',0982866509, 'samanthakayla@gmail.com','F','1998-06-10',2,6,2)
;

INSERT INTO interests(interest)
VALUES
	('Nature'),
	('Gaming'),
	('Clubbing'),
	('Racing'),
	('Sailing'),
	('Alcohol')
;

INSERT INTO contact_interest
VALUES
	(1,6),
	(2,5),
	(3,4),
	(4,3),
	(5,2),
	(6,1)
;

INSERT INTO seeking(seek)
VALUES
	('Marriage'),
	('Nothing serious'),
	('Banter'),
	('A friend')
;

INSERT INTO contact_seeking
VALUES
	(1,3),
	(2,2),
	(3,4),
	(4,1),
	(5,1),
	(6,2)
;

SELECT first_name, last_name, phone, email, gender, birthday, profession.profession_title, zip_code.city, zip_code.state_name, status.status_relat, interests.interest, seeking.seek
FROM my_contacts
LEFT JOIN profession
ON my_contacts.profession = profession.prof_id
LEFT JOIN zip
ON my_contacts.zip = zip.zip_code
LEFT JOIN status
ON my_contacts.status= status.status_id
LEFT JOIN contact_seeking
ON my_contacts.contact_id=contact_seeking.contact_id
LEFT JOIN seeking
ON contact_seeking.seeking_id=contact_seeking.seeking_id
LEFT JOIN contact_interest
ON my_contacts.contact_id = contact_interest.contact_id
LEFT JOIN interests
ON contact_interest.interest_id=interests.interest_id

