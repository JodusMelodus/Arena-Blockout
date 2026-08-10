execute as @a[distance=..10] run effect give @s minecraft:blindness 10 255 true
# execute as @a[distance=..10] run posteffect add @s arena_blockout:white_screen
# schedule function arena_blockout:grenades/clear 100 append
execute at @s run playsound arena_blockout:stun master @a ~ ~ ~ 5 1
kill @s