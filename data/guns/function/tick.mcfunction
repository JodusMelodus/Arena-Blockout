# UI
execute as @a if items entity @s weapon.mainhand minecraft:carrot_on_a_stick run title @s actionbar [{"text":"AMMO: ","color":"gold","bold":true},{"score":{"name":"@s","objective":"chamber"},"color":"yellow"}]

# Shoot
execute as @a[scores={shoot=1..}] run function guns:left_click

# ADS
execute as @a at @s anchored eyes run function guns:ads

execute as @a[scores={prone=1..}] at @s run function guns:prone

execute as @a[scores={grenade=1..}] run function guns:throw_grenade

# IDS
execute as @a unless score @s id matches 1.. run function guns:assign_id