# Reset
scoreboard objectives remove ads
scoreboard objectives remove prone
scoreboard objectives remove id
scoreboard objectives remove next_id
scoreboard objectives remove round_damage
scoreboard objectives remove chamber
scoreboard objectives remove ray_steps
scoreboard objectives remove head_shot
scoreboard objectives remove constants
scoreboard objectives remove magazine_size
team remove no_collision

# Input
scoreboard objectives add ads dummy
scoreboard objectives add prone minecraft.custom:minecraft.drop

scoreboard objectives add id dummy
scoreboard objectives add next_id dummy
# Damage of the current shot round
scoreboard objectives add round_damage dummy
scoreboard objectives add chamber dummy
scoreboard objectives add ray_steps dummy
scoreboard objectives add head_shot dummy
scoreboard objectives add magazine_size dummy

# Constants
scoreboard objectives add constants dummy
scoreboard players set #10 constants 10
scoreboard players set #2 constants 2

# Team Setup
team add no_collision
team modify no_collision collisionRule never
gamerule minecraft:mob_griefing false

execute as @a run scoreboard players set @s chamber 0