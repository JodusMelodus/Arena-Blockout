playsound minecraft:entity.player.hurt master @s ~ ~ ~ 0.7 1.0
particle minecraft:damage_indicator ~ ~ ~ 0 0 0 0 1
damage @e[limit=1, sort=nearest] 5.0 minecraft:player_attack
scoreboard players set @s ray_steps 2147483647