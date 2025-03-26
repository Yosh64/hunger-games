scoreboard objectives add Timer dummy

scoreboard players set tick Timer 0
scoreboard players set secondeU Timer 0
scoreboard players set secondeD Timer 0
scoreboard players operation minute Timer = timer_m HungerGames
function hunger_games:timer/update