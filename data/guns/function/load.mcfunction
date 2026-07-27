# Right click
scoreboard objectives add scope minecraft.used:minecraft.carrot_on_a_stick
# Left click
scoreboard objectives add shoot minecraft.custom:minecraft.damage_dealt

scoreboard objectives add chamber dummy

scoreboard objectives add ray_steps dummy

scoreboard objectives add math_ray_steps dummy
scoreboard objectives add temp_ray_steps dummy
scoreboard objectives add temp_scope_toggle dummy

scoreboard players set #divisor temp_ray_steps 5
scoreboard players set #scope_toggle temp_scope_toggle 2

# Inventory Setup
clear @a
give @a minecraft:carrot_on_a_stick[item_model="modern_guns:gun/ak47",custom_data={"tag":"gun", "scope_size": 1},item_name="AK-47"] 1
give @a minecraft:apple[item_model="modern_guns:ammo/assault_rifle_magazine",custom_data={tag:"reload"},item_name="7.62x39mm"] 1

# Team Setup
team add no_collision
team modify no_collision collisionRule never