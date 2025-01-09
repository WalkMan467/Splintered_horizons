stopsound @s record
playsound minecraft:bgm.melting record @s ~ ~1 ~ 1 1
scoreboard players set @s music.main.campfire 205

tellraw @s [{"text":"\n=================================\n\n"},{"translate": "music.name","fallback": "Music Name"},": ",{"translate": "music.melting","fallback": "Melting"},"\n\n",{"translate": "music.composer","fallback": "Composer"},": ",{"translate": "music.nico_cartosio","fallback": "Nico Cartosio"},{"text":"\n\n=================================\n"}]