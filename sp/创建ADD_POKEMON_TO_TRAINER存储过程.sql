use POKEMON
go
create procedure SP_ADD_POKEMON_TO_TRAINER
	@trainer_id int,
	@pokemon_species_id int,
	@held_item_id int,
	@pokemon_level int,
	@pokemon_nickname nvarchar(50),
	@move_1 int,
	@move_2 int,
	@move_3 int,
	@move_4 int
as
begin
	begin transaction
	insert	POKEMONS(POKEMON_SPECIES_ID,TRAINER_ID,
			HELD_ITEM_ID,POKEMON_LEVEL,POKEMON_NICKNAME,
			MOVE_1,MOVE_2,MOVE_3,MOVE_4)
	values  (@pokemon_species_id,@trainer_id,@held_item_id,@pokemon_level,@pokemon_nickname,@move_1,@move_2,@move_3,@move_4)
	commit transaction
	print '添加成功'
end