data modify entity @s DeathLootTable set value ""
damage @s 9999999 weapons:bypasses_cooldown_no_knockback

particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 1 1 1 1 40 normal
particle flash{color:[1.0,0.0,0.0,1.0]} ~ ~1 ~ 0.5 0.5 0.5 1 2 normal

scoreboard players reset #weapon.kill_sword.raycast main.raycast