setblock 0 301 0 shulker_box
data modify block 0 301 0 Items append from entity @s Inventory[{"components":{"minecraft:custom_data":{}}}]
data modify block 0 301 0 Items[0].Slot set value 0b
data remove block 0 301 0 Items[0].components.minecraft:custom_data
$item replace entity @s container.$(Slot) from block 0 301 0 container.0
#$say $(Slot)
setblock 0 301 0 air