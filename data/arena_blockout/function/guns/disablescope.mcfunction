effect clear @s minecraft:slowness


execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data~{"tag": "gun"}] run item modify entity @s weapon.mainhand {function:"minecraft:set_components", components: {"minecraft:item_model": "arena_blockout:guns/scar_l"}}