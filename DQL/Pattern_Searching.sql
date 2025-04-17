use ORG;

--   '*' any number of character
--   '_' only one character

-- Give Employee Detail whose name contains character 'v'
SELECT * FROM Worker WHERE FIRST_NAME LIKE '%v%';

-- Give Employee Detail whose last name last charcter is 'h'
SELECT * FROM WORKER WHERE LAST_NAME LIKE '%h';

-- Give Employee Detail whose first name first character is 'M' and last name first character is 'A'
SELECT * FROM Worker WHERE FIRST_NAME LIKE 'M%' AND LAST_NAME LIKE 'A%';

-- Give Employee detail whose first name second charcter is 'o'
SELECT * FROM Worker WHERE FIRST_NAME LIKE '_o%';

-- Give Employee detail whose first name second last character is 'e'
SELECT * FROM Worker WHERE FIRST_NAME LIKE '%e_';