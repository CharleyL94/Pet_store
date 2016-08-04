DROP TABLE pets;
DROP TABLE pet_shops;

CREATE TABLE pet_shops (
id SERIAL8 PRIMARY KEY,
name VARCHAR(255),
address VARCHAR(255),
type VARCHAR(255)
);

CREATE TABLE pets (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  type VARCHAR(255),
  pet_shop_id INT4 REFERENCES pet_shops(id)
);

