advancement revoke @s only monsters:chapter_2/elekiel/1/on_kill

tag @s add monster.elekiel.1.kill

tellraw @s ""
tellraw @s {"translate":"monsters.chapter_2.elekiel.1.on_kill","fallback": "已獲得異空間之力，可以免疫跳入異空間洞口的死亡了"}

attribute @s safe_fall_distance modifier add monsters.elekiel.1.kill 1024 add_value