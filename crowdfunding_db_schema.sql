CREATE TABLE contacts
(
	contact_id int PRIMARY KEY,
	first_name varchar(20),
	last_name varchar(20),
	email varchar(100)
);

CREATE TABLE category
(
	category_id varchar(4) PRIMARY KEY,
	category varchar(20)
);

CREATE TABLE subcategory
(
	subcategory_id varchar(10) PRIMARY KEY,
	subcategory varchar(20)
);

CREATE TABLE campaign
(
    cf_id int,
    contact_id int,
    company_name varchar(40),
	description varchar(100),
	goal int,
	pledged int,
	backers_count int, 
	country varchar(2),
	currency varchar(3),
	launch_date date,
	end_date date,
	category_id varchar(4),
	subcategory_id varchar(10),
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);

ALTER TABLE campaign
ALTER COLUMN goal TYPE FLOAT,
ALTER COLUMN pledged TYPE FLOAT;
