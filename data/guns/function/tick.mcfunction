# UI
execute as @a if items entity @s weapon.mainhand minecraft:carrot_on_a_stick run title @s actionbar [{"text":"AMMO: ","color":"gold","bold":true},{"score":{"name":"@s","objective":"chamber"},"color":"yellow"}]

# Right click
execute as @a[scores={scope=1..}] at @s anchored eyes run function guns:togglescope

# Left Click
tp @e[type=minecraft:chicken, tag=shoot_temp, limit=1] ~ -300 ~
execute at @p run summon minecraft:chicken ^ ^1.6 ^1.0 {Tags:["shoot_temp"], NoGravity:1b,NoAI:1b, Invulnerable:1b,DeathTime:0,DeathLootTable:"", Team:"no_collision"}
effect give @e[type=minecraft:chicken, tag=shoot_temp] minecraft:invisibility infinite 1 true
execute as @a[scores={shoot=1..}] if score @s chamber matches 1.. at @s anchored eyes run function guns:shoot
scoreboard players set @a[scores={shoot=1..}] shoot 0