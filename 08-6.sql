/*===============================================

Task 8: Function systemconfig

Create a function called  systemconfig, determines whether a user should be granted or denied access based on their age and system settings.
It takes one input parameter, p_username, which identifies the user.

The function first checks if the user is under 18 using is_under_18, then retrieves the system configuration value for the 'Under18' age group from the System_Values table.
If the user is under 18 and the system value is 'Restricted', it returns 1 (access denied); otherwise, it returns 0 (access granted).
No output messages are produced; any success or error (like missing data) is handled by the database.

Testing
-------------
-- check if system values are correct
--  ID  KEY   OPERATION   VALUE
--  10	Under18	AgeGroup	Restricted
--  11	Over18	AgeGroup	FullAccess
select * from SYSTEM_VALUES;

-- check if the function works and returns correct value
select systemconfig('Under18') from dual; -- return 1
select systemconfig('Over18') from dual; -- return 0


  Marking 
-------------
2 create a function called system config
1 take in p_username
1 call isunder18 function and store result
2 check the system_values table for the under18 key, if the value is 'DENIED' then return 0, else reutrn 1

Total Marks: 6 points

*/
