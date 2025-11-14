## Store experience in 'multipack:graves' and clears it
xp add @s -1
execute store result storage multipack:graves Xp int 7 run data get entity @s XpLevel
xp set @s 0
xp set @s 0 levels
