SELECT
  d.department_id as dep_id,
  d.department_name as dep_name,
  sum(k.salary) as total_gaji
FROM
  employees k
JOIN departments d ON k.department_id = d.department_id
GROUP BY d.department_id, d.department_name
ORDER BY total_gaji DESC


