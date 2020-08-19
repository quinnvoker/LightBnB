INSERT INTO users (name, email, password)
  VALUES
    ('Abraham Bigguy', 'abigguy@guymail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
    ('Bobby Carbuncle', 'bcarb@tmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
    ('Cynthia Etic', 'cynthetic@fakemail.biz', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code)
  VALUES
    (1, 'BIG HOUSE!!!', 'The biggest house you will ever rent', 'http://bighouse.com/thumb.jpg', 'http://bighouse.com/cover.jpg', 3000, 65, 16, 25, 'Canada', 'Big Street', 'Big Town', 'ON', 'b1g 0n3'),
    (2, 'Small space', 'Want to sleep in a cozy little room?', 'http://smallspace.com/thumb.jpg', 'http://smallspace.com/cover.jpg', 15, 0, 0, 1, 'Canada', 'Small Ave', 'Smallsville', 'NB', 'l1t 7l3'),
    (3, 'Normal Rental', 'Absolutely trustworthy', 'http://iwantyourpass.com/thumb.jpg', 'http://iwantyourpass.com/cover.jpg', 90, 1, 1, 1, 'New Zealand', 'Real Street', 'Actualton', 'RE', '123456');

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
  VALUES
    ('2020-05-25', '2020-05-27', 1, 2),
    ('2020-01-14', '2020-01-29', 2, 3),
    ('2020-06-01', '2020-06-18', 3, 1);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
  VALUES
    (2, 1, 1, 5, 'WOW!!! It really was big! I got lost every time I tried to find the kitchen, but it was fun.'),
    (3, 2, 2, 2, 'Alright... Kinda sucked that I had to go to the convenience store across the street to use the bathroom, but it is what it is...'),
    (1, 3, 3, 1, 'I went to New Zealand on holiday and could not even find the town this listing was in!! Owner did not respond to email, out $1530... DO NOT RENT!!!');