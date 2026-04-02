kill 0004e729-0000-7a00-0000-198fffff5b77
kill 0031079d-0003-92ed-ffbf-b29500251959
kill fe15b327-0004-e721-ffc1-192f0012d4c9
kill 0000816b-fffb-3bfd-0004-c3f900003342
kill 0004e721-0004-e663-0000-198fffff5b77
kill ffcef8bf-0031-0421-0000-79ec0000cff9
kill fffb1931-0000-7d85-0000-a4810000cfdd
kill fe15b3dd-ffff-5a4b-fffb-1931fffb18d5
kill 89e87545-f962-49b3-a510-a7da8d3f226d
kill 84af3c39-ba24-43ca-94e3-42c0c2f93aca
kill 42b1bd22-0f5b-4538-ae77-8dea62a30678

kill @e[tag=aj.oceanid.camera,distance=0..,type=block_display]

kill @e[tag=cutscene.opening.6.1,distance=0..,type=block_display]

scoreboard players set #cutscene.opening.force_execution.0.title global.main 0
scoreboard players set #cutscene.opening.force_execution.0.0 global.main 0
scoreboard players set #cutscene.opening.force_execution.0.0_1 global.main 0
scoreboard players set #cutscene.opening.force_execution.7.0 global.main 0

schedule function cutscene:opening/force_execution/remove/0/title 1t
schedule function cutscene:opening/force_execution/remove/0/0 1t
schedule function cutscene:opening/force_execution/remove/0/0_1 1t
schedule function cutscene:opening/force_execution/remove/5/0 1t
schedule function cutscene:opening/force_execution/remove/7/0 1t
schedule function cutscene:opening/force_execution/remove/7/1 1t
schedule function cutscene:opening/force_execution/remove/7/3 1t
schedule function cutscene:opening/force_execution/remove/7/5 1t
schedule function cutscene:opening/force_execution/remove/8/0 1t
schedule function cutscene:opening/force_execution/remove/8/1 1t
schedule function cutscene:opening/force_execution/remove/9/0 1t
schedule function cutscene:opening/force_execution/remove/10/0 1t
schedule function cutscene:opening/force_execution/remove/10/1 1t