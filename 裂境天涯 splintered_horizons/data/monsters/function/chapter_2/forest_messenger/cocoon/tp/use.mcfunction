tp @e[tag=monster.forest_messenger.cocoon.user_temp,limit=1,tag=monster.forest_messenger.1.actived] @s
execute as @e[tag=monster.forest_messenger.cocoon.user_temp,limit=1,tag=monster.forest_messenger.1.actived] at @s run function monsters:chapter_2/forest_messenger/cocoon/tp/owner

execute on passengers run kill @s
kill @s