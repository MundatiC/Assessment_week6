SELECT o.order_id, o.order_status, o.order_date, 
	   c.first_name as customerFirstName,c.last_name as customerLastName,
	   s.first_name as staffFistName, s.last_name as staffLastName
		FROM sales.orders o
	INNER JOIN sales.customers c
	ON o.customer_id = c.customer_id
	INNER JOIN sales.staffs s
	ON o.staff_id = s.staff_id;