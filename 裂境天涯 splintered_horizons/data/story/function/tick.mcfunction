function story:chapter_1/opening/1/main
function story:chapter_1/opening/3/main
function story:chapter_2/in_safe_zone/1/main
function story:chapter_2/campfire/1/main

execute if score #story:icon/proper_noun/eye_of_finality global.main matches 1.. run advancement grant @a only story:icon/proper_noun/eye_of_finality
execute unless score #story:icon/proper_noun/eye_of_finality global.main matches 1.. run advancement revoke @a only story:icon/proper_noun/eye_of_finality
execute if score #story:icon/proper_noun/new_story global.main matches 1.. run advancement grant @a only story:icon/proper_noun/new_story
execute unless score #story:icon/proper_noun/new_story global.main matches 1.. run advancement revoke @a only story:icon/proper_noun/new_story

execute if score #story:icon/character/sophia/icon global.main matches 1.. run advancement grant @a only story:icon/character/sophia/icon
execute unless score #story:icon/character/sophia/icon global.main matches 1.. run advancement revoke @a only story:icon/character/sophia/icon

execute if score #story:icon/character/sophia/story_1 global.main matches 1.. run advancement grant @a only story:icon/character/sophia/story_1
execute unless score #story:icon/character/sophia/story_1 global.main matches 1.. run advancement revoke @a only story:icon/character/sophia/story_1

execute if score #story:icon/character/sophia/story_1_1 global.main matches 1.. run advancement grant @a only story:icon/character/sophia/story_1_1
execute unless score #story:icon/character/sophia/story_1_1 global.main matches 1.. run advancement revoke @a only story:icon/character/sophia/story_1_1

execute if score #story:icon/story/chapter_1 global.main matches 1.. run advancement grant @a only story:icon/story/chapter_1
execute unless score #story:icon/story/chapter_1 global.main matches 1.. run advancement revoke @a only story:icon/story/chapter_1

execute if score #story:icon/story/chapter_1/scebe_1 global.main matches 1.. run advancement grant @a only story:icon/story/chapter_1/scebe_1
execute unless score #story:icon/story/chapter_1/scebe_1 global.main matches 1.. run advancement revoke @a only story:icon/story/chapter_1/scebe_1

execute if score #story:icon/story/chapter_1/scebe_2 global.main matches 1.. run advancement grant @a only story:icon/story/chapter_1/scebe_2
execute unless score #story:icon/story/chapter_1/scebe_2 global.main matches 1.. run advancement revoke @a only story:icon/story/chapter_1/scebe_2

execute if score #story:icon/proper_noun/resplendence global.main matches 1.. run advancement grant @a only story:icon/proper_noun/resplendence
execute unless score #story:icon/proper_noun/resplendence global.main matches 1.. run advancement revoke @a only story:icon/proper_noun/resplendence

execute if score #story:icon/proper_noun/shadow global.main matches 1.. run advancement grant @a only story:icon/proper_noun/shadow
execute unless score #story:icon/proper_noun/shadow global.main matches 1.. run advancement revoke @a only story:icon/proper_noun/shadow