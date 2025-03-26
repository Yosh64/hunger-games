$execute unless score inGame HungerGames matches 1.. run worldborder set $(radius_0)
execute unless score inGame HungerGames matches 1.. run effect give @a resistance 60 10 true
execute unless score inGame HungerGames matches 1.. run effect give @a saturation 2 20 true
execute unless score inGame HungerGames matches 1.. run effect give @a instant_health 1 10 true
execute unless score inGame HungerGames matches 1.. run give @a apple 4
execute as @a run playsound minecraft:block.note_block.pling master @s
function hunger_games:timer/setup
$execute unless score inGame HungerGames matches 1.. run tellraw @a ["",{"text":"[","color":"gold"},{"text":"Hunger-Games","color":"yellow"},{"text":"]","color":"gold"},{"text":" "},{"text":"Rétrecissement de la bordure dans $(timer_m)min !"}]
execute unless score inGame HungerGames matches 1.. run tellraw @a ["",{"text":"[","color":"gold"},{"text":"Hunger-Games","color":"yellow"},{"text":"]","color":"gold"},{"text":" "},{"text":"Vous avez 1min de résistance !"}]
$execute unless score inGame HungerGames matches 1.. run schedule function hunger_games:in_game/warn_lootbox $(timer_ls)s
$execute unless score inGame HungerGames matches 1.. run schedule function hunger_games:in_game/warn_meetup $(timer_s)s
scoreboard players set @a deaths 0
scoreboard players reset @a kills
scoreboard players set inGame HungerGames 1
gamemode survival @a
effect clear @a
clear @a