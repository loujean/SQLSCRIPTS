DELIMITER $$
 
  CREATE PROCEDURE add_member (
  IN USRNAME VARCHAR(30),
  IN PASS VARCHAR(50),
  SECGROUP VARCHAR (20),
  SNAME VARCHAR(30),
  FNAME VARCHAR (30),
  EMAIL VARCHAR(60),
  PIMAGE VARCHAR (120)
  PDESCRIPT TINYTEXT,
  
)
BEGIN
insert into members (username, password, security_group)
values (USRNAME, PASS, SECGROUP);
insert into profiles (member_id, surname, forename,  email, profile_image, profile_description)
values
((select member_id from members where username=USRNAME order by member_id
DESC limit 1),
SNAME, FNAME,  EMAIL, PIMAGE, PDESCRIPT);
END $$

/* You can test this script by usin the following - call add_member('Loujean','password','reader','Louise','Jean','sally.jean@gmail.com', 'Hello, my name is'); */

