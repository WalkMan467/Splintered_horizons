
# effect
execute facing entity @n[type=marker,tag=owner] feet run tp @s ^ ^ ^0.5

    # 取消鉤子技能
execute if function weapons:type/drop/hook/point/clear/detect run function weapons:type/drop/hook/point/clear/use