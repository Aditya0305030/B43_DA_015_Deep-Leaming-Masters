use warfare_losses;

SELECT 
    date_format(date,'%Y-%m') AS month,
    SUM(tank + aircraft + helicopter + drone + APC) AS total_losses
FROM russia_losses_equipment
GROUP BY month
ORDER BY total_losses DESC
LIMIT 5;


SELECT 
    'tank' AS asset_type, SUM(tank) AS total_losses FROM russia_losses_equipment
UNION ALL
SELECT 'aircraft', SUM(aircraft) FROM russia_losses_equipment
UNION ALL
SELECT 'helicopter', SUM(helicopter) FROM russia_losses_equipment
UNION ALL
SELECT 'drone', SUM(drone) FROM russia_losses_equipment
UNION ALL
SELECT 'APC', SUM(APC) FROM russia_losses_equipment
UNION ALL
SELECT 'personnel', SUM(personnel) FROM russia_losses_equipment
UNION ALL
SELECT 'day', max(day) FROM russia_losses_equipment
ORDER BY total_losses DESC;


SELECT 
    date(date) as date, 
    personnel,
    tank, 
    aircraft, 
    helicopter, 
    drone, 
    APC
FROM russia_losses_equipment
ORDER BY personnel DESC
LIMIT 10;


SELECT date_format(date,'%Y-%M') as month ,



