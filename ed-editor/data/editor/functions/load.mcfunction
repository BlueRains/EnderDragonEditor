#define storage editor:enderdragon
scoreboard objectives add ed.settings dummy
scoreboard objectives add ed.bin dummy
scoreboard players set $health ed.settings 200
scoreboard players set $fireball ed.settings 20
data modify storage editor:enderdragon name set value '{"text": "Jean?"}'
 # minecraft:load
 