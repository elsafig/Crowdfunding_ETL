# Crowdfunding_ETL<br><br>

# Requirements<br>
# *COMPLETE* A Category DataFrame is Created (15 points)<br>
The DataFrame contains a "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories (5 points)<br>
The DataFrame has a "category" column that contains only the category titles (5 points)<br>
The category DataFrame is exported as category.csv (5 points)<br>
# *COMPLETE* A Subcategory DataFrame is Created (15 points)<br>
The DataFrame contains a "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories (5 points)<br>
The DataFrame contains a "subcategory" column that contains only the subcategory titles (5 points)<br>
The subcategory DataFrame is exported as category.csv (5 points)<br><br>
# *COMPLETE* A Campaign DataFrame is Created (30 points)<br>
The DataFrame has the following columns: (25 points)<br>
A "cf_id" column<br>
A "contact_id" column<br>
A "company_name" column<br>
A "description" column<br>
A "goal" column that is a float data type<br>
A "pledged" column that is a float data type<br>
An "outcome" column<br>
A "backers_count" column<br>
A "country" column<br>
A "currency" column<br>
A "launch_date" with the time formatted as "YYYY-MM-DD"<br>
An "end_date" with the time formatted as "YYYY-MM-DD"<br>
A "category_id" column that contains the unique identification numbers matching those in the "category_id" column of the category DataFrame<br>
A "subcategory_id" column that contains the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame<br>
The campaign DataFrame is exported as campaign.csv (5 points)<br><br>
# A Contacts DataFrame is Created (15 points)<br>
The DataFrame has the following columns: (10 points)<br>
A "contact_id" column<br>
A "first_name" column<br>
A "last_name" column<br>
An "email" column<br>
The contacts DataFrame is exported as contacts.csv (5 points)<br><br>
# A Crowdfunding Database is Created (25 points)<br>
A database schema labeled, crowdfunding_db_schema.sql is created (5 points)<br>
A crowdfunding_db is created using the crowdfunding_db_schema.sql file (5 points)<br>
The database has the appropriate primary and foreign keys and relationships (5 points)<br>
Each CSV file is imported into the appropriate table without errors (5 points)<br>
The data from each table is displayed using a SELECT * statement (5 points)<br>
