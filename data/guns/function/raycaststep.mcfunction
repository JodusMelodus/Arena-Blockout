particle minecraft:ash ~ ~ ~ 0 0 0 0 1

scoreboard players add #temp ray_steps 1

execute as @e[type=!item, tag=!shooter, tag=!ads_detect,dx=0] run function guns:hit_entity

execute unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:cave_air run function guns:hit_block

execute if score #temp ray_steps matches ..10000 if block ~ ~ ~ minecraft:air run execute positioned ^ ^ ^0.5 run function guns:raycaststep