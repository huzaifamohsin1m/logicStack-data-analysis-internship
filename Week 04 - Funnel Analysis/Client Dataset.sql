CREATE DATABASE IF NOT EXISTS logicstack_analytics;
USE logicstack_analytics;
SELECT * FROM client_site_dataset LIMIT 5;
SELECT COUNT(*) AS total_rows 
FROM client_site_dataset;
SELECT COUNT(DISTINCT LOWER(TRIM(`User ID`))) AS unique_users 
FROM client_site_dataset 
WHERE `User ID` IS NOT NULL 
  AND TRIM(`User ID`) != '';
SELECT COUNT(DISTINCT `Session ID`) AS unique_sessions 
FROM client_site_dataset;
SELECT DISTINCT event AS Event 
FROM client_site_dataset;
SELECT `Event`, COUNT(*) AS total_events
FROM client_site_dataset
GROUP BY `Event`
ORDER BY total_events DESC;
SELECT `Event`, COUNT(DISTINCT `User ID`) AS unique_users
FROM client_site_dataset
GROUP BY `Event`
ORDER BY unique_users DESC;
SELECT 
    COUNT(DISTINCT CASE WHEN `Event` = 'Browse' THEN `User ID` END) AS total_browsers,
    COUNT(DISTINCT CASE WHEN `Event` = 'Purchase' THEN `User ID` END) AS total_purchasers,
    ROUND(
        (COUNT(DISTINCT CASE WHEN `Event` = 'Purchase' THEN `User ID` END) * 100.0) / 
        COUNT(DISTINCT CASE WHEN `Event` = 'Browse' THEN `User ID` END), 
        2
    ) AS conversion_rate_percentage
FROM client_site_dataset;
Use logicstack_analytics;
SELECT SUM(`Revenue`) AS total_revenue
FROM client_site_dataset;
SELECT `Region`, SUM(`Revenue`) AS total_revenue
FROM client_site_dataset
GROUP BY `Region`
ORDER BY total_revenue DESC;
SELECT `Channel`, SUM(`Revenue`) AS total_revenue
FROM client_site_dataset
GROUP BY `Channel`
ORDER BY total_revenue DESC;
SELECT `Device`, SUM(`Revenue`) AS total_revenue
FROM client_site_dataset
GROUP BY `Device`
ORDER BY total_revenue DESC;
SELECT `User ID`, SUM(`Revenue`) AS total_revenue
FROM client_site_dataset
GROUP BY `User ID`
ORDER BY total_revenue DESC
LIMIT 5;
SELECT `Channel`, SUM(`Revenue`) AS total_revenue
FROM client_site_dataset
GROUP BY `Channel`
ORDER BY total_revenue DESC
LIMIT 1;
SELECT `Region`, SUM(`Revenue`) AS total_revenue
FROM client_site_dataset
GROUP BY `Region`
ORDER BY total_revenue DESC
LIMIT 1;
SELECT 
    `Device`,
    COUNT(DISTINCT CASE WHEN `Event` = 'Browse' THEN `User ID` END) AS total_browsers,
    COUNT(DISTINCT CASE WHEN `Event` = 'Purchase' THEN `User ID` END) AS total_purchasers,
    ROUND(
        (COUNT(DISTINCT CASE WHEN `Event` = 'Purchase' THEN `User ID` END) * 100.0) / 
        COUNT(DISTINCT CASE WHEN `Event` = 'Browse' THEN `User ID` END), 
        2
    ) AS conversion_rate_percentage
FROM client_site_dataset
GROUP BY `Device`
ORDER BY conversion_rate_percentage DESC;
WITH FunnelStages AS (
    SELECT 
        COUNT(DISTINCT CASE WHEN `Event` = 'Browse' THEN `User ID` END) AS browse_users,
        COUNT(DISTINCT CASE WHEN `Event` = 'Add to Cart' THEN `User ID` END) AS cart_users,
        COUNT(DISTINCT CASE WHEN `Event` = 'Checkout' THEN `User ID` END) AS checkout_users,
        COUNT(DISTINCT CASE WHEN `Event` = 'Purchase' THEN `User ID` END) AS purchase_users
    FROM client_site_dataset
)
SELECT 
    'Browse -> Add to Cart' AS funnel_step,
    (browse_users - cart_users) AS absolute_user_drop,
    ROUND(((browse_users - cart_users) * 100.0 / browse_users), 2) AS drop_off_rate_percentage
FROM FunnelStages
UNION ALL
SELECT 
    'Add to Cart -> Checkout',
    (cart_users - checkout_users),
    ROUND(((cart_users - checkout_users) * 100.0 / cart_users), 2)
FROM FunnelStages
UNION ALL
SELECT 
    'Checkout -> Purchase',
    (checkout_users - purchase_users),
    ROUND(((checkout_users - purchase_users) * 100.0 / checkout_users), 2)
FROM FunnelStages;
