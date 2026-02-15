gamemode spectator @s[gamemode=!spectator]

execute \
    if score .opening cutscene.story matches 0..240 run \
spectate 0004e729-0004-e663-0000-198fffff5b77

execute \
    if score .opening cutscene.story matches 240..480 run \
spectate 0004e729-0004-e663-0000-198fffffcfdf

execute \
    if score .opening cutscene.story matches 480..720 run \
spectate @n[distance=0..,sort=arbitrary,tag=aj.oceanid.camera.camera1,type=item_display]

execute \
    if score .opening cutscene.story matches 730 run \
gamemode survival @s

execute \
    if score .opening cutscene.story matches 720..1000 run \
spectate 0004e729-0000-7a00-0000-198fffff5b77

execute \
    if score .opening cutscene.story matches 1000..1280 run \
spectate 0031079d-0003-92ed-ffbf-b29500251959

execute \
    if score .opening cutscene.story matches 1280..1480 run \
spectate fe15b327-0004-e721-ffc1-192f0012d4c9

execute \
    if score .opening cutscene.story matches 1480..1740 run \
spectate 0000816b-fffb-3bfd-0004-c3f900003342

execute \
    if score .opening cutscene.story matches 1740..2150 run \
spectate 0004e721-0004-e663-0000-198fffff5b77

execute \
    if score .opening cutscene.story matches 2150..2660 run \
spectate ffcef8bf-0031-0421-0000-79ec0000cff9

execute \
    as @s[gamemode=spectator,scores={main.3d_dizziness=1..}] run \
spectate @n[tag=aj.screen_sneak.root,distance=0..,type=#dummy_mob]
spectate @n[tag=aj.screen_sneak.camera,distance=0..,type=#dummy_mob]
spectate @n[tag=cutscene.opening.6.2,limit=1,distance=0..,type=#dummy_mob]

spectate @n[tag=cutscene.opening.7,limit=1,distance=0..,type=block_display]