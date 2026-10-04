# ===================================================
# 進入裂隙 / enter the rift

    ## Guide [ function unstable_rift:main/in ] >>> 進入裂隙 / enter the rift
    ## Guide [ function unstable_rift:main/back/record ] >>> 紀錄進入前的座標 / record the position before entering
    ## Guide [ function unstable_rift:main/start ] >>> 正式開局 / start the run
    ## Guide [ function unstable_rift:chapter_1/1/tp ] >>> 進入破碎之城 / enter the broken city
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/tp ] >>> 進入選武器房 / enter the weapon select room
    ## Guide [ function unstable_rift:main/timer/use ] >>> 倒數計時 / countdown tick
    ## Guide [ function unstable_rift:main/clear ] >>> 收尾清理 / tear down

# ===================================================
# 參數 : path | area | bag 背包袋子名 | weapon_select 要不要先選武器

$advancement revoke @s only unstable_rift:$(path)/out

# 已經在裡面就不要再跑一次
#
# 沒有這道守衛的話，第二次進來會把「已經被 clear 清空的背包」存回同一個袋子，
# 覆蓋掉第一次存進去的真正家當 —— 玩家的東西就永遠拿不回來了
# 座標也會被覆蓋成裂隙內部的座標，回程就等於沒出去

$execute \
    if entity @s[tag=unstable_rift.$(area)] run \
return 0

# 先記座標，這時候人還站在進來的那一點上

function unstable_rift:main/back/record

$tag @s add unstable_rift.$(area)

$function players:inventory/save {bag:"$(bag)"}

clear @s

# 有開 weapon_select 的區域先去選武器房，倒數與血條都還不要開
#
# 降落、起算倒數、開血條三件事搬到 main/start，選武器房按下確定才會接過去；
# 沒開這個參數的區域就直接往下走，等於原本的行為

$execute \
    if data storage unstable_rift:main args{weapon_select:1b} run \
return run function unstable_rift:$(path)/weapon_select/tp with storage unstable_rift:main args

function unstable_rift:main/start with storage unstable_rift:main args
