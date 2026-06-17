kill @e[sort=arbitrary,distance=..60,limit=20,tag=monster.segrina.1.ball,type=item]

execute \
    positioned 725 107 605 run \
tag @a[sort=arbitrary,dx=73,dy=26,dz=73,tag=!chapter_2.segrina.lose] add temp

bossbar add monster.segrina.skill.1.casting {"translate":"monster.segrina.skill.1.casting"}
bossbar set monster.segrina.skill.1.casting max 280
bossbar set monster.segrina.skill.1.casting color yellow

bossbar set minecraft:monster.segrina.skill.1.casting players @a[tag=temp]

scoreboard players set @s monster.segrina.skill.1.dmg 0

scoreboard players set #monster.segrina.1.ball.light global.main 10
scoreboard players set #monster.segrina.1.ball.dark global.main 10
scoreboard players set @a[tag=temp] monster.segrina.skill.1.ball 0
scoreboard players set @a[tag=temp] monster.segrina.skill.1.ball.light 0
scoreboard players set @a[tag=temp] monster.segrina.skill.1.ball.dark 0
scoreboard players set @a[tag=temp] monster.segrina.skill.1.ball.atk 0
scoreboard players set @a[tag=temp] monster.segrina.skill.1.ball.dmg_taken 0

scoreboard players set @a[tag=temp] player.actionbar.segrina.1 20



execute \
    positioned 725 107 605 run \
tag @a[sort=arbitrary,dx=73,dy=26,dz=73,tag=!chapter_2.segrina.lose] remove temp


function bossfight:chapter_2/segrina/skills/1/2
function bossfight:chapter_2/segrina/skills/1/2
function bossfight:chapter_2/segrina/skills/1/2
function bossfight:chapter_2/segrina/skills/1/2
function bossfight:chapter_2/segrina/skills/1/2
function bossfight:chapter_2/segrina/skills/1/2
function bossfight:chapter_2/segrina/skills/1/2
function bossfight:chapter_2/segrina/skills/1/2
function bossfight:chapter_2/segrina/skills/1/2
function bossfight:chapter_2/segrina/skills/1/2

function bossfight:chapter_2/segrina/skills/1/2
function bossfight:chapter_2/segrina/skills/1/2
function bossfight:chapter_2/segrina/skills/1/2
function bossfight:chapter_2/segrina/skills/1/2
function bossfight:chapter_2/segrina/skills/1/2
function bossfight:chapter_2/segrina/skills/1/2
function bossfight:chapter_2/segrina/skills/1/2
function bossfight:chapter_2/segrina/skills/1/2
function bossfight:chapter_2/segrina/skills/1/2
function bossfight:chapter_2/segrina/skills/1/2

execute \
    positioned 725 107 605 \
    as @a[sort=arbitrary,dx=73,dy=26,dz=73] at @s run \
function bossfight:chapter_2/segrina/skills/1/death_tips