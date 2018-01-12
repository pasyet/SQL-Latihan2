SELECT
  k.employee_id as kode_karyawan,
  concat(first_name, ' ', last_name) as nama_lengkap,
  to_char(salary, '99,999') as gaji_karyawan,
  j.job_id as jabatan,
  k.email
FROM
  employees k
JOIN jobs j on k.job_id =j.job_id
WHERE k.salary >= (
  SELECT max(k2.salary)
  FROM employees k2
  WHERE k2.job_id ='IT_PROG'
)
  AND commission_pct IS NOT NULL
ORDER BY gaji_karyawan,k.job_id 