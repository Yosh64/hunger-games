execute unless score tick Timer matches 20.. run scoreboard players add tick Timer 1

execute if score tick Timer matches 20.. unless score secondeU Timer matches 10.. run scoreboard players add secondeU Timer 1

execute if score tick Timer matches 20.. run scoreboard players set tick Timer 0

execute if score secondeU Timer matches 10.. unless score secondeD Timer matches 6.. run scoreboard players add secondeD Timer 1

execute if score secondeU Timer matches 10.. run scoreboard players set secondeU Timer 0

execute if score secondeD Timer matches 6.. unless score minute Timer matches 60.. run scoreboard players add minute Timer 1

execute if score secondeD Timer matches 6.. run scoreboard players set secondeU Timer 0