execute as @e[tag=ed.direction] run data modify storage editor:enderdragon direction set from entity @s Pos
execute as @e[tag=ed.attacker] run data modify storage editor:enderdragon origin set from entity @s Pos
execute store result score $x.dir ed.bin run data get storage editor:enderdragon direction[0] 1000000
execute store result score $x.origin ed.bin run data get storage editor:enderdragon origin[0] 1000000
scoreboard players operation $x.dir ed.bin -= $x.origin ed.bin
execute store result storage editor:enderdragon path[0] float 0.000001 run scoreboard players get $x.dir ed.bin
execute store result storage editor:enderdragon power[0] float 0.0000005 run scoreboard players get $x.dir ed.bin

execute store result score $y.dir ed.bin run data get storage editor:enderdragon direction[1] 1000000
execute store result score $y.origin ed.bin run data get storage editor:enderdragon origin[1] 1000000
scoreboard players operation $y.dir ed.bin -= $y.origin ed.bin
execute store result storage editor:enderdragon path[1] float 0.000001 run scoreboard players get $y.dir ed.bin
execute store result storage editor:enderdragon power[1] float 0.0000005 run scoreboard players get $y.dir ed.bin

execute store result score $z.origin ed.bin run data get storage editor:enderdragon direction[2] 1000000
execute store result score $z.dir ed.bin run data get storage editor:enderdragon origin[2] 1000000
scoreboard players operation $z.dir ed.bin -= $z.origin ed.bin
execute store result storage editor:enderdragon path[2] float 0.000001 run scoreboard players get $z.dir ed.bin
execute store result storage editor:enderdragon power[2] float 0.0000005 run scoreboard players get $z.dir ed.bin
data modify entity @s Motion set from storage editor:enderdragon path
data modify entity @s power set from storage editor:enderdragon power