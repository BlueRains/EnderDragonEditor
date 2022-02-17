execute if entity @s[type=ender_dragon,tag=!edited] run function editor:edit
execute if entity @s[type=ender_dragon] if entity @p[distance=..200] run function editor:becomeactive
execute if entity @s[type=ender_dragon,tag=edited] run function editor:active
scoreboard players set $crystals ed.bin 0
execute store result bossbar crystals value if entity @e[type=end_crystal,tag=ed.crystal]
# minecraft:tick