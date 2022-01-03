summon armor_stand ~ ~ ~ {Marker: 1b, Invisible: 1b, NoGravity: 1b, Tags: ["ed.attacker"]}
summon armor_stand ~ ~ ~ {Marker: 1b, Invisible: 1b, NoGravity: 1b, Tags: ["ed.direction"]}
summon dragon_fireball ~ ~ ~ {Tags: ["ed.fireball"], Fire: -1s}
data modify entity @e[tag=ed.fireball,limit=1] Owner set from entity @s UUID
execute as @e[distance=..1,tag=ed.direction] at @s run tp @s ^ ^ ^3 facing entity @p
execute as @e[distance=..1,tag=ed.fireball] at @s run function editor:direction