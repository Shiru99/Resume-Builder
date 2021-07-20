DROP TABLE IF EXISTS users, userprofile, user_experience, user_education, user_project, user_skills,skill;

CREATE TABLE users (
   id   INT     PRIMARY KEY     NOT NULL,
   username VARCHAR(50) UNIQUE NOT NULL,
   password VARCHAR(50) NOT NULL,
   active BOOLEAN NOT NULL,
   roles VARCHAR(50)
);

CREATE TABLE userprofile (
   id   INT     PRIMARY KEY     NOT NULL,
   theme INT NOT NULL,
   user_name VARCHAR(50) UNIQUE NOT NULL,
   job_title VARCHAR(50)  NOT NULL,
   first_name VARCHAR(50)  NOT NULL,
   last_name VARCHAR(50)  NOT NULL,
   email VARCHAR(50)  NOT NULL,
   website VARCHAR(50),
   phone_num VARCHAR(50)  NOT NULL,
   summary VARCHAR(500),
   profile_pic VARCHAR(200)
);

CREATE TABLE user_education (
   id   INT     PRIMARY KEY     NOT NULL,
   college VARCHAR(100) NOT NULL,
   degree VARCHAR(100) NOT NULL,
   grade VARCHAR(100) NOT NULL,
   start_date DATE NOT NULL,
   end_date DATE NOT NULL,
   current_education BOOLEAN DEFAULT false,
   user_id INT,
   FOREIGN KEY (user_id) REFERENCES userprofile(id) ON DELETE CASCADE
);

CREATE TABLE user_experience (
   id   INT     PRIMARY KEY     NOT NULL,
   company VARCHAR(100) NOT NULL,
   position VARCHAR(100) NOT NULL,
   description VARCHAR(500) NOT NULL,
   start_date DATE NOT NULL,
   end_date DATE NOT NULL,
   current_job BOOLEAN DEFAULT false,
   user_id INT,
   FOREIGN KEY (user_id) REFERENCES userprofile(id) ON DELETE CASCADE
);

CREATE TABLE user_project (
   id   INT     PRIMARY KEY     NOT NULL,
   project_name VARCHAR(100) NOT NULL,
   tools VARCHAR(100) NOT NULL,
   description VARCHAR(500) NOT NULL,
   start_date DATE NOT NULL,
   end_date DATE NOT NULL,
   user_id INT,
   FOREIGN KEY (user_id) REFERENCES userprofile(id) ON DELETE CASCADE
);

CREATE TABLE skill(
   id INT     PRIMARY KEY     NOT NULL,  
   skill_name VARCHAR(50)
);

CREATE TABLE user_skills(
   user_id INT  NOT NULL,  
   skill_id INT  NOT NULL, 
   FOREIGN KEY (user_id) REFERENCES userprofile(id) ON DELETE CASCADE,
   FOREIGN KEY (skill_id) REFERENCES skill(id) ON DELETE CASCADE
);