# 執行者 : 怪物

# effect
tag @s add ench.phantom_fangs
scoreboard players reset @s weapon.enchantment.phantom_fangs

execute \
    on attacker run \
function energy_infusion_stone:skills/weapon/phantom_fangs/effect

# particle
particle minecraft:damage_indicator ~ ~ ~ 0 0 0 1 50 force
playsound minecraft:entity.wolf.growl master @a ~ ~ ~ 1 1.5
playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 1 2