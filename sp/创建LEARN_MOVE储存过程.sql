use POKEMON
go
create procedure SP_LEARN_MOVE
	@pokemon_id int,
	@move_id int,
	@move_position int
as
begin
	begin transaction
	if @move_position = 1
		begin
			update POKEMONS
			set MOVE_1 = @move_id
			where POKEMON_ID = @pokemon_id
		end
	else if @move_position = 2
		begin
			update POKEMONS
			set MOVE_2 = @move_id
			where POKEMON_ID = @pokemon_id
		end
	else if @move_position = 3
		begin
			update POKEMONS
			set MOVE_3 = @move_id
			where POKEMON_ID = @pokemon_id
		end
	else if @move_position = 4
		begin
			update POKEMONS
			set MOVE_4 = @move_id
			where POKEMON_ID = @pokemon_id
		end
	commit transaction

	print '学习成功'
end