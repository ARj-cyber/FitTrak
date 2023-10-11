document.addEventListener("DOMContentLoaded", function() {
    // Fetch exercises from the server and populate the exercise dropdown
    fetchExercises();

    // Handle form submission
    document.getElementById("routineForm").addEventListener("submit", function(event) {
        event.preventDefault();
        const routineName = document.getElementById("routineName").value;
        const exerciseId = document.getElementById("exercise").value;
        const sets = document.getElementById("sets").value;
        const weight = document.getElementById("weight").value;
        const time = document.getElementById("time").value;

        // Send the data to the server (you can use AJAX/fetch API to send data to your backend)
        // For demonstration purposes, let's just log the data to the console
        console.log("Routine Name: " + routineName);
        console.log("Exercise ID: " + exerciseId);
        console.log("Sets: " + sets);
        console.log("Weight: " + weight);
        console.log("Time: " + time);

        // Clear the form after submission
        document.getElementById("routineForm").reset();
    });

    function fetchExercises() {
        // You can make a fetch request to your server to get the list of exercises and populate the dropdown dynamically
        // For demonstration purposes, let's assume the server returns an array of exercises like this:
        const exercises = [
            { id: 1, name: "Push-up" },
            { id: 2, name: "Squats" },
            // Add more exercises as needed
        ];

        // Populate the dropdown with exercises
        const exerciseDropdown = document.getElementById("exercise");
        exercises.forEach(function(exercise) {
            const option = document.createElement("option");
            option.value = exercise.id;
            option.text = exercise.name;
            exerciseDropdown.appendChild(option);
        });
    }
});
document.addEventListener("DOMContentLoaded", function() {
    // Fetch exercises from the server and populate the exercise dropdown
    fetchExercises();

    // Handle form submission
    document.getElementById("routineForm").addEventListener("submit", function(event) {
        event.preventDefault();
        const routineName = document.getElementById("routineName").value;
        const exerciseId = document.getElementById("exercise").value;
        const sets = document.getElementById("sets").value;
        const weight = document.getElementById("weight").value;
        const time = document.getElementById("time").value;

        // Send the data to the server (you can use AJAX/fetch API to send data to your backend)
        // For demonstration purposes, let's just log the data to the console
        console.log("Routine Name: " + routineName);
        console.log("Exercise ID: " + exerciseId);
        console.log("Sets: " + sets);
        console.log("Weight: " + weight);
        console.log("Time: " + time);

        // Clear the form after submission
        document.getElementById("routineForm").reset();
    });

    function fetchExercises() {
        // You can make a fetch request to your server to get the list of exercises and populate the dropdown dynamically
        // For demonstration purposes, let's assume the server returns an array of exercises like this:
        const exercises = [
            { id: 1, name: "Push-up" },
            { id: 2, name: "Squats" },
            // Add more exercises as needed
        ];

        // Populate the dropdown with exercises
        const exerciseDropdown = document.getElementById("exercise");
        exercises.forEach(function(exercise) {
            const option = document.createElement("option");
            option.value = exercise.id;
            option.text = exercise.name;
            exerciseDropdown.appendChild(option);
        });
    }
});
