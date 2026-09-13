
/*===============================================

Task 11: function injection_check

Crate a function called injection_check thats in an input p_text to validate for possible SQL injection patterns.

Logic: a) returns '0' if p_text is null or contains patterns within the text like --, ;, OR, or AND;/*, */ 
/*     n) otherwise, it returns the original text.

No output messages are produced; any errors are handled by the database.

Testing
-------------

PROMPT T5_1: Checking injection function with 'normalUser' Expect 'normalUser'
SELECT injection_check('normalUser') AS ok FROM dual; -- returns 'normalUser'

PROMPT T5_2: Checking injection function with 'x'' OR 1=1 --' Expect '0'
SELECT injection_check('x'' OR 1=1 --') AS flagged FROM dual; returns -- '0'

  Marking 
-------------

2 create a function called injection_check
1 it should have a parameter called p_text that is a string
1 it should return a string
1 if p_text is not set then return '0'

2 you will need to check the value of p_text and 
  use a regular expression to understand if someone is trying to create a sql injection
  student researches  REGEXP_LIKE and uses appropriatly on p_text 

1 correct response for normaluser == 'normalUser'
1 correct response for 'x'' OR 1=1  == '0' 
Total Marks: 9
===========================================*/