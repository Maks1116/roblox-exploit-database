i = (game.Players.LocalPlayer.Name)

local Player = game.Players.LocalPlayer
Mouse = Player:GetMouse()

local Loading = Instance.new("ScreenGui")
Loading.Parent = game.Players[i].PlayerGui

local Hover = Instance.new("Sound")
Hover.Parent = game.Players[i].PlayerGui
Hover.SoundId = "http://www.roblox.com/asset/?ID=433434991"

local Open = Instance.new("Sound")
Open.Parent = game.Players[i].PlayerGui
Open.SoundId = "http://www.roblox.com/asset/?ID=169154227"
Open.Pitch = 1.2
Open.Volume = 1


local Loaded = Instance.new("TextLabel")
Loaded.Parent = Loading
Loaded.Position = UDim2.new(0, 0, 0.2, 0)
Loaded.Size = UDim2.new(1, 0, 0, 90)
Loaded.BackgroundColor3 = Color3.new(0,0,0)
Loaded.BackgroundTransparency = 1
Loaded.TextScaled = true
Loaded.Text = 'Loading Modz... (By FR34KY)'
Loaded.Font = 'SourceSansBold'
Loaded.TextColor3 = Color3.new(255, 255, 255)
Loaded.TextStrokeTransparency = 0
Loaded.TextStrokeColor3 = Color3.new(255,0,0)
function Animate()
Loaded.Text = 'Injecting Modz... (By FR34KY)'
wait(1)


end
Animate()
wait(1)

Loaded:Destroy()

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players[i].PlayerGui

local frame = Instance.new("Frame")
frame.Parent = screenGui
frame.Position = UDim2.new(0.74, 0, 0, 0)
frame.Size = UDim2.new(0, 250, 1, 0)
frame.BackgroundColor3 = Color3.new(0,0,0)
frame.BorderColor3 = Color3.new(255,0,0)
frame.BackgroundTransparency = 0
frame.Visible = false


local Selector = Instance.new("Frame")
Selector.Parent = frame
Selector.Position = UDim2.new(0, 0, 0.4, 0)
Selector.Size = UDim2.new(1, 0, 0, 50)
Selector.BackgroundColor3 = Color3.new(255,0,0)
Selector.BackgroundTransparency = 0.7
Selector.BorderSizePixel = 0


local SpeedHackA = Instance.new("TextButton")
SpeedHackA.Parent = frame
SpeedHackA.Position = UDim2.new(0, 0, 0.2, 0)
SpeedHackA.Size = UDim2.new(1, 0, 0, 50)
SpeedHackA.BackgroundTransparency = 1
SpeedHackA.Text = 'Speed Hack: ON'
SpeedHackA.FontSize = 'Size32'
SpeedHackA.Font = 'ArialBold'
SpeedHackA.TextStrokeColor3 = Color3.new(255,0,0)
SpeedHackA.TextStrokeTransparency = 0.5
SpeedHackA.TextColor3 = Color3.new(255,255,255)
SpeedHackA.Modal = true
SpeedHackA.Visible = false

local Theme = Instance.new("TextLabel")
Theme.Parent = frame
Theme.Position = UDim2.new(0, 0, 0, 0)
Theme.Size = UDim2.new(1, 0, 0, 50)
Theme.BackgroundTransparency = 1
Theme.Text = 'CH34T MENU'
Theme.FontSize = 'Size32'
Theme.Font = 'ArialBold'
Theme.TextStrokeColor3 = Color3.new(255,0,0)
Theme.TextStrokeTransparency = 0.5
Theme.TextColor3 = Color3.new(255,255,255)
Theme.TextWrapped = true


local SpeedHackB = Instance.new("TextButton")
SpeedHackB.Parent = frame
SpeedHackB.Position = UDim2.new(0, 0, 0.2, 0)
SpeedHackB.Size = UDim2.new(1, 0, 0, 50)
SpeedHackB.BackgroundTransparency = 1
SpeedHackB.Text = 'Perm Speed Hack: OFF'
SpeedHackB.FontSize = 'Size32'
SpeedHackB.Font = 'ArialBold'
SpeedHackB.TextStrokeColor3 = Color3.new(255,0,0)
SpeedHackB.TextStrokeTransparency = 0.5
SpeedHackB.TextColor3 = Color3.new(255,255,255)
SpeedHackB.Visible = true
SpeedHackB.Modal = true

local AimbotScript = Instance.new("TextButton")
AimbotScript.Parent = frame
AimbotScript.Position = UDim2.new(0, 0, 0.3, 0)
AimbotScript.Size = UDim2.new(1, 0, 0, 50)
AimbotScript.BackgroundTransparency = 1
AimbotScript.Text = 'Perm Aimbot: OFF'
AimbotScript.FontSize = 'Size32'
AimbotScript.Font = 'ArialBold'
AimbotScript.TextStrokeColor3 = Color3.new(255,0,0)
AimbotScript.TextStrokeTransparency = 0.5
AimbotScript.TextColor3 = Color3.new(255,255,255)

local Fly = Instance.new("TextButton")
Fly.Parent = frame
Fly.Position = UDim2.new(0, 0, 0.4, 0)
Fly.Size = UDim2.new(1, 0, 0, 50)
Fly.BackgroundTransparency = 1
Fly.Text = 'Perm Fly: OFF'
Fly.FontSize = 'Size32'
Fly.Font = 'ArialBold'
Fly.TextStrokeColor3 = Color3.new(255,0,0)
Fly.TextStrokeTransparency = 0.5
Fly.TextColor3 = Color3.new(255,255,255)
Fly.Visible = true
Fly.Modal = true

local MusicMode = Instance.new("TextButton")
MusicMode.Parent = frame
MusicMode.Position = UDim2.new(0, 0, 0.5, 0)
MusicMode.Size = UDim2.new(1, 0, 0, 50)
MusicMode.BackgroundTransparency = 1
MusicMode.Text = 'Music: OFF'
MusicMode.FontSize = 'Size32'
MusicMode.Font = 'ArialBold'
MusicMode.TextStrokeColor3 = Color3.new(255,0,0)
MusicMode.TextStrokeTransparency = 0.5
MusicMode.TextColor3 = Color3.new(255,255,255)
MusicMode.Visible = true
MusicMode.Modal = true

Mouse.KeyDown:connect(function(Key)
if(Key:lower() == "q") then
if Selector.Position == UDim2.new(0, 0, 0.2, 0) then
print('Selector Detceted')
SpeedHackB.Text = 'Perm Speed Hack: ON'
while true do
wait(0.001)
game.Workspace[i].Humanoid.WalkSpeed = 40
end

end




end
end)

Mouse.KeyDown:connect(function(Key)
if(Key:lower() == "q") then
if Selector.Position == UDim2.new(0, 0, 0.5, 0) then
print('Selector Detceted')
MusicMode.Text = 'Music: ON'
local SoundHe = Instance.new("Sound")
SoundHe.Parent = game.Players[i].PlayerGui
SoundHe.SoundId = "rbxassetid://257489832"
SoundHe.Pitch = 1
SoundHe.Volume = 1
SoundHe.Name = "Moosic"
wait(0.001)
SoundHe.Parent = game.Workspace
game.Workspace.Moosic:Play()
end end



end)

Mouse.KeyDown:connect(function(Key)
if(Key:lower() == "q") then
if Selector.Position == UDim2.new(0, 0, 0.4, 0) then
print('Selector Detceted')
Fly.Text = 'Perm Fly: ON'

repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr = game.Players.LocalPlayer 
local torso = plr.Character.Torso 
local flying = true
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 50 
local speed = 0 
function Fly() 
local bg = Instance.new("BodyGyro", torso) 
bg.P = 9e4 
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
bg.cframe = torso.CFrame 
local bv = Instance.new("BodyVelocity", torso) 
bv.velocity = Vector3.new(0,0.1,0) 
bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
repeat wait() 
plr.Character.Humanoid.PlatformStand = true 
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
speed = speed+.5+(speed/maxspeed) 
if speed > maxspeed then 
speed = maxspeed 
end 
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
speed = speed-1 
if speed < 0 then 
speed = 0 
end 
end 
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
else 
bv.velocity = Vector3.new(0,0.1,0) 
end 
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
until not flying 
ctrl = {f = 0, b = 0, l = 0, r = 0} 
lastctrl = {f = 0, b = 0, l = 0, r = 0} 
speed = 0 
bg:Destroy() 
bv:Destroy() 
plr.Character.Humanoid.PlatformStand = false 
end 
mouse.KeyDown:connect(function(key) 
if key:lower() == "f" then 
if flying then flying = false
else 
flying = true
Fly() 
end 
elseif key:lower() == "w" then 
ctrl.f = 1 
elseif key:lower() == "s" then 
ctrl.b = -1 
elseif key:lower() == "a" then 
ctrl.l = -1 
elseif key:lower() == "d" then 
ctrl.r = 1 
end 
end) 
mouse.KeyUp:connect(function(key) 
if key:lower() == "w" then 
ctrl.f = 0 
elseif key:lower() == "s" then 
ctrl.b = 0 
elseif key:lower() == "a" then 
ctrl.l = 0 
elseif key:lower() == "d" then 
ctrl.r = 0 
end 
end)
Fly()


end




end
end)

Mouse.KeyDown:connect(function(Key)
if(Key:lower() == "q") then
if Selector.Position == UDim2.new(0, 0, 0.3, 0) then
print('Selector Detceted')
AimbotScript.Text = 'Perm Aimbot: ON'
_G.HeadSize = 40
_G.HeadOffset = 20
_G.Enabled = true
game:service'RunService'.Stepped:connect(function()
if _G.Enabled then
for i,v in pairs(game:service'Players':GetPlayers()) do
if v.TeamColor ~= game:service'Players'.LocalPlayer.TeamColor then
--if v.Name ~= game:service'Players'.LocalPlayer.Name then
pcall(function()
v.Character.Head.CanCollide = false
v.Character.Head.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.Head.CFrame = v.Character.Torso.CFrame * CFrame.new(0,_G.HeadOffset,0)
end)
--end
end
end
end
end)


end




end
end)


function enter()
Selector:TweenPosition(UDim2.new(0,0,0.3,0),'Out','Quad',0.22)
Hover:Play()
end


AimbotScript.MouseEnter:connect(enter)

function enter()
Selector:TweenPosition(UDim2.new(0,0,0.2,0),'Out','Quad',0.22)
Hover:Play()
end


SpeedHackB.MouseEnter:connect(enter)

function enter()
Selector:TweenPosition(UDim2.new(0,0,0.4,0),'Out','Quad',0.22)
Hover:Play()
end


Fly.MouseEnter:connect(enter)

function enter()
Selector:TweenPosition(UDim2.new(0,0,0.5,0),'Out','Quad',0.22)
Hover:Play()
end


MusicMode.MouseEnter:connect(enter)


Mouse.KeyDown:connect(function(Key)
if Key:byte() == 32 then
if frame.Visible == false then
frame.Visible = true
Open:Play()
frame.BackgroundTransparency = 0.9
wait(0.001)
frame.BackgroundTransparency = 0.8
wait(0.001)
frame.BackgroundTransparency = 0.7
wait(0.001)
frame.BackgroundTransparency = 0.6
wait(0.001)
frame.BackgroundTransparency = 0.5
wait(0.001)
elseif frame.Visible == true then
frame.BackgroundTransparency = 0.1
wait(0.001)
frame.BackgroundTransparency = 0.2
wait(0.001)
frame.BackgroundTransparency = 0.3
wait(0.001)
frame.BackgroundTransparency = 0.4
wait(0.001)
frame.BackgroundTransparency = 0.5
wait(0.001)
frame.Visible = false
end
end end)