# 執行者 : player

tag @s add stormpm.3.2
tag @s add stormpm.3.flytosky

# 100% flying
execute if block ~ ~ ~ water run tp @s ~ 343 ~
attribute @s gravity base set -0.01

# particle
title @s times 5 20 20
title @s title [{"color":"#4CB6C2","text":"風"},{"color":"#4BA5C2","text":"暴 "},{"color":"#4A95C2","text":"👁 "},{"color":"#4884C2","text":"之"},{"color":"#4663C2","text":"眼"}]
tellraw @s [{"text":"","color": "gray"},{"text": "<提示>","bold": true},{"text":" 摧毀 4 座高塔上的"},{"text":"核心","color":"yellow"},{"text":"，在 60 秒內未拆除完畢則會使所有玩家遭受"},{"text":"致命","color":"red"},{"text":"傷害。"}]

scoreboard players set @s disable.airborne 1260

playsound minecraft:entity.ravager.roar master @s ~ ~ ~ 1 0
