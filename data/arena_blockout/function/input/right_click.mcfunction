# @s - player
data remove entity @e[type=minecraft:interaction, tag=ads_detect, sort=nearest, limit=1] attack

execute if items entity @s weapon.mainhand minecraft:crossbow[custom_data~{"tag": "gun"}] run function arena_blockout:guns/ads
execute if items entity @s weapon.mainhand minecraft:stick[custom_data~{"tag": "grenade"}] run function arena_blockout:grenades/throw_grenade_under_arm