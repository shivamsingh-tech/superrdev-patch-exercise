package com.internal.tasktracker;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@RestController
@CrossOrigin(origins = "http://localhost:5173")
public class TaskController {

    private final TaskRepository taskRepository;

    public TaskController(TaskRepository taskRepository) {
        this.taskRepository = taskRepository;
    }

    @GetMapping("/api/tasks")
    public ResponseEntity<?> searchTasks(
            @RequestParam(required = false, defaultValue = "") String q,
            @RequestParam(required = false) String status,
            @RequestParam(required = false, defaultValue = "1") int page,
            @RequestParam(required = false, defaultValue = "10") int pageSize) {

        String query = q == null ? "" : q.trim();
        String searchTerm = "%" + query.toLowerCase() + "%";

        String normalizedStatus = null;
        if (status != null && !status.isBlank()) {
            try {
                normalizedStatus = TaskStatus.valueOf(status.trim().toUpperCase()).name();
            } catch (IllegalArgumentException ex) {
                Map<String, Object> errorBody = new LinkedHashMap<>();
                errorBody.put("error", "Invalid status value: " + status);
                return ResponseEntity.badRequest().body(errorBody);
            }
        }

        int safePage = Math.max(1, page);
        int safePageSize = Math.max(1, Math.min(pageSize, 100));

        List<Task> allResults = taskRepository.searchTasks(searchTerm, normalizedStatus);

        int start = (safePage - 1) * safePageSize;
        int end = Math.min(start + safePageSize, allResults.size());
        List<Task> pageResults = start >= allResults.size()
                ? List.of()
                : allResults.subList(start, end);

        Map<String, Object> response = new LinkedHashMap<>();
        response.put("items", pageResults);
        response.put("total", allResults.size());
        response.put("page", safePage);
        response.put("pageSize", safePageSize);

        return ResponseEntity.ok(response);
    }
}
