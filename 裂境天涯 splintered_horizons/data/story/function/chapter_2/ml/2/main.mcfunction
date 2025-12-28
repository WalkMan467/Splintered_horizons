# ## ---開頭--- ##

#     # Detect
#     execute \
    positioned 926.50 166.98 909.50 \
    store result score #story.chapter_2.ml.2 global.main \
    if entity @a[distance=..6,gamemode=!spectator]

#     # If true;
#     execute \
    positioned 926.50 166.98 909.50 \
    if score #story.chapter_2.ml.2 global.main matches 1 \
    if score #story.chapter_2.ml.2_temp global.main matches 0 run \
function story:chapter_2/ml/2/true

#     # Else
#     execute \
    positioned 926.50 166.98 909.50 \
    if score #story.chapter_2.ml.2 global.main matches 0 \
    if score #story.chapter_2.ml.2_temp global.main matches 1 run \
function story:chapter_2/ml/2/false