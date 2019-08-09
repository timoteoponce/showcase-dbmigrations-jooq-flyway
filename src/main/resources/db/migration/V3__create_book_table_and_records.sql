-- V3__create_book_table_and_records.sql
CREATE TABLE BOOKSTORE.book (
  id INT NOT NULL,
  author_id INT NOT NULL,
  title VARCHAR(400) NOT NULL,

  CONSTRAINT pk_book PRIMARY KEY (id),
  CONSTRAINT fk_book_author_id FOREIGN KEY (author_id) REFERENCES BOOKSTORE.author(id)
);


INSERT INTO BOOKSTORE.author VALUES (next value for BOOKSTORE.s_author_id, 'George', 'Orwell', '1903-06-25', 1903, null);
INSERT INTO BOOKSTORE.author VALUES (next value for BOOKSTORE.s_author_id, 'Paulo', 'Coelho', '1947-08-24', 1947, null);

INSERT INTO BOOKSTORE.book VALUES (1, 1, '1984');
INSERT INTO BOOKSTORE.book VALUES (2, 1, 'Animal Farm');
INSERT INTO BOOKSTORE.book VALUES (3, 2, 'O Alquimista');
INSERT INTO BOOKSTORE.book VALUES (4, 2, 'Brida');