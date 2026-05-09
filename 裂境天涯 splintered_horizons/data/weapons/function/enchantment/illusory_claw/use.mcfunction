# 執行者 : 怪物

# effect
tag @s add ench.illusory_claw
scoreboard players reset @s weapon.enchantment.illusory_claw

execute \
    on attacker run \
function weapons:enchantment/illusory_claw/effect

# particle
particle minecraft:damage_indicator ~ ~ ~ 0 0 0 1 50 force
playsound minecraft:entity.wolf.growl master @a ~ ~ ~ 1 1.5
playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 1 2