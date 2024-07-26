use xworkz;
CREATE TABLE movie_info (
    title VARCHAR(255),
    director VARCHAR(255),
    release_year INT,
    budget BIGINT,
    is_active BOOLEAN
);
CREATE TABLE bank_details (
    account_number BIGINT,
    account_holder VARCHAR(255),
    bank_name VARCHAR(255),
    balance INT,
    is_active BOOLEAN
);
ALTER TABLE movie_info
ADD COLUMN genre VARCHAR(255),
ADD COLUMN duration INT,
ADD COLUMN rating FLOAT,
ADD COLUMN language VARCHAR(255),
ADD COLUMN country VARCHAR(255);
ALTER TABLE bank_details
ADD COLUMN branch_code VARCHAR(255),
ADD COLUMN account_type VARCHAR(255),
ADD COLUMN interest_rate FLOAT,
ADD COLUMN opened_date DATE,
ADD COLUMN phone_number VARCHAR(255);
ALTER TABLE movie_info
RENAME COLUMN title TO movie_title,
RENAME COLUMN director TO movie_director,
RENAME COLUMN release_year TO release_year,
RENAME COLUMN budget TO production_budget,
RENAME COLUMN is_active TO is_currently_active;
ALTER TABLE bank_details
RENAME COLUMN account_number TO acct_number,
RENAME COLUMN account_holder TO acct_holder,
RENAME COLUMN bank_name TO bank,
RENAME COLUMN balance TO acct_balance,
RENAME COLUMN is_active TO is_active_account;
INSERT INTO movie_info (movie_title, movie_director, release_year, production_budget, is_currently_active, genre, duration, rating, language, country)
VALUES 
('Inception', 'Christopher Nolan', 2010, 160000000, TRUE, 'Sci-Fi', 148, 8.8, 'English', 'USA'),
('The Dark Knight', 'Christopher Nolan', 2008, 185000000, TRUE, 'Action', 152, 9.0, 'English', 'USA'),
('Interstellar', 'Christopher Nolan', 2014, 165000000, TRUE, 'Sci-Fi', 169, 8.6, 'English', 'USA'),
('Dunkirk', 'Christopher Nolan', 2017, 100000000, TRUE, 'War', 106, 7.9, 'English', 'UK'),
('Memento', 'Christopher Nolan', 2000, 9000000, TRUE, 'Thriller', 113, 8.4, 'English', 'USA'),
('Tenet', 'Christopher Nolan', 2020, 205000000, TRUE, 'Sci-Fi', 150, 7.5, 'English', 'USA'),
('The Prestige', 'Christopher Nolan', 2006, 40000000, TRUE, 'Drama', 130, 8.5, 'English', 'USA'),
('Batman Begins', 'Christopher Nolan', 2005, 150000000, TRUE, 'Action', 140, 8.2, 'English', 'USA'),
('Insomnia', 'Christopher Nolan', 2002, 46000000, TRUE, 'Thriller', 118, 7.2, 'English', 'USA'),
('Following', 'Christopher Nolan', 1998, 6000, TRUE, 'Thriller', 69, 7.5, 'English', 'UK');
INSERT INTO bank_details (acct_number, acct_holder, bank, acct_balance, is_active_account, branch_code, account_type, interest_rate, opened_date, phone_number)
VALUES 
(1234567890123456, 'John Doe', 'Bank of America', 10000, TRUE, '001', 'Checking', 0.01, '2015-03-15', '123-456-7890'),
(2345678901234567, 'Jane Doe', 'Chase Bank', 20000, TRUE, '002', 'Savings', 0.02, '2016-07-22', '234-567-8901'),
(3456789012345678, 'Jim Beam', 'Wells Fargo', 15000, TRUE, '003', 'Checking', 0.01, '2017-09-10', '345-678-9012'),
(4567890123456789, 'Jack Daniels', 'Citi Bank', 5000, TRUE, '004', 'Checking', 0.01, '2018-01-02', '456-789-0123'),
(5678901234567890, 'Johnny Walker', 'US Bank', 30000, TRUE, '005', 'Savings', 0.02, '2019-05-13', '567-890-1234'),
(6789012345678901, 'Jim Smith', 'PNC Bank', 12000, TRUE, '006', 'Checking', 0.01, '2020-11-19', '678-901-2345'),
(7890123456789012, 'Jessica Jones', 'TD Bank', 25000, TRUE, '007', 'Savings', 0.02, '2021-03-03', '789-012-3456'),
(8901234567890123, 'Jennifer Lopez', 'Capital One', 18000, TRUE, '008', 'Checking', 0.01, '2022-06-25', '890-123-4567'),
(9012345678901234, 'Jeremy Clarkson', 'HSBC', 22000, TRUE, '009', 'Savings', 0.02, '2023-02-14', '901-234-5678'),
(1234567890123450, 'James May', 'Ally Bank', 17000, TRUE, '010', 'Checking', 0.01, '2024-07-01', '012-345-6789');
UPDATE movie_info SET rating = 8.9 WHERE movie_title = 'Inception';
UPDATE movie_info SET duration = 155 WHERE movie_title = 'The Dark Knight';
UPDATE movie_info SET country = 'UK' WHERE movie_title = 'Dunkirk';
UPDATE movie_info SET language = 'French' WHERE movie_title = 'Memento';
UPDATE movie_info SET is_currently_active = FALSE WHERE movie_title = 'Tenet';
UPDATE movie_info SET production_budget = 45000000 WHERE movie_title = 'The Prestige';
UPDATE movie_info SET genre = 'Action/Thriller'WHERE movie_title = 'Batman Begins';
UPDATE movie_info SET release_year = 2003 WHERE movie_title = 'Insomnia';
UPDATE movie_info SET movie_director = 'Quentin Tarantino' WHERE movie_title = 'Following';
UPDATE movie_info SET rating = 9.0 WHERE movie_title = 'Interstellar';
UPDATE bank_details SET acct_balance = 11000 WHERE acct_holder = 'John Doe';
UPDATE bank_details SET account_type = 'Checking'WHERE acct_holder = 'Jane Doe';
UPDATE bank_details SET interest_rate = 0.03 WHERE acct_holder = 'Jim Beam';
UPDATE bank_details SET branch_code = '010'WHERE acct_holder = 'Jack Daniels';
UPDATE bank_details SET opened_date = '2020-05-13'WHERE acct_holder = 'Johnny Walker';
UPDATE bank_details SET phone_number = '678-901-2346'WHERE acct_holder = 'Jim Smith';
UPDATE bank_details SET acct_balance = 26000 WHERE acct_holder = 'Jessica Jones';
UPDATE bank_details SET bank = 'Wells Fargo'WHERE acct_holder = 'Jennifer Lopez';
UPDATE bank_details SET is_active_account = FALSE WHERE acct_holder = 'Jeremy Clarkson';
UPDATE bank_details SET acct_balance = 18000 WHERE acct_holder = 'James May';
DELETE FROM movie_info WHERE movie_title = 'Following';
DELETE FROM movie_info WHERE movie_title = 'Dunkirk';
DELETE FROM movie_info WHERE movie_title = 'Insomnia';
DELETE FROM bank_details WHERE acct_holder = 'Jack Daniels';
DELETE FROM bank_details WHERE acct_holder = 'Jeremy Clarkson';
DELETE FROM bank_details WHERE acct_holder = 'James May';





