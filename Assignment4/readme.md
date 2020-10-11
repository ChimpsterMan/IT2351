i. Executive Summary
In this assignment, I practiced replacing inner join clauses with subqueries in both the select and where clauses in addition to using aggregate functions in them aswell. I also practiced using string functions to split up parts of information through manipulating an email address. And finally, I also got to work with various types of casting functions and techniques including format, convert, and cast.

ii. Query Review
1. I began by analyzing what I needed to do, there was no additional information needed from the other joined table, it was only restricting the resulting list of the current table. Therefore, i knew I needed to make the subquery in the where clause to simulate the restriction. I then mimicked the on clause by asking the same condition only with an in clause and a subquery to see if the category_id's from products and categories matched.

2. To answer the question proposed, I knew I needed to compare the average item price with an aggregate function to the normal item prices. I began by specifying each column I wanted to return with aliases for organization and then did each subquery in the select clause individually to see if they returned the proper information. I used the products table as my main table in the from clause and accessed the item_price value from the order_items table through subqueries. First I set the price column with the subquery and then I copied it and subtracted the averaging subquery from it to find the difference. This would return the margin above or below for each price compared to the average. I then sorted the table with the margin column in descending order so the products at the top were the ones with the highest margin price. This way, the question can be answered by reading down the result table.

3. This question was very straightforward so I did it in one pass, I wrote out each function as I read it in the assignment instructions while following each definition of the casting functions from the textbook for refrence. It returned the value of the list_price column for each item with the following casts applied format, convert, and cast along with a control column for each list_price at the beginning.

4. This query returned the email address, the length of the email address, the index location of the "@" sign, the username part of the email before the "@", and the domain part of the email after the "@". I simply wrote out each function to return the information while following along in the textbook. i used length() for the first value, locate() for the second, and substring_index() for the third and fourth values.

iii. Conclusion
This assignment gave me some nice practice with using casting and string processing functions. But I thing the best part of the assignment was question two because it was general. By making it general, we need to come up with the solution ourselves much like the realworld where we will apply this knowledge in the future. Although i wish I could have made by code cleaner by using the with clause through CTE components. 