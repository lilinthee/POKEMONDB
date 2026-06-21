use POKEMON
go
create table TRAINERS
(
	TRAINER_ID int identity(1,1) not null,
	TRAINER_NAME nvarchar(50) not null,
	TRAINER_SEX nvarchar(10) not null,

	constraint PK_TRAINERS primary key (TRAINER_ID),
	constraint CHECK_TRAINER_SEX check (TRAINER_SEX in('男','女'))
)
go