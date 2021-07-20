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
   summary VARCHAR(500)
);