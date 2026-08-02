execute if entity @e[type=minecraft:player] run playsound minecraft:entity.player.hurt master @a[limit=1, sort=nearest] ~ ~ ~ 0.7 1.0
particle minecraft:damage_indicator ~ ~ ~ 0 0 0 0 1

summon minecraft:marker ~ ~ ~ {NoGravity:1b, Tags:["bullet"]}

execute as @e[type=!minecraft:item, tag=!shooter, tag=!ads_detect, type=!marker, limit=1, sort=nearest] at @s positioned ~ ~1.8 ~ if entity @e[type=minecraft:marker,tag=bullet, distance=..0.5] run function arena_blockout:guns/headshot

kill @e[type=minecraft:marker, tag=bullet]

execute if score @s round_damage matches 75 run damage @e[type=!item, tag=!shooter, tag=!ads_detect, type=!marker, limit=1, sort=nearest] 75 minecraft:player_attack

scoreboard players set @s ray_steps 2147483647