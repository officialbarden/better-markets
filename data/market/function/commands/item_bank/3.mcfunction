$tellraw @s {"text":"Bank Instance ID: $(ID)","color":"#FF4549","click_event":{"action":"run_command","command":"/trigger pm-itemBank set $(ID)"}}
scoreboard players remove $i pm.Values 1
data remove storage pm:temp list[0]
execute if score $i pm.Values matches 1.. run function market:commands/item_bank/3 with storage pm:temp list[0]