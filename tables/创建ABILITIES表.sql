USE POKEMON
go
create table ABILITIES
(
	ABILITY_ID int identity(1,1) not null,
	ABILITY_NAME nvarchar(50) not null,
	INTRODUCTION nvarchar(500),

	constraint PK_ABILITIES primary key (ABILITY_ID),
	constraint UNIQUE_ABILITIE_NAME unique (ABILITY_NAME)
)
go