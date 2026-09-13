/*=============================
Task 5: Login table

Create a  SQL statement to create a table named Login to store user account information.
It defines four columns: Username (the primary key identifying each user), Password (required user password), DOB (date of birth), 
and Locked (a flag indicating if the account is locked, with 0 for unlocked and 1 for locked).
The Locked column has a default value of 0 and a constraint ensuring it can only be 0 or 1.
The statement produces no output messages; any success or error feedback is handled by the database system.

Testing
--------
-- verify table exists, but it doesnt verify the column names and datatypes
SELECT table_name FROM user_tables WHERE table_name = UPPER('Login');

Marking 
--------------
2 for the creating the correct type with correct name
4 for the table, 2 for right names, 4 for right datatypes
3 for the constraint for locked that has a range of 0 and 1 and default value

Total marks: 9
==============================*/
