// ExercisePage.js
import React, { useState } from 'react';

const ExercisePage = () => {
    const [exerciseName, setExerciseName] = useState('');

    const handleExerciseSubmit = (e) => {
        e.preventDefault();
        // Implement API call to save exercise data here
        console.log('Exercise submitted:', exerciseName);
        setExerciseName(''); // Clear the input field after submission
    };

    return (
        <div className="page-container">
            <h2>Exercise Page</h2>
            <form onSubmit={handleExerciseSubmit}>
                <label>
                    Exercise Name:
                    <input type="text" value={exerciseName} onChange={(e) => setExerciseName(e.target.value)} required />
                </label>
                <button type="submit">Add Exercise</button>
            </form>
        </div>
    );
};

export default ExercisePage;
