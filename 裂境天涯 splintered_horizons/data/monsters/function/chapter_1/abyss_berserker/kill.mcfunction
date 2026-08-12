# Attachable Components

function sys:attachable_component/group/guide

execute \
    unless score #nightmare main.difficulty matches 1.. run \
return 0

function monsters:generic/nightmare_difficulty/abyss_explode/use