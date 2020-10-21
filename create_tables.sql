USE sql_project;
/* Creating tables */

CREATE TABLE IF NOT EXISTS schools (
	website VARCHAR(255),
	description VARCHAR(255),
	LogoUrl VARCHAR(255),
	school VARCHAR(255),
	school_id INT,
    PRIMARY KEY (school_id)
    );

CREATE TABLE IF NOT EXISTS countries (
	country_id INT,
    country_name VARCHAR(255),
    country_abbrev VARCHAR(255),
    PRIMARY KEY (country_id)
    );

CREATE TABLE IF NOT EXISTS cities (
	city_id INT,
    city_name VARCHAR(255),
    city_keyword VARCHAR(255),
    PRIMARY KEY (city_id)
    );

CREATE TABLE IF NOT EXISTS states (
	state_id INT,
    state_name VARCHAR(255),
    state_abbrev VARCHAR(255),
    state_keyword VARCHAR(255),
    PRIMARY KEY (state_id)
    );

CREATE TABLE IF NOT EXISTS locations (
	id INT,
    description VARCHAR(255),
    school_id INT,
    country_id INT,
    city_id INT,
    state_id INT,
    FOREIGN KEY (school_id) REFERENCES schools(school_id),  
    FOREIGN KEY (country_id) REFERENCES countries(country_id),
    FOREIGN KEY (city_id) REFERENCES cities(city_id),
    FOREIGN KEY (state_id) REFERENCES states(state_id)
    );
    
CREATE TABLE IF NOT EXISTS badges (
	description VARCHAR(255),
    keyword VARCHAR(255),
    name VARCHAR(255),
    PRIMARY KEY (keyword)
    );

CREATE TABLE IF NOT EXISTS badges_schools (
	id INT NOT NULL AUTO_INCREMENT,
    badges VARCHAR(255),
    school_ID INT,
    PRIMARY KEY (id),
	FOREIGN KEY (badges) REFERENCES badges(keyword),
    FOREIGN KEY (school_id) REFERENCES schools(school_id)
    );

CREATE TABLE IF NOT EXISTS sql_project.courses (
	course VARCHAR(255),
    school_id INT,
    course_id VARCHAR(255),
    PRIMARY KEY (course_id),
    FOREIGN KEY (school_id) REFERENCES schools(school_id)
	);
    
CREATE TABLE IF NOT EXISTS sql_project.comments (
	id INT,
    name VARCHAR(255),
	anonymous BOOL,
	hostProgramName VARCHAR(255),
	graduatingYear INT,
	isAlumni BOOL,
	jobTitle VARCHAR(255),
	tagline VARCHAR(255),
	queryDate DATE,
	course_id VARCHAR(255),
	overallScore FLOAT,
	overall FLOAT,
	curriculum FLOAT,
	jobSupport FLOAT,
	review_body TEXT,
	school_id INT,
    PRIMARY KEY (id),
	FOREIGN KEY (course_id) REFERENCES courses(course_id),
    FOREIGN KEY (school_id) REFERENCES schools(school_id)
    );