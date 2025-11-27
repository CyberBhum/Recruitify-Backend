-- Students table (Signup/Login)
CREATE TABLE IF NOT EXISTS students (
    id SERIAL PRIMARY KEY,
    roll_number VARCHAR(50) UNIQUE NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password TEXT NOT NULL
);

-- Student Profiles table (Profile Page)
CREATE TABLE IF NOT EXISTS student_profiles (
    id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,

    tagline VARCHAR(255),
    roll_number VARCHAR(50) NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    date_of_birth DATE NOT NULL,
    year_of_study VARCHAR(20) NOT NULL,
    address TEXT NOT NULL,
    college VARCHAR(150) NOT NULL,
    branch VARCHAR(100) NOT NULL,
    overall_cgpa DECIMAL(4,2) NOT NULL,

    sgpa JSON,  
    linkedin_profile TEXT,
    github_profile TEXT,

    resume_url TEXT,
    photo_url TEXT,

    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);
