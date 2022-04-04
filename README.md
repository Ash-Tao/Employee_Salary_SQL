# sql-challenge

## Target
Performing the **data modeling**, **data engineering**, and **data analysis** on the giving dataset from six CSV files.<br/>

## Step by Step Approach

#### Data Modeling
Inspect the CSVs and sketch out an ERD of the tables.<br/>
 <img src="https://github.com/Ash-Tao/sql-challenge/blob/main/EmployeeSQL/ERD-EmployeeSQL.png"><br/>

#### Data Engineering
- Create a table schema for each of the six CSV files. Specify:<br/>
  - Data types<br/>
  - Primary keys<br/>
    > Two composite keys were applied<br/>
  - Foreign keys<br/>
- Import each CSV file into the corresponding SQL table. 
  > If the table you are trying to import has a foreign key in it, you need to import the table which the foreign key refers to first.<br/>

#### Data Analysis
## Queries
- List the following details of each employee: employee number, last name, first name, sex, and salary.<br/>
- List first name, last name, and hire date for employees who were hired in 1986.<br/>
- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.<br/>
- List the department of each employee with the following information: employee number, last name, first name, and department name.<br/>
- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."<br/>
- List all employees in the Sales department, including their employee number, last name, first name, and department name.<br/>
- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.<br/>
- List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.<br/>

## Bonus - Jupyter Notebook
- Import the SQL database into Pandas.<br/>
   ```sql
   from sqlalchemy import create_engine
   engine = create_engine(f"postgresql://<myusername>:<mypassword>@localhost:<myport>/EmployeeSQL")
   connection = engine.connect()
   ```
- Create a histogram to visualize the most common salary ranges for employees.<br/>
   <img src="https://github.com/Ash-Tao/sql-challenge/blob/main/EmployeeSQL/The%20Most%20Common%20Salary%20Ranges%20for%20Employees.png"><br/>
- Create a bar chart of average salary by title.<br/>
   <img src="https://github.com/Ash-Tao/sql-challenge/blob/main/EmployeeSQL/Average%20Salary%20by%20Title.png"><br/>

## Files
- [ERD image](https://github.com/Ash-Tao/sql-challenge/blob/main/EmployeeSQL/ERD-EmployeeSQL.png)<br/>
- [`.sql` file of schemata](https://github.com/Ash-Tao/sql-challenge/blob/main/EmployeeSQL/schemas.sql)<br/>
- [`.sql` file of queries](https://github.com/Ash-Tao/sql-challenge/blob/main/EmployeeSQL/DataAnalysis_Queries.sql)<br/>
- Jupyter Notebook
  - [`.ipynb` file of script](https://github.com/Ash-Tao/sql-challenge/blob/main/EmployeeSQL/Employee.ipynb)<br/>
  - [Histogram for the most common salary ranges](https://github.com/Ash-Tao/sql-challenge/blob/main/EmployeeSQL/The%20Most%20Common%20Salary%20Ranges%20for%20Employees.png)<br/>
  - [Bar chart of average salary](https://github.com/Ash-Tao/sql-challenge/blob/main/EmployeeSQL/Average%20Salary%20by%20Title.png)<br/>
<br/>
