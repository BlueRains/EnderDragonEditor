execute if entity @s[type=ender_dragon,tag=!edited] run function editor:edit
execute if entity @s[type=ender_dragon] if entity @p[distance=..200] run tag @s add active
execute if entity @s[type=ender_dragon] if predicate editor:second run function editor:active
 # minecraft:tick
 