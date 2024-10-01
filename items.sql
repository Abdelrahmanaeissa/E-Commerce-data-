WITH product AS (Select p.product_id, c.english AS product_category, p.product_photos, 
	p.product_weight, (p.product_height*p.product_width*p.product_length) AS product_volume
FROM products AS p
LEFT JOIN product_categories AS c
ON p.product_category=c.portuguese)

SELECT i.order_id, i.number_of_items,p.product_id, 
	p.product_category,
	i.seller_id, s.seller_city, s.seller_state, 
	i.shipping_limit_date, i.price, i.freight_price
FROM items as i
LEFT JOIN product as p 
ON i.product_id=p.product_id
LEFT JOIN sellers as s 
ON i.seller_id = s.seller_id; 
