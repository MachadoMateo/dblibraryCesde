INSERT INTO users (doc_id, doc_type, name, lastname, email)
VALUES
  (1, 'DNI', 'Juan', 'Perez', 'juan@example.com'),
  (2, 'Pasaporte', 'Maria', 'Gomez', 'maria@example.com'),
  (3, 'Cédula', 'Carlos', 'Lopez', 'carlos@example.com'),
  (4, 'DNI', 'Ana', 'Martinez', 'ana@example.com'),
  (5, 'Pasaporte', 'Luis', 'Rodriguez', 'luis@example.com');

  select * from users

  INSERT INTO school (name)
VALUES
  ('Escuela 1'),
  ('Escuela 2'),
  ('Escuela 3'),
  ('Escuela 4'),
  ('Escuela 5');


  INSERT INTO program (name, school_id)
VALUES
  ('Programa A', 1),
  ('Programa B', 2),
  ('Programa C', 3),
  ('Programa D', 4),
  ('Programa E', 5);


  INSERT INTO student (school_id, program_id, user_id)
VALUES
  (1, 1, 1),
  (2, 2, 2),
  (3, 3, 3),
  (4, 4, 4),
  (5, 5, 5);


INSERT INTO teacher (id, active, school_id, id_user)
VALUES
  (1, 1, 1, 1),
  (2, 1, 2, 2),
  (3, 1, 3, 3),
  (4, 0, 4, 4),
  (5, 1, 5, 5);



  INSERT INTO author (name)
VALUES
  ('Autor 1'),
  ('Autor 2'),
  ('Autor 3'),
  ('Autor 4'),
  ('Autor 5');



  INSERT INTO editorial (name)
VALUES
  ('Editorial 1'),
  ('Editorial 2'),
  ('Editorial 3'),
  ('Editorial 4'),
  ('Editorial 5');


  INSERT INTO category (name)
VALUES
  ('Categoría 1'),
  ('Categoría 2'),
  ('Categoría 3'),
  ('Categoría 4'),
  ('Categoría 5');


  INSERT INTO library (name)
VALUES
  ('Biblioteca 1'),
  ('Biblioteca 2'),
  ('Biblioteca 3'),
  ('Biblioteca 4'),
  ('Biblioteca 5');


  INSERT INTO book (isbn, name, page_number, published_year, author_id, editorial_id, category_id, library_id)
VALUES
  (100000001, 'Libro 1', 200, '2020-01-15', 1, 1, 1, 1),
  (100000002, 'Libro 2', 250, '2019-05-20', 2, 2, 2, 2),
  (100000003, 'Libro 3', 300, '2018-08-10', 3, 3, 3, 3),
  (100000004, 'Libro 4', 180, '2021-03-05', 4, 4, 4, 4),
  (100000005, 'Libro 5', 220, '2022-07-30', 5, 5, 5, 5);


  INSERT INTO loan (took, return_date, user_id, book_isbn, library_id)
VALUES
  ('2023-09-21', '2023-09-28', 1, 100000001, 1),
  ('2023-09-22', '2023-09-29', 2, 100000002, 2),
  ('2023-09-23', '2023-09-30', 3, 100000003, 3),
  ('2023-09-24', '2023-10-01', 4, 100000004, 4),
  ('2023-09-25', '2023-10-02', 5, 100000005, 5);










