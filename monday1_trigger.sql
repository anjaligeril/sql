
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER trg_productrigger
   ON  product
   AFTER insert
AS 
BEGIN
	SET NOCOUNT ON;

	--declare--

	
	declare @product_name varchar(20);
	declare @product_description varchar(50);

	--store values in variables

	
    select @product_name=productlist.product_name from inserted productlist;
	select @product_description=productlist.product_desciprtion from inserted productlist;

	--insert statement for trigger 
	insert into product_history values(@product_name,@product_description);


END
GO
