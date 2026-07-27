# UI
execute as @a if items entity @s weapon.mainhand minecraft:carrot_on_a_stick run title @s actionbar [{"text":"AMMO: ","color":"gold","bold":true},{"score":{"name":"@s","objective":"chamber"},"color":"yellow"}]

# Right click
execute as @a[scores={scope=1..}] at @s anchored eyes run function guns:togglescope

# Left Click
function guns:leftclick