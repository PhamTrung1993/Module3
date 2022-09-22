use quanlytourdulich;

SELECT 	D.city_id, C.cityName, COUNT(T.destination_id) AS 'Số lượng Tour'
FROM 	City C
JOIN 	Destination D
ON 		C.id = D.city_id
JOIN 	Tour T
ON		D.id = T.destination_id
GROUP BY T.destination_id;

SELECT	D.destinationName, CT.categoryName, COUNT(T.dateStart) AS 'Số lượng'
FROM 	destination D
RIGHT JOIN 	tour T
ON		D.id = T.destination_id
LEFT JOIN	Categorytour CT
ON		CT.id = T.category_id
where month(dateStart) = 3
GROUP BY CT.categoryName;

SELECT	D.destinationName, CT.categoryName, COUNT(T.dateStart) AS 'Số lượng'
FROM 	destination D
RIGHT JOIN 	tour T
ON		D.id = T.destination_id
LEFT JOIN	Categorytour CT
ON		CT.id = T.category_id
where month(dateEnd) = 4
GROUP BY CT.categoryName;