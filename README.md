# Unexpected NULL Handling in SQL Comparison

This repository demonstrates a common, yet subtle, error in SQL queries involving comparisons with `NULL` values.  The provided SQL query intends to retrieve employees from the 'Sales' department with a salary greater than 100000. However, due to how `NULL` values are handled in SQL comparisons, employees with `NULL` salaries are inadvertently excluded.

The `bug.sql` file contains the problematic query, while `bugSolution.sql` provides a corrected version that addresses the `NULL` handling issue.