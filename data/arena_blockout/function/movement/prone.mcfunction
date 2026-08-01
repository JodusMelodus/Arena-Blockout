# Return item to player
tag @e[type=item, distance=..3,limit=1, sort=nearest] add prone_detect
item replace entity @s weapon.mainhand from entity @e[type=item, tag=prone_detect, limit=1] contents
kill @e[type=item,tag=prone_detect,limit=1]

# Toggle functionality
scoreboard players operation @s prone %= #scope_toggle temp_scope_toggle
execute if score @s prone matches 1 run function arena_blockout:movement/enable_prone
execute if score @s prone matches 0 run function arena_blockout:movement/disable_prone