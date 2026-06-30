-- =====================================================
-- Attend-AI Permissions
-- =====================================================

---------------------------------------------------------
-- Disable Row Level Security
---------------------------------------------------------

ALTER TABLE teachers DISABLE ROW LEVEL SECURITY;
ALTER TABLE students DISABLE ROW LEVEL SECURITY;
ALTER TABLE subjects DISABLE ROW LEVEL SECURITY;
ALTER TABLE subject_students DISABLE ROW LEVEL SECURITY;
ALTER TABLE attendance_logs DISABLE ROW LEVEL SECURITY;

---------------------------------------------------------
-- Service Role Permissions
---------------------------------------------------------

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO service_role;

GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA public
TO service_role;

---------------------------------------------------------
-- (Optional)
-- Read-only access for authenticated users
---------------------------------------------------------

-- Uncomment if needed later

-- GRANT SELECT
-- ON ALL TABLES IN SCHEMA public
-- TO authenticated;