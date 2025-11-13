execute unless entity 00000806-0000-0002-0000-001f00000003 run setblock -916 60 2750 light[level=15]
execute unless entity 00000806-0000-0002-0000-001f00000003 run setblock -916 61 2750 light[level=15]

execute unless entity 00000806-0000-0002-0000-001f00000003 run advancement revoke @a only world_area:chapter_2/temple_of_light/bossfight/elekiel_phase_2/bossfight_area/in

execute unless entity 00000806-0000-0002-0000-001f00000003 run schedule function world_area:chapter_2/temple_of_light/bossfight/bossfight_area/main 1t