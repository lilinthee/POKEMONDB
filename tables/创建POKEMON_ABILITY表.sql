use POKEMON
go
create table POKEMON_ABILITY
(
	POKEMON_ABILITY_ID int identity(1,1) not null,
	POKEMON_SPECIES_ID int not null,
	ABILITY_ID int not null,

	 constraint PK_POKEMON_ABILITY
        primary key (POKEMON_ABILITY_ID),

    constraint UNIQUE_POKEMON_ABILITY
        unique (POKEMON_SPECIES_ID, ABILITY_ID),

    constraint FK_POKEMON_ABILITY_SPECIES
        foreign key (POKEMON_SPECIES_ID) references POKEMON_SPECIES(POKEMON_SPECIES_ID),

    constraint FK_POKEMON_ABILITY_ABILITY_1
        foreign key (ABILITY_ID) references ABILITIES(ABILITY_ID),
)