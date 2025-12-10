
advancement revoke @s only time_traveler:sys/shooting_contest/using_bow

execute if score sys.shooting_contest.timer global.main matches 0.. run return fail
execute unless items entity @s container.* bow[minecraft:custom_data~{mini_game:1b}] run return fail

tellraw @s [{"text": "［紙圓］ 哼? "},{"selector":"@s"},{"text":" 你以為你發現了bug在那邊竊笑是嘛awa 那真是太糟糕了 因為我早就發現了bug 就是為了來抓你這個愛亂偷東西的人 你 是個窮凶惡極的壞蛋 作為懲罰 我把你的弓給拿走了 不對 這本來就不是你的弓 這遊戲已經這麼簡單了 拿到了20塊星輝 還想搶Walkman人偶的破弓 你明明有更好的武器 要打就用魔劍打嘛... 不然去練舞室也可以 然後我不知道要寫什麼了 但我記住你了 你最好下次別再偷東西 喔對了順帶一提 這是個彩蛋訊息:D"}]
playsound minecraft:item.goat_horn.sound.7 master @a
function sys:shooting_contest/bow/remove
