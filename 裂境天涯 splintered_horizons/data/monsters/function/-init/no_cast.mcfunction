scoreboard players set @s monster.skill.casting 0

# 「永不施放」的哨兵值。刻意留 1.4 億的餘裕給暫停時的 at += 1，避免整數溢位；
# main.mcfunction 的推進也有 ..1999999999 的上界保護。
scoreboard players set @s monster.skill.cast.at 2000000000
