scoreboard players operation #current id = @s id

execute as @s unless entity @e[type=minecraft:interaction, tag=ads_detect] if score #current id = @s id run summon minecraft:interaction ^ ^-0.1 ^ {width:0.5, height:0.5, Glowing:false, Tags:["ads_detect"]}
execute if score #current id = @s id run tp @e[type=minecraft:interaction, tag=ads_detect] ^ ^-0.1 ^
execute if data entity @e[type=minecraft:interaction, tag=ads_detect, sort=nearest, limit=1] attack run scoreboard players add @s ads 1
data remove entity @e[type=minecraft:interaction, tag=ads_detect, sort=nearest, limit=1] attack

execute as @s run scoreboard players operation @s ads %= #2 constants
execute store result storage arena_blockout:temp scope_size int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".scope_size
execute as @s if score @s ads matches 0 run function arena_blockout:guns/enablescope with storage arena_blockout:temp
execute as @s if score @s ads matches 1 run function arena_blockout:guns/disablescope