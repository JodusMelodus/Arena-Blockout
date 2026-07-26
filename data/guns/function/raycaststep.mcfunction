
# Copy current ray steps and check if divisable by 10
scoreboard players operation #current math = #current ray_steps
scoreboard players operation #current math %= #divisor temp
# Display tracer particle if divisable by 10
execute if score #current math matches 0 run particle minecraft:ash ~ ~ ~ 0 0 0 0 1

scoreboard players add #current ray_steps 1

execute as @e[type=!item,type=!player,dx=0] run function guns:hit_entity

execute unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:cave_air run function guns:hit_block

execute if score #current ray_steps matches ..60 if block ~ ~ ~ minecraft:air run execute positioned ^ ^ ^0.5 run function guns:raycaststep