create table users (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  firstname VARCHAR(80) NOT NULL,
  lastname VARCHAR(80) NOT NULL,
  pseudo VARCHAR(80) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(80) NOT NULL,
  avatar VARCHAR(255),
  ranking INT,
  points INT,
  is_administrator BOOLEAN NOT NULL
);
create table artists (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  name VARCHAR(255) NOT NULL,
  bio VARCHAR(255),
  portrait VARCHAR(255) NOT NULL
);

create table locations (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  city VARCHAR(255) NOT NULL,
  country VARCHAR(255) NOT NULL,
  post_code INT NOT NULL,
  street VARCHAR(255) NOT NULL,
  street_number INT NOT NULL,
  latitude FLOAT NOT NULL,
  longitude FLOAT NOT NULL
);

CREATE TABLE artworks (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  title VARCHAR(255),
  artist_id INT NOT NULL,
  picture VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL,
  user_id INT NOT NULL,
  general_gallery BOOLEAN NOT NULL,
  reported BOOLEAN NOT NULL,
  location_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (artist_id) REFERENCES artists(id),
  FOREIGN KEY (location_id) REFERENCES locations(id)
);

CREATE TABLE badges (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  picture VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL,
  infos VARCHAR(255),
  min_points INT NOT NULL
);

CREATE TABLE user_badges (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  badge_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (badge_id) REFERENCES badges(id)
);

CREATE TABLE capture (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  artwork_id INT NOT NULL,
  capture VARCHAR(255) NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (artwork_id) REFERENCES artworks(id)
);






