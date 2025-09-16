
tag @e[tag=wma.dummy,sort=random,limit=1] add wma.temp

# detect armor value
execute store result score #temp wma.main run attribute @e[tag=wma.temp,limit=1] armor base get 1000

$execute as @e[tag=wma.dummy] run attribute @s armor base set $(armor)
$execute as @e[tag=wma.dummy] run attribute @s armor_toughness base set $(armor_tough)

execute store result score #temp2 wma.main run attribute @e[tag=wma.temp,limit=1] armor base get 1000

# ojosama, it's time to go to bed.
scoreboard players operation #temp2 wma.main -= #temp wma.main
execute if score #temp2 wma.main matches 1.. run title @s actionbar [{"text": "<訓練人偶> 主人，謝謝你讓我變得更強\\(@^O^@)/"}]
execute if score #temp2 wma.main matches ..-1 run title @s actionbar [{"text": "<訓練人偶> 主人.. 我變弱了? 你沒有要拋棄我吧{( >_< )}"}]

# higher limit
$attribute @e[tag=wma.temp,limit=1] attack_knockback base set $(armor)
execute store result score #temp wma.main run attribute @e[tag=wma.temp,limit=1] attack_knockback base get 1000
execute if score #temp wma.main matches 30001.. as @e[tag=wma.dummy] run attribute @s armor base set 30
execute if score #temp wma.main matches 30001.. run tellraw @s [{"text": "<系統> ","color": "aqua","bold": true},{"text": "Minecraft原版的盔甲值上限是 30 點，你想的美awa","color": "white","bold": false}]
$attribute @e[tag=wma.temp,limit=1] attack_knockback base set $(armor_tough)
execute store result score #temp wma.main run attribute @e[tag=wma.temp,limit=1] attack_knockback base get 1000
execute if score #temp wma.main matches 20001.. as @e[tag=wma.dummy] run attribute @s armor_toughness base set 20
execute if score #temp wma.main matches 20001.. run tellraw @s [{"text": "<系統> ","color": "aqua","bold": true},{"text": "Minecraft原版的盔甲坦度上限是 20 點，雞你太美awa","color": "white","bold": false}]
attribute @e[tag=wma.temp,limit=1] attack_knockback base set 0

tag @e[tag=wma.temp,limit=1] remove wma.temp

# particle
playsound block.smithing_table.use master @a ~ ~ ~ 1 0
execute as @e[tag=wma.dummy] at @s run particle block{"block_state":smithing_table} ~ ~1 ~ 0.2 0.5 0.2 0 15 force

function wma:dummy/-menu