/*============================================================
  Task 13: Trigger trg_lock_after_invalid_logins

Create a trigger called trg_lock_after_invalid_logins, automatically locks a user’s account after multiple failed login attempts.
It runs after each insert into the Invalid_Login table and has no input parameters.
The trigger updates the Login table, setting Locked = 1 for any username that appears three or more times in Invalid_Login, 
indicating repeated failed attempts.It produces no output messages; any success or error is handled automatically by the database.

  Testing - Expect Locked=1 after 3 inserts
----------------------------------------------
-- please run each block separatly and observe the output

-- Clear the data out before we start
BEGIN 
  UPDATE Login SET Locked=0 WHERE Username='under18';
  DELETE FROM Invalid_Login WHERE Username='under18';
  commit;
END;
/
-- run this separate
SELECT Locked FROM Login WHERE Username='under18';
/
-- run code simulate the lock
BEGIN
  INSERT INTO Invalid_Login(Username,Reason) VALUES('under18','t1');
  INSERT INTO Invalid_Login(Username,Reason) VALUES('under18','t2');
  INSERT INTO Invalid_Login(Username,Reason) VALUES('under18','t3');
  commit;
END;
/
-- locked should now be 1
SELECT Locked FROM Login WHERE Username='under18';
/
-- unlock this account
UPDATE Login SET Locked=0 WHERE Username='under18';
commit;

-- prove it is unlocked
SELECT Locked FROM Login WHERE Username='under18';

Marking 
-------------

2 create a trigger called "trg_lock_after_invalid_logins"
1 that will run after data has been inserted 
1 using invalid_login table 
1 it should count how many invalid logins
1 if this is count >= 3  
2  update the login table and set locked to 1 for that user 


Total Score: 8
==========================================*/
