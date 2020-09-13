i. Executive Summary
Through this assignment, I covered the basics of selecting from an sql table with an inner join in MySQL Workbench. Some other notable things include, assigning aliases, calculating output select value, using concatenation, and date formatting.

ii. Query Review
1. For the first query I wrote a select statement that returned the title, artist, and unit price columns with aliases from the items table. 
Then I only included the unit_prices between 14 and 17 with a where clause.

2. I used the concat function to join the first name, a space, and then the last name to form the full name of the person. I applied the "Customer Name" alias with the AS statement and then included the state column and provided an alias for it of "State". Then I restricted it by only including states of OH and CA with a where clause and the OR operator to have two conditionals. I then sorted the data with the order by clause.

3. First I selected the order id and customer id, then I did the order data and shipped date. I used the date formating function with the format '%m/%d/%y'. I then provided aliases for all the colums with proper capitalized and spaced names.

4. I used an inner join in conjunction with the previous query to get the customers last name as well. I used the on condition that the customer id's were identical between the two tables. I then replaced customer id in the select statement with their last name.

5. I updated the customer name with the concatenation technique from ealier and then used another inner join with the order_details table to retrieve the item_id and the order_qty as well. I then provided aliases for them and ordered them based on the customer last name first and then the quantity second.

6. I added onto the select statement from the previous question by retrieving the artist value from the items table with another inner join. I then used that and the unit_price value to add to the output columns. I replaced the item number with the artist value.

7. I simply added another column to the output displaying price * qty and provided the alias "Total Cost"

8. I made a query that includes the fields title, artist, unit price, and order qty with proper aliases. Next I made the "Total With Tax" column that multiplies order qty, unit price, and 1.08 to return the price with tax. Then I rounded its output to 2 decimal places with the round() function and finally added the DISTINCT tag.

iii. Conclusion
I learned a lot about practical uses for inner join statements and got much more comfortable with returning data of a table through the select statement in general. 