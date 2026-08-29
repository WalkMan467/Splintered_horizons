# 執行者 : 凍結冰塊展示實體

    ## Guide [ function monsters:generic/freeze/orphan/detect ] >>> detect

    ## Guide [ function monsters:generic/freeze/orphan/dimension ] >>> dimension

    ## Guide [ function monsters:generic/freeze/end ] >>> end


# 這層冰是乘客，所以載具還在、而且還掛著 freeze 標籤，就是正常的
# 載具沒了 = 怪被瞬間移除；載具還在但標籤沒了 = end 那邊的 ID 比對沒殺成功

scoreboard players set #found sys.skills_freeze.id 0

execute \
    on vehicle \
    if entity @s[tag=freeze] run \
scoreboard players set #found sys.skills_freeze.id 1


execute \
    if score #found sys.skills_freeze.id matches 1 run \
    return run \
tag @s remove monster.freeze.display.orphan


# 跟 sys 那邊同樣的兩次確認，避開生成當下還沒 ride 上去的那一 tick

execute \
    if entity @s[tag=monster.freeze.display.orphan] run \
    return run \
kill @s

tag @s add monster.freeze.display.orphan
