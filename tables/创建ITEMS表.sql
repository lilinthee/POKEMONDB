use POKEMON 
go
create table ITEMS
(
	ITEM_ID int not null identity(1,1),
	ITEM_NAME nvarchar(50) not null,
	INTRODUCTION nvarchar(500),

	constraint PK_ITEMS primary key (ITEM_ID),
	constraint UNIQUE_ITEM unique (ITEM_NAME)
)
go