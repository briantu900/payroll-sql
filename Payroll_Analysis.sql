USE PAYROLL;

#distribution of employee gender,ethnicity and salary
/*SELECT employee.gender, employee.ethnicity, COUNT(employee.ethnicity) AS total, AVG(total) as avg_salary
FROM employee
INNER JOIN pay
ON employee.employee_no = pay.employee_no
GROUP BY gender, ethnicity
ORDER BY ethnicity ASC*/

#diversity of department
SELECT department.depart_title, COUNT(DISTINCT employee.ethnicity) AS distinct_ethnicity
FROM employee
INNER JOIN department
ON employee.employee_no = department.employee_no
GROUP BY department.depart_title
ORDER BY distinct_ethnicity DESC;

#highest overtime
/*SELECT employee.employee_no, pay.overtime
FROM employee
INNER JOIN PAY
ON employee.employee_no = pay.employee_no
ORDER BY overtime DESC*/

#average overtime pay by job title
/*SELECT job.title, AVG(pay.overtime) as avg_overtime_pay
FROM job
INNER JOIN PAY
ON job.employee_no = pay.employee_no
GROUP BY job.title
ORDER BY avg_overtime_pay DESC*/

#number of employees, total salary and benefits by department
/*SELECT department.depart_title, COUNT(department.depart_title) AS no_employees, 
SUM(pay.benefit) AS total_benefit, SUM(pay.total) AS total_salary
FROM pay
INNER JOIN department
ON pay.employee_no = department.employee_no
GROUP BY department.depart_title*/

#count of department and job titles
/*SELECT COUNT(DISTINCT department.depart_title) AS no_department, COUNT(DISTINCT job.title) AS no_job_title
FROM department
INNER JOIN job
ON department.employee_no = job.employee_no*/

#department with highest/lowest cost per employee
/*SELECT department.depart_title, AVG(pay.total) AS cost_per_employee
FROM department
INNER JOIN pay
ON department.employee_no = pay.employee_no
GROUP BY department.depart_title
ORDER BY cost_per_employee DESC*/