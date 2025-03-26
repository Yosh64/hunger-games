execute store result bossbar hunger_games:timer max run scoreboard players get totalTimer Timer
execute store result bossbar hunger_games:timer value run scoreboard players get totalTimer Timer
bossbar set hunger_games:timer name [{"text":"Temps avant réduction de bordure : ","bold": true},{"score":{"name":"minute","objective":"Timer"}},{"text":" min"}]
bossbar set hunger_games:timer players @a