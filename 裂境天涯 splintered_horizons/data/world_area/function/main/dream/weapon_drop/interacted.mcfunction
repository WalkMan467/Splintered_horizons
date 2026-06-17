# General Interaction Feedback

# Weapon Drop

    # 1

    execute \
        as 2b4906a0-c58f-486b-bce0-9091039c4bd9 at @s \
        if data entity @s interaction.timestamp run \
    function world_area:main/dream/weapon_drop/1/give

    # 2

    execute \
        as 803d1701-55ca-4f13-a4c4-aa8612363d37 at @s \
        if data entity @s interaction.timestamp run \
    function world_area:main/dream/weapon_drop/2/give

    # 3

    execute \
        as 5fe07430-8718-4e82-8d89-16ea88c95586 at @s \
        if data entity @s interaction.timestamp run \
    function world_area:main/dream/weapon_drop/3/give

    # 4

    execute \
        as 8fc57dba-bd92-4d14-be3b-00777b95ba05 at @s \
        if data entity @s interaction.timestamp run \
    function world_area:main/dream/weapon_drop/4/give

    # 5

    execute \
        as 78afbce2-22b4-4900-99ed-80749e073bb9 at @s \
        if data entity @s interaction.timestamp run \
    function world_area:main/dream/weapon_drop/5/run

execute \
    as @a at @s \
    if biome ~ ~ ~ world_area:main/dream run \
schedule function world_area:main/dream/weapon_drop/interacted 1t