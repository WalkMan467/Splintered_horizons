function cutscene:opening/remove_camera/1
kill @n[sort=arbitrary,distance=0..,tag=aj.aska.camera.camera,type=item_display]

gamemode spectator @a

execute \
    as @a[gamemode=spectator] at @s run \
spectate fffb1931-0000-7d85-0000-a4810000cfdd

schedule function cutscene:opening/6/3 0.5s