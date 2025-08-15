scoreboard players set #story.chapter_2.in_safe_zone.2_temp global.main 1

execute unless score story.chapter_2.in_safe_zone.ml story.chapter_2 matches 1620.. run return 0
execute if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 20.. run return 0

kill @e[type=#minecraft:dummy_mob,tag=story.chapter_2.in_safe_zone.2]
execute positioned 762 146 991 as @e[type=item_display,tag=aj.rainy_night.root,distance=..1] at @s run function animated_java:rainy_night/remove/this


summon minecraft:armor_stand 765.50 146.00 992.50 {UUID:[I; 12, 21, 24, 3],Marker:1b,Tags:["story.chapter_2.in_safe_zone.2"],Brain: {memories: {}}, HurtByTimestamp: 0, Invulnerable: 0b, FallFlying: 0b, ShowArms: 1b, PortalCooldown: 0, AbsorptionAmount: 0.0f, DisabledSlots: 0, DeathTime: 0s, Pose: {}, Invisible: 0b, Motion: [0.0d, -0.0784000015258789d, 0.0d], Small: 0b, Health: 20.0f, equipment: {head: {components: {"minecraft:profile": {properties: [{name: "textures", value: "ewogICJ0aW1lc3RhbXAiIDogMTczNzU3NTU1MjYzNSwKICAicHJvZmlsZUlkIiA6ICI2OTU3YjQyOTZiOTI0NGJkOGQzNWJiZGU4M2JiZDI3OSIsCiAgInByb2ZpbGVOYW1lIiA6ICJjb2xpblBBUEEiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2Q4NDk2OThkZTE2ZWVhOGVkN2UxOTY2ZGMxY2I1OTQyNDM1ZDNhZmJmYjY0YjllYzA1NDAwOWExY2E3MjcyMCIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}]}}, count: 1, id: "minecraft:player_head"}, feet: {components: {"minecraft:trim": {material: "minecraft:gold", pattern: "minecraft:tide"}}, count: 1, id: "minecraft:golden_boots"}, chest: {components: {"minecraft:trim": {material: "minecraft:gold", pattern: "minecraft:tide"}}, count: 1, id: "minecraft:golden_chestplate"}, legs: {components: {"minecraft:trim": {material: "minecraft:gold", pattern: "minecraft:tide"}}, count: 1, id: "minecraft:golden_leggings"}}, fall_distance: 0.0d, Air: 300s, OnGround: 1b, Rotation: [135.54463f, 0.0f], Fire: 0s, NoBasePlate: 1b, attributes: [{id: "minecraft:armor_toughness", base: 0.0d}, {id: "minecraft:waypoint_transmit_range", base: 0.0d}, {id: "minecraft:movement_speed", base: 0.7d}, {id: "minecraft:armor", base: 0.0d}], HurtTime: 0s}
summon interaction 765.50 146.00 992.50 {height:2,UUID:[I; 12, 21, 24, 25],Tags:["story.chapter_2.in_safe_zone.2","story.chapter_2.in_safe_zone.2.act","interaction.sound.default"]}

execute positioned 762 146 991 as @e[type=item_display,tag=aj.rainy_night.root,distance=..1] at @s run function animated_java:rainy_night/remove/this
execute positioned 762 146 991 rotated -71.56503 0.0 run function animated_java:rainy_night/summon {args: {animation: 'idle', start_animation: true}}

scoreboard players set story.chapter_2.in_safe_zone.ml.2 story.chapter_2 1