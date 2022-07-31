-- Придумайте один или несколько запросов к нашей таблице book, используя групповые функции. Проверьте, правильно ли они работают:
/*Находим общую стоимость всех книг и их количество*/
SELECT
	SUM(amount * price) AS "Total cost (TC), roubles",
    SUM(amount) AS "Total amount (TA), items"
	FROM book
	;

/*Находим долю всех книг автора в общей стоимости и в общем количестве*/
SELECT
    author AS Author,
    COUNT(title) AS Products,
    SUM(amount) AS Copies,
    ROUND(ROUND(SUM(amount * price) / 26267.50, 4) * 100, 2) AS Author_share_in_TC,
    ROUND(ROUND(SUM(amount) / 46, 4) * 100, 2) AS Author_share_in_TA
    FROM book
    GROUP BY author
    ORDER BY Author_share_in_TC DESC;

/*Находим долю отдельного экземпляра книги в общей стоимости, а также долю книги, как продукта, в общей стоимости и количестве */
SELECT
    title AS "Product name",
    ROUND(ROUND(SUM(price) / 26267.50, 4) * 100, 2) AS Copy_share_in_TC,
    ROUND(AVG(amount), 0) AS Copies,
    ROUND(ROUND(SUM(amount * price) / 26267.50, 4) * 100, 2) AS Product_share_in_TC,
    ROUND(ROUND(SUM(amount) / 46, 4) * 100, 2) AS Product_share_in_TA
    FROM book
    GROUP BY title
    ORDER BY Copy_share_in_TC DESC;