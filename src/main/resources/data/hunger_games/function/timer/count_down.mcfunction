execute unless score tick Timer matches 20.. run scoreboard players add tick Timer 1

execute if score tick Timer matches 20.. unless score secondeU Timer matches ..-1 run scoreboard players remove secondeU Timer 1
execute store result bossbar hunger_games:timer value if score tick Timer matches 20.. run scoreboard players remove totalTimer Timer 1
execute if score tick Timer matches 20.. run scoreboard players set tick Timer 0


execute if score secondeU Timer matches ..-1 unless score secondeD Timer matches ..-1 run scoreboard players remove secondeD Timer 1

execute if score secondeU Timer matches ..-1 run scoreboard players set secondeU Timer 9


execute if score secondeD Timer matches ..-1 unless score minute Timer matches ..-1 run scoreboard players remove minute Timer 1

execute if score secondeD Timer matches ..-1 run scoreboard players set secondeD Timer 5