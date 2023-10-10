-- Create the FitTrak database
CREATE DATABASE FitTrak;
USE FitTrak;

-- Create the 'exercise' table to store exercise metadata
CREATE TABLE exercise (
  exercise_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each exercise
  exercise_name VARCHAR(255) NOT NULL, -- Name of the exercise
  sets_required BOOLEAN NOT NULL, -- Flag to indicate if sets are needed for the exercise
  weight_required BOOLEAN NOT NULL, -- Flag to indicate if weight is needed for the exercise
  time_required BOOLEAN NOT NULL -- Flag to indicate if time is needed for the exercise
);

-- Create the 'users' table to store user information
CREATE TABLE users (
  user_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each user
  username VARCHAR(255) NOT NULL, -- Username of the user
  password VARCHAR(255) NOT NULL -- Password of the user
);

-- Create the 'routine' table to store fitness routines
CREATE TABLE routine (
  routine_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each routine
  routine_name VARCHAR(255) NOT NULL, -- Name of the routine
  user_id INT NOT NULL, -- ID of the user who created the routine
  exercise_id INT NOT NULL, -- ID of the exercise included in the routine
  sets INT NOT NULL, -- Number of sets for the exercise in the routine
  weight INT, -- Weight used for the exercise in the routine
  routine_time INT, -- Time spent on the exercise in the routine
  FOREIGN KEY (user_id) REFERENCES users(user_id), -- Link to the 'users' table
  FOREIGN KEY (exercise_id) REFERENCES exercise(exercise_id) -- Link to the 'exercise' table
);



