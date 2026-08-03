item replace entity @s player.cursor from entity @s weapon.offhand

execute if items entity @s weapon.offhand minecraft:stick[custom_data~{"tag": "backpack"}] run function arena_blockout:gear/equip_backpack
execute if items entity @s weapon.offhand minecraft:stick[custom_data~{"tag": "helmet"}] run function arena_blockout:gear/equip_helmet

item replace entity @s weapon.offhand with minecraft:air

function arena_blockout:gear/update_gear