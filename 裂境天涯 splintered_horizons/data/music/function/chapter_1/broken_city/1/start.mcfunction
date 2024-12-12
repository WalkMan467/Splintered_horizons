stopsound @s record
playsound minecraft:bgm.moonlight_sonata record @s ~ ~1 ~ 1 1
scoreboard players set @s music.chapter1.broken_city 368

title @s actionbar [{"translate": "music.name","fallback": "Music Name"},": ",{"translate": "music.moonlight.sonata","fallback": "Moonlight Sonata (Chapter 1)"}," ",{"translate": "music.composer","fallback": "Composer"},": ",{"translate": "music.beethoven","fallback": "Beethoven"}]