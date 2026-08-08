scoreboard players set @s ray_steps 0
scoreboard players remove @s chamber 1

execute store result score @s round_damage run data get entity @s SelectedItem.components."minecraft:custom_data".round_damage

playsound arena_blockout:gunshot master @s ~ ~ ~ 1 1
tag @s add shooter
execute as @p at @s anchored eyes run function arena_blockout:guns/raycaststep
tag @s remove shooter