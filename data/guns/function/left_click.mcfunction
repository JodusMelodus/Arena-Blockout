
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data~{"tag": "gun"}] run execute if score @s chamber matches 1.. at @s anchored eyes run function guns:shoot
execute as @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick run function guns:reload


scoreboard players set @s left_click 0