execute if score #difficulty global.main matches 1 run damage @s 8 magic
execute if score #difficulty global.main matches 2 run damage @s 10 magic
execute if score #difficulty global.main matches 3 run damage @s 12 magic

effect give @s slowness 10 1 true
effect give @a[distance=..3] luck 60 1 true
scoreboard players set @s effect.void 80