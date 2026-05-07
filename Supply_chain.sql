CREATE DATABASE Supply_chain;

USE Supply_chain;

SELECT * FROM Supply_chain;

DESCRIBE Supply_chain;

-- DELIVERY STATUS COUNT
SELECT `Delivery Status`,
      COUNT(*) AS total_orders
FROM Supply_chain
GROUP BY `Delivery Status`
ORDER BY total_orders DESC;

-- Category wise Late Deliveries
SELECT `Category Name`,
COUNT(*) AS total_orders,
SUM(`Late_delivery_risk`) AS late_orders
FROM Supply_chain
GROUP BY `Category Name`
ORDER BY late_orders DESC;

-- SHIPPING MODE PERFORMANCE
SELECT `Shipping Mode`,
COUNT(*) AS total_orders,
AVG(`Days for shipping (real)`) AS Avg_days
FROM Supply_chain 
GROUP BY `Shipping Mode`
ORDER BY Avg_days;
