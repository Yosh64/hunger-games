playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
execute as @a at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.3 50 normal @a
tellraw @a ["",{"text":"[","color":"gold"},{"text":"Hunger-Games","color":"yellow"},{"text":"]","color":"gold"},{"text":" Vous ","color": "white"},{"text":"brillez","color": "aqua","italic": true,"hoverEvent": {"action": "show_text","contents": "Vous avez l'effet de surbrillance"}},{"text":" des milles feux !","color": "white"}]
effect give @a[gamemode=survival] glowing infinite 0 true