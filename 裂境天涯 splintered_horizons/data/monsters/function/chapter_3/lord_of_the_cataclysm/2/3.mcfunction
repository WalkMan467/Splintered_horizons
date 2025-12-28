playsound minecraft:entity.warden.sonic_boom voice @a ~ ~1 ~ 1 1

scoreboard players set #particle.sound_wave.color particle 0

execute \
    positioned ~ ~0.5 ~ run \
function particle:stone_explosion/use


execute \
    as @a[distance=..8] run \
damage @s 5 mob_attack by @n[type=zombie,tag=monsters.lord_of_the_cataclysm]