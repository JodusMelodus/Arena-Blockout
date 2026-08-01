
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data~{"tag": "gun"}] run execute if score @s chamber matches 1.. at @s anchored eyes run function arena_blockout:guns/shoot
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data~{"tag": "magazine"}] run function arena_blockout:guns/reload
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data~{"tag": "medical"}] run function arena_blockout:medical/heal

scoreboard players set @s left_click 0