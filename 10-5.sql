/*===============================================

Task 10: Function is_account_locked

This function, is_account_locked, checks whether a user’s account is locked.
It takes one input parameter, p_username, which identifies the user in the Login table.
The function retrieves the Locked value (defaulting to 0 if not found) and returns 1 if the account is locked or 0 if it is active.
No output messages are produced; any success or error (such as a missing username) is handled automatically by the database.

Testing
-------------
declare
usertouse varchar2(20) := 'under18';
islocked number(1);
begin
DBMS_OUTPUT.PUT_LINE('setting locked ');
update login set locked=1 where username =usertouse;
commit;
select  lock_check(usertouse) into islocked FROM dual;
DBMS_OUTPUT.PUT_LINE('lock_check -> locked ' || islocked );
update login set locked=0 where username =usertouse;
commit;
DBMS_OUTPUT.PUT_LINE('setting UN locked ');
select  lock_check(usertouse) into islocked FROM dual;
DBMS_OUTPUT.PUT_LINE('lock_check -> locked ' || islocked );
end;

Marking 
-------------
2 create a function called is_account_locked
1 it should have an input parameter called p_username that is string
1 it should return a number
1 it should return back the locked attritubte on the login table for that user 

you should validate this work using the two users created 

Total Marks: 5 points

===========================================*/


