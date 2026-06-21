use POKEMON
go
create procedure SP_TRADE_POKEMON
	@trainer_a_id int,
	@trainer_b_id int,
	@pokemon_a_id int,
	@pokemon_b_id int
as
begin
	begin transaction

	update POKEMONS
		set TRAINER_ID = @trainer_b_id
		where POKEMON_ID = @pokemon_a_id
	update POKEMONS
		set TRAINER_ID = @trainer_a_id
		where POKEMON_ID = @pokemon_b_id
	commit transaction

	print'交换成功'
end
go