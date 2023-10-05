CREATE DATABASE FitTrak;
use FitTrak;

CREATE TABLE exercise (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  exercise_name VARCHAR(255) NOT NULL,
  sets_needed BOOLEAN NOT NULL,
  weight_needed BOOLEAN NOT NULL,
  time_needed BOOLEAN NOT NULL
);

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE routine (
  id INT AUTO_INCREMENT PRIMARY KEY,
  routine_name VARCHAR(255) NOT NULL,
  user_id INT NOT NULL,
  exercise_id INT NOT NULL,
  sets INT NOT NULL,
  weight INT,
  ro_time INT,
  FOREIGN KEY (user_id) REFERENCES users(id), -- Assuming there's a 'users' table with a corresponding ID field
  FOREIGN KEY (exercise_id) REFERENCES exercise(id)
);



