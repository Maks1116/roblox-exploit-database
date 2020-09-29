antiKek={'AntiSpeedHack','AntiDataTheft','UI','NO FF','NO FF'}
 
while wait() do
local Player = game.Players.LocalPlayer
local Gui = Player.PlayerGui
for i,v in pairs(antiKek) do
if Gui:FindFirstChild(v) then
Gui:FindFirstChild(v):Remove()
end
end
end