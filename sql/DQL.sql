-- region - INNER JOIN
-- INNER JOIN 1
SELECT b.*, p.*
FROM book b
         INNER JOIN publisher p ON p.id = b.publisher_id
ORDER BY b.id;

-- INNER JOIN 2
SELECT b.*, p.*
FROM book b,
     publisher p
WHERE p.id = b.publisher_id
ORDER BY b.id;
-- endregion - INNER JOIN

-- region - LEFT JOIN
-- LEFT JOIN 1: It returns all books which have or not publisher
SELECT b.*, p.*
FROM book b
         LEFT JOIN publisher p ON p.id = b.publisher_id
ORDER BY b.id;
-- endregion

-- LEFT JOIN 2: It returns books which have not any publisher
SELECT b.*, p.*
FROM book b
         LEFT JOIN publisher p ON p.id = b.publisher_id
WHERE p.id is NULL
ORDER BY b.id;

-- region - RIGHT JOIN
-- RIGHT JOIN 1: It returns all publishers which have or not book
SELECT b.*, p.*
FROM book b
         RIGHT JOIN publisher p ON p.id = b.publisher_id
ORDER BY p.id;

-- RIGHT JOIN 2: It returns publishers which have not any book
SELECT b.*, p.*
FROM book b
         RIGHT JOIN publisher p ON p.id = b.publisher_id
WHERE b.id is NULL
ORDER BY p.id;
-- endregion - RIGHT JOIN

-- region - FULL JOIN
-- FULL JOIN 1: It returns all books and publishers which are joined or not
SELECT b.*, p.*
FROM book b
         FULL JOIN publisher p ON b.publisher_id = p.id
ORDER BY b.id;
-- endregion - FULL JOIN

-- FULL JOIN 2: It returns all books and publishers which are not joined
SELECT b.*, p.*
FROM book b
         FULL JOIN publisher p ON b.publisher_id = p.id
WHERE b.id IS NULL
   OR p.ID IS NULL
ORDER BY b.id;

-- region - CROSS JOIN
-- CROSS JOIN 1, 2, 3 have same result
-- CROSS JOIN 1
SELECT b.*, p.*
FROM book b,
     publisher p
ORDER BY b.id;

-- CROSS JOIN 2
SELECT b.*, p.*
FROM book b
         CROSS JOIN publisher P
ORDER BY b.id;

-- CROSS JOIN 3
SELECT b.*, p.*
FROM book b
         INNER JOIN publisher P ON true
ORDER BY b.id;
-- endregion - CROSS JOIN