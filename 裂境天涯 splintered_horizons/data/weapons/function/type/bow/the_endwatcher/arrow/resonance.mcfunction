# ===================================================
# 弓 終焉凝視者 箭矢 共鳴充能 / bow the endwatcher arrow resonance charge

    ## Guide [ function weapons:type/bow/the_endwatcher/arrow/resonance ] >>> 弓 終焉凝視者 箭矢 共鳴充能 / bow the endwatcher arrow resonance charge
    ## Guide [ function weapons:type/bow/the_endwatcher/arrow/hit ] >>> 弓 終焉凝視者 箭矢 命中 / bow the endwatcher arrow hit

# ===================================================

# 執行者 : 射箭的玩家
#
# 第二段蓄力的箭命中怪物就加共鳴值，並把進度條顯示 2 秒。

execute \
    store result score #add weapon.the_endwatcher.resonance run \
random value 8..15

scoreboard players operation @s weapon.the_endwatcher.resonance += #add weapon.the_endwatcher.resonance

execute \
    if score @s weapon.the_endwatcher.resonance matches 100.. run \
scoreboard players set @s weapon.the_endwatcher.resonance 100

# 進度條顯示 2 秒

scoreboard players set @s player.actionbar.weapon.the_endwatcher 40

playsound minecraft:block.amethyst_block.chime voice @s ~ ~1 ~ 0.5 1.8
