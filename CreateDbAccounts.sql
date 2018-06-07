//Sample Admin connect useraccount
CREATE USER 'adminusername'@'localhost' IDENTIFIED BY 'password';
GRANT ALL 
ON pusheen_library.* 
TO 'adminusername'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

//Sample Writer connect useraccount
CREATE USER 'writerusername'@'localhost' IDENTIFIED BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE
ON women_who_can.*
TO 'writerusername'@'localhost';
FLUSH PRIVILEGES;

//Sample Reader connect useraccount
CREATE USER 'readername'@'localhost' IDENTIFIED BY 'password';
GRANT SELECT, INSERT
ON pusheen_library.*
TO 'readerusername'@'localhost';
FLUSH PRIVILEGES;

