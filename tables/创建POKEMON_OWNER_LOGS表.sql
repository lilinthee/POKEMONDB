use POKEMON;
go

create table POKEMON_OWNER_LOGS
(
    LOG_ID int identity(1,1) not null,
    POKEMON_ID int not null,
    OLD_TRAINER_ID int not null,
    NEW_TRAINER_ID int not null,
    CHANGE_TIME datetime not null default getdate(),

    constraint PK_POKEMON_OWNER_LOGS primary key (LOG_ID),

    constraint FK_OWNER_LOGS_POKEMON
        foreign key (POKEMON_ID) references POKEMONS(POKEMON_ID),

    constraint FK_OWNER_LOGS_OLD_TRAINER
        foreign key (OLD_TRAINER_ID) references TRAINERS(TRAINER_ID),

    constraint FK_OWNER_LOGS_NEW_TRAINER
        foreign key (NEW_TRAINER_ID) references TRAINERS(TRAINER_ID)
);
go