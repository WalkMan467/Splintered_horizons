stopsound @s record minecraft:bgm.etude_op_8_no_12
playsound minecraft:bgm.etude_op_8_no_12 record @s ~ ~1 ~ 1 1
scoreboard players set @s music.chapter1.broken_city 201

tellraw @s [{"text":"\n=================================\n\n"},{"translate": "music.name","fallback": "Music Name"},": ",{"translate": "music.etude_op.8_no.12","fallback": "Etude Op.8 No.12"},"\n\n",{"translate": "music.composer","fallback": "Composer"},": ",{"translate": "music.scriabin","fallback": "Scriabin"},{"text":"\n\n=================================\n"}]