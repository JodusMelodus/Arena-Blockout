scoreboard players operation @s chamber = @s magazine_size
execute at @s anchored eyes run playsound arena_blockout:reload master @a ~ ~ ~ 1 1
item modify entity @s weapon.mainhand {function:"minecraft:modify_contents", component:"minecraft:bundle_contents", modifier:{function:"minecraft:set_count", count:0}}