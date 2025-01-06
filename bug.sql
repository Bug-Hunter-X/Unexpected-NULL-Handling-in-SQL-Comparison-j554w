```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```

The above query might seem correct at first glance, but it can lead to unexpected results if there are any `NULL` values in the `salary` column.  Because `NULL` is not considered greater than, less than, or equal to any value, including 100000, rows with `NULL` salaries will be excluded from the results even though they might be in the 'Sales' department.