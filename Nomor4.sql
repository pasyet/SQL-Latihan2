SELECT
  k.salary *12 as gaji_setahun,
  count (k.employee_id) as jumlah_karyawan
FROM employees k
WHERE k.commission_pct IS NOT NULL
GROUP BY gaji_setahun
ORDER BY jumlah_karyawan DESC