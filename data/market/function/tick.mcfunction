#> config trigger commands:
    execute as @a[scores={pm-createListing=1}] at @s run function market:commands/create_listing/1
    execute as @a[scores={pm-createListing=2..}] at @s run function market:commands/create_listing/2
    execute as @a[scores={pm-itemBank=1}] at @s run function market:commands/item_bank/1
    execute as @a[scores={pm-itemBank=1..}] at @s run function market:commands/item_bank/give_bundle/check/1

execute as @a if items entity @s container.* *[custom_data~{playerMarketItem:true}] run function market:worker/purchase/2 with entity @s Inventory[{components:{"minecraft:custom_data":{"playerMarketItem":1b}}}]
execute as @e[type=villager,tag=_listingvillager,scores={pm.Values=1..}] if data storage pm:temp MarketWithdraw.item1 run function market:worker/purchase/transfer_items/2 with storage pm:temp MarketWithdraw
execute as @e[type=villager,tag=_listingvillager,scores={pm.Values=1..}] unless data storage pm:temp MarketWithdraw.item1 run function market:worker/purchase/transfer_items/1 with storage pm:temp MarketWithdraw
data remove storage pm:temp MarketWithdraw


execute as @e[type=villager,tag=_listingvillager] run data remove entity @s Offers.Recipes[{uses:1}]
clear @a bundle[bundle_contents=[],custom_data~{market_withdraw:true}]

execute as @e[type=villager,tag=_listingvillager,tag=!_pm.marker] at @s unless entity @n[type=marker,tag=_listingvillagermarker,distance=..1] run function market:villager/marker
tag @e remove _listingvillagermarker.temp
execute as @e[type=marker,tag=_listingvillagermarker] at @s unless entity @e[type=villager,sort=nearest,limit=1,tag=_listingvillager,distance=..3] run kill @s
execute as @e[type=text_display,tag=_listingvillager.td] at @s unless entity @e[type=villager,sort=nearest,limit=1,tag=_listingvillager,distance=..3] run kill @s

execute as @e[type=villager,tag=_listingvillager] at @s run rotate @s facing entity @p
execute as @e[type=villager,tag=_listingvillager] run effect give @s slowness infinite 99 true
advancement revoke @a only market:market_empty
execute as @e[type=marker,tag=_listingvillagermarker] at @s run function market:commands/create_listing/5


execute as @e[type=marker,tag=_listingvillagerspawner] at @s run function market:villager/summon
execute as @e[type=marker,tag=_listingvillager.lt] at @s run loot insert ~ ~ ~ loot market:wallet
kill @e[type=marker,tag=_listingvillagerspawner]
kill @e[type=marker,tag=_listingvillager.lt]


execute as @a if items entity @s container.* *[custom_data={}] run function market:remove_empty_component with entity @s Inventory[{"components":{"minecraft:custom_data":{}}}]
