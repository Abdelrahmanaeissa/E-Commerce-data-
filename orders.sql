SELECT o.order_id, o.customer_id, i.seller_city, 
	order_status, purchase_date,
	COALESCE(confirmation_date, purchase_date) AS order_approval,
	carrier_date, 
	COALESCE(actual_delivery_date, expected_delivery_date) AS delivered_date,
	expected_delivery_date
FROM orders AS o
LEFT JOIN items_new AS i
ON o.order_id = i.order_id

