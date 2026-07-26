# UI
execute as @a if items entity @s weapon.mainhand minecraft:carrot_on_a_stick run title @s actionbar [{"text":"AMMO: ","color":"gold","bold":true},{"score":{"name":"@s","objective":"chamber"},"color":"yellow"}]

execute as @a[scores={used_bow=1..}] if score @s chamber matches 1.. at @s anchored eyes run function guns:shoot
scoreboard players set @a[scores={used_bow=1..}] used_bow 0
