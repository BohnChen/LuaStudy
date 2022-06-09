-- Don't write "" int []
-- write searching or updating like below
local player = {}
player.minAtk = 30
player.maxAtk = 50
player.health = 800
player.mana = 200
print(player.minAtk) -- Recmmanded one
print(player["maxAtk"]) -- Not so good
