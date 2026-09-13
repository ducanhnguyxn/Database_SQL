/*============================================================

 Task 14: Procedure validate_user
 
Create a procedure validate_user, verifies a user’s login credentials and applies several security checks before allowing access.
It has three parameters: p_username and p_password (inputs for login details) and p_result (an output number indicating the result).
The procedure first uses injection_check to detect SQL injection attempts—if found, it stops and sets p_result to 0.
It then checks if the account is locked using is_account_locked, and whether system rules (systemconfig) restrict access for users under 18.
If all checks pass, it validates the username and password with checklogin; on success, it generates a positive numeric ID and assigns it to p_result.
If the credentials are invalid, it records the failed attempt in Invalid_Login and sets p_result to 0.
Output messages are displayed via DBMS_OUTPUT.PUT_LINE for cases like injection detection, locked accounts, age restrictions, successful login, or invalid credentials; other errors are handled by the database.

  Testing - Expect Locked=1 after 3 inserts
----------------------------------------------

-- each command tests the check user values

PROMPT T8_1: should block injection -> 0
DECLARE v NUMBER; BEGIN validate_user('x'' OR 1=1 --','x',v); DBMS_OUTPUT.PUT_LINE('v='||v); END;
/

PROMPT T8_2: Setting locked for user and then testing  -> Returns back 0
BEGIN UPDATE Login SET Locked=1 WHERE Username='user_over18'; END;
/
DECLARE v NUMBER; BEGIN validate_user('over18','over',v); DBMS_OUTPUT.PUT_LINE('v='||v); END;
/
BEGIN UPDATE Login SET Locked=0 WHERE Username='over18'; END;
/

PROMPT T8_3: Expect valid credentials -> id > 0
DECLARE v NUMBER; BEGIN validate_user('over18','over',v); DBMS_OUTPUT.PUT_LINE('v='||v); END;
/

PROMPT T8_4: Expect invalid credentials -> 0  x 3 to lock account 
DECLARE v NUMBER; BEGIN validate_user('over18','wrong',v); DBMS_OUTPUT.PUT_LINE('v='||v); END;
/
DECLARE v NUMBER; BEGIN validate_user('over18','wrong',v); DBMS_OUTPUT.PUT_LINE('v='||v); END;
/
DECLARE v NUMBER; BEGIN validate_user('over18','wrong',v); DBMS_OUTPUT.PUT_LINE('v='||v); END;
/

PROMPT T9_1: testing the under 18 person that should be blocked -> 0 and audit row inserted
DECLARE v NUMBER; BEGIN validate_user('under18','under',v); DBMS_OUTPUT.PUT_LINE('v='||v); END;
/

SELECT COUNT(*) AS invalid_rows FROM Invalid_Login WHERE Username='over18';

Marking 
-------------
2 create a procedure called validate_user
3 it has three parameters, p_username, p_password, both string as input, 
and p_result that is a number that is output
2 it should use the injection_check function for p_username and p_password and set p_result to 0
1 it should call is_account_locked and set p_result to  0 and return
1 should check systemconfig and return if 0
1 it should call  check_login for username and password and return back username if match or 0 if no match

Total Score: 10
==========================================*/

