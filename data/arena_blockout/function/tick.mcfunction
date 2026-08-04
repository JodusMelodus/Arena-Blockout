# UI
execute as @a if items entity @s weapon.mainhand minecraft:stick run title @s actionbar [{"text":"AMMO: ","color":"gold","bold":true},{"score":{"name":"@s","objective":"chamber"},"color":"yellow"}]

# ------------ Interaction Hitbox -----------

scoreboard players operation #current id = @s id

execute as @a at @s anchored eyes unless entity @e[type=minecraft:interaction, tag=ads_detect] if score #current id = @s id run summon minecraft:interaction ~ ~1.0 ~ {width:1.8, height:1.8, Tags:["ads_detect"]}
execute as @a at @s anchored eyes if score #current id = @s id run tp @e[type=minecraft:interaction, tag=ads_detect] ~ ~1.0 ~

# -------------------------------------------

# Shoot
execute as @a at @s anchored eyes if data entity @e[type=minecraft:interaction, tag=ads_detect, sort=nearest, limit=1] interaction run function arena_blockout:left_click
data remove entity @e[type=minecraft:interaction, tag=ads_detect, sort=nearest, limit=1] interaction

# ADS
execute as @a at @s anchored eyes if data entity @e[type=minecraft:interaction, tag=ads_detect, sort=nearest, limit=1] attack run function arena_blockout:right_click
data remove entity @e[type=minecraft:interaction, tag=ads_detect, sort=nearest, limit=1] attack

execute as @a if items entity @s weapon.offhand * run function arena_blockout:gear/equip
execute as @a[scores={prone=1..}] at @s run function arena_blockout:movement/prone
# IDS
execute as @a unless score @s id matches 1.. run function arena_blockout:assign_id