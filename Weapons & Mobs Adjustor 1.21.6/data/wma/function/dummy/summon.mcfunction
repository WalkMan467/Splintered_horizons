
## player use it
$execute if entity @s[type=player] rotated ~ 0 run function wma:dummy/sys/macro_summon {summon:"$(summon)"}
$execute unless entity @s[type=player] rotated as @p rotated ~ 0 align y positioned ~ ~1 ~ run function wma:dummy/sys/macro_summon {summon:"$(summon)"}