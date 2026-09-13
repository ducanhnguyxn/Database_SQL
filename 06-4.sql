/*=================================
Task 6: Login table data

This code inserts two user accounts into the Login table.
The first ('under18') represents a user who is under 18, with an active (unlocked) account.
The second ('over18') represents a user older 30 years old, also with an active account.
Each record includes a username, password, date of birth, and lock status.
No output messages are produced; any success or error is handled by the database.

CASE MATTERS inserting text get the marks

Testing
--------------
-- check data exists in login table
-- username password DOB  Locked       
-- under18	under	    X	  0
-- over18	  over	    X	  0
select * from login;


  Marking 
-------------
2 insert into login table a user called user_under18 with password 'under' with a dob that makes them 15
2 insert into login table a user called over_under18 with password 'under' with a dob that makes them 30

Total Marks 4

==============================*/
