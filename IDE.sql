create database Jobboard;

use Jobboard;

-- Create User table
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL CHECK (CHAR_LENGTH(password) >= 8),
    role ENUM('candidate', 'recruiter') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Company table
CREATE TABLE Companies (
    company_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    website VARCHAR(255),
    created_by INT,
    FOREIGN KEY (created_by) REFERENCES Users(user_id) ON DELETE SET NULL
);

-- Create Category table
CREATE TABLE Categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50) NOT NULL UNIQUE
);

-- Create Job table
CREATE TABLE Jobs (
    job_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    location VARCHAR(100),
    salary DECIMAL(10, 2),
    job_type ENUM('full-time', 'part-time', 'contract', 'internship') NOT NULL,
    posted_by INT,
    company_id INT,
    category_id INT,
    posted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (posted_by) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (company_id) REFERENCES Companies(company_id),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

-- Create Applications table
CREATE TABLE Applications (
    application_id INT PRIMARY KEY AUTO_INCREMENT,
    job_id INT NOT NULL,
    user_id INT NOT NULL,
    cover_letter TEXT,
    resume_link VARCHAR(255),
    applied_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM('applied', 'reviewing', 'interview', 'rejected', 'accepted') DEFAULT 'applied',
    FOREIGN KEY (job_id) REFERENCES Jobs(job_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

-- Insert sample categories
INSERT INTO Categories (category_name) VALUES
('Software Development'),
('Marketing'),
('Design'),
('Data Science'),
('Customer Support');

-- Insert sample users
-- Recruiters
INSERT INTO Users (name, email, password, role) VALUES
('Alice HR', 'alice@techcorp.com', 'StrongPass123', 'recruiter'),
('John HR', 'john@designify.com', 'RecruitSecure987', 'recruiter');

-- Candidates
INSERT INTO Users (name, email, password, role) VALUES
('Bob Developer', 'bob.dev@example.com', 'CodeMaster2024', 'candidate'),
('Sara Marketer', 'sara.mkt@example.com', 'MktGenius2025', 'candidate'),
('Ethan Designer', 'ethan.design@example.com', 'Design!King', 'candidate');

-- Insert companies
INSERT INTO Companies (name, description, website, created_by) VALUES
('TechCorp', 'Leading innovator in cloud software and enterprise tools.', 'https://www.techcorp.com', 1),
('Designify', 'Creative design agency specializing in UI/UX.', 'https://www.designify.com', 2);

-- Insert jobs
INSERT INTO Jobs (title, description, location, salary, job_type, posted_by, company_id, category_id) VALUES
-- Job 1
('Full Stack Developer', 
'Looking for an experienced full stack developer proficient in React, Node.js, and MongoDB.', 
'Remote', 120000, 'full-time', 1, 1, 1);

-- Job 2
('UX Designer', 
'Designify is hiring a UX designer to craft delightful user experiences.', 
'Bangalore, India', 80000, 'full-time', 2, 2, 3),

-- Job 3
('Marketing Executive', 
'We need a dynamic marketer to lead social media campaigns.', 
'Mumbai, India', 65000, 'part-time', 2, 2, 2),

-- Job 4
('Data Scientist Intern', 
'Analyze large datasets and assist in building predictive models.', 
'Remote', 40000, 'internship', 1, 1, 4);

-- Insert job applications
INSERT INTO Applications (job_id, user_id, cover_letter, resume_link, status) VALUES
(1, 3, 'I have 4 years of experience in full-stack web development.', 'https://drive.example.com/bob_resume.pdf', 'applied'),
(2, 5, 'UX and UI are my strengths. I’d love to contribute at Designify.', 'https://drive.example.com/ethan_resume.pdf', 'interview'),
(3, 4, 'Marketing has always been my passion. I bring energy and strategy.', 'https://drive.example.com/sara_resume.pdf', 'reviewing'),
(4, 3, 'As a developer, I am keen to explore data science during this internship.', 'https://drive.example.com/bob_resume.pdf', 'applied');
