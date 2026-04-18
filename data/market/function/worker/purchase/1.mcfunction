execute as @e[type=villager,tag=_listingvillager] store result score @s pm.Values run data get entity @s Offers.Recipes[].uses
execute as @e[type=villager,tag=_listingvillager] run function market:worker/purchase/list_remove/1
advancement revoke @s only market:purchase_made
