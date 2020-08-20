DROP TABLE IF EXISTS rates CASCADE;
DROP TABLE IF EXISTS guest_reviews CASCADE;

CREATE TABLE rates (
  id SERIAL PRIMARY KEY NOT NULL,
  cost_per_night INTEGER NOT NULL DEFAULT 0,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  property_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
);

CREATE TABLE guest_reviews (
  id SERIAL PRIMARY KEY NOT NULL,
  message TEXT
  rating SMALLINT NOT NULL DEFAULT 0,
  owner_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  reservation_id INTEGER REFERENCES reservations(id) ON DELETE CASCADE,
);
