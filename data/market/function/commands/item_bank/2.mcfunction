tellraw @s {"text":"====================================","color":"#FF4549"}
$data modify storage pm:temp list append from storage pm:bank Bank[{uuid:$(uuid)}]
execute store result score $i pm.Values run data get storage pm:temp list
execute if score $i pm.Values matches 1.. run function market:commands/item_bank/3 with storage pm:temp list[0]
tellraw @s {"text":"If no entries visible, that means you have no pending transactions!","color": "gray","italic": false}
tellraw @s {"text":"====================================","color":"#FF4549"}