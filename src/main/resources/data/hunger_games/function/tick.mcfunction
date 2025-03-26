execute if score inGame HungerGames matches 1.. if entity @e[type=minecraft:player,scores={deaths=1}] run function hunger_games:in_game/death
execute store result score nbPlayer HungerGames if entity @a[gamemode=survival]
execute if score nbPlayer HungerGames matches 1 if score inGame HungerGames matches 1.. as @a[gamemode=survival,limit=1,scores={deaths=0}] run function hunger_games:in_game/victoire
execute unless score minute Timer matches ..-1 if score inGame HungerGames matches 1.. run function hunger_games:timer/ticking