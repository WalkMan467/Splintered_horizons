

execute \
    as @s[type=marker,tag=main.duration.timer] at @s \
    if score @s duration matches ..-1 run \
function main:duration/kill

kill @s[scores={duration=..-1}]

scoreboard players remove @s[scores={duration=0..}] duration 1