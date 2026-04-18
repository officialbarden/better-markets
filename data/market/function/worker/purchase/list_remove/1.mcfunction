data modify storage pm:temp MarketWithdraw.username set from entity @s Offers.Recipes[{uses:1}].sell.components."minecraft:custom_data".playerMarket.seller.username
data modify storage pm:temp MarketWithdraw.uuid set from entity @s Offers.Recipes[{uses:1}].sell.components."minecraft:custom_data".playerMarket.seller.uuid
data modify storage pm:temp MarketWithdraw.stockID set from entity @s Offers.Recipes[{uses:1}].sell.components."minecraft:custom_data".playerMarket.stockID

data modify storage pm:temp MarketWithdraw.item0 set from entity @s Offers.Recipes[{uses:1}].buy
data modify storage pm:temp MarketWithdraw.item1 set from entity @s Offers.Recipes[{uses:1}].buyB

data modify storage pm:temp MarketWithdraw.item0_count set from entity @s Offers.Recipes[{uses:1}].buy.count
data modify storage pm:temp MarketWithdraw.item0_id set from entity @s Offers.Recipes[{uses:1}].buy.id
data modify storage pm:temp MarketWithdraw.item0_components set from entity @s Offers.Recipes[{uses:1}].buy.components

data modify storage pm:temp MarketWithdraw.item1_count set from entity @s Offers.Recipes[{uses:1}].buyB.count
data modify storage pm:temp MarketWithdraw.item1_id set from entity @s Offers.Recipes[{uses:1}].buyB.id
data modify storage pm:temp MarketWithdraw.item1_components set from entity @s Offers.Recipes[{uses:1}].buyB.components


function market:worker/purchase/list_remove/2 with storage pm:temp MarketWithdraw
