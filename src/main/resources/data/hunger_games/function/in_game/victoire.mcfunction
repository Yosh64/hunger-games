execute as @a run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0 1
title @a title [{"selector":"@s","color":"dark_aqua"},{"text":" à gagné la partie !","color":"white"}]
tellraw @a ["",{"text":"[","color":"gold"},{"text":"Hunger-Games","color":"yellow"},{"text":"]","color":"gold"},{"text":" "},{"selector":"@s","color":"dark_aqua"},{"text":" à gagné la partie !"}]
scoreboard objectives setdisplay sidebar kills
function hunger_games:in_game/stop with storage macro input