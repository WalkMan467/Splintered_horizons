# ===================================================
# 地獄之火 烈陽之影 天火之罰 / pyrosolis shade heavenly punishment

    ## Guide [ function weapons:type/sword/pyrosolis/summon/boom ] >>> 地獄之火 烈陽之影 天火之罰 / pyrosolis shade heavenly punishment
    ## Guide [ function weapons:type/sword/pyrosolis/summon/end ] >>> 地獄之火 烈陽之影 消失 / pyrosolis shade expire
    ## Guide [ function weapons:type/sword/pyrosolis/dmg/burst ] >>> 地獄之火 範圍 250% / pyrosolis burst 250%
    ## Guide [ function cse:status_effects/apply/entropy_erosion/use ] >>> 熵蝕之火 施加 / apply entropy erosion

    ## 執行者 : 玩家，位置 = 召喚物消失的地方
    ## 熵蝕要在 dmg/burst 之前掛，因為 calculate 跑完會把 dmger 標籤清掉

# ===================================================

particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a
particle dust_pillar{block_state:"minecraft:lava"} ~ ~-1.5 ~ 2 0 2 1 200 normal @a

playsound minecraft:entity.generic.explode voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.warden.sonic_boom voice @a ~ ~1 ~ 1 1.25
playsound minecraft:block.fire.extinguish voice @a ~ ~1 ~ 1 0.5

# 熵蝕之火 (00:05)

execute \
    as @e[distance=..6,type=!#dummy_mob,type=!player,tag=!weapon.pyrosolis.summon] run \
function cse:status_effects/apply/entropy_erosion/use {duration:105, tick_rate:40, damage: 5}

# 250% 基礎傷害

function weapons:type/sword/pyrosolis/dmg/burst
