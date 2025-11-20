scoreboard players add @s weapon.sagittarius.charged.sfx 1

particle dust_color_transition{from_color:[0.000,1.000,0.867],to_color:[0.749,1.000,0.969],scale:1} ~ ~1 ~ 0.5 0.5 0.5 1 2 normal @a

execute unless score @s weapon.sagittarius.charged.sfx matches 25 run return 0
function weapons:type/bow/sagittarius/rc/sfx

scoreboard players set @s weapon.sagittarius.charged.sfx 0