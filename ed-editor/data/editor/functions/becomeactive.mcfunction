bossbar add dragon {"text":"Ender Dragon"}
bossbar add crystals {"text":"End Crystals"}
bossbar set dragon players @a[distance=..200]
bossbar set crystals players @a[distance=..200]
bossbar set crystals color purple
bossbar set dragon color pink
bossbar set crystals max 10
bossbar set crystals style notched_10
tag @e[type=end_crystal,distance=..200] add ed.crystal
execute store result bossbar dragon max run scoreboard players get $health ed.settings
execute store result bossbar dragon value run scoreboard players get $health ed.settings
execute store result entity @s Health float 1 run scoreboard players get $health ed.settings