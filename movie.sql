use supply;
CREATE TABLE movie_info (
    title VARCHAR(255),
    director VARCHAR(255),
    release_year INT,
    budget BIGINT,
    in_theaters BOOLEAN
);
CREATE TABLE bank_details (
    account_holder VARCHAR(255),
    bank_name VARCHAR(255),
    account_number BIGINT,
    balance BIGINT,
    is_active BOOLEAN
);
ALTER TABLE movie_info ADD COLUMN genre VARCHAR(255);
ALTER TABLE movie_info ADD COLUMN rating VARCHAR(50);
ALTER TABLE movie_info ADD COLUMN  duration INT;
ALTER TABLE movie_info ADD COLUMN language VARCHAR(255);
ALTER TABLE movie_info ADD COLUMN  country VARCHAR(255);
ALTER TABLE bank_details ADD COLUMN branch_code  VARCHAR(50);
ALTER TABLE bank_details ADD COLUMN ifsc_code VARCHAR(50);
ALTER TABLE bank_details ADD COLUMN  branch_address VARCHAR(255);
ALTER TABLE bank_details ADD COLUMN  account_type VARCHAR(255);
ALTER TABLE bank_details ADD COLUMN phone_number BIGINT;
ALTER TABLE movie_info RENAME COLUMN genre TO movie_genre;
ALTER TABLE movie_info RENAME COLUMN rating TO movie_rating;
ALTER TABLE movie_info RENAME COLUMN duration TO movie_duration;
ALTER TABLE movie_info RENAME COLUMN language TO movie_language;
ALTER TABLE movie_info RENAME COLUMN country TO movie_country;
ALTER TABLE bank_details RENAME COLUMN branch_code TO bank_branch_code;
ALTER TABLE bank_details RENAME COLUMN ifsc_code TO bank_ifsc_code;
 ALTER TABLE bank_details RENAME COLUMN branch_address TO bank_branch_address;
ALTER TABLE bank_details RENAME COLUMN account_type TO bank_account_type;
ALTER TABLE bank_details RENAME COLUMN phone_number TO contact_number;
INSERT INTO movie_info  VALUES('Inception', 'Christopher Nolan', 2010, 160000000, TRUE, 'Sci-Fi', 'PG-13', 148, 'English', 'USA');
INSERT INTO movie_info  VALUES('Titanic', 'James Cameron', 1997, 200000000, FALSE, 'Romance', 'PG-13', 195, 'English', 'USA');
INSERT INTO movie_info  VALUES('The Dark Knight', 'Christopher Nolan', 2008, 185000000, FALSE, 'Action', 'PG-13', 152, 'English', 'USA');
INSERT INTO movie_info  VALUES('Avatar', 'James Cameron', 2009, 237000000, FALSE, 'Sci-Fi', 'PG-13', 162, 'English', 'USA');
INSERT INTO movie_info  VALUES('Pulp Fiction', 'Quentin Tarantino', 1994, 8000000, FALSE, 'Crime', 'R', 154, 'English', 'USA');
INSERT INTO movie_info  VALUES('The Godfather', 'Francis Ford Coppola', 1972, 6000000, FALSE, 'Crime', 'R', 175, 'English', 'USA');
INSERT INTO movie_info  VALUES('The Shawshank Redemption', 'Frank Darabont', 1994, 25000000, FALSE, 'Drama', 'R', 142, 'English', 'USA');
INSERT INTO movie_info  VALUES('Gladiator', 'Ridley Scott', 2000, 103000000, FALSE, 'Action', 'R', 155, 'English', 'USA');
INSERT INTO movie_info  VALUES('Schindler' ,'Steven Spielberg', 1993, 22000000, FALSE, 'Drama', 'R', 195, 'English', 'USA');
INSERT INTO movie_info  VALUES('The Matrix', 'The Wachowskis', 1999, 63000000, FALSE, 'Sci-Fi', 'R', 136, 'English', 'USA');
INSERT INTO bank_details VALUES ('John Doe', 'Bank of America', 1234567890, 50000, TRUE, 'BOFA123', 'BOFA0001', '123 Main St, New York, NY', 'Savings', 1234567890);
INSERT INTO bank_details VALUES ('Jane Smith', 'Wells Fargo', 2345678901, 75000, TRUE, 'WELLS123', 'WELLS0001', '456 Elm St, San Francisco, CA', 'Checking', 2345678901);
INSERT INTO bank_details VALUES ('Alice Johnson', 'Chase', 3456789012, 60000, TRUE, 'CHASE123', 'CHASE0001', '789 Oak St, Chicago, IL', 'Savings', 3456789012);
INSERT INTO bank_details VALUES ('Bob Brown', 'Citibank', 4567890123, 85000, TRUE, 'CITI123', 'CITI0001', '101 Pine St, Boston, MA', 'Checking', 4567890123);
INSERT INTO bank_details VALUES ('Charlie Davis', 'Bank of America', 5678901234, 100000, FALSE, 'BOFA123', 'BOFA0002', '202 Maple St, Los Angeles, CA', 'Savings', 5678901234);
INSERT INTO bank_details VALUES ('David Wilson', 'Wells Fargo', 6789012345, 45000, TRUE, 'WELLS123', 'WELLS0002', '303 Birch St, Houston, TX', 'Checking', 6789012345);
INSERT INTO bank_details VALUES ('Eve Lewis', 'Chase', 7890123456, 90000, TRUE, 'CHASE123', 'CHASE0002', '404 Cedar St, Seattle, WA', 'Savings', 7890123456);
INSERT INTO bank_details VALUES ('Frank Clark', 'Citibank', 8901234567, 70000, FALSE, 'CITI123', 'CITI0002', '505 Walnut St, Miami, FL', 'Checking', 8901234567);
INSERT INTO bank_details VALUES ('Grace Hall', 'Bank of America', 9012345678, 55000, TRUE, 'BOFA123', 'BOFA0003', '606 Chestnut St, Denver, CO', 'Savings', 9012345678);
INSERT INTO bank_details VALUES ('Hank Green', 'Wells Fargo', 9123456789, 65000, TRUE, 'WELLS123', 'WELLS0003', '707 Willow St, Atlanta, GA', 'Checking', 9123456789);
UPDATE movie_info SET budget = 1650000000 WHERE title = 'Inception';
UPDATE movie_info SET release_year = 1998 WHERE title = 'Titanic';
UPDATE movie_info SET in_theaters = TRUE WHERE title = 'The Dark Knight';
UPDATE movie_info SET movie_duration = 160 WHERE title = 'Avatar';
UPDATE movie_info SET movie_rating = 'R' WHERE title = 'Pulp Fiction';
UPDATE movie_info SET movie_language = 'Italian' WHERE title = 'The Godfather';
UPDATE movie_info SET movie_country = 'UK' WHERE title = 'The Shawshank Redemption';
UPDATE movie_info SET director = 'Sir Ridley Scott' WHERE title = 'Gladiator';
UPDATE movie_info SET movie_genre = 'Historical Drama' WHERE title = 'Schindler\'s List';
UPDATE movie_info SET title = 'The Matrix Reloaded' WHERE title = 'The Matrix';
UPDATE bank_details SET balance = 55000 WHERE account_holder = 'John Doe';
UPDATE bank_details SET bank_name = 'Chase' WHERE account_holder = 'Jane Smith';
UPDATE bank_details SET is_active = FALSE WHERE account_holder = 'Alice Johnson';
UPDATE bank_details SET account_number = 1234567891 WHERE account_holder = 'Bob Brown';
UPDATE bank_details SET bank_branch_code = 'BOFA124' WHERE account_holder = 'Charlie Davis';
UPDATE bank_details SET bank_ifsc_code = 'WELLS0003' WHERE account_holder = 'David Wilson';
UPDATE bank_details SET bank_branch_address = '404 Cedar St, Seattle, WA' WHERE account_holder = 'Eve Lewis';
UPDATE bank_details SET bank_account_type = 'Savings' WHERE account_holder = 'Frank Clark';
UPDATE bank_details SET contact_number = 8901234567 WHERE account_holder = 'Grace Hall';
UPDATE bank_details SET bank_branch_code = 'WELLS0004' WHERE account_holder = 'Hank Green';



