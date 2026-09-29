SELECT DISTINCT fs.product_category
FROM flourmills_sales AS fs
WHERE NOT EXISTS (
    SELECT 1
    FROM flourmills_sales AS sub
    WHERE sub.product_category = fs.product_category
      AND sub.total_amount > 500000
);