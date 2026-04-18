#$execute unless data storage pm:bank Bank[{ID:$(id)}] run return run tellraw @s {"text":"There is no transaction pending with this ID!","color":gray}

execute store result score $a pm.Values run data get entity @s UUID[0]
$execute store result score $b pm.Values run data get storage pm:bank Bank[{ID:$(id)}].uuid

$execute if score $a pm.Values = $b pm.Values run return run function market:commands/item_bank/give_bundle/1 {BANK_ID:$(id)}
execute unless score $a pm.Values = $b pm.Values run return run tellraw @s {"text":">> You are not the owner of this Bank ID!","color": "gray"}
