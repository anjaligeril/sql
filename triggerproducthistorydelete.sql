--show error on trying to delete fom product history table

use learningsql;

create trigger trg_historydelete on product_history instead of 
delete 
as
begin
raiserror('you cant delete from product history table',16,1);
rollback
end;

select * from product_history;

delete from product_history where product_id=1;


--create a trigger on sql server that does not allow to delete database

