execute if items entity @s weapon.mainhand minecraft:crossbow[custom_data~{"tag": "gun"}] run execute if score @s chamber matches 0 run playsound arena_blockout:empty master @s ~ ~ ~ 1 1
execute if items entity @s weapon.mainhand minecraft:crossbow[custom_data~{"tag": "gun"}] run execute if score @s chamber matches 1.. at @s anchored eyes run function arena_blockout:guns/shoot
execute if items entity @s weapon.mainhand minecraft:bundle[custom_data~{"tag": "magazine"}] run function arena_blockout:guns/reload
execute if items entity @s weapon.mainhand minecraft:stick[custom_data~{"tag": "medical"}] run function arena_blockout:medical/heal
execute if items entity @s weapon.mainhand minecraft:stick[custom_data~{"tag": "grenade"}] run function arena_blockout:grenades/throw_grenade_over_arm