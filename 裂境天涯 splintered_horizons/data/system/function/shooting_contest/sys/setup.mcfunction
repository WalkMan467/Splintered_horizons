execute store result score #system.shooting_contest.rdm global.main run random value 1..7

execute if score #system.shooting_contest.rdm global.main matches 1 run function system:shooting_contest/sys/1
execute if score #system.shooting_contest.rdm global.main matches 2 run function system:shooting_contest/sys/2
execute if score #system.shooting_contest.rdm global.main matches 3 run function system:shooting_contest/sys/3
execute if score #system.shooting_contest.rdm global.main matches 4 run function system:shooting_contest/sys/4
execute if score #system.shooting_contest.rdm global.main matches 5 run function system:shooting_contest/sys/5
execute if score #system.shooting_contest.rdm global.main matches 6 run function system:shooting_contest/sys/6
execute if score #system.shooting_contest.rdm global.main matches 7 run function system:shooting_contest/sys/7