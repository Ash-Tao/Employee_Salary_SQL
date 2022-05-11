# Employee_Salary_SQL

## Target
Performing the **data modeling**, **data engineering**, and **data analysis** on the giving dataset from six CSV files.<br/>

## Step by Step Approach

### Data Modeling
Inspect the CSVs and sketch out an ERD of the tables.<br/>
 <img src="https://github.com/Ash-Tao/sql-challenge/blob/main/EmployeeSQL/ERD_QuickDBD/ERD_QuickDBD-EmployeeSQL.png"><br/>
> the relationship between `salaries` and `employees`, `employees` and `dept_manager` is one-to-one.<br/>

### Data Engineering
- Create a table schema for each of the six CSV files. Specify:<br/>
  - Data types<br/>
  - Primary keys<br/>
    > Two composite keys were applied<br/>
    > ` python
    > primary key (emp_no, dept_no)` in dept_emp<br/>
    > ` python
    > primary key (emp_no, dept_no)` in dept_manager<br/>
  - Foreign keys<br/>
- Import each CSV file into the corresponding SQL table. 
  > If the table you are trying to import has a foreign key in it, you need to import the table which the foreign key refers to first.order for input the CSV:<br/>
  > - departments<br/>
  > - titles<br/>
  > - employees<br/>
  > - salaries<br/>
  > - dept_emp<br/>
  > - dept_manager<br/>

### Data Analysis
#### SQL Queries
- List the following details of each employee: employee number, last name, first name, sex, and salary.<br/>
- List first name, last name, and hire date for employees who were hired in 1986.<br/>
- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.<br/>
- List the department of each employee with the following information: employee number, last name, first name, and department name.<br/>
- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."<br/>
- List all employees in the Sales department, including their employee number, last name, first name, and department name.<br/>
- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.<br/>
- List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.<br/>

#### Bonus - Jupyter Notebook
- Import the SQL database into Pandas.<br/>
   ```sql
   from sqlalchemy import create_engine
   engine = create_engine(f"postgresql://<myusername>:<mypassword>@localhost:<myport>/EmployeeSQL")
   connection = engine.connect()
   ```
- Create a histogram to visualize the most common salary ranges for employees.(3 plots for different gaps)<br/>
   <img src="https://github.com/Ash-Tao/sql-challenge/blob/main/EmployeeSQL/Jupyter/The%20Most%20Common%20Salary%20Ranges%20for%20Employees(every%20%2410%2C000).png" width="400">
   <img src="https://github.com/Ash-Tao/sql-challenge/blob/main/EmployeeSQL/Jupyter/The%20Most%20Common%20Salary%20Ranges%20for%20Employees(every%20%245%2C000).png" width="400">
   <img src="https://github.com/Ash-Tao/sql-challenge/blob/main/EmployeeSQL/Jupyter/The%20Most%20Common%20Salary%20Ranges%20for%20Employees(every%20%241%2C000).png" width="400">
   > conclusion:<br/>
   > The frequency of salary is not normally distributed at all.<br/>
   > Even if it is not a perfectly normal distribution, I still expect to see the highest frequency data group won't be on one side of the X axis but in a middle of the dataset. The most strong evidence we can find is from the table "The Frequence for Salary Range (every $1,000)" that 33% of salaries fall within the extreme narrow range (40000-41000/per year) on the left of the X asix, which is very strange in a real world.<br/>
- Create a bar chart of average salary by title.<br/>
   <img src="https://github.com/Ash-Tao/sql-challenge/blob/main/EmployeeSQL/Jupyter/Average%20Salary%20by%20Title.png" width="700"><br/>
  > conclusion:<br/>
  > 2. The average salary does not match the employee's title.<br/>
  > From the "Average Salary by Title" table, it can be seen that "Senior Staff" and "Staff" have the highest annual income. Both of them are 10% higher than other titles. "Senior Engineer" is the lowest one; the net difference between the highest and lowest is 10,000 yuan, which is impossible in a real world.<br/>

### Files
- [SQL Database](https://github.com/Ash-Tao/sql-challenge/tree/main/EmployeeSQL/SQL_database)<br/>
  - DataAnalysis_Queries.sql<br/>
  - schemas.sql<br/>
- [Jupyter Notebook](https://github.com/Ash-Tao/sql-challenge/tree/main/EmployeeSQL/Jupyter)<br/>
  - Employee.ipynb<br/>
  - Average Salary by Title.png<br/>
  - The Most Common Salary Ranges for Employees(every $1,000).png(3 plots)<br/>
- [ERD_QuickDBD](https://github.com/Ash-Tao/sql-challenge/tree/main/EmployeeSQL/ERD_QuickDBD)<br/>
  - ERD_QuickDBD-EmployeeSQL.png
  - ERD_QuickDBD-EmployeeSQL.sql
