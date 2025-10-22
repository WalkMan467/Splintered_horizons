
# success
tellraw @a[distance=..10] [{"text":"[WalkMan467] ","color":"white"},{"text":"遊戲結束！結算分數！","color":"green"}]
tellraw @a[distance=..10] ["",{"text":"恭喜獲得: "},{"score":{"name":"#system.shooting_contest.score","objective":"global.main"}},{"text":"分！"}]
playsound minecraft:entity.player.levelup voice @a[distance=..10] 1042 152 -78 1 1

# over 20
execute if score #system.shooting_contest.score global.main matches 20.. run tellraw @a[tag=system.shooting_contest] ["送你 ",{"text":"20個","color":"light_purple"},{"translate":"weapon.coin_s","color":"dark_purple"},{"text":" ！","color":"white"}]
execute if score #system.shooting_contest.score global.main matches 20.. as @a[tag=system.shooting_contest] run give @s minecraft:echo_shard[minecraft:item_name={bold:1b,color:"#EA00FF",italic:0b,translate:"weapon.coin_s"},minecraft:lore=[{color:"dark_gray",italic:0b,translate:"weapon.coin_s.type"},{color:"blue",italic:0b,translate:"weapon.coin_s.story.1"},{color:"blue",italic:0b,translate:"weapon.coin_s.story.2"},{color:"blue",italic:0b,translate:"weapon.coin_s.story.3"}],minecraft:attribute_modifiers=[{id:"base_attack_damage",type:"attack_damage",amount:0,operation:"add_value",slot:"mainhand"}],minecraft:max_stack_size=64,minecraft:unbreakable={},minecraft:item_model="coin/s",minecraft:custom_data="{type:\"item\",item:\"coin_s\"}",minecraft:tooltip_style="epic",minecraft:tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}] 20

# player
tag @a[tag=system.shooting_contest] remove system.shooting_contest
title @a[distance=..10] times 10 20 10
title @a[distance=..10] title {"text":"遊戲結束！","color":"red"}
function system:shooting_contest/bow/remove
execute in minecraft:overworld positioned 1046 152 -84 run kill @e[type=#arrows,dx=12,dy=4,dz=14]

# game
schedule clear system:shooting_contest/loop
function system:shooting_contest/sys/reset