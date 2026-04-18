scoreboard objectives add pm.Values dummy
scoreboard players add $StockID pm.Values 1
scoreboard players add $GlobalBankInstance pm.Values 2
scoreboard players add $GlobalBankInstance pm.Values 1
scoreboard objectives add pm-createListing trigger
scoreboard players enable @a pm-createListing
scoreboard objectives add pm-itemBank trigger
scoreboard players enable @a pm-itemBank
scoreboard players enable @a pm-createListing

tellraw @a ["",{"text":"[","bold":true,"color":"#FFBF57"},{"text":"B","bold":true,"color":"#FEBC55"},{"text":"e","bold":true,"color":"#FEB954"},{"text":"t","bold":true,"color":"#FEB653"},{"text":"t","bold":true,"color":"#FEB351"},{"text":"e","bold":true,"color":"#FEB050"},{"text":"r ","bold":true,"color":"#FEAD4F"},{"text":"M","bold":true,"color":"#FEAA4D"},{"text":"a","bold":true,"color":"#FEA74C"},{"text":"r","bold":true,"color":"#FEA44B"},{"text":"k","bold":true,"color":"#FEA149"},{"text":"e","bold":true,"color":"#FE9E48"},{"text":"t","bold":true,"color":"#FE9B47"},{"text":"s","bold":true,"color":"#FE9845"},{"text":"] ","bold":true,"color":"#FE8A3F"},{"text":"Version 1.5 Loaded.","italic":false,"color":"gray"}]
