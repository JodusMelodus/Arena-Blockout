execute as @s run scoreboard players operation @s scope %= #scope_toggle temp_scope_toggle

# Get scope size of current gun
execute store result storage guns:temp scope_size int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".scope_size

execute as @s if score @s scope matches 0 run function guns:enablescope with storage guns:temp
execute as @s if score @s scope matches 1 run function guns:disablescope