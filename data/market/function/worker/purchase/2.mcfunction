#> removing extra components from this datapack:
data remove storage pm:temp Item
$data modify storage pm:temp Item.components set from entity @s Inventory[{Slot:$(Slot)b}].components
#$data modify storage pm:temp Item.custom_data set from entity @s Inventory[{Slot:$(Slot)b}].components."minecraft:custom_data"
#$data modify storage pm:temp Item.lore set from entity @s Inventory[{Slot:$(Slot)b}].components."minecraft:lore"

#$data modify storage pm:temp temp.transaction.seller set from entity @s Inventory[{Slot:$(Slot)b}].components."minecraft":custom_data.playerMarket.seller.username
#$data modify storage pm:temp temp.transaction.item set from entity @s Inventory[{Slot:$(Slot)b}].id

#data remove storage pm:temp Item.lore[-1]
data remove storage pm:temp Item.components."minecraft:lore"[-1]
data remove storage pm:temp Item.components."minecraft:custom_data".playerMarketItem
data remove storage pm:temp Item.components."minecraft:custom_data".playerMarket
$data modify storage pm:temp Item.Slot set value $(Slot)
function market:worker/purchase/3 with storage pm:temp Item
