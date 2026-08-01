scoreboard players operation #current id = @s id
execute as @e[type=minecraft:chicken, tag=ads_detect] if score @s id = #current id run tp @s ~ -300 ~

execute as @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data~{"tag": "gun"}] at @s anchored eyes run summon minecraft:chicken ^ ^-0.1 ^0.3 {Tags:["ads_detect", "ads_id"], Silent:true, NoAI:true, NoGravity:true, Team:no_collision, DeathTime:0, active_effects:[{id:"minecraft:invisibility", duration:9999, show_particles:false}]}
execute store result score @e[type=minecraft:chicken, tag=ads_id, limit=1] id run scoreboard players get @s id
tag @e[type=minecraft:chicken, tag=ads_id, limit=1] remove ads_id

execute as @s run scoreboard players operation @s ads %= #scope_toggle temp_scope_toggle
execute store result storage arena_blockout:temp scope_size int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".scope_size
execute as @s if score @s ads matches 0 run function arena_blockout:guns/enablescope with storage arena_blockout:temp
execute as @s if score @s ads matches 1 run function arena_blockout:guns/disablescope