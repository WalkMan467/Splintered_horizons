gamemode adventure @s


execute \
    in world_area:main/game_lobby run \
tp @s 72 61 -4 180 0

clear @s

team join team.player @a

execute \
    if score #game.start.state global.main matches 0 run \
scoreboard players set @s player.spawnpoint.dimension 3

execute \
    if score #game.start.state global.main matches 0 run \
scoreboard players set @s player.spawnpoint.pos.x 7200

execute \
    if score #game.start.state global.main matches 0 run \
scoreboard players set @s player.spawnpoint.pos.y 6100

execute \
    if score #game.start.state global.main matches 0 run \
scoreboard players set @s player.spawnpoint.pos.z -400

function music:remove_bgn_icon
function weapons:remove_weapons_icon
function armors:remove_armors_icon
function story:remove_story_icon
function story:remove_proper_noun_icon
function players:adv/remove_adv
function #main:scoreboard
function monsters:remove_monsters_icon
function item:remove_energy_infusion_stone_icon
function item:type/tp_book/reset
function players:setting/defaule_setup
function players:tips/g

execute \
    if score #game.start.state global.main matches 0 run \
dialog show @s players:settings

advancement revoke @s only players:new_player

scoreboard objectives setdisplay sidebar player.death_count
scoreboard objectives setdisplay list player.death_count

execute \
    if score #game.start.state global.main matches 1 run \
scoreboard players set @s player.spawnpoint.dimension 3

execute \
    if score #game.start.state global.main matches 1 run \
scoreboard players set @s player.spawnpoint.pos.x 157600

execute \
    if score #game.start.state global.main matches 1 run \
scoreboard players set @s player.spawnpoint.pos.y 6000

execute \
    if score #game.start.state global.main matches 1 run \
scoreboard players set @s player.spawnpoint.pos.z 34000

execute \
    if score #game.start.state global.main matches 1 run \
tp @s 1576 60 340 180 0

execute \
    if score #game.start.state global.main matches 1 run \
advancement revoke @a only story:opening/4/tips


execute \
    if score #game.start.state global.main matches 2 \
    if score #cutscene global.main matches 1.. \
    if score #cutscene.opening global.main matches 1 \
    in minecraft:overworld run \
tp @a 9999 95 10070

execute \
    if score #cutscene global.main matches 1.. \
    if score #game.start.state global.main matches 2 run \
gamemode spectator @s

execute \
    if score #game.start.state global.main matches 2 \
    if score #cutscene global.main matches 1.. \
    if score #cutscene.opening global.main matches 1 run \
loot replace entity @a armor.head loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:leather_helmet",functions:[{function:"minecraft:set_components",components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_name":{bold:1b,color:"yellow",italic:0b,text:"Camera"},"minecraft:item_model":"camera","minecraft:equippable":{slot:"head",equip_sound:"event.raid.horn",asset_id:"minecraft:air",camera_overlay:"minecraft:screen/fade_out"},"minecraft:enchantments":{binding_curse:1},"minecraft:enchantment_glint_override":0b}},{function:"minecraft:set_custom_data",tag:{camera:1b}}]}]}]}

execute \
    if score #cutscene global.main matches 1.. \
    if score #game.start.state global.main matches 2 run \
tag @a add cutscene.player_leave.detect

execute \
    if score #game.start.state global.main matches 2 \
    if score #cutscene global.main matches 1.. \
    if score #cutscene.opening global.main matches 2..11 run \
item replace entity @a armor.head with leather_helmet[tooltip_display={hide_tooltip:true},item_name='{"bold":true,"color":"yellow","italic":false,"text":"Camera"}',minecraft:item_model="camera",equippable={slot:"head",equip_sound:"event.raid.horn",asset_id:"minecraft:air",camera_overlay:"minecraft:screen/cutscene"},enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false] 1

execute \
    if score #cutscene global.main matches 1.. \
    if score #game.start.state global.main matches 2 \
    if score #cutscene.opening global.main matches 2 run \
tag @a add sys.hide_world_area.name

execute \
    if score #game.start.state global.main matches 2 \
    if score #cutscene global.main matches 1.. \
    if score #cutscene.opening global.main matches 2 \
    in minecraft:overworld run \
tp @a 9999 95 10070

execute \
    unless score #cutscene global.main matches 1.. run \
item replace entity @a armor.head with air