select 
	employee_id as "Kode Karyawan",

  department_name as "Nama Department",

	concat(first_name, ' ', last_name) as "Nama Lengkap",

  to_char(salary, '99,999') as "Gaji Sebulan",

  case when commission_pct IS NULL 	/*kasus dimana komisi = null*/
    then 'Tidak punya komisi!'			/*maka Tidak punya komisi*/
  else to_char((salary *commission_pct), '999,999') 	/*else salary*null(0)*/
  end as "Mendapatkan Komisi",

  	to_char (salary + (salary * coalesce(commission_pct, 0)), '999,999') as "Gaji Terima"
  	/*salary+(salary*/
from 
	employees,
    departments

