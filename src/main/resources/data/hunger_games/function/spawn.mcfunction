gamemode survival @a
execute as @a unless items entity @s container.* written_book run clear @s
spreadplayers 0 0 0 4 false @a 
worldborder center 0 0
playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 50 .6
scoreboard players set buffer HungerGames -42