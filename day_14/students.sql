-- Create table
CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    gender TEXT,
    marks INTEGER
);

-- Insert data
INSERT INTO students (id, name, age, gender, marks) VALUES
(1, 'Ali', 22, 'Male', 85),
(2, 'Sara', 21, 'Female', 90),
(3, 'Ahmed', 23, 'Male', 78),
(4, 'Ayesha', 22, 'Female', 88),
(5, 'Usman', 24, 'Male', 67),
(6, 'Zara', 20, 'Female', 95);