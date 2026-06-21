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

	constraint PK_POKEMONS primary key (POKEMON_ID),
	constraint CHECK_POKEMON_LEVEL check (POKEMON_LEVEL>0 and POKEMON_LEVEL<=100),

	constraint FK_POKEMONS_SPECIES
		foreign key (POKEMON_SPECIES_ID) references POKEMON_SPECIES(POKEMON_SPECIES_ID),
	constraint FK_POKEMONS_ITEM
		foreign key (HELD_ITEM_ID) references ITEMS(ITEM_ID),
	constraint FK_POKEMONS_TRAINER
		foreign key (TRAINER_ID) references TRAINERS(TRAINER_ID)
)