scoreboard objectives add used_bow minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add chamber dummy

scoreboard objectives add ray_steps dummy

scoreboard objectives add math dummy
scoreboard objectives add temp dummy

scoreboard players set #divisor temp 5

clear @a

give @a minecraft:carrot_on_a_stick[item_model="modern_guns:gun/ak47",custom_data={"tag":"gun"},item_name="AK-47"] 1

give @a minecraft:apple[item_model="modern_guns:ammo/assault_rifle_magazine",custom_data={tag:"reload"},item_name="7.62x39mm"] 1

