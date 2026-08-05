item replace entity @s player.cursor from entity @s weapon.offhand

execute if items entity @s weapon.offhand minecraft:stick[custom_data~{"tag": "backpack"}] run data modify storage arena_blockout:gear backpack_id set from entity @s equipment.offhand.components."minecraft:custom_data".id
execute if items entity @s weapon.offhand minecraft:stick[custom_data~{"tag": "helmet"}] run data modify storage arena_blockout:gear helmet_id set from entity @s equipment.offhand.components."minecraft:custom_data".id

item replace entity @s weapon.offhand with minecraft:air

function arena_blockout:gear/update_gear with storage arena_blockout:gear