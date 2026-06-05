USE POKEMON
go
create table ABILITIES
(
	ABILITIE_ID int identity(1,1),
	ABILITIE_NAME nvarchar(50),

	constraint PK_ABILITIES primary key (ABILITIE_ID),
	constraint UNIQUE_ABILITIE_NAME unique (ABILITIE_NAME)
)
go