```sql
SELECT * FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL);
```

This corrected query uses the `OR salary IS NULL` condition to explicitly include employees with `NULL` salaries in the results.  Alternatively, you could use `COALESCE` to handle `NULL` values:

```sql
SELECT * FROM employees WHERE department = 'Sales' AND COALESCE(salary, 0) > 100000;
```
This replaces `NULL` salaries with 0 before the comparison, ensuring that rows with `NULL` salaries are also considered.