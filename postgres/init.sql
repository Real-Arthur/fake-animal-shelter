-- init.sql

-- Make sure we're using our `animal-shelter` database
\c animal_shelter;

CREATE TYPE admin_level AS ENUM ('Admin', 'Staff', 'Volunteer');
CREATE TYPE size AS ENUM ('Small', 'Medium', 'Large');
CREATE TYPE animal_type AS ENUM ('Cat', 'Dog', 'Rabbit', 'Snake', 'Hamster', 'Mouse', 'Pig', 'Other');
CREATE TYPE sex AS ENUM ('Male', 'Female', 'Unknown');

-- We can create our user table
CREATE TABLE "user" (
  "id" SERIAL PRIMARY KEY,
  "username" VARCHAR,
  "password" VARCHAR
);
-- We can create our post table
CREATE TABLE "animals" (
  "id" SERIAL PRIMARY KEY,
  "image" VARCHAR,
  "name" VARCHAR NOT NULL,
	"animal_type" animal_type NOT NULL,
	"breed" VARCHAR,
	"color" VARCHAR,
	"coat_length" hair_length,
	"age" VARCHAR,
	"sex" sex,
	"size" size,
	"house_trained" BOOLEAN,
	"vaccinated" BOOLEAN,
	"neutered" BOOLEAN,
	"personality" VARCHAR,
	"price" INT,
	"picture" VARCHAR,
	"adopted" BOOLEAN DEFAULT false
);
CREATE TABLE "people" (
	"id" SERIAL PRIMARY KEY,
	"first_name" VARCHAR NOT NULL,
	"last_name" VARCHAR NOT NULL,
	"email" VARCHAR NOT NULL,
	"phone_number" VARCHAR NOT NULL,
	"date_of_birth" DATE NOT NULL,
	"address" VARCHAR NOT NULL,
	"occupation" VARCHAR,
	"type_of_home" VARCHAR,
	"interested_in" INT REFERENCES animals,
	"interested_on" TIMESTAMP,
	"contacted" BOOLEAN DEFAULT false,
	"adoption_success" BOOLEAN DEFAULT false
);
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Jimmy', 'Dog', 'Australian Terrier', 'Brown', 'Long hair', 'Four Months', 'Male', 'Small', FALSE, TRUE, FALSE, 'Spirited, Alert, Loyal, Companionable, Even Tempered, Courageous', 2000, 'https://cdn2.thedogapi.com/images/r1Ylge5Vm_1280.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Luis', 'Dog', 'Greyhound', 'Brown', 'Short hair', 'Two Years', 'Male', 'Large', TRUE, TRUE, TRUE, 'Affectionate, Athletic, Gentle, Intelligent, Quiet, Even Tempered', 5000, 'https://cdn2.thedogapi.com/images/H1zSie9V7_1280.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Emma', 'Dog', 'American Bulldog"', 'Brown with white parts', 'Short hair', 'Nine Months', 'Female', 'Medium', FALSE, FALSE, FALSE, 'Friendly, Assertive, Energetic, Loyal, Gentle, Confident, Dominant', 2000, 'https://cdn2.thedogapi.com/images/pk1AAdloG.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Ryan', 'Dog', 'Akita', 'Brown with white parts', 'Medium hair', 'Three Years', 'Male', 'Medium', TRUE, TRUE, TRUE, 'Docile, Alert, Responsive, Dignified, Composed, Friendly, Receptive, Faithful, Courageous', 1000, 'https://cdn2.thedogapi.com/images/H6UCIZJsc.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Linus', 'Cat', 'Australian Mist', 'Light brown with light black stripes', 'Short hair', 'Six Months', 'Male', 'Medium', FALSE, TRUE, FALSE, 'Lively, Social, Fun-loving, Relaxed, Affectionate', 4000, 'https://cdn2.thecatapi.com/images/7-1CtKMRr.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Phil', 'Cat', 'Abyssian', 'Orange with brown stripes', 'Short hair', 'Six Months', 'Male', 'Medium', TRUE, TRUE, TRUE, 'Active, Energetic, Independent, Intelligent, Gentle', 5000, 'https://cdn2.thedogapi.com/images/H6UCIZJsc.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Paul', 'Cat', 'Munchkin', 'Brown with black stripes and a white belly', 'Medium hair', 'Three Years', 'Male', 'Small', TRUE, FALSE, TRUE, 'Agile, Easy Going, Intelligent, Playful', 2000, 'https://cdn2.thecatapi.com/images/ilQzcQdl7.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Tony', 'Cat', 'Siberian', 'Dust brown with black accentws', 'Long hair', 'Four Months', 'Female', 'Small', TRUE, TRUE, TRUE, 'Curious, Intelligent, Loyal, Sweet, Agile, Playful, Affectionate', 500, 'https://cms.qz.com/wp-content/uploads/2019/02/RTXLA3F-e1551362816993.jpg?quality=75&strip=all&w=1600&h=900&crop=1');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Jimmy', 'Dog', 'Australian Terrier', 'Brown', 'Long hair', 'Four Months', 'Male', 'Small', FALSE, TRUE, FALSE, 'Spirited, Alert, Loyal, Companionable, Even Tempered, Courageous', 2000, 'https://cdn2.thedogapi.com/images/r1Ylge5Vm_1280.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Luis', 'Dog', 'Greyhound', 'Brown', 'Short hair', 'Two Years', 'Male', 'Large', TRUE, TRUE, TRUE, 'Affectionate, Athletic, Gentle, Intelligent, Quiet, Even Tempered', 5000, 'https://cdn2.thedogapi.com/images/H1zSie9V7_1280.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Emma', 'Dog', 'American Bulldog"', 'Brown with white parts', 'Short hair', 'Nine Months', 'Female', 'Medium', FALSE, FALSE, FALSE, 'Friendly, Assertive, Energetic, Loyal, Gentle, Confident, Dominant', 2000, 'https://cdn2.thedogapi.com/images/pk1AAdloG.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Ryan', 'Dog', 'Akita', 'Brown with white parts', 'Medium hair', 'Three Years', 'Male', 'Medium', TRUE, TRUE, TRUE, 'Docile, Alert, Responsive, Dignified, Composed, Friendly, Receptive, Faithful, Courageous', 1000, 'https://cdn2.thedogapi.com/images/H6UCIZJsc.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Linus', 'Cat', 'Australian Mist', 'Light brown with light black stripes', 'Short hair', 'Six Months', 'Male', 'Medium', FALSE, TRUE, FALSE, 'Lively, Social, Fun-loving, Relaxed, Affectionate', 4000, 'https://cdn2.thecatapi.com/images/7-1CtKMRr.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Phil', 'Cat', 'Abyssian', 'Orange with brown stripes', 'Short hair', 'Six Months', 'Male', 'Medium', TRUE, TRUE, TRUE, 'Active, Energetic, Independent, Intelligent, Gentle', 5000, 'https://cdn2.thedogapi.com/images/H6UCIZJsc.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Paul', 'Cat', 'Munchkin', 'Brown with black stripes and a white belly', 'Medium hair', 'Three Years', 'Male', 'Small', TRUE, FALSE, TRUE, 'Agile, Easy Going, Intelligent, Playful', 2000, 'https://cdn2.thecatapi.com/images/ilQzcQdl7.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Tony', 'Cat', 'Siberian', 'Dust brown with black accentws', 'Long hair', 'Four Months', 'Female', 'Small', TRUE, TRUE, TRUE, 'Curious, Intelligent, Loyal, Sweet, Agile, Playful, Affectionate', 500, 'https://cms.qz.com/wp-content/uploads/2019/02/RTXLA3F-e1551362816993.jpg?quality=75&strip=all&w=1600&h=900&crop=1');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Jimmy', 'Dog', 'Australian Terrier', 'Brown', 'Long hair', 'Four Months', 'Male', 'Small', FALSE, TRUE, FALSE, 'Spirited, Alert, Loyal, Companionable, Even Tempered, Courageous', 2000, 'https://cdn2.thedogapi.com/images/r1Ylge5Vm_1280.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Luis', 'Dog', 'Greyhound', 'Brown', 'Short hair', 'Two Years', 'Male', 'Large', TRUE, TRUE, TRUE, 'Affectionate, Athletic, Gentle, Intelligent, Quiet, Even Tempered', 5000, 'https://cdn2.thedogapi.com/images/H1zSie9V7_1280.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Emma', 'Dog', 'American Bulldog"', 'Brown with white parts', 'Short hair', 'Nine Months', 'Female', 'Medium', FALSE, FALSE, FALSE, 'Friendly, Assertive, Energetic, Loyal, Gentle, Confident, Dominant', 2000, 'https://cdn2.thedogapi.com/images/pk1AAdloG.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Ryan', 'Dog', 'Akita', 'Brown with white parts', 'Medium hair', 'Three Years', 'Male', 'Medium', TRUE, TRUE, TRUE, 'Docile, Alert, Responsive, Dignified, Composed, Friendly, Receptive, Faithful, Courageous', 1000, 'https://cdn2.thedogapi.com/images/H6UCIZJsc.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Linus', 'Cat', 'Australian Mist', 'Light brown with light black stripes', 'Short hair', 'Six Months', 'Male', 'Medium', FALSE, TRUE, FALSE, 'Lively, Social, Fun-loving, Relaxed, Affectionate', 4000, 'https://cdn2.thecatapi.com/images/7-1CtKMRr.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Phil', 'Cat', 'Abyssian', 'Orange with brown stripes', 'Short hair', 'Six Months', 'Male', 'Medium', TRUE, TRUE, TRUE, 'Active, Energetic, Independent, Intelligent, Gentle', 5000, 'https://cdn2.thedogapi.com/images/H6UCIZJsc.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Paul', 'Cat', 'Munchkin', 'Brown with black stripes and a white belly', 'Medium hair', 'Three Years', 'Male', 'Small', TRUE, FALSE, TRUE, 'Agile, Easy Going, Intelligent, Playful', 2000, 'https://cdn2.thecatapi.com/images/ilQzcQdl7.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Tony', 'Cat', 'Siberian', 'Dust brown with black accentws', 'Long hair', 'Four Months', 'Female', 'Small', TRUE, TRUE, TRUE, 'Curious, Intelligent, Loyal, Sweet, Agile, Playful, Affectionate', 500, 'https://cms.qz.com/wp-content/uploads/2019/02/RTXLA3F-e1551362816993.jpg?quality=75&strip=all&w=1600&h=900&crop=1');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Jimmy', 'Dog', 'Australian Terrier', 'Brown', 'Long hair', 'Four Months', 'Male', 'Small', FALSE, TRUE, FALSE, 'Spirited, Alert, Loyal, Companionable, Even Tempered, Courageous', 2000, 'https://cdn2.thedogapi.com/images/r1Ylge5Vm_1280.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Luis', 'Dog', 'Greyhound', 'Brown', 'Short hair', 'Two Years', 'Male', 'Large', TRUE, TRUE, TRUE, 'Affectionate, Athletic, Gentle, Intelligent, Quiet, Even Tempered', 5000, 'https://cdn2.thedogapi.com/images/H1zSie9V7_1280.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Emma', 'Dog', 'American Bulldog"', 'Brown with white parts', 'Short hair', 'Nine Months', 'Female', 'Medium', FALSE, FALSE, FALSE, 'Friendly, Assertive, Energetic, Loyal, Gentle, Confident, Dominant', 2000, 'https://cdn2.thedogapi.com/images/pk1AAdloG.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Ryan', 'Dog', 'Akita', 'Brown with white parts', 'Medium hair', 'Three Years', 'Male', 'Medium', TRUE, TRUE, TRUE, 'Docile, Alert, Responsive, Dignified, Composed, Friendly, Receptive, Faithful, Courageous', 1000, 'https://cdn2.thedogapi.com/images/H6UCIZJsc.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Linus', 'Cat', 'Australian Mist', 'Light brown with light black stripes', 'Short hair', 'Six Months', 'Male', 'Medium', FALSE, TRUE, FALSE, 'Lively, Social, Fun-loving, Relaxed, Affectionate', 4000, 'https://cdn2.thecatapi.com/images/7-1CtKMRr.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Phil', 'Cat', 'Abyssian', 'Orange with brown stripes', 'Short hair', 'Six Months', 'Male', 'Medium', TRUE, TRUE, TRUE, 'Active, Energetic, Independent, Intelligent, Gentle', 5000, 'https://cdn2.thedogapi.com/images/H6UCIZJsc.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Paul', 'Cat', 'Munchkin', 'Brown with black stripes and a white belly', 'Medium hair', 'Three Years', 'Male', 'Small', TRUE, FALSE, TRUE, 'Agile, Easy Going, Intelligent, Playful', 2000, 'https://cdn2.thecatapi.com/images/ilQzcQdl7.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Tony', 'Cat', 'Siberian', 'Dust brown with black accentws', 'Long hair', 'Four Months', 'Female', 'Small', TRUE, TRUE, TRUE, 'Curious, Intelligent, Loyal, Sweet, Agile, Playful, Affectionate', 500, 'https://cms.qz.com/wp-content/uploads/2019/02/RTXLA3F-e1551362816993.jpg?quality=75&strip=all&w=1600&h=900&crop=1');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Jimmy', 'Dog', 'Australian Terrier', 'Brown', 'Long hair', 'Four Months', 'Male', 'Small', FALSE, TRUE, FALSE, 'Spirited, Alert, Loyal, Companionable, Even Tempered, Courageous', 2000, 'https://cdn2.thedogapi.com/images/r1Ylge5Vm_1280.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Luis', 'Dog', 'Greyhound', 'Brown', 'Short hair', 'Two Years', 'Male', 'Large', TRUE, TRUE, TRUE, 'Affectionate, Athletic, Gentle, Intelligent, Quiet, Even Tempered', 5000, 'https://cdn2.thedogapi.com/images/H1zSie9V7_1280.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Emma', 'Dog', 'American Bulldog"', 'Brown with white parts', 'Short hair', 'Nine Months', 'Female', 'Medium', FALSE, FALSE, FALSE, 'Friendly, Assertive, Energetic, Loyal, Gentle, Confident, Dominant', 2000, 'https://cdn2.thedogapi.com/images/pk1AAdloG.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Ryan', 'Dog', 'Akita', 'Brown with white parts', 'Medium hair', 'Three Years', 'Male', 'Medium', TRUE, TRUE, TRUE, 'Docile, Alert, Responsive, Dignified, Composed, Friendly, Receptive, Faithful, Courageous', 1000, 'https://cdn2.thedogapi.com/images/H6UCIZJsc.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Linus', 'Cat', 'Australian Mist', 'Light brown with light black stripes', 'Short hair', 'Six Months', 'Male', 'Medium', FALSE, TRUE, FALSE, 'Lively, Social, Fun-loving, Relaxed, Affectionate', 4000, 'https://cdn2.thecatapi.com/images/7-1CtKMRr.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Phil', 'Cat', 'Abyssian', 'Orange with brown stripes', 'Short hair', 'Six Months', 'Male', 'Medium', TRUE, TRUE, TRUE, 'Active, Energetic, Independent, Intelligent, Gentle', 5000, 'https://cdn2.thedogapi.com/images/H6UCIZJsc.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Paul', 'Cat', 'Munchkin', 'Brown with black stripes and a white belly', 'Medium hair', 'Three Years', 'Male', 'Small', TRUE, FALSE, TRUE, 'Agile, Easy Going, Intelligent, Playful', 2000, 'https://cdn2.thecatapi.com/images/ilQzcQdl7.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Tony', 'Cat', 'Siberian', 'Dust brown with black accentws', 'Long hair', 'Four Months', 'Female', 'Small', TRUE, TRUE, TRUE, 'Curious, Intelligent, Loyal, Sweet, Agile, Playful, Affectionate', 500, 'https://cms.qz.com/wp-content/uploads/2019/02/RTXLA3F-e1551362816993.jpg?quality=75&strip=all&w=1600&h=900&crop=1');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Jimmy', 'Dog', 'Australian Terrier', 'Brown', 'Long hair', 'Four Months', 'Male', 'Small', FALSE, TRUE, FALSE, 'Spirited, Alert, Loyal, Companionable, Even Tempered, Courageous', 2000, 'https://cdn2.thedogapi.com/images/r1Ylge5Vm_1280.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Luis', 'Dog', 'Greyhound', 'Brown', 'Short hair', 'Two Years', 'Male', 'Large', TRUE, TRUE, TRUE, 'Affectionate, Athletic, Gentle, Intelligent, Quiet, Even Tempered', 5000, 'https://cdn2.thedogapi.com/images/H1zSie9V7_1280.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Emma', 'Dog', 'American Bulldog"', 'Brown with white parts', 'Short hair', 'Nine Months', 'Female', 'Medium', FALSE, FALSE, FALSE, 'Friendly, Assertive, Energetic, Loyal, Gentle, Confident, Dominant', 2000, 'https://cdn2.thedogapi.com/images/pk1AAdloG.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Ryan', 'Dog', 'Akita', 'Brown with white parts', 'Medium hair', 'Three Years', 'Male', 'Medium', TRUE, TRUE, TRUE, 'Docile, Alert, Responsive, Dignified, Composed, Friendly, Receptive, Faithful, Courageous', 1000, 'https://cdn2.thedogapi.com/images/H6UCIZJsc.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Linus', 'Cat', 'Australian Mist', 'Light brown with light black stripes', 'Short hair', 'Six Months', 'Male', 'Medium', FALSE, TRUE, FALSE, 'Lively, Social, Fun-loving, Relaxed, Affectionate', 4000, 'https://cdn2.thecatapi.com/images/7-1CtKMRr.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Phil', 'Cat', 'Abyssian', 'Orange with brown stripes', 'Short hair', 'Six Months', 'Male', 'Medium', TRUE, TRUE, TRUE, 'Active, Energetic, Independent, Intelligent, Gentle', 5000, 'https://cdn2.thedogapi.com/images/H6UCIZJsc.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Paul', 'Cat', 'Munchkin', 'Brown with black stripes and a white belly', 'Medium hair', 'Three Years', 'Male', 'Small', TRUE, FALSE, TRUE, 'Agile, Easy Going, Intelligent, Playful', 2000, 'https://cdn2.thecatapi.com/images/ilQzcQdl7.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Tony', 'Cat', 'Siberian', 'Dust brown with black accentws', 'Long hair', 'Four Months', 'Female', 'Small', TRUE, TRUE, TRUE, 'Curious, Intelligent, Loyal, Sweet, Agile, Playful, Affectionate', 500, 'https://cms.qz.com/wp-content/uploads/2019/02/RTXLA3F-e1551362816993.jpg?quality=75&strip=all&w=1600&h=900&crop=1');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Jimmy', 'Dog', 'Australian Terrier', 'Brown', 'Long hair', 'Four Months', 'Male', 'Small', FALSE, TRUE, FALSE, 'Spirited, Alert, Loyal, Companionable, Even Tempered, Courageous', 2000, 'https://cdn2.thedogapi.com/images/r1Ylge5Vm_1280.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Luis', 'Dog', 'Greyhound', 'Brown', 'Short hair', 'Two Years', 'Male', 'Large', TRUE, TRUE, TRUE, 'Affectionate, Athletic, Gentle, Intelligent, Quiet, Even Tempered', 5000, 'https://cdn2.thedogapi.com/images/H1zSie9V7_1280.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Emma', 'Dog', 'American Bulldog"', 'Brown with white parts', 'Short hair', 'Nine Months', 'Female', 'Medium', FALSE, FALSE, FALSE, 'Friendly, Assertive, Energetic, Loyal, Gentle, Confident, Dominant', 2000, 'https://cdn2.thedogapi.com/images/pk1AAdloG.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Ryan', 'Dog', 'Akita', 'Brown with white parts', 'Medium hair', 'Three Years', 'Male', 'Medium', TRUE, TRUE, TRUE, 'Docile, Alert, Responsive, Dignified, Composed, Friendly, Receptive, Faithful, Courageous', 1000, 'https://cdn2.thedogapi.com/images/H6UCIZJsc.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Linus', 'Cat', 'Australian Mist', 'Light brown with light black stripes', 'Short hair', 'Six Months', 'Male', 'Medium', FALSE, TRUE, FALSE, 'Lively, Social, Fun-loving, Relaxed, Affectionate', 4000, 'https://cdn2.thecatapi.com/images/7-1CtKMRr.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Phil', 'Cat', 'Abyssian', 'Orange with brown stripes', 'Short hair', 'Six Months', 'Male', 'Medium', TRUE, TRUE, TRUE, 'Active, Energetic, Independent, Intelligent, Gentle', 5000, 'https://cdn2.thedogapi.com/images/H6UCIZJsc.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Paul', 'Cat', 'Munchkin', 'Brown with black stripes and a white belly', 'Medium hair', 'Three Years', 'Male', 'Small', TRUE, FALSE, TRUE, 'Agile, Easy Going, Intelligent, Playful', 2000, 'https://cdn2.thecatapi.com/images/ilQzcQdl7.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Tony', 'Cat', 'Siberian', 'Dust brown with black accentws', 'Long hair', 'Four Months', 'Female', 'Small', TRUE, TRUE, TRUE, 'Curious, Intelligent, Loyal, Sweet, Agile, Playful, Affectionate', 500, 'https://cms.qz.com/wp-content/uploads/2019/02/RTXLA3F-e1551362816993.jpg?quality=75&strip=all&w=1600&h=900&crop=1');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Jimmy', 'Dog', 'Australian Terrier', 'Brown', 'Long hair', 'Four Months', 'Male', 'Small', FALSE, TRUE, FALSE, 'Spirited, Alert, Loyal, Companionable, Even Tempered, Courageous', 2000, 'https://cdn2.thedogapi.com/images/r1Ylge5Vm_1280.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Luis', 'Dog', 'Greyhound', 'Brown', 'Short hair', 'Two Years', 'Male', 'Large', TRUE, TRUE, TRUE, 'Affectionate, Athletic, Gentle, Intelligent, Quiet, Even Tempered', 5000, 'https://cdn2.thedogapi.com/images/H1zSie9V7_1280.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Emma', 'Dog', 'American Bulldog"', 'Brown with white parts', 'Short hair', 'Nine Months', 'Female', 'Medium', FALSE, FALSE, FALSE, 'Friendly, Assertive, Energetic, Loyal, Gentle, Confident, Dominant', 2000, 'https://cdn2.thedogapi.com/images/pk1AAdloG.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Ryan', 'Dog', 'Akita', 'Brown with white parts', 'Medium hair', 'Three Years', 'Male', 'Medium', TRUE, TRUE, TRUE, 'Docile, Alert, Responsive, Dignified, Composed, Friendly, Receptive, Faithful, Courageous', 1000, 'https://cdn2.thedogapi.com/images/H6UCIZJsc.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Linus', 'Cat', 'Australian Mist', 'Light brown with light black stripes', 'Short hair', 'Six Months', 'Male', 'Medium', FALSE, TRUE, FALSE, 'Lively, Social, Fun-loving, Relaxed, Affectionate', 4000, 'https://cdn2.thecatapi.com/images/7-1CtKMRr.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Phil', 'Cat', 'Abyssian', 'Orange with brown stripes', 'Short hair', 'Six Months', 'Male', 'Medium', TRUE, TRUE, TRUE, 'Active, Energetic, Independent, Intelligent, Gentle', 5000, 'https://cdn2.thedogapi.com/images/H6UCIZJsc.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Paul', 'Cat', 'Munchkin', 'Brown with black stripes and a white belly', 'Medium hair', 'Three Years', 'Male', 'Small', TRUE, FALSE, TRUE, 'Agile, Easy Going, Intelligent, Playful', 2000, 'https://cdn2.thecatapi.com/images/ilQzcQdl7.jpg');
INSERT INTO "animals" ("name", "animal_type", "breed", "color", "coat_length", "age", "sex", "size", "house_trained", "vaccinated", "neutered", "personality", "price", "picture")
VALUES
('Tony', 'Cat', 'Siberian', 'Dust brown with black accentws', 'Long hair', 'Four Months', 'Female', 'Small', TRUE, TRUE, TRUE, 'Curious, Intelligent, Loyal, Sweet, Agile, Playful, Affectionate', 500, 'https://cms.qz.com/wp-content/uploads/2019/02/RTXLA3F-e1551362816993.jpg?quality=75&strip=all&w=1600&h=900&crop=1');