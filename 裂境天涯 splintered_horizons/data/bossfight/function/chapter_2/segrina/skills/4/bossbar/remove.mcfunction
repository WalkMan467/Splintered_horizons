execute \
    unless score @s monster.segrina.skill.4.invincible.display.id matches -1073741823..1073741823 run \
return 0

$bossbar remove monster.segrina.skill.4.invincible.$(id)

data remove storage monster.segrina.skill.4.invincible temp

scoreboard players reset @s monster.segrina.skill.4.invincible.display.id