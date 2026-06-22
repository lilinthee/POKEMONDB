use POKEMON
go
create table POKEMONS
(
	POKEMON_ID int identity(1,1) not null,
	POKEMON_SPECIES_ID int not null,
	POKEMON_NICKNAME nvarchar(50) null,
	HELD_ITEM_ID int null,
	TRAINER_ID int not null,
	POKEMON_LEVEL int not null,
	ABILITY_ID int not null,
	MOVE_1 int null,
	MOVE_2 int null,
	MOVE_3 int null,
	MOVE_4 int null,

	constraint PK_POKEMONS primary key (POKEMON_ID),
	constraint CHECK_POKEMON_LEVEL check (POKEMON_LEVEL>0 and POKEMON_LEVEL<=100),

	constraint FK_POKEMONS_SPECIES
		foreign key (POKEMON_SPECIES_ID) references POKEMON_SPECIES(POKEMON_SPECIES_ID),
	constraint FK_POKEMONS_ITEM
		foreign key (HELD_ITEM_ID) references ITEMS(ITEM_ID),
	constraint FK_POKEMONS_TRAINER
		foreign key (TRAINER_ID) references TRAINERS(TRAINER_ID),
	constraint FK_POKEMONS_MOVE_1
		foreign key (POKEMON_SPECIES_ID,MOVE_1) references POKEMON_MOVE(POKEMON_SPECIES_ID,MOVE_ID),

	constraint FK_POKEMONS_MOVE_2
		foreign key (POKEMON_SPECIES_ID,MOVE_2) references POKEMON_MOVE(POKEMON_SPECIES_ID,MOVE_ID),

	constraint FK_POKEMONS_MOVE_3
		foreign key (POKEMON_SPECIES_ID,MOVE_3) references POKEMON_MOVE(POKEMON_SPECIES_ID,MOVE_ID),

	constraint FK_POKEMONS_MOVE_4
		foreign key (POKEMON_SPECIES_ID,MOVE_4) references POKEMON_MOVE(POKEMON_SPECIES_ID,MOVE_ID),

	constraint FK_POKEMONS_SPECIES_ABILITY
		foreign key (POKEMON_SPECIES_ID, ABILITY_ID) references POKEMON_ABILITY(POKEMON_SPECIES_ID, ABILITY_ID),
	
	constraint CK_POKEMONS_MOVES_DIFFERENT 
		check ((MOVE_1 is null or MOVE_2 is null or MOVE_1 <> MOVE_2) and
			   (MOVE_1 is null or MOVE_3 is null or MOVE_1 <> MOVE_3) and
			   (MOVE_1 is null or MOVE_4 is null or MOVE_1 <> MOVE_4) and
			   (MOVE_2 is null or MOVE_3 is null or MOVE_2 <> MOVE_3) and
			   (MOVE_2 is null or MOVE_4 is null or MOVE_2 <> MOVE_4) and
			   (MOVE_3 is null or MOVE_4 is null or MOVE_3 <> MOVE_4))
)