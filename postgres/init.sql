-- init.sql

-- Make sure we're using our `animal-shelter` database
\c animal_shelter;

CREATE TYPE size AS ENUM ('Small', 'Medium', 'Large');
CREATE TYPE admin_level AS ENUM ('Admin', 'Staff', 'Volunteer');
CREATE TYPE animal_type AS ENUM ('Cat', 'Dog', 'Rabbit', 'Snake', 'Hamster', 'Mouse', 'Pig', 'Other');
CREATE TYPE sex AS ENUM ('Male', 'Female', 'Unknown');

-- We can create our user table
CREATE TABLE "user" (
  id SERIAL PRIMARY KEY,
  username VARCHAR,
  password VARCHAR
);
-- We can create our post table
CREATE TABLE "animals" (
  id SERIAL PRIMARY KEY,
  image VARCHAR,
  name VARCHAR NOT NULL,
	animal_type animal_type NOT NULL,
	breed VARCHAR,
	color VARCHAR,
	coat_length VARCHAR,
	age VARCHAR,
	sex sex,
	size size,
	house_trained BOOLEAN,
	vaccinated BOOLEAN,
	neutered BOOLEAN,
	personality VARCHAR,
	price INT,
	picture VARCHAR,
	adopted BOOLEAN DEFAULT false
);
CREATE TABLE "people" (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	email VARCHAR NOT NULL,
	password VARCHAR NOT NULL,
	date_of_birth DATE NOT NULL,
	address VARCHAR NOT NULL,
	occupation VARCHAR,
	type_of_home VARCHAR,
	contacted BOOLEAN DEFAULT false
);

INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Luca', 'Dog', 'Italian Greyhound', 'Silver with white parts', 'Short hair', 'Four Months', 'Male', 'Small', FALSE, TRUE, FALSE, 'Annoying', 2000, 'https://cdn2.thedogapi.com/images/H1zSie9V7_1280.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Luis', 'Dog', 'Pug', 'Brown with white parts', 'Short hair', 'Six Months', 'Male', 'Medium', TRUE, TRUE, TRUE, 'Chill', 5000, 'https://cdn2.thedogapi.com/images/H1zSie9V7_1280.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Emma', 'Dog', 'Cockerspaniel', 'Brown with white parts', 'Long hair', 'Eight Months', 'Female', 'Small', FALSE, FALSE, FALSE, 'Wild', 2000, 'https://cdn2.thedogapi.com/images/H1zSie9V7_1280.jpg');


INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Ryan', 'Cat', 'Tabbie', 'Orange with white parts', 'Long hair', 'One Month', 'Male', 'Small', TRUE, TRUE, TRUE, 'A cat', 1000, 'https://cdn2.thecatapi.com/images/6nn.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Linus', 'Cat', 'Sphinx', 'Grey', 'Short hair', 'Six Months', 'Male', 'Medium', FALSE, TRUE, FALSE, 'Not great', 4000, 'https://cdn2.thecatapi.com/images/6nn.jpg');


INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Phil', 'Rabbit', 'Rabbit', 'Brown with white parts', 'Short hair', 'Six Months', 'Male', 'Medium', TRUE, TRUE, TRUE, 'Chill', 5000, 'https://images2.minutemediacdn.com/image/upload/c_fill,g_auto,h_1248,w_2220/f_auto,q_auto,w_1100/v1555922464/shape/mentalfloss/istock_000011513454_small.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Paul', 'Rabbit', 'Rabbit', 'Brown with white parts', 'Short hair', 'Six Months', 'Male', 'Medium', TRUE, FALSE, TRUE, 'Chill', 2000, 'https://images2.minutemediacdn.com/image/upload/c_fill,g_auto,h_1248,w_2220/f_auto,q_auto,w_1100/v1555922464/shape/mentalfloss/istock_000011513454_small.jpg');


INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Tony', 'Snake', 'Pug', 'Brown with white parts', 'Short hair', 'Six Months', 'Male', 'Large', TRUE, TRUE, TRUE, 'Chill', 500, 'https://cms.qz.com/wp-content/uploads/2019/02/RTXLA3F-e1551362816993.jpg?quality=75&strip=all&w=1600&h=900&crop=1');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Lisa', 'Snake', 'Pug', 'Brown with white parts', 'Short hair', 'Six Months', 'Female', 'Small', TRUE, TRUE, TRUE, 'Chill', 500, 'https://cms.qz.com/wp-content/uploads/2019/02/RTXLA3F-e1551362816993.jpg?quality=75&strip=all&w=1600&h=900&crop=1');