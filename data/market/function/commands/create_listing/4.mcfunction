data modify storage pm:market Market[0].sell set from entity @s equipment.offhand
data remove storage pm:market Market[0].sell.Slot

execute unless items entity @s container.0 * if items entity @s container.1 * run data modify storage pm:market Market[0].buy set from entity @s Inventory[{Slot:1b}]
execute if items entity @s container.0 * unless items entity @s container.1 * run data modify storage pm:market Market[0].buy set from entity @s Inventory[{Slot:0b}]
data remove storage pm:market Market[0].buy.Slot


execute if items entity @s container.0 * if items entity @s container.1 * run data modify storage pm:market Market[0].buy set from entity @s Inventory[{Slot:0b}]
execute if items entity @s container.0 * if items entity @s container.1 * run data modify storage pm:market Market[0].buyB set from entity @s Inventory[{Slot:1b}]
data remove storage pm:market Market[0].buyB.Slot

data modify storage pm:market Market[0].rewardExp set value 1b
data modify storage pm:market Market[0].maxUses set value 1
data modify storage pm:market Market[0].uses set value 0
data modify storage pm:market Market[0].xp set value 3

item replace entity @s weapon.offhand with air
