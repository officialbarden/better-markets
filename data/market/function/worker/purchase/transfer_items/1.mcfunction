setblock 0 301 0 shulker_box
$loot insert 0 301 0 loot {pools:[{rolls:1,entries:[{type:"item",name:"$(item0_id)","weight":1,"functions":[{"function":"set_count","count":$(item0_count)}]}]}]}
execute if data storage pm:temp MarketWithdraw.item0_components run function market:worker/purchase/transfer_items/set_components/1 with storage pm:temp MarketWithdraw

$data modify storage pm:bank Bank append value {username:$(username),uuid:$(uuid)}
data modify storage pm:bank Bank[-1].contents set from block 0 301 0 Items
execute store result storage pm:bank Bank[-1].ID int 1 run scoreboard players get $GlobalBankInstance pm.Values
scoreboard players add $GlobalBankInstance pm.Values 1
setblock 0 301 0 air
scoreboard players reset @s