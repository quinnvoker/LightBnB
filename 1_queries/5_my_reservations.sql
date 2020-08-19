SELECT reservations.*, properties.*, average_ratings.rating AS average_rating
  FROM
    users
    JOIN reservations ON users.id = reservations.guest_id
    JOIN properties ON properties.id = reservations.property_id
    JOIN property_reviews AS reviews ON users.id = reviews.guest_id
    JOIN (
      SELECT properties.id AS id, AVG(rev.rating) as rating
        FROM 
          properties
          JOIN property_reviews rev ON properties.id = rev.property_id
        GROUP BY
          properties.id
    ) AS average_ratings ON average_ratings.id = properties.id
  WHERE
    users.id = 1
    AND reservations.end_date < NOW()::DATE
  GROUP BY 
    properties.id, 
    reservations.id, 
    average_ratings.rating
  ORDER BY
    reservations.start_date
  LIMIT 10;