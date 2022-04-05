alter table employees drop constraint if exists fk_emp_title;
alter table dept_manager drop constraint if exists fk_emp_no_manager;
alter table dept_emp drop constraint if exists fk_emp_no;
alter table dept_manager drop constraint if exists fk_dept_no_manager;
alter table dept_emp drop constraint if exists fk_dept_no;


drop table if exists departments;
drop table if exists dept_emp;
drop table if exists dept_manager;
drop table if exists employees;
drop table if exists salaries;
drop table if exists titles;

create table departments (
	dept_no varchar(4) not null,
	dept_name varchar(50) not null,
	primary key (dept_no)
);

create table titles (
	title_id varchar(5) not null,
	title varchar(50) not null,
	primary key (title_id)
);

create table employees (
	emp_no int not null,
	emp_title_id varchar(5) not null,
	birth_date date not null,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	sex varchar(1) not null,
	hire_date date not null,
	primary key (emp_no)
);

create table salaries (
	emp_no int not null,
	salary int not null,
	primary key (emp_no)
);

create table dept_emp (
	emp_no int not null,
	dept_no varchar(4) not null,
	primary key (emp_no, dept_no)
);

create table dept_manager (
	dept_no varchar(4) not null,
	emp_no int not null,
	primary key (emp_no, dept_no)
);


alter table employees add constraint fk_emp_title_employees
foreign key (emp_title_id)
references titles(title_id);

alter table dept_manager add constraint fk_emp_no_dept_manager
foreign key (emp_no)
references employees(emp_no);

alter table dept_emp add constraint fk_emp_no_dept_emp
foreign key (emp_no)
references employees(emp_no);

alter table dept_manager add constraint fk_dept_dept_manager
foreign key (dept_no)
references departments(dept_no);

alter table dept_emp add constraint fk_dept_no_dept_emp
foreign key (dept_no)
references departments(dept_no);

alter table salaries add constraint fk_emp_no_salaries
foreign key (emp_no)
references employees(emp_no);
