/*==============================================
Task 3: Create stored procedure insert_system_value

create procedure insert_system_value, adds a new record to the System_Values table.
It takes three input parameters — p_key (the record’s key or name), p_operation (the related operation type), and p_value (the value to store).
The procedure inserts these values along with a new ID generated from the System_Values_Insert sequence, then commits the transaction.
It produces no output messages on success or error; any errors are handled automatically by Oracle without custom messages.


  Testing
  ----------
  -- verify procedure created and compiled
  SHOW ERRORS PROCEDURE insert_system_value;
  -- note do the next task to verifies it works

  Marking 
-------------
 2 correct object creation with correct name
 3 correct parameters
 1 using System_Values_Insert
 2 correct insert
 
 total marks:  8
===============================================*/
