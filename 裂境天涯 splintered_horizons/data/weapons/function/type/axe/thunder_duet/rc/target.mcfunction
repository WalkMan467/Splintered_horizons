# ===================================================
# 斧 雷霆二重奏 右鍵 target / axe thunder duet right click target

    ## Guide [ function weapons:type/axe/thunder_duet/rc/target ] >>> 斧 雷霆二重奏 右鍵 target / axe thunder duet right click target
    ## Guide [ function weapons:type/axe/thunder_duet/rc/selected ] >>> 斧 雷霆二重奏 右鍵 selected / axe thunder duet right click selected

# ===================================================

effect give @s glowing 2 1 true
scoreboard players set @s weapon.thunder_duet.target.marker 40

scoreboard players set #particle.thunder_duet_wave.color particle 0
function particle:thunder_duet_wave/use

scoreboard players set @p[sort=arbitrary,tag=temp,distance=..8] weapon.thunder_duet.passive.state 1
scoreboard players set @p[sort=arbitrary,tag=temp,distance=..8] weapon.thunder_duet.passive.timer 5
scoreboard players set @p[sort=arbitrary,tag=temp,distance=..8] weapon.thunder_duet.target.marker 40