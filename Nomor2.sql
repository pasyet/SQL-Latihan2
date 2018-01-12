select
	k.employee_id as "Kode Karyawan",
	concat(k.first_name, ' ', k.last_name) as nama_karyawan,
  d.department_name as "Nama Bagian",
  case when m.employee_id IS NULL
      then 'Saya tidak punya manager!'
  else concat(m.first_name, ' ', m.last_name)
  end as manager_name,
  upper (j.job_title) as "Nama Jabatan"

from
	employees k
JOIN departments d ON k.department_id = d.department_id
LEFT OUTER JOIN employees m ON k.employee_id = m.employee_id
JOIN jobs j ON k.job_id = j.job_id
ORDER BY manager_name,nama_karyawan;