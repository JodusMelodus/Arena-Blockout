execute if block ~ ~ ~ #arena_blockout:pierceable run scoreboard players operation @s round_damage /= #10 constants
execute if block ~ ~ ~ minecraft:glass run playsound arena_blockout:glass_shatter master @a[sort=nearest, distance=..10] ~ ~ ~ 1 1
execute unless block ~ ~ ~ #arena_blockout:pierceable run scoreboard players set @s ray_steps 2147483647