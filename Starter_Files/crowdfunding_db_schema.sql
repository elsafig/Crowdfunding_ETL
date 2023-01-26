--UNCOMMENT IF RERUNNING

--DROP TABLE campaign;
--DROP TABLE contacts;
--DROP TABLE subcategory;
--DROP TABLE category;
--DROP DATABASE crowdfunding_db;

--CREATE DATABASE crowdfunding_db;

CREATE TABLE category (
    category_id varchar NOT NULL,
    category varchar,
    PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
    subcategory_id varchar NOT NULL,
    subcategory varchar,
    PRIMARY KEY (subcategory_id)
);

CREATE TABLE contacts (
    contact_id int NOT NULL,
    first_name varchar NOT NULL,
    last_name varchar NOT NULL,
    email varchar,
    PRIMARY KEY(contact_id)
);

CREATE TABLE campaign (
    cf_id int NOT NULL,
    contact_id int NOT NULL,
    company_name varchar,
    description varchar,
    goal float,
    pledged float,
    outcome varchar,
    backers_count int,
    country varchar,
    currency varchar,
    launch_date date,
    end_date date,
    category_id varchar NOT NULL,
    subcategory_id varchar NOT NULL,
    PRIMARY KEY(cf_id),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

COPY category(category_id,category)
FROM 'C:/Users/elsai/Crowdfunding_ETL/Starter_Files/Resources/category.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM category;

COPY subcategory(subcategory_id,subcategory)
FROM 'C:/Users/elsai/Crowdfunding_ETL/Starter_Files/Resources/subcategory.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM subcategory;

COPY contacts(contact_id,first_name,last_name,email)
FROM 'C:/Users/elsai/Crowdfunding_ETL/Starter_Files/Resources/contacts.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM contacts;

COPY campaign(cf_id,contact_id,company_name,description,goal,pledged,outcome,backers_count,country,currency,launch_date,end_date,category_id,subcategory_id)
FROM 'C:/Users/elsai/Crowdfunding_ETL/Starter_Files/Resources/campaign.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM campaign;