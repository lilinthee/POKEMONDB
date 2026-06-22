use POKEMON
go
create trigger TRG_POKEMONS_OWNER_CHANGE_LOG
on POKEMONS
after update
as
begin
	insert into POKEMON_OWNER_LOGS
	(
		POKEMON_ID,
		OLD_TRAINER_ID,
		NEW_TRAINER_ID
	)
	select inserted.POKEMON_ID,deleted.TRAINER_ID,inserted.TRAINER_ID
	from inserted,deleted
	where	inserted.POKEMON_ID = deleted.POKEMON_ID and
			inserted.TRAINER_ID <> deleted.TRAINER_ID
end
go