playsound minecraft:entity.ender_eye.death voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.ender_eye.death voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.ender_eye.death voice @a ~ ~1 ~ 1 0.5
playsound minecraft:ui.toast.challenge_complete voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.firework_rocket.twinkle voice @a ~ ~1 ~ 1 0.75
title @a title {"translate":"tips.bossfight.win","fallback":"勝利","color":"gold"}
title @a subtitle ""
title @a times 0 40 20
particle minecraft:end_rod ~ ~1 ~ 0 0 0 1 100 normal @s

fill 1717 101 878 1725 108 886 air
clone 1717 69 878 1725 76 886 1717 101 878 replace

setblock 1721 105 882 end_gateway{ExactTeleport:1b,exit_portal:[I;760,146,983]} replace
