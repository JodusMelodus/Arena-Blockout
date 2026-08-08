# IDS
execute as @a unless score @s id matches 1.. run function arena_blockout:assign_id

# UI
execute as @a run title @s actionbar [{"text":"AMMO: ","color":"gold","bold":true},{"score":{"name":"@s","objective":"chamber"},"color":"yellow"}]

# ------------ Interaction Hitbox -----------

execute as @a run scoreboard players operation #current id = @s id
execute as @a at @s anchored eyes unless entity @e[type=minecraft:interaction, tag=ads_detect] if score #current id = @s id run summon minecraft:interaction ~ ~1.0 ~ {width:1.8, height:1.8, Tags:["ads_detect"]}
execute as @a unless score @s prone matches 1 run function arena_blockout:input/interaction
execute as @a if score @s prone matches 1 run function arena_blockout:input/interaction_prone

# -------------------------------------------

# Shoot
execute as @a at @s anchored eyes if data entity @e[type=minecraft:interaction, tag=ads_detect, sort=nearest, limit=1] interaction run function arena_blockout:input/left_click
data remove entity @e[type=minecraft:interaction, tag=ads_detect, sort=nearest, limit=1] interaction

# ADS
execute as @a at @s anchored eyes if data entity @e[type=minecraft:interaction, tag=ads_detect, sort=nearest, limit=1] attack run function arena_blockout:input/right_click
data remove entity @e[type=minecraft:interaction, tag=ads_detect, sort=nearest, limit=1] attack

execute as @a if items entity @s weapon.offhand * run function arena_blockout:input/equip
execute as @a[scores={prone=1..}] at @s run function arena_blockout:movement/prone