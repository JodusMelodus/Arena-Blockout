# Backpack
execute if score @s gear_equiped_backpack matches 1 run item modify entity @s armor.head {function:"minecraft:set_custom_data",tag:{"backpack":1b}}
execute if score @s gear_equiped_backpack matches 0 run item modify entity @s armor.head {function:"minecraft:set_custom_data",tag:{"backpack":0b}}

# Helmet
execute if score @s gear_equiped_helmet matches 1 run item modify entity @s armor.head {function:"minecraft:set_custom_data",tag:{"helmet":1b}}
execute if score @s gear_equiped_helmet matches 0 run item modify entity @s armor.head {function:"minecraft:set_custom_data",tag:{"helmet":0b}}