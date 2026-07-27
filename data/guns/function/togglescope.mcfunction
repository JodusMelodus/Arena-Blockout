execute as @s run scoreboard players operation @s scope %= #scope_toggle temp_scope_toggle
# Display tracer particle if divisable by 2
execute as @s if score @s scope matches 0 run function guns:enablescope
execute as @s if score @s scope matches 1 run function guns:disablescope