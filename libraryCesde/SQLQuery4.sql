--estudiantes y escuelas
SELECT
    s.id AS student_id,
    u.name AS student_name,
    u.lastname AS student_lastname,
    sc.name AS school_name
FROM
    student AS s
INNER JOIN
    users AS u ON s.user_id = u.doc_id
INNER JOIN
    school AS sc ON s.school_id = sc.id;

-- libros y autores
	SELECT
    b.name AS book_name,
    a.name AS author_name
FROM
    book AS b
INNER JOIN
    author AS a ON b.author_id = a.id;


--prestamos de libros

SELECT
    l.id AS loan_id,
    u.name AS user_name,
    b.name AS book_name,
    l.took AS loan_date
FROM
    loan AS l
INNER JOIN
    users AS u ON l.user_id = u.doc_id
INNER JOIN
    book AS b ON l.book_isbn = b.isbn;



