scoreboard players reset @a deaths
scoreboard players set inGame HungerGames 0

execute as @a run function hunger_games:give_book with storage macro input
execute as @a[gamemode=spectator] run gamemode creative @s
effect clear @a
function hunger_games:update
function hunger_games:timer/setup
execute as @a run schedule clear hunger_games:in_game/lootbox
execute as @a run schedule clear hunger_games:in_game/meetup

execute as @a run schedule clear hunger_games:in_game/warn_lootbox
execute as @a run schedule clear hunger_games:in_game/warn_meetup