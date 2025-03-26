playsound minecraft:ui.button.click record @s
$scoreboard players set buffer HungerGames $(value)
$scoreboard players operation $(key) HungerGames += buffer HungerGames
$execute if score $(key) HungerGames matches $(limit).. run scoreboard players set $(key) HungerGames $(limit) 
$execute store result storage macro input.$(key) int 1 run scoreboard players get $(key) HungerGames
function hunger_games:update
function hunger_games:give_book with storage macro input