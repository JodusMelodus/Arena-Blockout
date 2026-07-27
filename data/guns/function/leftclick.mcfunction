tp @e[type=minecraft:chicken, tag=shoot_temp, limit=1] ~ -300 ~
execute as @a if items entity @s weapon.mainhand minecraft:carrot_on_a_stick at @s anchored eyes run summon minecraft:chicken ^ ^ ^0.3 {Tags:["shoot_temp"], Silent:1b, NoGravity:1b,NoAI:1b, Invulnerable:1b,DeathTime:0,DeathLootTable:"", Team:"no_collision"}
effect give @e[type=minecraft:chicken, tag=shoot_temp] minecraft:invisibility infinite 1 true
execute as @a[scores={shoot=1..}] if score @s chamber matches 1.. at @s anchored eyes run function guns:shoot
scoreboard players set @a[scores={shoot=1..}] shoot 0