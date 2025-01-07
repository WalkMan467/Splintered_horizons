stopsound @s record minecraft:bgm.erdtree_knights
playsound minecraft:bgm.erdtree_knights record @s ~ ~1 ~ 1 1
scoreboard players set @s music.chapter1.abyssal_ruins 335

# tellraw @s [{"text":"\n=================================\n\n"},{"translate": "music.name","fallback": "Music Name"},": ",{"translate": "music.moonlight.sonata","fallback": "Moonlight Sonata (Chapter 1)"},"\n\n",{"translate": "music.composer","fallback": "Composer"},": ",{"translate": "music.beethoven","fallback": "Beethoven"},{"text":"\n\n=================================\n"}]