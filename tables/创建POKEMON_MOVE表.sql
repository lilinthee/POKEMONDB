use POKEMON
go
create table POKEMON_MOVE
(
	POKEMON_MOVE_ID int identity(1,1) not null,
	POKEMON_SPECIES_ID int not null,
	MOVE_ID int not null,

	constraint PK_POKEMON_MOVE primary key (POKEMON_MOVE_ID),
	constraint UNIQUE_POKEMON_MOVE unique (POKEMON_SPECIES_ID,MOVE_ID),

	constraint FK_POKEMON_MOVE_SPECIES
		foreign key (POKEMON_SPECIES_ID) references POKEMON_SPECIES(POKEMON_SPECIES_ID),
	constraint FK_POKEMON_MOVE_MOVE
		foreign key (MOVE_ID) references MOVES(MOVE_ID) 
)