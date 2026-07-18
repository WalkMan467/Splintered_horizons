scoreboard players set @s player.actionbar.armor.wtsf 20
scoreboard players reset @s armor.wtsf.charge
scoreboard players set @s armor.chestplate.effect.actived 2

function particle:sagittarius_wave/use

scoreboard players set @e[sort=arbitrary,distance=..8,tag=!freeze.immunity,type=!player,type=!#minecraft:dummy_mob] sys.skills_freeze 30