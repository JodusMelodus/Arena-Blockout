item replace entity @s player.cursor from entity @s weapon.offhand

execute if items entity @s weapon.offhand minecraft:stick[custom_data~{"type": "attachment"}] run function arena_blockout:guns/attachments/attach
execute if items entity @s weapon.offhand minecraft:stick[custom_data~{"type": "gear"}] run function arena_blockout:gear/equip

item replace entity @s weapon.offhand with minecraft:air