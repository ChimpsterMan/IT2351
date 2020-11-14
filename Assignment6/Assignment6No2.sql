use erik_nilsson_guitar_shop;
Drop procedure if exists InsertCategory;
DELIMITER //
CREATE procedure InsertCategory()
begin
	declare sql_error TinyInt default false;
    declare current_index INT;
    
    declare continue handler for sqlexception
		set sql_error = true;
    
    select count(category_id) from categories into current_index;
    
    start transaction;
    
    insert into categories (category_id, category_name) values(current_index + 1, 'Guitars');
    
    if sql_error = False then
		commit;
        select '1 row was inserted';
	else
		rollback;
        select 'Row was not inserted - duplicate entry';
	end if;

end//

Call InsertCategory();
select * from categories;