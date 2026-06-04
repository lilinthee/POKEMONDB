use POKEMON
go
create table MOVES
(
	MOVE_ID int identity(1,1) not null,
	MOVE_NAME nvarchar(50) not null,
	MOVE_TYPE nvarchar(10) not null,
	MOVE_POWER int not null,
	MOVE_ACCURACY int not null,
	MOVE_PP int not null,
	DAMAGE_CATEGORY nvarchar(10) not null,

	constraint PK_MOVES primary key (MOVE_ID),
	constraint UNIQUE_MOVE_NAME unique (MOVE_NAME),
	constraint CHECK_MOVE_TYPE check (MOVE_TYPE in 
												('normal','fire','water'
												,'grass','electric','ice'
												,'fighting','poison','ground'
												,'flying','psychic','bug'
												,'rock','ghost','dragon'
												,'dark','steel','fairy')),
	constraint CHECK_MOVE_POWER check (MOVE_POWER >= 0),
	constraint CHECK_MOVE_ACCURACY check (MOVE_ACCURACY >= 0 and MOVE_ACCURACY <=100),
	constraint CHECK_MOVE_PP check (MOVE_PP > 0),
	constraint CHECK_DAMAGE_CATEGORY check (DAMAGE_CATEGORY in 
												('physical','special','status'))
)
go