use ORG;

-- add new column in profile table
-- Syntax

-- ALTER TABLE TABLE_NAME ADD column name DATATYPE Constraits(if required)
ALTER TABLE Profile ADD Email_id VARCHAR(225)  UNIQUE

SELECT * FROM Profile

-- MODIFY DATATYPE 

ALTER TABLE Profile MODIFY follower LONG;
ALTER TABLE Profile MODIFY following LONG;


-- change column
ALTER TABLE Profile CHANGE COLUMN followings followers LONG

-- drop Column
ALTER TABLE Profile DROP COLUMN Email_id\

-- rename table
ALTER TABLE Profile RENAME TO My_Profile

SELECT * FROM MY_Profile;

insert into My_Profile
    (Profile_name, followings, followers) VALUES
    ("Gaming Rox", 0, 14785236998746);

-- Update table data

UPDATE My_Profile SET followings = 15 , followers = 1400000 WHERE Profile_name = "Khan Sahab"

UPDATE My_Profile SET Followings = 15;
SET SQL_SAFE_UPDATES = 0; -- BY OFF THIS I CAN UPDATE MY ALL THING IN ONE GO
SET SQL_SAFE_UPDATES = 1;

-- delete 
DELETE FROM My_Profile WHERE Profile_name = "Gaming Rox"

-- delete content
-- on delete cascase , on delete null