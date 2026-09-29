SELECT DISTINCT fs.region
FROM flourmills_sales AS fs
WHERE NOT EXISTS (
    SELECT 1
    FROM flourmills_sales AS sub
    WHERE sub.region = fs.region
      AND sub.product_category = 'Flour'
);