data modify storage editor:enderdragon all set from entity @s
execute store result score $phrase ed.bin run data get storage editor:enderdragon DragonPhase
execute store result score $invulnerable ed.bin run data get storage editor:enderdragon Invulnerable
execute if score $phrase ed.bin matches 6 if score $invulnerable ed.bin matches 0 run data modify entity @s Invulnerable set value 1
execute if score $phrase ed.bin matches 7.. if score $invulnerable ed.bin matches 1 run data modify entity @s Invulnerable set value 0
execute if score $phrase ed.bin matches ..5 if score $invulnerable ed.bin matches 1 run data modify entity @s Invulnerable set value 0

scoreboard players set $in math 1
scoreboard players operation $in1 math = $fireball ed.settings
function math:rng/range
execute if score $out math matches 1 run function editor:launch