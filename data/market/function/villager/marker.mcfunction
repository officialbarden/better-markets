summon marker ~ ~ ~ {Tags:["_listingvillagermarker","_listingvillagermarker.temp"]}
execute as @e[tag=_listingvillagermarker.temp] run ride @s mount @e[type=villager,sort=nearest,limit=1,tag=_listingvillager]
tag @e[type=villager,sort=nearest,limit=1,tag=_listingvillager] add _pm.marker
function market:commands/create_listing/5