execute at @s anchored eyes run summon sulfur_cube ^ ^ ^0.5 {Tags:["grenade"], Size:1, fuse:80,attributes:[{id:"minecraft:scale", base:0.8}, {id:"minecraft:movement_speed", base:0.0}], active_effects:[{id:"minecraft:invisibility", duration:999999, show_particles:false}]}

execute if items entity @s weapon.mainhand minecraft:stick[custom_data~{"id": "m67"}] run data modify entity @e[type=sulfur_cube, tag=grenade, limit=1, sort=nearest] equipment.body set value {id:"minecraft:tnt", count:1}
execute if items entity @s weapon.mainhand minecraft:stick[custom_data~{"id": "m84_stun_grenade"}] run data modify entity @e[type=sulfur_cube, tag=grenade, limit=1, sort=nearest] equipment.body set value {id:"minecraft:rooted_dirt", count:1}

execute as @e[type=minecraft:sulfur_cube] run data modify entity @s Motion set from entity @p Motion
item modify entity @s weapon.mainhand {function:"minecraft:set_count", add:true, count:-1}