scoreboard players set #world_area.main.safe_zone.melisna_temp global.main 0

tp @n[tag=world_area.main.safe_zone.melisna,type=mannequin] ~ -255 ~
kill 00000842-0000-04c8-0000-007900000029
kill @n[tag=world_area.main.safe_zone.melisna,type=mannequin]


execute \
    positioned 773 150 989 \
    as @e[tag=aj.isokla.root,type=item_display] run \
function aj:isokla/remove/this

scoreboard players set story.safe_area.melisna.1 story.safe_area 1