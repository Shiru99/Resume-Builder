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
   username VARCHAR(50) UNIQUE NOT NULL,
   summary VARCHAR(500)
);