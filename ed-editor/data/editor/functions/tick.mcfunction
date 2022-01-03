execute if entity @s[type=ender_dragon,tag=!edited] run function editor:edit
execute if entity @s[type=ender_dragon] if entity @p[distance=..200] run function editor:becomeactive
execute if entity @s[type=ender_dragon] if predicate editor:second run function editor:active
scoreboard players set $crystals ed.bin 0
execute in the_end if entity @s[type=end_crystal,tag=ed.crystal] run scoreboard players add $crystals ed.bin 1
execute store result bossbar crystals value run scoreboard players get $crystals ed.bin
# minecraft:tick
 