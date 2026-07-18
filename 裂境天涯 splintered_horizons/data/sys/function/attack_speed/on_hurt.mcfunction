advancement revoke @s only sys:attack_speed/on_hurt

execute \
    store result score @s sys.attack_speed run \
attribute @s attack_speed get 1000