
execute store result score #system.shooting_contest.money global.main run clear @s *[custom_data~{type:"item",item:"coin_s"}] 0
execute if score #system.shooting_contest.money global.main matches ..19 run return 0
execute if entity @a[tag=system.shooting_contest,limit=1] run return 0

function system:shooting_contest/start2