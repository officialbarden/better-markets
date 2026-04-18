$data modify storage pm:market Market prepend value {"owner":{"username":$(username),"uuid":$(uuid)}}
function market:commands/create_listing/4
data modify storage pm:market Market[0].sell.components."minecraft:custom_data".playerMarketItem set value true
$data modify storage pm:market Market[0].sell.components."minecraft:custom_data".playerMarket set value {"seller":{"username":$(username),"uuid":$(uuid)}}

execute store result storage pm:market Market[0].sell.components."minecraft:custom_data".playerMarket.stockID int 1 run scoreboard players get $StockID pm.Values
scoreboard players add $StockID pm.Values 1

$data modify storage pm:market Market[0].sell.components.minecraft:lore insert -1 value [{"text":"sold by ",color:"gray",italic:false},{"text":"$(username)",color:"gold",italic:false}]
#$data modify storage pm:market Market[0].sell.components.minecraft:lore insert -1 value {"text":"$(username)",color:"gold",italic:false}
#function market:commands/create_listing/5

