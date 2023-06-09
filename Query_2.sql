CREATE VIEW sales.product_sales_view AS
SELECT
    p.product_id,
    p.product_name,
    SUM(oi.quantity) AS total_quantity,
    SUM(oi.quantity * oi.list_price * (1 - oi.discount)) AS sales_amount
FROM
    sales.order_items oi
    INNER JOIN production.products p ON oi.product_id = p.product_id
GROUP BY
    p.product_id,
    p.product_name;


