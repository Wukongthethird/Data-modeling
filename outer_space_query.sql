SELECT planet_name as planet, star_name as star, SUM(CASE WHEN moon_id IS NOT NULL THEN 1 ELSE 0 END) as moon_count
FROM star
JOIN planet
ON star.id = planet.starid
LEFT JOIN moons
ON planet.planetid = moons.planetid
GROUP BY planet_name, star_name
ORDER BY planet_name ASC;
