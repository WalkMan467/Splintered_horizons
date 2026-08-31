# ===================================================
# 烈陽使者 技能1 落點傷害 / sunfire emissary skill 1 impact damage

    ## Guide [ function monsters:chapter_3/sunfire_emissary/1/damage/use ] >>> 烈陽使者 技能1 落點傷害 / sunfire emissary skill 1 impact damage
    ## Guide [ function monsters:chapter_3/sunfire_emissary/1/main ] >>> 烈陽使者 技能1 分鏡 / sunfire emissary skill 1 timeline
    ## Guide [ function monsters:chapter_3/sunfire_emissary/1/damage/fx ] >>> 烈陽使者 技能1 落點特效 / sunfire emissary skill 1 impact fx
    ## Guide [ function monsters:chapter_3/sunfire_emissary/1/fire/use ] >>> 烈陽使者 技能1 點燃玩家 / sunfire emissary skill 1 ignite

# ===================================================

execute \
    as @a[distance=..3] \
    unless score @s sys.dummy_mob matches 1.. run \
damage @s 7 mob_attack by @n[distance=..6,tag=monsters.sunfire_emissary,type=husk]

execute \
    as @a[distance=..3] \
    unless score @s sys.dummy_mob matches 1.. run \
function monsters:chapter_3/sunfire_emissary/1/fire/use

playsound minecraft:entity.generic.extinguish_fire voice @a ~ ~1 ~ 1 0.75
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 1
playsound minecraft:block.fire.ambient voice @a ~ ~1 ~ 1 1

scoreboard players reset #monster.sunfire_emissary.1.damage.fx particle
function monsters:chapter_3/sunfire_emissary/1/damage/fx