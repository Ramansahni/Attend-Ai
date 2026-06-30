-- =====================================================
-- Attend-AI Database Schema
-- AI-Powered Multi-Modal Biometric Attendance System
-- =====================================================

-- ==========================
-- Teachers
-- ==========================
CREATE TABLE IF NOT EXISTS teachers (
    teacher_id SERIAL PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- ==========================
-- Students
-- ==========================
CREATE TABLE IF NOT EXISTS students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    face_embedding DOUBLE PRECISION[] NULL,
    voice_embedding DOUBLE PRECISION[] NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- ==========================
-- Subjects
-- ==========================
CREATE TABLE IF NOT EXISTS subjects (
    subject_id SERIAL PRIMARY KEY,
    subject_code VARCHAR(100) UNIQUE NOT NULL,
    name VARCHAR(255) NOT NULL,
    section VARCHAR(100) NOT NULL,

    teacher_id INTEGER NOT NULL
        REFERENCES teachers(teacher_id)
        ON DELETE CASCADE,

    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- ==========================
-- Student Enrollments
-- ==========================
CREATE TABLE IF NOT EXISTS subject_students (
    student_id INTEGER NOT NULL
        REFERENCES students(student_id)
        ON DELETE CASCADE,

    subject_id INTEGER NOT NULL
        REFERENCES subjects(subject_id)
        ON DELETE CASCADE,

    PRIMARY KEY (student_id, subject_id)
);

-- ==========================
-- Attendance Logs
-- ==========================
CREATE TABLE IF NOT EXISTS attendance_logs (
    log_id SERIAL PRIMARY KEY,

    student_id INTEGER NOT NULL
        REFERENCES students(student_id)
        ON DELETE CASCADE,

    subject_id INTEGER NOT NULL
        REFERENCES subjects(subject_id)
        ON DELETE CASCADE,

    timestamp VARCHAR(100) NOT NULL,

    is_present BOOLEAN DEFAULT FALSE
);