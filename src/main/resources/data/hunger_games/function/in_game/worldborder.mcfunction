execute as @a run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1 1
title @a title "FIN DU FUN ! TAPEZ-VOUS BON SANG !"
tellraw @a ["",{"text":"[","color":"gold"},{"text":"Hunger-Games","color":"yellow"},{"text":"]","color":"gold"},{"text":" FIN DU FUN ! TAPEZ VOUS BON SANG !","color": "white"}]
$worldborder set $(radius_dm) $(border_time)