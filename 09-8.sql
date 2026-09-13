/*===============================================

Task 9: Function checklogin

This function, checklogin, verifies whether a user’s login credentials are valid.
It takes two input parameters: p_username (the username) and p_password (the user’s password).
The function checks the Login table for a record matching both values and counts the results.
If exactly one match is found, it returns 1 (login successful); otherwise, it returns 0 (login failed).
No output messages are produced; any errors are handled automatically by the database.

Testing
-------------
PROMPT T7_1: Expect 1 WHEN USERNAME AND PASSWORD ARE CORRECT, OTHERWISE REUTRN BACK 0
SELECT checklogin('over18','over') AS match_ok FROM dual; -- returns 1
SELECT checklogin('under18','wrong') AS match_bad FROM dual; -- returns 0

Marking 
-------------
2 CREATE A function called checklogin
2 it should have two input parameters p_username and p_password that are strings
1 it should return a number
2 it should check if the username and password is in the login table are correct 
1 returns 1 success or  0 if not

-- Total Marks: 8 points

==============================================================*/
