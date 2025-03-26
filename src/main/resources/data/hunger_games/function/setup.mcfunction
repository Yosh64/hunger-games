data modify storage macro input set value {"x":0,"z":0,"y":0,"radius_0":200,"border_dm":1,"radius_dm":50,"speed":2,"border_time":75,"timer_m":10,"timer_s":1740,"timer_lm":5,"timer_ls":600}
scoreboard objectives add HungerGames dummy
scoreboard objectives add deaths deathCount "Morts"
scoreboard objectives add kills playerKillCount "Kills"
bossbar add hunger_games:timer
bossbar set hunger_games:timer players @a
scoreboard objectives modify kills numberformat styled {"color":"gold"}
scoreboard players display numberformat nbPlayer HungerGames styled {"color":"gold"}
gamerule doImmediateRespawn true
gamerule showDeathMessages false
gamerule doDaylightCycle false
time set noon

worldborder damage buffer 10
worldborder damage amount 0.2
function hunger_games:update
function hunger_games:timer/setup
execute as @s run function hunger_games:give_book
title @a times 1s 4s 1s