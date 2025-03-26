tellraw @a ["",{"text":"[","color":"gold"},{"text":"Hunger-Games","color":"yellow"},{"text":"]","color":"gold"},{"text":" Apparition des coffres dans 1min !","color": "white"}]
execute as @a run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0 1
schedule function hunger_games:in_game/lootbox 60s