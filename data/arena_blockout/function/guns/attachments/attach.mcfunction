execute if items entity @s weapon.offhand minecraft:stick[custom_data~{"tag": "sight"}] run data modify storage arena_blockout:attachments sight set from entity @s equipment.offhand.components."minecraft:custom_data".id

function arena_blockout:guns/attachments/update_gun with storage arena_blockout:attachments