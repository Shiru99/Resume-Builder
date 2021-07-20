# PostgreSQL

***Installation***
```
$ sudo apt-get update
 
$ sudo apt install postgresql postgresql-contrib
```

***Use Default User-psql***
```
$ sudo -u postgres psql postgres
```


***Use New User***
```
$ sudo -u postgres psql postgres

postgres=# CREATE ROLE "Shiru99" WITH PASSWORD '1234';

postgres=# ALTER ROLE  "Shiru99" WITH LOGIN;
```

***Create New Database***
```
postgres=# CREATE DATABASE resumebuilder;  (dbname - all letters small)

$ psql -U Shiru99 -h localhost -p 5432 -d resumebuilder;
```

***Create New Table***
```
resumebuilder=> CREATE TABLE users (
   id   INT     PRIMARY KEY     NOT NULL,
   username VARCHAR(50) UNIQUE NOT NULL,
   password VARCHAR(50) NOT NULL,
   active BOOLEAN NOT NULL,
   roles VARCHAR(50)
);
```


***Insert New Table-entries***
```
resumebuilder=> INSERT INTO users (id,username,password,active,roles) 
                  VALUES  
                     (1, 'John Doe' , '1234', 'true', 'ROLE_USER'),
                     (2, 'Jenny Doe' , '1234', 'true', 'ROLE_USER'),
                     (3, 'James Doe' , '1234', 'true', 'ROLE_USER');
```

***List of Tables***
```
resumebuilder=> \dt;
```

***Table Description***
```
\d tableName;
```

***Table-entries***
```
resumebuilder=> select * from users;
```

---

### Port 8089 was already in use :

```
$ lsof -i :8089 | grep LISTEN
java    354291 shiru  102u  IPv6 240958      0t0  TCP *:8089 (LISTEN)
$ kill -9 354291
```