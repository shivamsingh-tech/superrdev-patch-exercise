# Full-Stack Patch Exercise

A small, intentionally imperfect task tracker. Your job is to review the codebase, identify the highest-value issues, and submit a focused patch.

---

## Why this exercise

We want to see how you improve an existing codebase under a realistic timebox — not how much boilerplate you can generate. The strongest submissions are small, focused diffs paired with clear reasoning and tradeoffs.

We care about:

- Judgment — what you fix first and why
- Debugging skill — across frontend, backend, and SQL layers
- Communication — can you explain tradeoffs clearly?
- Understanding — do you actually understand what you changed and why?

---

## Tech stack

| Layer    | Technology                      |
| -------- | ------------------------------- |
| Frontend | React 18 + Vite 5 (JavaScript) |
| Backend  | Spring Boot 3.2 + Java 17      |
| Database | H2 (in-memory, zero setup)     |
| SQL ref  | Oracle PL/SQL artifact in `db/` |

---

## Local setup

### Backend

```bash
cd backend
./mvnw spring-boot:run
```

The API starts on http://localhost:8080.

### Frontend

```bash
cd frontend
npm install
npm run dev
```

The app starts on http://localhost:5173.

## Fixes applied

- Corrected SQL precedence in task search.
- Removed artificial delay from the controller.
- Added validation for invalid status filter values.
- Fixed frontend pagination reset and stale loading/error state.

## Notes

Handwritten notes were added under the `handwritten/` folder and a brief summary is in `NOTES.md`.
