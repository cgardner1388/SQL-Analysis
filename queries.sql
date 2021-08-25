-----------Question 1------------
-----List the following details of each employee: employee number, last name, first name, sex, and salary.

Select A.emp_no, A.last_name, A.first_name, A.sex, B.salary From employee As A
left join salaries As B
on A.emp_no = B.emp_no;

-----------Question 2------------
---------List first name, last name, and hire date for employees who were hired in 1986

Select first_name, last_name, hire_date From employee
WHERE hire_date > '1986-01-01'
And hire_date < '1987-01-01';

---------Question 3 ------------
---------List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT D.dept_no, D.dept_name, A.emp_no, A.last_name, A.first_name  FROM employee AS A
Left JOIN dept_emp AS B
on A.emp_no = B.emp_no
Left JOIN titles AS C
on A.emp_title_id = C.title_id
Left JOIN departments AS D
on B.dept_no = D.dept_no
WHERE title = 'Manager';

---------Question 4 ----------
--------List the department of each employee with the following information: employee number, last name, first name, and department name.

Select A.emp_no, A.last_name, A.first_name, C.dept_name From employee AS A
Inner Join dept_emp AS B
on A.emp_no = B.emp_no
Inner Join departments AS C
on C.dept_no= B.dept_no;


----------Question 5----------
---------List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

Select first_name, last_name, sex From employee
Where first_name = 'Hercules'
And last_name like 'B%';

-------Question 6-----------
-------List all employees in the Sales department, including their employee number, last name, first name, and department name.

Select 
A.emp_no, A.last_name, A.first_name, C. dept_name From employee As A
left join dept_emp As B
on A.emp_no = B.emp_no
left join departments As C
on B.dept_no = C.dept_no
Where dept_name = 'Sales';

---------Question 7
---------List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

Select 
A.emp_no, A.last_name, A.first_name, C. dept_name From employee As A
left join dept_emp As B
on A.emp_no = B.emp_no
left join departments As C
on B.dept_no = C.dept_no
Where dept_name in ('Sales','Development');


---------Question 8
---------In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

Select Count(emp_no), last_name from employee
Group By last_name
Order By Count (emp_no) DESC;











