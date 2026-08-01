scoreboard players set @s ray_steps 0
scoreboard players remove @s chamber 1

execute store result score @s round_damage run data get entity @s SelectedItem.components."minecraft:custom_data".round_damage

playsound minecraft:entity.iron_golem.hurt master @s ~ ~ ~ 1 2.0
tag @s add shooter
execute as @p at @s anchored eyes run function arena_blockout:guns/raycaststep
tag @s remove shooter