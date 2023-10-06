// RoutinePage.js
import React, { useState } from 'react';

const RoutinePage = () => {
    const [routineName, setRoutineName] = useState('');

    const handleRoutineSubmit = (e) => {
        e.preventDefault();
        // Implement API call to save routine data here
        console.log('Routine submitted:', routineName);
        setRoutineName(''); // Clear the input field after submission
    };

    return (
        <div className="page-container">
            <h2>Routine Page</h2>
            <form onSubmit={handleRoutineSubmit}>
                <label>
                    Routine Name:
                    <input type="text" value={routineName} onChange={(e) => setRoutineName(e.target.value)} required />
                </label>
                <button type="submit">Create Routine</button>
            </form>
        </div>
    );
};

export default RoutinePage;
