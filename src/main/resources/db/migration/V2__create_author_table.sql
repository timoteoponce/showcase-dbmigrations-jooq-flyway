-- V2__create_author_table.sql
CREATE SEQUENCE BOOKSTORE.s_author_id START WITH 1;

CREATE TABLE BOOKSTORE.author (
  id INT NOT NULL,
  first_name VARCHAR(50),
  last_name VARCHAR(50) NOT NULL,
  date_of_birth DATE,
  year_of_birth INT,
  address VARCHAR(50),

  CONSTRAINT pk_author PRIMARY KEY (ID)
);