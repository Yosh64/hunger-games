execute as @e[type=minecraft:player,scores={deaths=1}] run tellraw @a ["",{"text":"[","color":"gold"},{"text":"Hunger-Games","color":"yellow"},{"text":"]","color":"gold"},{"text":" "},{"selector":"@s","color":"gray","italic":true},{"text":" est mort."}]
execute as @a run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 1 1 0.3
gamemode spectator @e[type=minecraft:player,scores={deaths=1}]
effect give @a[gamemode=spectator] night_vision infinite 0 true
execute if entity @e[type=minecraft:player,scores={deaths=1}] as @e[type=minecraft:player,scores={deaths=1}] run scoreboard players set @s deaths 0