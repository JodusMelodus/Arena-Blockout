execute as @e[type=minecraft:snowball] at @s run summon sulfur_cube ~ ~ ~ {Tags:["grenade"], Size:1, absorbed_block:{id:"minecraft:tnt"}, fuse:80,attributes:[{id:"minecraft:scale", base:0.8}, {id:"minecraft:movement_speed", base:0.0}], active_effects:[{id:"minecraft:invisibility", duration:999999, show_particles:false}]}
execute as @e[type=minecraft:snowball] run data modify entity @e[type=minecraft:sulfur_cube, tag=grenade, limit=1, sort=nearest] Motion set from entity @s Motion
data modify entity @e[type=sulfur_cube, tag=grenade, limit=1, sort=nearest] equipment.body set value {id:"minecraft:tnt", count:1}
tag @e[type=sulfur_cube, tag=grenade, limit=1, sort=nearest] remove grenade
kill @e[type=minecraft:snowball]
scoreboard players set @s grenade 0