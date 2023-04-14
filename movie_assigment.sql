CREATE TABLE "Movie_genre " (
  "movie_genre_id" int,
  "Genre_genre_id" int
);

CREATE INDEX "fk" ON  "Movie_genre " ("movie_genre_id", "Genre_genre_id");

CREATE TABLE "genre" (
  "genre_id" SERIAL,
  "genre_name" VARCHAR(50)
);

CREATE INDEX "pk" ON  "genre" ("genre_id");

CREATE TABLE "award" (
  "award_id" SERIAL,
  "award_name" VARCHAR(50),
  PRIMARY KEY ("award_id")
);

CREATE TABLE "cinema" (
  "Cinema_id" SERIAL,
  "cinema_name" VARCHAR(90),
  "country" VARCHAR(90),
  "state" VARCHAR(90),
  "city" VARCHAR(90),
  "stree_name" VARCHAR(90),
  "zip_code" INT
);

CREATE INDEX "pk" ON  "cinema" ("Cinema_id");

CREATE INDEX "N" ON  "cinema" ("country");

CREATE TABLE "movie_ranting" (
  "movie_movie_id" int,
  "rating_rating_id" int
);

CREATE INDEX "fk" ON  "movie_ranting" ("movie_movie_id", "rating_rating_id");

CREATE TABLE "language" (
  "language_id" SERIAL PRIMARY KEY,
  "language_name" VARCHAR(60)
);

CREATE TABLE "movie_director" (
  "movie_movie_id" int,
  "director_directid_id" int
);

CREATE INDEX "fk" ON  "movie_director" ("movie_movie_id", "director_directid_id");

CREATE TABLE "actor" (
  "actor_id" SERIAL,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "nationality" VARCHAR(50),
  "Birth_date" date,
  "address" VARCHAR(50),
  "state" VARCHAR(30),
  "zip_code" VARCHAR(30),
  "phone_num" int,
  "email" VARCHAR(50),
  PRIMARY KEY ("actor_id")
);

CREATE TABLE "actor_award" (
  "actor_actor_id" int,
  "award_award_id" int,
  "award_year" int,
  CONSTRAINT "FK_actor_award.actor_actor_id"
    FOREIGN KEY ("actor_actor_id")
      REFERENCES "actor"("actor_id")
);

CREATE INDEX "fk" ON  "actor_award" ("actor_actor_id", "award_award_id");

CREATE TABLE "rating" (
  "rating_id" SERIAL,
  "rating" NUMERIC
);

CREATE INDEX "pk" ON  "rating" ("rating_id");

CREATE TABLE "movie_actor" (
  "movie_movie_ID " int,
  "Actor_actor_id" int
);

CREATE INDEX "fk" ON  "movie_actor" ("movie_movie_ID ", "Actor_actor_id");

CREATE TABLE "movie" (
  "movie_id" SERIAL,
  "director_id" int,
  "genre_id" int,
  "title" int,
  "realease_year" int,
  "rating" NUMERIC,
  "movie_lenght" int
);

CREATE INDEX "pk" ON  "movie" ("movie_id");

CREATE TABLE "director" (
  "director_id" SERIAL,
  "first_name" VARCHAR(90),
  "last_name" VARCHAR(90),
  "nationality" VARCHAR(90),
  "DOB" date
);

CREATE INDEX "pk" ON  "director" ("director_id");

CREATE INDEX "N" ON  "director" ("nationality");

CREATE TABLE "movie_cinema" (
  "movie_movie_id" int,
  "cinema_cinema_id" int,
  "date_first_showing" date,
  "date_last_showing" date,
  CONSTRAINT "FK_movie_cinema.cinema_cinema_id"
    FOREIGN KEY ("cinema_cinema_id")
      REFERENCES "movie"("movie_lenght")
);


CREATE INDEX "fk" ON  "movie_cinema" ("movie_movie", "cinema_cinema_id");

CREATE TABLE "movie_langauge" (
  "movie_id" int,
  "language_language_id" INT
);

CREATE INDEX "fk" ON  "movie_langauge" ("movie_id", "language_language_id");


--DATA-----
INSERT INTO "genre" ("genre_name")
VALUES ('Action'), ('Comedy'), ('Drama'), ('Horror'), ('Romance'), ('Thriller');


INSERT INTO "award" ("award_name")
VALUES ('Best Picture'), ('Best Director'), ('Best Actor'), ('Best Actress'), ('Best Supporting Actor'), ('Best Supporting Actress');


INSERT INTO "cinema" ("cinema_name", "country", "state", "city", "stree_name", "zip_code")
VALUES 
  ('Cineplex', 'United States', 'California', 'Los Angeles', 'Hollywood Blvd', '90028'),
  ('AMC Theatres', 'United States', 'New York', 'New York City', 'Broadway', '10019'),
  ('Odeon Cinemas', 'United Kingdom', 'England', 'London', 'Leicester Square', '10019'),
  ('Hoyts Cinemas', 'Australia', 'Victoria', 'Melbourne', 'Swanston St', '3000'),
  ('Toho Cinemas', 'Japan', 'Tokyo', 'Shinjuku', 'Nishi Shinjuku', '00023');


INSERT INTO "language" ("language_name")
VALUES ('English'), ('Spanish'), ('French'), ('German'), ('Mandarin'), ('Japanese');

INSERT INTO "actor" ("first_name", "last_name", "nationality", "Birth_date", "address", "state", "zip_code", "phone_num", "email")
VALUES 
  ('Tommy', 'Cruise', 'United States', '1962-07-03', '123 Main St', 'California', '90210', 5551234, 'tommmy.cruise@movies.com'),
  ('Meryl', 'Streep', 'United States', '1949-06-22', '456 Broadway', 'New York', '10001', 5555678, 'me.streep@yahoo.com');
  
INSERT INTO "director" ("first_name", "last_name", "nationality", "DOB")
VALUES 
  ('Steven', 'Spielberg', 'United States', '1946-12-18'),
  ('Quentin', 'Tarantino', 'United States', '1963-03-27'),
  ('Alfonso', 'Cuaron', 'Mexico', '1961-11-28'),
  ('Chloé', 'Zhao', 'China', '1982-03-31'),
  ('Martin', 'Scorsese', 'United States', '1942-11-17');

INSERT INTO "Movie_genre" ("movie_genre_id", "Genre_genre_id")
VALUES
(1, 3), (1, 6),
(2, 1), (2, 6),
(3, 1), (3, 2), (3, 6),
(4, 1), (4, 3), (4, 6);

INSERT INTO "rating" ("rating")
VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10);

INSERT INTO "movie_ranting" ("movie_movie_id", "rating_rating_id")
VALUES
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8), (1, 9), (1, 10),
(2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 6), (2, 7), (2, 8), (2, 9), (2, 10);

INSERT INTO "genre" ("genre_name")
VALUES
('Action'),
('Drama'),
('History'),
('Thriller'),
('Crime'),
('Western');


INSERT INTO "award" ("award_name")
VALUES
('Academy Award'),
('Golden Globe'),
('BAFTA');

INSERT INTO "actor" ("first_name", "last_name", "nationality", "Birth_date", "address", "state", "zip_code", "phone_num", "email")
VALUES
('Sandra', 'Bullock', 'American', '1964-07-26', '1213 Maple Avenue', 'California', '90001', 5551213, 'sandra.bullock@gmail.com'),
('Matt', 'Damon', 'American', '1970-10-08', '1415 Oak Street', 'New York', '10001', 5551415, 'matt.damon@yahoo.com'),
('Christian', 'Bale', 'British', '1974-01-30', '1617 Pine Street', 'Los Angeles', '90001', 5551617, 'christian.bale@hotmail.com');


INSERT INTO "director" ("first_name", "last_name", "nationality", "DOB")
VALUES
('Martin', 'Scorsese', 'American', '1942-11-17'),
('Christopher', 'Nolan', 'British', '1970-07-30'),
('Quentin', 'Tarantino', 'American', '1963-03-27'),
('Steven', 'Spielberg', 'American', '1946-12-18'),
('Alfonso', 'Cuarón', 'Mexican', '1961-11-28'),
('Greta', 'Gerwig', 'American', '1983-08-04');

INSERT INTO "movie_genre" ("movie_genre_id", "Genre_genre_id")
VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 1),
(6, 1),
(7, 3),
(8, 3),
(9, 4),
(10, 4),
(11, 1);

INSERT INTO "genre" ("genre_name")
VALUES
('Crime'),
('Action'),
('Drama'),
('Thriller'),
('Western'),
('Sci-Fi');

INSERT INTO "award" ("award_name")
VALUES
('Academy Award'),
('Golden Globe'),
('BAFTA'),
('Critics'' Choice Award'),
('Screen Actors Guild Award');




