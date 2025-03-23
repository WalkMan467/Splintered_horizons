# Ultimate
execute if score @s player.ultimate matches 0 run title @s actionbar [{"text":"\uE003"}]

# NO Ultimate
execute if score @s player.ultimate matches 1.. run title @s actionbar [{"text":"\uE004"}]