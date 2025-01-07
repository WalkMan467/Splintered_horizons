stopsound @s record minecraft:bgm.moonlight_sonata
playsound minecraft:bgm.moonlight_sonata record @s ~ ~1 ~ 1 1
scoreboard players set @s music.chapter1.broken_city 368

tellraw @s [{"text":"\n=================================\n\n"},{"translate": "music.name","fallback": "Music Name"},": ",{"translate": "music.moonlight.sonata","fallback": "Moonlight Sonata (Chapter 1)"},"\n\n",{"translate": "music.composer","fallback": "Composer"},": ",{"translate": "music.beethoven","fallback": "Beethoven"},{"text":"\n\n=================================\n"}]