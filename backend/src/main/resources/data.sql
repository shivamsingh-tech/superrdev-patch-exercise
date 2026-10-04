INSERT INTO tasks (title, description, status, priority, archived, assignee, created_at) VALUES
('Fix login redirect bug', 'Users are redirected to a blank page after login on mobile browsers', 'OPEN', 'HIGH', FALSE, 'Alice', '2024-01-15 09:00:00');
INSERT INTO tasks (title, description, status, priority, archived, assignee, created_at) VALUES
('Update API rate limiting', 'Implement rate limiting on the public api endpoints to prevent abuse', 'IN_PROGRESS', 'HIGH', FALSE, 'Bob', '2024-01-16 10:30:00');
INSERT INTO tasks (title, description, status, priority, archived, assignee, created_at) VALUES
('Add search to dashboard', 'Add a search bar to the main dashboard so users can find reports quickly', 'OPEN', 'MEDIUM', FALSE, 'Carol', '2024-01-17 11:00:00');
INSERT INTO tasks (title, description, status, priority, archived, assignee, created_at) VALUES
('Refactor user service', 'The user service has grown too large and needs to be split into smaller modules', 'OPEN', 'LOW', FALSE, 'Dave', '2024-01-18 14:00:00');
INSERT INTO tasks (title, description, status, priority, archived, assignee, created_at) VALUES
('Fix stale cache issue', 'Stale cache entries are served for up to 10 minutes after data changes', 'IN_PROGRESS', 'HIGH', FALSE, 'Alice', '2024-01-19 08:30:00');
INSERT INTO tasks (title, description, status, priority, archived, assignee, created_at) VALUES
('Report export CSV bug', 'CSV export adds extra commas for rows with empty description fields', 'DONE', 'MEDIUM', FALSE, 'Bob', '2024-01-20 16:00:00');
INSERT INTO tasks (title, description, status, priority, archived, assignee, created_at) VALUES
('Database connection pool tuning', 'Increase connection pool size and add monitoring for pool exhaustion', 'OPEN', 'MEDIUM', FALSE, 'Eve', '2024-01-21 09:15:00');
INSERT INTO tasks (title, description, status, priority, archived, assignee, created_at) VALUES
('Cleanup old migration scripts', 'Remove migration scripts older than v2.0 that are no longer needed', 'DONE', 'LOW', FALSE, 'Carol', '2024-01-22 13:45:00');
INSERT INTO tasks (title, description, status, priority, archived, assignee, created_at) VALUES
('Add filter by date range', 'Allow users to filter tasks by creation date range on the dashboard', 'OPEN', 'MEDIUM', FALSE, 'Dave', '2024-01-23 10:00:00');
INSERT INTO tasks (title, description, status, priority, archived, assignee, created_at) VALUES
('Fix pagination off-by-one', 'Page 2 shows the last item from page 1 as its first item', 'IN_PROGRESS', 'HIGH', FALSE, 'Alice', '2024-01-24 11:30:00');
INSERT INTO tasks (title, description, status, priority, archived, assignee, created_at) VALUES
('Improve error messages', 'API error responses should include a human-readable message and error code', 'OPEN', 'MEDIUM', FALSE, 'Bob', '2024-01-25 15:00:00');
INSERT INTO tasks (title, description, status, priority, archived, assignee, created_at) VALUES
('Setup monitoring alerts', 'Configure alerts for api latency above 2s and error rate above 5 percent', 'OPEN', 'HIGH', FALSE, 'Eve', '2024-01-26 09:00:00');
INSERT INTO tasks (title, description, status, priority, archived, assignee, created_at) VALUES
('Update npm dependencies', 'Several npm packages have known vulnerabilities that need to be updated', 'IN_PROGRESS', 'MEDIUM', FALSE, 'Carol', '2024-01-27 10:00:00');
INSERT INTO tasks (title, description, status, priority, archived, assignee, created_at) VALUES
('Add loading skeleton UI', 'Replace the loading spinner with skeleton components for better UX', 'OPEN', 'LOW', FALSE, 'Dave', '2024-01-28 14:30:00');
INSERT INTO tasks (title, description, status, priority, archived, assignee, created_at) VALUES
('Fix search result ranking', 'Search results should prioritize title matches over description matches', 'OPEN', 'MEDIUM', FALSE, 'Alice', '2024-01-29 08:00:00');
INSERT INTO tasks (title, description, status, priority, archived, assignee, created_at) VALUES
('Implement audit logging', 'Add audit logs for all write operations on the api endpoints', 'IN_PROGRESS', 'HIGH', FALSE, 'Bob', '2024-01-30 11:00:00');
INSERT INTO tasks (title, description, status, priority, archived, assignee, created_at) VALUES
('Optimize report generation', 'Monthly report queries take over 30 seconds and need optimization', 'OPEN', 'HIGH', FALSE, 'Eve', '2024-01-31 09:30:00');
INSERT INTO tasks (title, description, status, priority, archived, assignee, created_at) VALUES
('Fix status filter edge case', 'Selecting a status filter then clearing it does not reset the results', 'DONE', 'MEDIUM', FALSE, 'Carol', '2024-02-01 16:00:00');
INSERT INTO tasks (title, description, status, priority, archived, assignee, created_at) VALUES
('Add API versioning', 'Public api should be versioned to allow backward-compatible changes', 'OPEN', 'LOW', FALSE, 'Dave', '2024-02-02 10:00:00');
INSERT INTO tasks (title, description, status, priority, archived, assignee, created_at) VALUES
('Decommission legacy search endpoint', 'The old /api/v1/search endpoint should be removed after migration to the new api', 'DONE', 'LOW', TRUE, 'Alice', '2024-02-03 12:00:00');
INSERT INTO tasks (title, description, status, priority, archived, assignee, created_at) VALUES
('Legacy API cleanup', 'Remove deprecated api helper functions and update search integration docs', 'DONE', 'LOW', TRUE, 'Bob', '2024-02-04 14:00:00');
