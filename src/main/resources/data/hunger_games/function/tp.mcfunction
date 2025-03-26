gamemode survival @a
execute as @a unless items entity @s container.* written_book run clear @s
$execute store success storage macro input.tpSuccess int 1 run spreadplayers $(x) $(z) 0 3 false @a
execute store result score tpSuccess HungerGames run data get storage macro input.tpSuccess
execute if score tpSuccess HungerGames matches 0 run return fail


execute if score nbReroll HungerGames matches 1.. run tellraw @s ["",{"text":"[","color":"gold"},{"text":"Hunger-Games","color":"yellow"},{"text":"]","color":"gold"},{"text":" Le générateur à essayé ","color": "white"},{"score": {"objective": "HungerGames","name": "nbReroll"}},{"text": " fois avant de trouver une map correcte :)","color": "white"}]
scoreboard players set nbReroll HungerGames 0
$execute if score tpSuccess HungerGames matches 1 run tellraw @s ["",{"text":"[","color":"gold"},{"text":"Hunger-Games","color":"yellow"},{"text":"]","color":"gold"},{"text":" Nouvelle map : le ","color": "white"},{"text": "$(x) $(z)","color": "dark_aqua"},{"text":" ! ","color": "white"}]
$execute if score tpSuccess HungerGames matches 1 run worldborder center $(x) $(z)
$execute store result score player_y HungerGames at @p[x=$(x),z=$(z),limit=1] as @p[limit=1] run data get entity @s Pos[1]
scoreboard players set buffer HungerGames 10
scoreboard players operation player_y HungerGames += buffer HungerGames
execute store result storage macro input.y int 1 run scoreboard players get player_y HungerGames