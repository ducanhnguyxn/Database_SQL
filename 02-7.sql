/*==============================================
  Task 2: Create Sequence Object System_Values_Insert

  The task creates a sequence object called System_Values_Insert that automatically generates unique numeric values, 
  starting at 10 and increasing by 1 each time. It has no maximum limit, does not restart,
  and caches 50 values in memory to improve performance when assigning IDs or record numbers during data insertion.

  Testing
  ----------
  -- testing if an object exists, but not if its settings are all correct
  SELECT sequence_name FROM user_sequences WHERE sequence_name = UPPER('System_Values_Insert');

  Marking 
-------------
  2 points for creation of right object with right name
  5 points, 1 point for every valid setting on the created object
  
  Total Score  7
===============================================*/
