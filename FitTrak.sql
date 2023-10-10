CREATE DATABASE FitTrak;
use FitTrak;

-- Creating the 'exercise' table to store information about different exercises
CREATE TABLE exercise (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each exercise
  exercise_name VARCHAR(255) NOT NULL, -- Name of the exercise
  sets_needed BOOLEAN NOT NULL, -- Flag to indicate if the exercise requires sets
  weight_needed BOOLEAN NOT NULL, -- Flag to indicate if the exercise requires weights
  time_needed BOOLEAN NOT NULL -- Flag to indicate if the exercise requires time tracking
);

-- Creating the 'users' table to store user information
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each user
  username VARCHAR(255) NOT NULL, -- Username of the user
  password VARCHAR(255) NOT NULL -- Password of the user
);

-- Creating the 'routine' table to store information about exercise routines
CREATE TABLE routine (
  id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each routine
  routine_name VARCHAR(255) NOT NULL, -- Name of the routine
  user_id INT NOT NULL, -- ID of the user who created the routine
  exercise_id INT NOT NULL, -- ID of the exercise included in the routine
  sets INT NOT NULL, -- Number of sets for the exercise in the routine
  weight INT, -- Weight used for the exercise in the routine
  routine_time INT, -- Time spent on the exercise in the routine
  FOREIGN KEY (user_id) REFERENCES users(id), -- Reference to the 'users' table
  FOREIGN KEY (exercise_id) REFERENCES exercise(id) -- Reference to the 'exercise' table
);



