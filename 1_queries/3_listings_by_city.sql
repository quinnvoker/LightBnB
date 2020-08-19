SELECT properties.*, AVG(rev.rating) as average_rating
  FROM 
    properties
    JOIN property_reviews rev ON properties.id = rev.property_id
  WHERE 
    city LIKE '%ancouv%'
  GROUP BY
    properties.id
  HAVING 
    AVG(rev.rating) >= 4
  ORDER BY 
    cost_per_night
  LIMIT 10;

