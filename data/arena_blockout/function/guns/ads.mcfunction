scoreboard players add @s ads 1
execute as @s run scoreboard players operation @s ads %= #2 constants
execute store result storage arena_blockout:temp scope_size int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".scope_size
execute as @s if score @s ads matches 0 run function arena_blockout:guns/enablescope with storage arena_blockout:temp
execute as @s if score @s ads matches 1 run function arena_blockout:guns/disablescope