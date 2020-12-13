i. Executive Summary
In this lab I explained the responsibilities of the database administrator, the purpose of log files, status variables, system variables, and gave examples of how to make and use privliges alongside roles. 

ii. Database Administration Responsibilities
The Major roles include being able to maintain and configure the server and it's log files; create and design the database; maintain user accounts, secure the server and it's databases; back up, restore, and migrate the databases; enable replication, update, optimize, and start or stop it.

iii. Log Files
Log files are important for maintaining a database and ensuring that all operations made by the clients and administrators are functioning properly on the server. It is also very important for debugging.

iv. Variables
Status variables track the current status of a mysql server and its various properties that can change as it runs. A system variable tracks the configuration settings of the server. A system variable could be whether the server runs on innodb or an alternative. A status variable could be how many queries have been made to the server since it was last restarted.

v. Privileges
A. 
//makes a user called guitar_admin@localhost with the password "pas55word"
//makes a user called guitar_user@localhost with the password "pas55word"
CREATE USER guitar_admin@localhost IDENTIFIED BY 'pa55word';
CREATE USER guitar_user@localhost IDENTIFIED BY 'pa55word';

//gives all privliges to guitar_admin@localhost user within the guitar database
GRANT ALL
ON guitar.*
TO guitar_admin@localhost;

//gives only select, insert, update, and delete to guitar_user@localhost within the guitar database.
GRANT SELECT, INSERT, UPDATE, DELETE
ON guitar.*
TO guitar_user@localhost;

B.
The four privilege levels Global, Database, Table, and Column.

C.
I would change the guitar_user grant code to:

GRANT SELECT (customer first_name, last_name, email_address), INSERT (customer first_name, last_name, email_address), UPDATE (customer first_name, last_name, email_address), 
DELETE (customer first_name, last_name, email_address)
ON guitar.customers
TO guitar_user@localhost;

D. I would maybe want to do this for somebody who's sole job is to handle customers in the database and fix inconsistencies.

vi. Roles
A.
Create role update_categories;

B.
grant update
on guitar.categories
to update_categories;

grant update_categories
to guitar_user@localhost

C. roles are useful for quickley organizing and grant privliges to many users on a database.

vi. Conclusion
This lab made me think back and analyse the reasons why a lot of the administration tools exist in mysql I feel as though I have a better understanding of not just how mysql privliges work but also why.