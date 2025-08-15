gamemode spectator @s
spectate @n[type=block_display,tag=cutscene.opening.0,limit=1]
spectate @n[type=block_display,tag=cutscene.opening.0.1,limit=1]
spectate @n[type=block_display,tag=cutscene.opening.1,limit=1]
spectate @n[type=#dummy_mob,tag=aj.oceanid.camera,limit=1]

spectate @n[type=block_display,tag=cutscene.opening.2,limit=1]
spectate @n[type=block_display,tag=cutscene.opening.3,limit=1]
spectate @n[type=block_display,tag=cutscene.opening.4,limit=1]
spectate @n[type=block_display,tag=cutscene.opening.5,limit=1]
spectate @n[type=block_display,tag=cutscene.opening.6,limit=1]
execute as @a[gamemode=spectator,scores={main.3d_dizziness=1..}] run spectate @n[type=#dummy_mob,tag=aj.screen_sneak.root]
spectate @n[type=#dummy_mob,tag=aj.screen_sneak.camera]
spectate @n[type=#dummy_mob,tag=cutscene.opening.6.2,limit=1]

spectate @n[type=block_display,tag=cutscene.opening.7,limit=1]