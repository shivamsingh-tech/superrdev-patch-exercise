# Task Tracker Patch Summary

## What I fixed

### 1) SQL search/filter bug
- Issue: the backend query combined `LOWER(title) LIKE ... OR LOWER(description) LIKE ...` with `AND`/`OR` without grouping the conditions properly.
- How I found it: the repository README already called out the SQL precedence problem, and the query in `TaskRepository` was logically unsafe when status filters and text search were used together.
- Change: wrapped the title/description match in parentheses and kept the archived and status checks as separate conditions.
- Why: this ensures the search works correctly for both text matches and status filters without returning the wrong rows.

### 2) Artificial controller delay
- Issue: the controller added a delay that slowed the UI and made users think the app was hanging.
- How I found it: the task description and README pointed to the unnecessary controller delay as a production issue.
- Change: removed the forced delay from the request flow.
- Why: the app responds immediately and feels responsive, especially while filtering or paginating.

### 3) Invalid status validation
- Issue: bad values like `status=abc` could crash or produce unclear behavior instead of a controlled API response.
- How I found it: the controller accepted raw status strings and tried to map them without defensive validation.
- Change: validate `status` against `TaskStatus` and return a clear `400 Bad Request` with an error message.
- Why: invalid client input fails predictably and is easier to debug.

### 4) Frontend pagination/filter state bug
- Issue: the page number did not reset correctly when the user changed the search or status filter, and stale request results could overwrite newer data.
- How I found it: the frontend state logic in `App.jsx` and `useTasks.js` ignored the request lifecycle and allowed outdated responses to remain visible.
- Change: reset pagination whenever search or status changes; guard async requests with an active-request flag so stale results are ignored.
- Why: users see the correct page and the UI does not show stale data after rapid filter changes.

## Local run

### Backend
```bash
cd backend
./mvnw spring-boot:run
```

### Frontend
```bash
cd frontend
npm install
npm run dev
```

Expected URLs:
- Backend: http://localhost:8080
- Frontend: http://localhost:5173

## Submission notes
- The project is intentionally small and the fixes are focused on the highest-value bugs only.
- Handwritten notes/photos should be placed in the `handwritten/` folder before submission.
- I cannot create a real external Internshala assignment link from this environment; the assignment URL must be added manually when submitting.
