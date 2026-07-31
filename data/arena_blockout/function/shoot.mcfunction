scoreboard players set #temp ray_steps 0
scoreboard players remove @s chamber 1
# playsound modern_guns:ak47_fire master @s ~ ~ ~ 1 1
tag @s add shooter
function arena_blockout:raycaststep
tag @s remove shooter