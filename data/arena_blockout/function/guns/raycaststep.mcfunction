# Still executed as the player but at the bullet

scoreboard players add @s ray_steps 1

# Distance from the bullet = hit
execute at @e[type=!minecraft:item, tag=!shooter, tag=!ads_detect, dx=0, dy=0, dz=0] run function arena_blockout:guns/hit_entity
execute unless block ~ ~ ~ minecraft:air run function arena_blockout:guns/hit_block

particle minecraft:ash ~ ~ ~ 0 0 0 0 1

# Gun range is ray steps divided by the amount the ray steps. i.e. 1000 steps with a change of 0.1 will allow 100 blocks
execute if score @s ray_steps matches ..1000 positioned ^ ^ ^0.1 run function arena_blockout:guns/raycaststep
