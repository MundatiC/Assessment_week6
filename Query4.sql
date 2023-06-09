SELECT  c.customer_id as customer_id, c.first_name as Name, COUNT(*) AS order_count
    FROM sales.orders o
	INNER JOIN sales.customers c
	ON o.customer_id = c.customer_id
	GROUP BY c.customer_id, c.first_name
	ORDER BY order_count DESC
	OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;
	