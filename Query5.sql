CREATE VIEW production.product_details_view AS
SELECT
    p.product_id,
	p.category_id,
	p.model_year,
    p.product_name,
	p.brand_id,
	p.list_price,
    SUM(oi.quantity) AS total_quantity,
    SUM(oi.quantity * oi.list_price * (1 - oi.discount)) AS revenue
FROM
    production.products p
    INNER JOIN sales.order_items oi  ON p.product_id = oi.product_id
GROUP BY
    p.product_id,
	p.product_name,
	p.category_id,
	p.model_year,
	p.brand_id,
	p.list_price;








