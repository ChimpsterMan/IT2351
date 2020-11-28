i. Executive Summary
In this assignment, I gained experience working with and finding real world applications for triggers, event schedulers, and some stored functions in SQL. 

ii. Stored Programs
1. In order to delete a customer from the customers table, I would make a stored function. I would set an input parameter of type Int where the customers id would be given. I would then start a transaction. The function would then use "Delete from customers where customer.id = id" to delete the customer. If an error was thrown, the transaction would rollback and if there was no error then I would commit.

2. First, I created a trigger and made the base outline for the code featuring the begin and end statements. Next I wrote the code for when the trigger activated. Then I made the if statement to determine if the list_price was above 1200 or lower than 100. Finally, I added the sql exception code and wrote a quick update and select function to test the trigger.

3. Most businesses and especially bakeries could use event schedulers a lot. If the bakery were having a donation campaign where part of their money earned went to charity or there was a sale, an sql event scheduler could automatically enable and disable the discount effects at the exact times they changed. This means that there will be a fast easy way to manage and automate regular price changes for all bakery goods. 

iii. Conclusion
I feel much more comfortable working with triggers and event schedulers after this assignment. Another thing I wanted to note was how much better it feels to do error handling. It was always a black box int he past but now it feels much more tangible as we do it more and more over our assignments. 