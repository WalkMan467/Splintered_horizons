execute if block ~ ~ ~ air unless score @s system.decorated_pot.reset matches 0.. if score @p task.reset matches 1.. run scoreboard players add @p task.cracked.decorated_pot 1
execute if block ~ ~ ~ air unless score @s system.decorated_pot.reset matches 0.. run scoreboard players set @s system.decorated_pot.reset 6000

scoreboard players remove @s[scores={system.decorated_pot.reset=0..}] system.decorated_pot.reset 1

# 細節: 這裡之所以用 unless 是因為說 scoreboard 默認的值不是 0 ; 用 if score = 0 會偵測不到沒上記分板分數的實體

    execute unless score @s system.decorated_pot.reset matches 0.. run function system:decorated_pot/run