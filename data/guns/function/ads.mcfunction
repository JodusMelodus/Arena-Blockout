tp @e[type=minecraft:chicken, tag=ads_detect] ~ -300 ~
execute as @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick at @s anchored eyes run summon minecraft:chicken ^ ^-0.1 ^0.3 {Tags:["ads_detect"], Silent:true, NoAI:true, NoGravity:true, Invulnerable:true, Team:no_collision, DeathTime:0, active_effects:[{id:"minecraft:invisibility", amplifier:1, duration:-1, show_particles:false}]}

execute as @s run scoreboard players operation @s ads %= #scope_toggle temp_scope_toggle
execute store result storage guns:temp scope_size int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".scope_size
execute as @s if score @s ads matches 0 run function guns:enablescope with storage guns:temp
execute as @s if score @s ads matches 1 run function guns:disablescope