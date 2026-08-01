execute if entity @e[type=minecraft:player] run playsound minecraft:entity.player.hurt master @a[limit=1, sort=nearest] ~ ~ ~ 0.7 1.0
particle minecraft:damage_indicator ~ ~ ~ 0 0 0 0 1

execute if score @s round_damage matches 75 run damage @e[limit=1, sort=nearest] 75 minecraft:player_attack

scoreboard players set @s ray_steps 2147483647