# ===================================================
# 離開裂隙 / leave the rift

    ## Guide [ function unstable_rift:main/in ] >>> 進入裂隙 / enter the rift
    ## Guide [ function unstable_rift:main/out ] >>> 離開裂隙 / leave the rift
    ## Guide [ function unstable_rift:main/clear ] >>> 收尾清理 / tear down

# ===================================================

# 參數 : path | area（其餘轉給 clear）

$advancement revoke @s only unstable_rift:$(path)/in

$execute \
    unless entity @s[tag=unstable_rift.$(area)] run \
return 0

function unstable_rift:main/clear with storage unstable_rift:main args
