# 終焉技專用顯示冷卻時間

scoreboard players set %2 weapon.ultimate.cd.math 2
scoreboard players set %10 weapon.ultimate.cd.math 10

scoreboard players operation %temp weapon.ultimate.cd.math = @s player.ultimate

# 注：nbt 文字元件渲染字串標籤時會連 SNBT 的引號一起印出來，
#     所以改用 score 元件：整數位、"."、小數位三段拼。
scoreboard players operation %temp weapon.ultimate.cd.math /= %2 weapon.ultimate.cd.math

scoreboard players operation %sec weapon.ultimate.cd.math = %temp weapon.ultimate.cd.math
scoreboard players operation %sec weapon.ultimate.cd.math /= %10 weapon.ultimate.cd.math

scoreboard players operation %dec weapon.ultimate.cd.math = %temp weapon.ultimate.cd.math
scoreboard players operation %dec weapon.ultimate.cd.math %= %10 weapon.ultimate.cd.math

title @s title ""
title @s subtitle [{"translate": "weapon.cd","color": "green"},{"text":"\uE000\uE010","font":"space"},{score:{name:"%sec",objective:"weapon.ultimate.cd.math"},"color":"gold"},{"text":".","color":"gold"},{score:{name:"%dec",objective:"weapon.ultimate.cd.math"},"color":"gold"},{"text":"s","color":"gold"}]
title @s times 0 20 20

playsound minecraft:block.respawn_anchor.deplete voice @s ~ ~1 ~ 3 2

scoreboard players set @s player.click.interval 20