## Types of command

1. DDL (Data defination language)

    ``` it define relation schema```

    --> CREATE, ALTER TABLE, DROP, TRUNCATE, RENAME.

2. DRL/DQL (Data retriival language/ data query language)

    ``` it is used to retrieve data from Database```

    --> SELECT.

3. DML (Data Modification Language)

    ``` it is used to perform modification in the Database ```

    --> INSERT, UPDATE, DELETE

4. DCL (Data Control Language)

    ``` it is used to grant or revoke authorities from user ```

    --> GRANT, REVOKE.

5. TCL (Transaction control Language)

    ``` it is used to manage transactions done in the Database ```

    --> SMART TRANSACTION, COMMIT, ROLLBACK, SAVEPOINT.




# Famus Interview Questions

``` 1. Can we use SELECT keyword without using FROM clause? ```

Ans: yes, Using DUAL Table, Dual table are dummy tables created by MYSQL, help user to do certain obvious actionswithout referring to user defined tables 

Example ``` SELECT 55+11, SELECT now(), SELECT ucase(), SELECT lcase(); ``` etc


``` 2. Find the employee in the table whose name contain character 'V' **(Important)```

    Hint  pattern Searching 

Queries like these -->   DQL > Pattern_Searching.sql

``` 3. Find Average salary per Department ```

    Hint  Data Grouping 

Queries like these -->  DQL > dataGrouping.sql

    
 ``` what if i want to do make a group but without aggregation function ? ```

    Ans: it act like DISTINCT function 

HAVING CLAUSE

    Note HAVING is always used with GROUP BY, it is similar to where (not equal)

``` 4. Can Forign key have null value ```

Ans:  Yes, if we use ``` ON DELETE SET NULL ``` then forign key can contain null value


ON DELETE CASCASE :- ``` if i delete a value from a parent table than the corrosponding value present inside a child table also get deleted ```

ON DELETE SET NULL :- ``` if i delete a value from a parent table than the corrosponding  value present inside a child table it foreign key get NULL ```

``` 5. Replace vs Update ```

    Hint : if row is not present REPLACE will add a new row while UPDATE do nothing

### JOINS

    Note:- To apply joins, there should be common attributes in both tha table

#### INNER JOIN

Syntax

``` SELECT column-list FROM table1 INNER JOIN table2 condition ```


#### OUTER JOIN

1. LEFT JOIN    Syntax:- ``` SELECT columns FROM table LEFT JOIN table2 ON Join_condition ```

2. RIGHT JOIN   Syntax:- ``` SELECT columns FROM table RIGHT JOIN table2 ON Join_condition ```

3. FULL JOIN    Syntax:- ``` SELECT columns FROM table1 as t1 Right JOIN tabe2 as t2 ON t1.id UNION Select columns FROM table1 as t1 RIGHT JOIN table2 as t2 ON t1.id = t2.d```

FULL JOIN is nothing but LEFT JOIN UNION RIGHT JOIN


