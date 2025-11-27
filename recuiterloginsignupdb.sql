CREATE TABLE IF NOT EXISTS recruiter_accounts (
    id SERIAL PRIMARY KEY,
    company_name VARCHAR(150) NOT NULL,
    gst_number VARCHAR(50) UNIQUE NOT NULL,
    official_email VARCHAR(150) UNIQUE NOT NULL,
    password TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);
