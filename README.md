# FitTrak

FitTrak : a fitness routine tracking application, stores exercise metadata and routines for progress tracking.

## Records used in this :

### Exercise Table

The `exercise` table is used to store information about various exercises that can be part of fitness routines. It is designed to capture details about each exercise, including whether specific attributes like sets, weight, and time are required for that exercise.
**Fields**

- `id` (Primary Key): An auto-incremented unique identifier for each exercise.
- `exercise_name`: A text field storing the name of the exercise.
- `sets_needed`: A boolean field indicating whether sets are needed for the exercise.
- `weight_needed`: A boolean field indicating whether weight is needed for the exercise.
- `time_needed`: A boolean field indicating whether time duration is needed for the exercise.

### Routine Table

The `routine` table is responsible for tracking fitness routines created by users. It associates exercises from the `exercise` table with routines, allowing users to specify sets, weight, and time for each exercise within a routine.
**Fields**

- `id` (Primary Key): An auto-incremented unique identifier for each routine.
- `routine_name`: A text field for the name of the routine.
- `user_id`: An integer field representing the user who created the routine (foreign key reference to a `users` table, assuming one exists).
- `exercise_id`: An integer field representing the exercise associated with the routine (foreign key reference to the `exercise` table).
- `sets`: An integer field indicating the number of sets for the exercise within the routine.
- `weight`: An integer field representing the weight (optional, can be null) for the exercise within the routine.
- `time`: An integer field representing the time duration (optional, can be null) for the exercise within the routine.
