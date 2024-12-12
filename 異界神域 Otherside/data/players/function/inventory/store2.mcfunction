# bag:$(bag) = 玩家輸入的世界背包名

$data modify storage bag:$(bag) $(0)$(1)$(2)$(3) set from entity @s Inventory
$execute store result storage bag:$(bag) $(0)$(1)$(2)$(3)_lvl.l int 1 run xp query @s levels
$execute store result storage bag:$(bag) $(0)$(1)$(2)$(3)_lvl.p int 1 run xp query @s points