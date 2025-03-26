execute if score minute Timer matches ..-1 run return fail
bossbar set hunger_games:timer name [{"text":"Temps avant réduction de bordure : ","bold": true},{"score":{"name":"minute","objective":"Timer"},"color": "gold"},{"text":":","color": "gold"},{"score":{"name":"secondeD","objective":"Timer"},"color": "gold"},{"score":{"name":"secondeU","objective":"Timer"},"color": "gold"}]

function hunger_games:timer/count_down
