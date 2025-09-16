
## exchange armor
execute if data storage wma:data {dummy:{btn:1b}} positioned ~-0.5 ~ ~-0.5 if entity @e[type=item,tag=,dx=0,dy=3,dz=0,limit=1] at @s run function wma:dummy/exchange_armor/use