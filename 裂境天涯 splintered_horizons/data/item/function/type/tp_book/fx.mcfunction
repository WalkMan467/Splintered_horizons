scoreboard players add #item.tp_book.fx particle 6

particle dust{color: [1.0f, 0.0f, 0.0f], scale: 1.0f} ^ ^-0.5 ^3 0 0 0 0 0 force @a[distance=..20]

execute rotated ~6 0 if score #item.tp_book.fx particle matches ..360 run function item:type/tp_book/fx