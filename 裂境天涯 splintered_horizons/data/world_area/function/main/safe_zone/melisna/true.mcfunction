scoreboard players set #world_area.main.safe_zone.melisna_temp global.main 1

kill 00000842-0000-04c8-0000-007900000029
execute positioned 774 146 987 rotated 120 0 run summon mannequin ~ ~ ~ {Team:"NocollisionRule",immovable:true,hide_description:false,Tags:["world_area.main.safe_zone.melisna"],profile:{texture:"entity/player/slim/melisna"}}

execute positioned 774.00 146.00 989.00 rotated 100 0 run function animated_java:isokla/summon {args: {animation: 'idle', start_animation: true}}

execute positioned 773 146 989 run tag @n[tag=aj.isokla.root,distance=..2,type=item_display] add world_area.main.safe_zone.isokla

summon interaction 774 146 987 {Tags:["world_area.main.safe_zone.melisna.act","interaction.sound.default"],height:2,UUID:[I; 2114, 1224, 121, 41]}

scoreboard players set story.safe_area.melisna.1 story.safe_area 1