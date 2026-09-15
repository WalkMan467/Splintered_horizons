# ===================================================
# 附魔 流血命中 觸發 / enchantment bleeding hit activate

    ## Guide [ function weapons:enchantment/bleeding_hit/use ] >>> 附魔 流血命中 觸發 / enchantment bleeding hit activate
    ## Guide [ function weapons:enchantment/bleeding_hit/run ] >>> 附魔 流血命中 執行 / enchantment bleeding hit run

# ===================================================

execute \
    on attacker \
    if entity @s[type=player] run \
tag @s add user.player

# 第一次使用先建立 CD 分數 / Initialize the cd score on first use
execute \
    on attacker \
    if entity @s[type=player] \
    unless score @s weapon.enchantment.bleeding_hit.cd matches -2147483648..2147483647 run \
function weapons:rc/cd {id:"weapon.enchantment.bleeding_hit.cd", cd:200}

execute \
    on attacker \
    unless entity @s[type=player] run \
tag @s add user.enemy

execute \
    if score #gametime global.main >= @p[tag=user.player] weapon.enchantment.bleeding_hit.cd run \
function weapons:enchantment/bleeding_hit/run

execute \
    if entity @n[sort=arbitrary,tag=user.enemy,distance=0..,type=!player] run \
function weapons:enchantment/bleeding_hit/run

execute \
    on attacker \
    if entity @s[type=player] run \
tag @s remove user.player

execute \
    on attacker \
    unless entity @s[type=player] run \
tag @s remove user.enemy

advancement grant @s[type=player] only players:icon/status_effects/bleeding