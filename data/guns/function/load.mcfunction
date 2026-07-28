# Input
scoreboard objectives add shoot minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add ads minecraft.custom:minecraft.damage_dealt
scoreboard objectives add prone minecraft.custom:minecraft.drop

scoreboard objectives add chamber dummy

scoreboard objectives add ray_steps dummy

scoreboard objectives add math_ray_steps dummy
scoreboard objectives add temp_ray_steps dummy
scoreboard objectives add temp_scope_toggle dummy

scoreboard players set #divisor temp_ray_steps 5
scoreboard players set #scope_toggle temp_scope_toggle 2

# Team Setup
team add no_collision
team modify no_collision collisionRule never