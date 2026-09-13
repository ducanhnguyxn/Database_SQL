
/*===============================================
  Task 7: Function is_under_18

This function, is_under_18, checks whether a user is under 18 years old based on their date of birth.
It takes one input parameter, p_username, which specifies the username to look up in the Login table.
The function retrieves the user’s date of birth, compares it to the current date (SYSDATE), and returns 1 if the user is under 18 or 0 if 18 or older.
It produces no output messages; any success or error (such as a missing username) is handled automatically by the database.

Testing
----------
-- check if we have two rows
select * from login;

-- call the function for both the under18 and over 18
select is_under_18('under18') from dual; -- returns 1
select is_under_18('over18') from dual; -- returns 0

Marking 
-------------
2 create function is_under_18 
2 p_username as an input parameter of a suitable type 
1 return a number 
1 get the dob for user
1 return 1 if under 18 else 0

Total Marks: 7 points


================================================*/
