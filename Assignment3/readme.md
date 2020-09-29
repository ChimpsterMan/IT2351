i. Executive Summary
In this assignment we completed various scripts covering, grouping, if statements, inserts, copying tables, updates, and aggregate functions as well as rollups. 

ii. Query Review
1. In the first task, I downloaded the sql script from the one note website, opened it in the mysql editor and renamed the database being created by it to my name. I then ran it and refreshed the connection to the server so that I could view it in the schema tab. 

2. I made a new query and used the insert clause by specifying the table and which fields I would like to insert, followed by the values that I would insert into those fields. then I ran a basic select all script to view the new result of the table.

3. I created a new table and then used a select statement to populate it with all the values from the original products table.

4. I wrote an update clause that modified the new copy table by switching all discount values that were 30 with 28. I did this with a set clause and a where clause to specify which to update. 

5. I used the aggregate functions count() and sum() to return a table with a single row which contained the total number or orders and the total value shipped from the orders table.

6. I wrote a select statement to return the category name, count of the products in the products table under that category, and the price of the most expensive product in the category. I then also made it a descending order for the quantity of products.

7. I wrote a select statement that found the total quantity of each product in each category with the subtotals of each categories quantities along with a grand total for the quantity of all the products in all categories. I used the categories, products, and order_items tables to gather the information assuming that the category id's and product id's all accordingly matched. I used the aggregate function sum() along with grouping of the category_name and the product_name to segment the data and find the sums of the subtotals and the grand total. the summaries were added in with the rollup clause.

iii. Conclusion
Through this assignment, I got more experience with hands on possible applications of sql and data organization. I learned about changing values in the data tables manually with the insert and update functions. I also learned how to make a copy of a table which is very important for testing sql operations so no data is accidentally lost due to a logical error. I also learned how to used grouping, rollups, and aggregate functions to summarize data well.