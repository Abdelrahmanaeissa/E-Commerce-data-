Select p.product_id, c.english AS product_category, p.product_photos, 
	p.product_weight, (p.product_height*p.product_width*p.product_length) AS product_volume
FROM products AS p
LEFT JOIN product_categories AS c
ON p.product_category=c.portuguese