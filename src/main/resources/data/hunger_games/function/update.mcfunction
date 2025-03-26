execute store result score player_x HungerGames run data get storage macro input.x
execute store result score player_z HungerGames run data get storage macro input.z
execute store result score player_y HungerGames run data get storage macro input.y


execute store result score radius_0 HungerGames run data get storage macro input.radius_0
execute store result score radius_dm HungerGames run data get storage macro input.radius_dm
execute store result score speed HungerGames run data get storage macro input.speed
execute store result score buffer HungerGames run scoreboard players operation radius_0 HungerGames -= radius_dm HungerGames
execute store result score radius_0 HungerGames run data get storage macro input.radius_0
execute store result score border_time HungerGames run scoreboard players operation buffer HungerGames /= speed HungerGames

scoreboard players set buffer HungerGames 60
execute store result score timer_m HungerGames run data get storage macro input.timer_m
execute store result score timer_s HungerGames run data get storage macro input.timer_m
scoreboard players operation timer_s HungerGames *= buffer HungerGames
scoreboard players operation timer_s HungerGames -= buffer HungerGames
execute store result storage macro input.timer_s int 1 run scoreboard players get timer_s HungerGames

scoreboard players operation minute Timer = timer_m HungerGames
execute store result score totalTimer Timer run scoreboard players operation buffer HungerGames *= timer_m HungerGames
function hunger_games:timer/update

scoreboard players set buffer HungerGames 60
execute store result score timer_lm HungerGames run data get storage macro input.timer_lm
execute store result score timer_ls HungerGames run data get storage macro input.timer_lm
scoreboard players operation timer_ls HungerGames *= buffer HungerGames
scoreboard players operation timer_ls HungerGames -= buffer HungerGames
execute store result storage macro input.timer_ls int 1 run scoreboard players get timer_ls HungerGames

scoreboard players set inGame HungerGames 0
scoreboard players set nbPlayer HungerGames 0

scoreboard players set buffer HungerGames 2
scoreboard players set multiplier HungerGames 1000