scoreboard players set #story.chapter_1.sq.2_temp global.main 1

execute \
    positioned 158 91 -429 run \
summon mannequin ~ ~ ~ \
    { \
        CustomName: \
            [ \
                { \
                    "translate": "character.seronis" \
                } \
            ], \
        Rotation: \
            [ \
                180.0f, \
                0.0f \
            ], \
        Silent:1b,\
        Invulnerable:1b,\
        UUID:[I;312231,-32131,3213213,23131],\
        Team:"NocollisionRule",\
        immovable:true, \
        hide_description:true, \
        Tags: \
            [ \
                "story.chapter_1.sq.2" \
            ], \
        profile: \
            { \
                texture:"entity/player/wide/seronis" \
            } \
    }

execute \
    positioned 158 91 -429 \
    unless score story.chapter_1.sq.2 global.main matches 1 \
as 0004c3a7-ffff-827d-0031-079d00005a5b \
    on passengers run \
data modify entity @s Glowing set value 1b

scoreboard players set story.chapter_1.sq.2 story.chapter_1 1

execute \
    unless score #story.chapter_1.sq.2.enabled global.main matches -1 run \
summon interaction 158 91 -429 \
    { \
        Tags:["story.chapter_1.sq.2.act","interaction.sound.default"], \
        height:2, \
        UUID:[I; 321321, 4231, 2123, 565121] \
    }

execute \
    unless score #story.chapter_1.sq.2.enabled global.main matches -1 run \
tp 00038799-ffff-827d-ffff-827d00003018 ~ -255 ~

execute \
    unless score #story.chapter_1.sq.2.enabled global.main matches -1 run \
kill 00038799-ffff-827d-ffff-827d00003018

execute \
    if score #story.chapter_1.sq.2.enabled global.main matches -1 run \
summon minecraft:wandering_trader ~ ~-0.5 ~ {Rotation:[180.0f,0.0f],CustomName:[{"translate": "character.seronis"}],UUID:[I; 231321, -32131, -32131, 12312],Brain: {memories: {}}, HurtByTimestamp: 0, Invulnerable: 1b, FallFlying: 0b, ForcedAge: 0, PortalCooldown: 0, AbsorptionAmount: 0.0f, active_effects: [{duration: -1, show_icon: 0b, amplifier: -1b, id: "minecraft:invisibility", show_particles: 0b}], DeathTime: 0s, PersistenceRequired: 1b, Tags: ["entityid.registered", "ca.registered", "entityid.0.0", "entityid.2.1", "entityid.3.0", "entityid.1.1", "entityid.5.0", "entityid.4.0", "entityid.7.0", "entityid.10.0", "entityid.6.0", "entityid.9.0", "entityid.12.0", "entityid.8.0", "entityid.11.0", "entityid.14.0", "entityid.13.0", "entityid.15.0"], Age: 0, Motion: [-0.6889704203659097d, 0.0d, 0.3339830309602749d], Health: 20.0f, Silent: 1b, LeftHanded: 0b, fall_distance: 0.0d, Air: 300s, OnGround: 0b, Offers: {Recipes: [{maxUses: 100000000, buy: {components: {"minecraft:item_name": {color: "#9500CF", bold: 1b, italic: 0b, translate: "item.unstable_crystal"}, "minecraft:lore": [{color: "dark_gray", italic: 0b, translate: "item.unstable_crystal.type"}, "", {color: "blue", italic: 0b, translate: "item.unstable_crystal.story.1"}, {color: "blue", italic: 0b, translate: "item.unstable_crystal.story.2"}, {color: "blue", italic: 0b, translate: "item.unstable_crystal.story.3"}, {color: "blue", italic: 0b, translate: "item.unstable_crystal.story.4"}], "minecraft:item_model": "minecraft:other/unstable_crystal", "minecraft:unbreakable": {}, "minecraft:tooltip_display": {hidden_components: ["minecraft:unbreakable"]}, "minecraft:custom_data": {item: "unstable_crystal", type: "item", rarity: "legendary"}, "minecraft:tooltip_style": "minecraft:legendary"}, count: 9, id: "minecraft:echo_shard"}, sell: {components: {"minecraft:item_name": {color: "dark_green", bold: 1b, italic: 0b, translate: "item.otherworld_key"}, "minecraft:lore": [{color: "dark_gray", italic: 0b, translate: "item.otherworld_key.type"}, {color: "blue", text: " "}, {color: "blue", italic: 0b, translate: "item.otherworld_key.story.1"}, {color: "blue", italic: 0b, translate: "item.otherworld_key.story.2"}, {color: "blue", italic: 0b, translate: "item.otherworld_key.story.3"}, {color: "blue", italic: 0b, translate: "item.otherworld_key.story.4"}], "minecraft:item_model": "minecraft:otherworld_key", "minecraft:attribute_modifiers": [{amount: 0.0d, id: "minecraft:base_attack_damage", slot: "mainhand", type: "minecraft:attack_damage", operation: "add_value"}], "minecraft:enchantments": {"minecraft:soul_speed": 1}, "minecraft:unbreakable": {}, "minecraft:tooltip_display": {hidden_components: ["minecraft:enchantments", "minecraft:attribute_modifiers", "minecraft:unbreakable"]}, "minecraft:custom_data": {item: "otherworld_key", type: "item"}, "minecraft:tooltip_style": "minecraft:legendary"}, count: 1, id: "minecraft:firework_star"}, xp: 0, uses: 1, rewardExp: 0b}]}, NoAI: 1b, Fire: 0s, CanPickUpLoot: 0b, attributes: [{id: "minecraft:movement_speed", base: 0.7d}, {id: "minecraft:scale", base: 1.25d}, {id: "minecraft:waypoint_transmit_range", modifiers: [{amount: -256.0d, id: "minecraft:effect.waypoint_transmit_range_hide", operation: "add_multiplied_total"}], base: 0.0d}], DeathLootTable: "minecraft:-", DespawnDelay: 0, HurtTime: 0s, Inventory: []}