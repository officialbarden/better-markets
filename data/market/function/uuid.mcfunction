forceload add 0 0 0 0
setblock 0 300 0 air
setblock 0 300 0 shulker_box{Items:[{Slot:0b,id:"player_head"}]}
item modify block 0 300 0 container.0 [{function:"fill_player_head",entity:"this"}]
data remove storage pm:profile Profile
data modify storage pm:profile Profile.username set from block 0 300 0 Items[0].components."minecraft:profile".name
data modify storage pm:profile Profile.uuid set from entity @s UUID[0]
setblock 0 300 0 air