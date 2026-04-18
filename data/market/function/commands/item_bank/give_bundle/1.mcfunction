# (BANK_ID)
$tellraw @s {"text":">> Withdrawing Bank ID $(BANK_ID)...","color":"gray"}
$function market:commands/item_bank/give_bundle/2 with storage pm:bank Bank[{ID:$(BANK_ID)}]
$data remove storage pm:bank Bank[{ID:$(BANK_ID)}]
