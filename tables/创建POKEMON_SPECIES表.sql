use POKEMON
go
create table POKEMON_SPECIES
(
	POKEMON_SPECIES_ID int identity(1,1) not null,
	POKEMON_NAME nvarchar(30) not null,
	POKEMON_TYPE1 nvarchar(10) not null,
	POKEMON_TYPE2 nvarchar(10) null,
	HP int not null,
	ATK int not null,
	DEF int not null,
	SPA int not null,
	SPD int not null,
	SPE int not null,

	constraint PK_POKEMON_SPECIES primary key (POKEMON_ID),
	constraint UNIQUE_POKEMON_NAME unique (POKEMON_NAME),
	constraint CHECK_POKEMON_TYPE1 check (POKEMON_TYPE1 in 
												('normal','fire','water'
												,'grass','electric','ice'
												,'fighting','poison','ground'
												,'flying','psychic','bug'
												,'rock','ghost','dragon'
												,'dark','steel','fairy')), 
	constraint CHECK_POKEMON_TYPE2 check (POKEMON_TYPE2 is null or POKEMON_TYPE2 in 
												('normal','fire','water'
												,'grass','electric','ice'
												,'fighting','poison','ground'
												,'flying','psychic','bug'
												,'rock','ghost','dragon'
												,'dark','steel','fairy')),
	constraint CHECK_POKEMON_TYPE_DIFFERENCE check(POKEMON_TYPE2 is null or POKEMON_TYPE1 <> POKEMON_TYPE2),
	constraint CHECK_HP check (HP>0 and HP<=255),
	constraint CHECK_ATK check (ATK>0 and ATK<=255),
	constraint CHECK_DEF check (DEF>0 and DEF<=255),
	constraint CHECK_SPA check (SPA>0 and SPA<=255),
	constraint CHECK_SPD check (SPD>0 and SPD<=255),
	constraint CHECK_SPE check (SPE>0 and SPE<=255)
)
go