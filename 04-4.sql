
/*==============================================
Task 4: Use insert_system_value procedure
--------------------------------
This PL/SQL block calls the insert_system_value procedure twice to add predefined records into the System_Values table.
The first call inserts a record with key 'Under18', operation 'AgeGroup', and value 'Restricted', while the second inserts 'Over18', 'AgeGroup', and 'FullAccess'.
Each call uses the procedure’s logic to insert data and commit it to the database.
The block itself produces no output messages; any success or error handling is managed within the called procedure or by Oracle.

Important, do not insert the values manually, I will be able to tell

Testing
---------
-- Verifying the values exist for two rows for under18 and over 18, simular to the following,the primary key number changes when you are testing as the sequence changes
-- ID KEY     OPERATION  VALUE
-- 10	Under18	AgeGroup	Restricted
-- 11	Over18	AgeGroup	FullAccess
select * from system_values;

Marking 
--------------
2 points for using either the begin/end;/ block or 1 point each for each exec
1 use the insert_system_value stored procedure 
1 use the insert_system_value stored procedure 

total marks: 4


*/

