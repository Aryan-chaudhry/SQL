use ORG;

--   '*' any number of character
--   '_' only one character

-- Give Employee Detail whose name contains character 'v'
SELECT * FROM Worker WHERE FIRST_NAME LIKE '%v%';

-- Give Employee Detail whose last name last charcter is 'h'
SELECT * FROM WORKER WHERE LAST_NAME LIKE '%h';

-- Give Employee Detail first name first character is 'M' and last name first character is 'A'
SELECT * FROM Worker WHERE FIRST_NAME LIKE 'M%' AND LAST_NAME LIKE 'A%';