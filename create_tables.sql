USE sql_project;
/* Creating tables */
DROP TABLE IF EXISTS comments;
CREATE TABLE IF NOT EXISTS sql_project.comments (
	id INT,
	name VARCHAR(100),
	anonymous BOOL,
	hostProgramName VARCHAR(10),
	graduatingYear INT,
	isAlumni BOOL,
	jobTitle VARCHAR(50),
	tagline VARCHAR(255),
	body VARCHAR(255),
	createdAt DATE,
	queryDate DATE,
	program VARCHAR(100),
	user VARCHAR(100),
	overallScore FLOAT,
	comments VARCHAR(100),
	overall FLOAT,
	curriculum FLOAT,
	jobSupport FLOAT,
	reviewBody VARCHAR(255),
	school VARCHAR(50));

DROP TABLE IF EXISTS locations;
CREATE TABLE IF NOT EXISTS locations (
	city_id VARCHAR(255),
	city_keyword VARCHAR(255),
	city_name VARCHAR(255),
	country_abbrev VARCHAR(255),
	country_id VARCHAR(255),
	country_name VARCHAR(255),
	description VARCHAR(255),
	id VARCHAR(255),
	school VARCHAR(255),
	school_id INT,
	state_abbrev VARCHAR(255),
	state_id VARCHAR(255),
	state_keyword VARCHAR(255),
	state_name VARCHAR(255));

DROP TABLE IF EXISTS courses;
CREATE TABLE IF NOT EXISTS courses (
	courses VARCHAR(255),
	school VARCHAR(255),
	school_id INT);

DROP TABLE IF EXISTS badges;
CREATE TABLE IF NOT EXISTS badges (
	description VARCHAR(255),
	keyword VARCHAR(255),
	name VARCHAR(255),
	school VARCHAR(255),
	school_id INT);


CREATE TABLE IF NOT EXISTS schools (
	website VARCHAR(255),
	description VARCHAR(255),
	LogoUrl VARCHAR(255),
	school VARCHAR(255),
	school_id INT PRIMARY KEY);



