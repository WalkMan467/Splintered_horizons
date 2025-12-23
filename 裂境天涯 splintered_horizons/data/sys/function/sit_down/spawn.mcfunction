execute align xyz positioned ~0.5 ~ ~0.5 if entity @n[sort=arbitrary,distance=..0.5,tag=sys.sit_down.act,type=interaction] run return 0

execute align xyz run summon minecraft:interaction ~0.5 ~0.5 ~0.5 {Tags:["sys.sit_down.act","sys.sit_down"]}