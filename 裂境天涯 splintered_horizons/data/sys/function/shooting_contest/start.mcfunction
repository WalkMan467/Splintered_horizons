
execute store result score #sys.shooting_contest.money global.main run clear @s *[custom_data~{type:"item",item:"coin_s"}] 0
execute if score #sys.shooting_contest.money global.main matches ..19 run return 0
execute if entity @a[tag=sys.shooting_contest,limit=1] run return 0

function sys:shooting_contest/start2