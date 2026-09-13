/*=====================================================================
  Task 15 Reporting invalid login attempts 

  a) Run Script to create a REPORTING_SUMMARY Table 

  CREATE TABLE  Reporting_Summary (
    Username       VARCHAR2(50),
    FailedAttempts NUMBER,
    DOB            Date,
    REPORTRUN      dATE DEFAULT SYSDATE
  );

  b)   This procedure, reporting, generates a summary of user login activity and inserts it into the Reporting_Summary table.
  It has no input parameters. The logic selects each user from the Login table, 
  counts how many failed login attempts they have from the Invalid_Login table, and retrieves their date of birth (converted to text).
  The results are grouped by username and date of birth and then inserted into Reporting_Summary.
  It produces no output messages; any success or error feedback is handled automatically by the database.

  Testing
  -------------
  -- run the reporting 
  BEGIN
    reporting;
  end;
  /
  -- See the results of our reporting
  Select * from REPORTING_SUMMARY;
  /

-- results will look simular like below
 --   USERNAME  FAILED ATTEMPTS DOB   REPORTRUN
 --   over18	    0	             X	2025-10-28T18:35:16
 --   under18	    6	             X	2025-10-28T18:35:16

  Marking 
-------------
1 RUN SCRIPT TO CREATE REPORTING_SUMMARY TABLE
2 correct name object created called reporting of correct type
3 report output correct
  1 for using relevant joins
  1 for showing the right column names
  1 for using aggregation correctly

 Total Marking: 6
======================================================================*/

