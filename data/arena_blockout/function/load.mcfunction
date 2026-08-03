# Input
scoreboard objectives add left_click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add ads dummy
scoreboard objectives add prone minecraft.custom:minecraft.drop
scoreboard objectives add grenade minecraft.used:minecraft.snowball

scoreboard objectives add id dummy
scoreboard objectives add next_id dummy
# Damage of the current shot round
scoreboard objectives add round_damage dummy
scoreboard objectives add chamber dummy
scoreboard objectives add ray_steps dummy
scoreboard objectives add temp_scope_toggle dummy
scoreboard objectives add head_shot dummy
# Gear
scoreboard objectives add gear_equiped_backpack dummy
scoreboard objectives add gear_equiped_helmet dummy

# Constants
scoreboard objectives add constants dummy
scoreboard players set #10 constants 10
scoreboard players set #2 constants 2

# Team Setup
team add no_collision
team modify no_collision collisionRule never
gamerule minecraft:mob_griefing false