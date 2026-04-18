execute store result storage pm:temp bank.id int 1 run scoreboard players get @s pm-itemBank
scoreboard players reset @s pm-itemBank
scoreboard players enable @s pm-itemBank
function market:commands/item_bank/give_bundle/check/2 with storage pm:temp bank