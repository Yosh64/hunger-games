execute unless score nbReroll HungerGames matches 1.. run playsound minecraft:ui.button.click master @s
execute store result score player_x HungerGames run random value -20..20
execute store result score player_z HungerGames run random value -20..20
scoreboard players set buffer HungerGames 0
execute if score player_x HungerGames matches 0 if score player_z HungerGames matches 0 run tellraw @s ["",{"text":"[","color":"gold"},{"text":"Hunger-Games","color":"yellow"},{"text":"]","color":"gold"},{"text":" Nouvelle map : le... "},{"text": "spawn ?!?","underlined": true,"hoverEvent": {"action": "show_text","contents": "1 chance sur 1681... GG"},"color": "red"}]
execute if score player_x HungerGames matches 0 if score player_z HungerGames matches 0 run function hunger_games:spawn
scoreboard players operation player_x HungerGames *= multiplier HungerGames
scoreboard players operation player_z HungerGames *= multiplier HungerGames

execute store result storage macro input.x int 1 run scoreboard players get player_x HungerGames
execute store result storage macro input.z int 1 run scoreboard players get player_z HungerGames

execute unless score inGame HungerGames matches 1.. as @s run execute unless score buffer HungerGames matches -42 run function hunger_games:tp with storage macro input
execute if score tpSuccess HungerGames matches 0 run function hunger_games:map_reroll