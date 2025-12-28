function story:chapter_1/mq/1/main
function story:chapter_1/mq/2/main
function story:chapter_1/mq/3/main
function story:chapter_1/mq/4/main
function story:chapter_1/sq/1/main

function story:chapter_2/in_safe_zone/1/main
function story:chapter_2/in_safe_zone/2/main
function story:chapter_2/in_safe_zone/3/main

function story:chapter_2/ml/1/main
function story:chapter_2/ml/2/main
function story:chapter_2/ml/3/main
function story:chapter_2/ml/4/main
function story:chapter_2/ml/5/main


execute \
    if score #story:icon/proper_noun/eye_of_finality global.main matches 1.. run \
advancement grant @a only story:icon/proper_noun/eye_of_finality


execute \
    unless score #story:icon/proper_noun/eye_of_finality global.main matches 1.. run \
advancement revoke @a only story:icon/proper_noun/eye_of_finality


execute \
    if score #story:icon/proper_noun/great_old_ones global.main matches 1.. run \
advancement grant @a only story:icon/proper_noun/great_old_ones


execute \
    unless score #story:icon/proper_noun/great_old_ones global.main matches 1.. run \
advancement revoke @a only story:icon/proper_noun/great_old_ones


execute \
    if score #story:icon/proper_noun/runes global.main matches 1.. run \
advancement grant @a only story:icon/proper_noun/runes


execute \
    unless score #story:icon/proper_noun/runes global.main matches 1.. run \
advancement revoke @a only story:icon/proper_noun/runes


execute \
    if score #story:icon/proper_noun/new_story global.main matches 1.. run \
advancement grant @a only story:icon/proper_noun/new_story


execute \
    unless score #story:icon/proper_noun/new_story global.main matches 1.. run \
advancement revoke @a only story:icon/proper_noun/new_story


execute \
    if score #story:icon/character/sophia/icon global.main matches 1.. run \
advancement grant @a only story:icon/character/sophia/icon


execute \
    unless score #story:icon/character/sophia/icon global.main matches 1.. run \
advancement revoke @a only story:icon/character/sophia/icon


execute \
    if score #story:icon/story/chapter_1/sq/1/title global.main matches 1.. run \
advancement grant @a only story:icon/story/chapter_1/sq/1/title


execute \
    unless score #story:icon/story/chapter_1/sq/1/title global.main matches 1.. run \
advancement revoke @a only story:icon/story/chapter_1/sq/1/title


execute \
    if score #story:icon/story/chapter_1/sq/1/1 global.main matches 1.. run \
advancement grant @a only story:icon/story/chapter_1/sq/1/1


execute \
    unless score #story:icon/story/chapter_1/sq/1/1 global.main matches 1.. run \
advancement revoke @a only story:icon/story/chapter_1/sq/1/1


execute \
    if score #story:icon/story/chapter_1/sq/1/2 global.main matches 1.. run \
advancement grant @a only story:icon/story/chapter_1/sq/1/2


execute \
    unless score #story:icon/story/chapter_1/sq/1/2 global.main matches 1.. run \
advancement revoke @a only story:icon/story/chapter_1/sq/1/2


execute \
    if score #story:icon/character/sophia/story_1 global.main matches 1.. run \
advancement grant @a only story:icon/character/sophia/story_1


execute \
    unless score #story:icon/character/sophia/story_1 global.main matches 1.. run \
advancement revoke @a only story:icon/character/sophia/story_1


execute \
    if score #story:icon/character/sophia/story_1_1 global.main matches 1.. run \
advancement grant @a only story:icon/character/sophia/story_1_1


execute \
    unless score #story:icon/character/sophia/story_1_1 global.main matches 1.. run \
advancement revoke @a only story:icon/character/sophia/story_1_1


execute \
    if score #story:icon/character/selena/icon global.main matches 1.. run \
advancement grant @a only story:icon/character/selena/icon


execute \
    unless score #story:icon/character/selena/icon global.main matches 1.. run \
advancement revoke @a only story:icon/character/selena/icon


execute \
    if score #story:icon/character/selena/story_1 global.main matches 1.. run \
advancement grant @a only story:icon/character/selena/story_1


execute \
    unless score #story:icon/character/selena/story_1 global.main matches 1.. run \
advancement revoke @a only story:icon/character/selena/story_1


execute \
    if score #story:icon/character/selena/story_1_1 global.main matches 1.. run \
advancement grant @a only story:icon/character/selena/story_1_1


execute \
    unless score #story:icon/character/selena/story_1_1 global.main matches 1.. run \
advancement revoke @a only story:icon/character/selena/story_1_1


execute \
    if score #story:icon/character/selena/story_1_2 global.main matches 1.. run \
advancement grant @a only story:icon/character/selena/story_1_2


execute \
    unless score #story:icon/character/selena/story_1_2 global.main matches 1.. run \
advancement revoke @a only story:icon/character/selena/story_1_2


execute \
    if score #story:icon/character/selena/story_1_3 global.main matches 1.. run \
advancement grant @a only story:icon/character/selena/story_1_3


execute \
    unless score #story:icon/character/selena/story_1_3 global.main matches 1.. run \
advancement revoke @a only story:icon/character/selena/story_1_3


execute \
    if score #story:icon/character/selena/story_1_4 global.main matches 1.. run \
advancement grant @a only story:icon/character/selena/story_1_4


execute \
    unless score #story:icon/character/selena/story_1_4 global.main matches 1.. run \
advancement revoke @a only story:icon/character/selena/story_1_4


execute \
    if score #story:icon/character/selena/story_1_5 global.main matches 1.. run \
advancement grant @a only story:icon/character/selena/story_1_5


execute \
    unless score #story:icon/character/selena/story_1_5 global.main matches 1.. run \
advancement revoke @a only story:icon/character/selena/story_1_5


execute \
    if score #story:icon/character/selena/story_1_6 global.main matches 1.. run \
advancement grant @a only story:icon/character/selena/story_1_6


execute \
    unless score #story:icon/character/selena/story_1_6 global.main matches 1.. run \
advancement revoke @a only story:icon/character/selena/story_1_6


execute \
    if score #story:icon/story/chapter_1 global.main matches 1.. run \
advancement grant @a only story:icon/story/chapter_1


execute \
    unless score #story:icon/story/chapter_1 global.main matches 1.. run \
advancement revoke @a only story:icon/story/chapter_1


execute \
    if score #story:icon/story/chapter_1/mq/title global.main matches 1.. run \
advancement grant @a only story:icon/story/chapter_1/mq/title


execute \
    unless score #story:icon/story/chapter_1/mq/title global.main matches 1.. run \
advancement revoke @a only story:icon/story/chapter_1/mq/title


execute \
    if score #story:icon/story/chapter_1/mq/scebe_1 global.main matches 1.. run \
advancement grant @a only story:icon/story/chapter_1/mq/scebe_1


execute \
    unless score #story:icon/story/chapter_1/mq/scebe_1 global.main matches 1.. run \
advancement revoke @a only story:icon/story/chapter_1/mq/scebe_1


execute \
    if score #story:icon/story/chapter_1/mq/scebe_2 global.main matches 1.. run \
advancement grant @a only story:icon/story/chapter_1/mq/scebe_2


execute \
    unless score #story:icon/story/chapter_1/mq/scebe_2 global.main matches 1.. run \
advancement revoke @a only story:icon/story/chapter_1/mq/scebe_2


execute \
    if score #story:icon/story/chapter_1/mq/scebe_3 global.main matches 1.. run \
advancement grant @a only story:icon/story/chapter_1/mq/scebe_3


execute \
    unless score #story:icon/story/chapter_1/mq/scebe_3 global.main matches 1.. run \
advancement revoke @a only story:icon/story/chapter_1/mq/scebe_3


execute \
    if score #story:icon/proper_noun/resplendence global.main matches 1.. run \
advancement grant @a only story:icon/proper_noun/resplendence


execute \
    unless score #story:icon/proper_noun/resplendence global.main matches 1.. run \
advancement revoke @a only story:icon/proper_noun/resplendence


execute \
    if score #story:icon/proper_noun/shadow global.main matches 1.. run \
advancement grant @a only story:icon/proper_noun/shadow


execute \
    unless score #story:icon/proper_noun/shadow global.main matches 1.. run \
advancement revoke @a only story:icon/proper_noun/shadow


execute \
    if score #story:icon/proper_noun/starry_sky_frost global.main matches 1.. run \
advancement grant @a only story:icon/proper_noun/starry_sky_frost


execute \
    unless score #story:icon/proper_noun/starry_sky_frost global.main matches 1.. run \
advancement revoke @a only story:icon/proper_noun/starry_sky_frost