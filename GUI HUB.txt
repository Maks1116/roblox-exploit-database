-- ZallyHub V1. Made by Zalendier#4007 --

local Main1 = Instance.new("ScreenGui")
local Main2 = Instance.new("Frame")
local cmd1 = Instance.new("TextButton")
local cmd2 = Instance.new("TextButton")
local cmd3 = Instance.new("TextButton")
local cmd4 = Instance.new("TextButton")
local cmd5 = Instance.new("TextButton")
local credits = Instance.new("TextLabel")

-- Gui
Main1.Name = "ZallyHub"
Main1.Parent = game.CoreGui
-- Main
Main2.Name = "Main"
Main2.Parent = Main1
Main2.Draggable = true
Main2.Active = true
Main2.BackgroundColor3 = Color3.new(0, 170, 255)
Main2.BorderSizePixel = 0
Main2.ZIndex = 1
Main2.Size = UDim2.new(0, 200, 0, 600)
-- cmd1
cmd1.Name = "FE God"
cmd1.Parent = Main2
cmd1.Active = true
cmd1.BackgroundColor3 = Color3.new(0, 100, 255)
cmd1.BorderSizePixel = 1
cmd1.BorderColor3 = Color3.new(0, 0, 0)
cmd1.ZIndex = 10
cmd1.Size = UDim2.new(0, 200, 0, 100)
cmd1.TextColor3 = Color3.new(255, 255, 255)
cmd1.Text = "FE God"
cmd1.FontSize = "Size32"
-- FE God
cmd1.MouseButton1Click:connect(function()
	local player = game.Players.LocalPlayer
	if player.Character then
	if player.Character:FindFirstChild("Humanoid") then
	player.Character.Humanoid.Name = "1"
	end
	local l = player.Character["1"]:Clone()
	l.Parent = player.Character
	l.Name = "Humanoid"; wait(0.1)
	player.Character["1"]:Destroy()
	workspace.CurrentCamera.CameraSubject = player.Character.Humanoid
	player.Character.Animate.Disabled = true; wait(0.1)
	player.Character.Animate.Disabled = false
	end
	print("finished.")
end)
-- cmd2
cmd2.Name = "Admin"
cmd2.Parent = Main2
cmd2.Active = true
cmd2.BackgroundColor3 = Color3.new(0, 100, 255)
cmd2.BorderSizePixel = 1
cmd2.BorderColor3 = Color3.new(0, 0, 0)
cmd2.ZIndex = 9
cmd2.Size = UDim2.new(0, 200, 0, 100)
cmd2.Position = UDim2.new(0, 0, 0, 100)
cmd2.TextColor3 = Color3.new(255, 255, 255)
cmd2.Text = "Admin"
cmd2.FontSize = "Size32"
-- Admin
cmd2.MouseButton1Click:connect(function()
--TITLE: RC7 Admin

local NOCLIP = false
local JESUSFLY = false
local SWIM = false

game:GetService('RunService').Stepped:connect(function()
if NOCLIP then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
elseif JESUSFLY then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(12)
elseif SWIM then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(4)
end
end)

_G.Rc7Notification = function(a,b,c)
game:GetService("CoreGui"):WaitForChild("RobloxGui").SendNotification:Fire(a, b, "rbxassetid://331959655", c)
end

local gPlayers = game:GetService("Players")
local admin = gPlayers.LocalPlayer.Name
local bannedplyrs = {}

local admins = {'Xeradius','AutumnsGift'} -- names here of people who have access to your commands! (Your name doesn't need to be in here.)

-- declare services / init stuff --
local services={}
local cmds={}
local std={}
function KICK(PLAYER_KICK)
if PLAYER_KICK.Character:FindFirstChild('Humanoid') then
local KICK_1 = Instance.new('SkateboardPlatform', PLAYER_KICK.Character)
KICK_1.Name = ''
KICK_1.CFrame = CFrame.new(math.random(-1000, 1000), 1000, math.random(-1000, 1000))
KICK_1.CanCollide = false
KICK_1.Transparency = 1

PLAYER_KICK.Character.Humanoid.WalkSpeed = 0

wait()

local WELD_1 = Instance.new('Weld', KICK_1)
WELD_1.Name = ''
WELD_1.Part0 = PLAYER_KICK.Character.Torso
WELD_1.Part1 = KICK_1
WELD_1.C0 = CFrame.new(0, -400, 0)

wait()

KICK_1.Anchored = true
WELD_1:remove()
end
end


local serverLocked = false

game.Players.PlayerAdded:connect(function(player)
if serverLocked == true then
player.CharacterAdded:connect(function()
wait(2)
KICK(player)
end)
end
end)
function FIX_LIGHTING()
game.Lighting.Ambient = Color3.new(0.5, 0.5, 0.5)
game.Lighting.Brightness = 1
game.Lighting.GlobalShadows = true
game.Lighting.Outlines = false
game.Lighting.TimeOfDay = 14
game.Lighting.FogEnd = 100000
end

services.players=gPlayers
services.lighting=game:GetService('Lighting')
services.workspace=game:GetService('Workspace')
services.events = {}
local user = gPlayers.LocalPlayer

local cmdprefix=';'
local scriptprefix='\\'
local split=" "


updateevents=function()
for i,v in pairs(services.events) do services.events:remove(i) v:disconnect() end
for i,v in pairs(gPlayers:players())do
local ev = v.Chatted:connect(function(msg) do_exec(msg,v) end)
services.events[#services.events+1] = ev
end
end

-- safazi's lib --

std.inTable=function(tbl,val)
if tbl==nil then return false end

for _,v in pairs(tbl)do
if v==val then return true end
end 
return false
end

std.out=function(str)
print(str)
end

std.list=function(tbl) --turns table into list with commas
local str=''
for i,v in pairs(tbl)do
str=str..tostring(v)
if i~=#tbl then str=str..', ' end
end 
return str
end

std.endat=function(str,val)
local z=str:find(val)
if z then 
return str:sub(0,z-string.len(val)),true
else 
return str,false 
end
end

std.first=function(str) return str:sub(1,1) end

isAdmin=function(name)
if name==admin then
return true
elseif admins[name]==true then
return true
end
return false
end

gPlayers.PlayerAdded:connect(function(player)
for i,v in pairs(bannedplyrs) do
if player == v then player:Destroy() end
end
end)

local exec=function(str)
spawn(function()
local script, loaderr = loadstring(str)
if not script then
error(loaderr)
else
script()
end
end)
end

local findCmd=function(cmd_name)
for i,v in pairs(cmds)do
if v.NAME:lower()==cmd_name:lower() or std.inTable(v.ALIAS,cmd_name:lower())then
return v
end
end
end

local getCmd=function(msg)
local cmd,hassplit=std.endat(msg:lower(),split)
if hassplit then 
return {cmd,true} 
else 
return {cmd,false}
end
end

local getprfx=function(strn)
if strn:sub(1,string.len(cmdprefix))==cmdprefix then return{'cmd',string.len(cmdprefix)+1}
elseif strn:sub(1,string.len(scriptprefix))==scriptprefix then return{'exec',string.len(scriptprefix)+1}
end return
end

local getArgs=function(str)
local args={}
local new_arg=nil
local hassplit=nil
local s=str
repeat
new_arg,hassplit=std.endat(s:lower(),split)
if new_arg~='' then
args[#args+1]=new_arg
s=s:sub(string.len(new_arg)+string.len(split)+1)
end
until hassplit==false
return args
end

local function execCmd(str, plr)
local s_cmd
local a
local cmd
s_cmd = getCmd(str) --separate command from string using split {command name,arg bool (for arg system)}
cmd = findCmd(s_cmd[1]) --get command object {NAME,DESC,{ALIASES},function(args)}
if cmd == nil then return end
a = str:sub(string.len(s_cmd[1]) + string.len(split) + 1)--start string "a" after command and split
local args=getArgs(a)--gets us a nice table of arguments

pcall(function()
cmd.FUNC(args, plr)
end)
end

function do_exec(str,plr)
if not isAdmin(plr.Name)then return end 

str=str:gsub('/e ','')--remove "/e " the easy way!

local t=getprfx(str)
if t==nil then return end
str=str:sub(t[2])
if t[1]=='exec' then
exec(str)
elseif t[1]=='cmd' then
execCmd(str, plr)
end
end

updateevents()
_G.exec_cmd = execCmd
--game.Players.LocalPlayer.Chatted:connect(doexec)

local _char=function(plr_name)
for i,v in pairs(game.Players:GetChildren())do
if v:IsA'Player'then
if v.Name==plr_name then return v.Character end
end
end
return
end

local _plr=function(plr_name)
for i,v in pairs(game.Players:GetChildren())do
if v:IsA'Player'then
if v.Name==plr_name then return v end
end
end
return
end

function addcmd(name,desc,alias,func)
cmds[#cmds+1]=
{
NAME=name;
DESC=desc;
ALIAS=alias;
FUNC=func;
}
end

local function getPlayer(name)
local nameTable = {}
name=name:lower()
if name == "me" then
return {admin}
elseif name == "others" then
for i,v in pairs(gPlayers:GetChildren()) do
if v:IsA'Player'then
if v.Name~=admin then
nameTable[#nameTable+1]=v.Name
end
end
end
elseif name == "all" then
for i,v in pairs(gPlayers:GetChildren()) do
if v:IsA'Player'then 
nameTable[#nameTable+1]=v.Name
end
end
else
for i,v in pairs(gPlayers:GetChildren()) do
local lname = v.Name:lower()
local i,j = lname:find(name)
if i == 1 then
return {v.Name}
end
end
end
return nameTable
end

-- commands --

addcmd('ff',"ff's a player",{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
Instance.new("ForceField", pchar)
end
end)

addcmd('noff',"unff's a player",{'unff'},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
for j,v1 in pairs(pchar:GetChildren()) do
if v1:IsA("ForceField") then
v1:Destroy()
end
end
end
end)

addcmd('fire','set a player on fire',{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
Instance.new("Fire", pchar.Torso)
end
end)

addcmd('nofire','extinguish a player',{'unfire'},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
for j,v1 in pairs(pchar.Torso:GetChildren()) do
if v1:IsA("Fire") then
v1:Destroy()
end
end
end
end)

addcmd('sp','give a player sparkles',{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
Instance.new("Sparkles", pchar.Torso)
end
end)

addcmd('nosp','remove sparkles from a player',{'unsp'},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
for j,v1 in pairs(pchar.Torso:GetChildren()) do
if v1:IsA("Sparkles") then
v1:Destroy()
end
end
end
end)

addcmd('smoke','give a player smoke',{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
Instance.new("Smoke", pchar.Torso)
end
end)

addcmd('nosmoke','remove smoke from a player',{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
for j,v1 in pairs(pchar.Torso:GetChildren()) do
if v1:IsA("Smoke") then
v1:Destroy()
end
end
end
end)

addcmd('btools','gives a player btools',{},
function(args)
local players=getPlayer(args[1])
if players ~= nil then
for i, v in pairs(players) do
Instance.new("HopperBin", gPlayers[v].Backpack).BinType = 2
Instance.new("HopperBin", gPlayers[v].Backpack).BinType = 3
Instance.new("HopperBin", gPlayers[v].Backpack).BinType = 4
end
end
end)

addcmd('god','gods player',{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
if pchar then pchar.Humanoid.MaxHealth=math.huge end
end
end)

addcmd('sgod','silently gods player',{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
spawn(function()
pchar.Humanoid.MaxHealth = 10000000
wait()
pchar.Humanoid.Health = 10000000
end)
end
end)

addcmd('ungod','removes god from a player',{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
if pchar then 
pchar.Humanoid.MaxHealth=100 
pchar.Humanoid.Health=100
end
end
end)

addcmd('heal','resets a players health',{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
if pchar then pchar.Humanoid.Health=pchar.Humanoid.MaxHealth;end
end
end)

addcmd('frz','freezes a player',{},
function(args)
local players = getPlayer(args[1])
if players ~= nil then
for i, v in pairs(players) do
_char(v).Torso.Anchored = true
end
end
end)

addcmd('thaw','freezes a player',{},
function(args)
local players = getPlayer(args[1])
if players ~= nil then
for i, v in pairs(players) do
_char(v).Torso.Anchored = false
end
end
end)

addcmd('kill','kills a player',{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players)do
local pchar=_char(v)
if pchar then pchar.Humanoid.MaxHealth=0;pchar.Humanoid.Health=0;end
end
end)

addcmd('sound','plays a sound',{},
function(args)
local function dels(instance)
for i,v in pairs(instance:GetChildren())do
if v:IsA'Sound'then v:Destroy()end
dels(v)
end
end
dels(workspace)

local c=args[1]or'stop'
if std.inTable({'stop'},c:lower())then return end
local s=Instance.new("Sound", workspace)
s.Looped = true
s.SoundId = "rbxassetid://"..c
s.Volume=1
s:Play() s.Name = "Musickek"
end)

addcmd('explode','explode a player', {},
function(args)
local players=getPlayer(args[1])
for i, v in pairs(players) do
local char = _char(v)
if char:FindFirstChild("Torso") then
Instance.new("Explosion", char).Position = char.Torso.Position 
end
end
end)

addcmd('invis','make a player invisible',{},
function(args)
local players=getPlayer(args[1])
for i, v in pairs(players) do
for k, v2 in pairs(_char(v):GetChildren()) do
if v2.className == "Part" then
if v2.Name ~= "HumanoidRootPart" then v2.Transparency = 1 end
elseif v2.className == "Hat" then
if v2:FindFirstChild("Handle") then
v2.Handle.Transparency = 1 
end
end
if v2:FindFirstChild("face") then
v2.face:Destroy()
end
end
end
end)

addcmd('vis','make a player visible',{},
function(args)
local players=getPlayer(args[1])
for i, v in pairs(players) do
for k, v2 in pairs(_char(v):GetChildren()) do
if v2.className == "Part" then
if v2.Name ~= "HumanoidRootPart" then v2.Transparency = 0 end
elseif v2.className == "Hat" then
if v2:FindFirstChild("Handle") then v2.Handle.Transparency = 0 end
end
if v2:FindFirstChild("face") then
v2.face:Destroy()
end
end
end
end)

addcmd('goto','go to a player',{},
function(args)
local players=getPlayer(args[1])
if players ~= nil and _char(players[1]):FindFirstChild("HumanoidRootPart") then
_char(admin).HumanoidRootPart.CFrame = _char(players[1]).HumanoidRootPart.CFrame
end
end)

addcmd('bring','bring a player to you',{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players) do
if _char(v):FindFirstChild("HumanoidRootPart") then
_char(v).HumanoidRootPart.CFrame = _char(admin).HumanoidRootPart.CFrame 
end
end
end)

addcmd('tp','teleport player 1 to player 2',{},
function(args)
local players1=getPlayer(args[1])
local players2=getPlayer(args[2])
if not players2[1] then return end
for i,v in pairs(players1) do
if _char(v):FindFirstChild("HumanoidRootPart") and _char(players2[1]):FindFirstChild("HumanoidRootPart") then
_char(v).HumanoidRootPart.CFrame = _char(players2[1]).HumanoidRootPart.CFrame
end 
end
end)

addcmd('charapp','change a players appearance',{},
function(args)
local players=getPlayer(args[1])
if not args[1]or not args[2]then return end
local id=args[2]
if players ~= nil then
for i,v in pairs(players) do
gPlayers[v].CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..id
if _char(v):FindFirstChild("Head") then
_char(v).Head:Destroy() 
end
end
end
end)

addcmd('ws','change a players walkspeed',{},
function(args)
local players=getPlayer(args[1])
if not args[1]or not args[2]then return end
local num=args[2]
for i,v in pairs(players) do
if _char(v):FindFirstChild("Humanoid") then
_char(v).Humanoid.WalkSpeed=tonumber(num)
end
end
end)

addcmd('time','change the time of day',{},
function(args)
if not args[1]then return end
local time_=tonumber(args[1])

game.Lighting:SetMinutesAfterMidnight(time_*60)
end)

addcmd('kick','kick a player',{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players) do
gPlayers[v]:Destroy()
end
end)

addcmd('ban','ban a player',{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players) do
bannedplyrs[#bannedplyrs+1]=v
gPlayers[v]:Destroy()
end
end)

addcmd('unlockws','unlock the whole workspace',{},
function(args)
local function unlock(instance) 
for i,v in pairs(instance:GetChildren()) do
if v:IsA("BasePart") then
v.Locked = false
end
unlock(v)
end
end
unlock(workspace)
end)

addcmd('unanchorws','unanchor the whole workspace',{},
function(args)
local function unanchor(instance) 
for i,v in pairs(instance:GetChildren()) do
if v:IsA("BasePart") then
v.Anchored=false
end
unanchor(v)
end
end
unanchor(workspace)
end)

addcmd('hat','give player a hat ingame',{},
function(args)
if not args[1] or not args[2] then return end
local players=getPlayer(args[1])
local id=args[2]
local hat = game:GetObjects("rbxassetid://"..id)[1]
if hat:IsA("Hat") then
for i,v in pairs(players) do
hat:clone().Parent = _char(v)
end 
end
hat:Destroy()
end)

addcmd('gear','give player a gear ingame',{},
function(args)
spawn(function()
if not args[1] or not args[2] then return end
local players=getPlayer(args[1])
local id=args[2]
local model = game:GetService("InsertService"):LoadAsset(id)
for i,v in pairs(players) do
for _,j in pairs(model:GetChildren()) do
if j:IsA("Tool") then
j:Clone().Parent = gPlayers[v].Backpack
end
end
end
model:Destroy()
end)
end)

addcmd('pstools','give player personal server tools',{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players) do
gPlayers[v].PersonalServerRank = 240
end
end)

addcmd('skick','kicks a player by shutting them down, takes a few seconds',{},
function(args)
local players=getPlayer(args[1])
for i,v in pairs(players) do
spawn(function()
gPlayers[v].PersonalServerRank = 240
gPlayers[v].Backpack:WaitForChild("ClassicTool")
gPlayers[v].PersonalServerRank = 0
end)
end
end)

addcmd('admin','gives a player admin',{},
function(args)
if not args[1]then return end
local players=getPlayer(args[1])
table.foreach(players,function(k,v)
admins[v]=true
end)
end)

addcmd('unadmin','removes a players admin',{},
function(args)
if not args[1] then return end
local players=getPlayer(args[1])
table.foreach(players,function(k,v)
admins[v]=nil
end)
end)

addcmd('view','view player',{},
function(args)
local players=getPlayer(args[1])
workspace.CurrentCamera.CameraSubject = game.Players[players[1]].Character
end)

addcmd('noclip','noclips local player',nil,
function(args,speaker)
NOCLIP = true
JESUSFLY = false
SWIM = false
end)

addcmd('clip','clips local player',nil,
function(args,speaker)
NOCLIP = false
end)
addcmd('jesusfly','jesusfly',nil,
function(args,speaker)
NOCLIP = false
JESUSFLY = true
SWIM = false
end)
addcmd('nofly','nofly',nil,
function(args)
JESUSFLY = false
end)
addcmd('swim','swim',nil,
function(args)
NOCLIP = false
JESUSFLY = false
SWIM = true
end)
addcmd('noswim','noswim',nil,
function(args)
SWIM = false
end)
addcmd('skybox','sky <id>',nil,
function(args)
for i,v in pairs(game.Lighting:GetChildren()) do
if v:IsA('Sky') then
v:remove()
end
end
local ID = (args[1])
local sky = Instance.new('Sky', game.Lighting)
sky.SkyboxBk = 'rbxassetid://' .. ID
sky.SkyboxDn = 'rbxassetid://' .. ID
sky.SkyboxFt = 'rbxassetid://' .. ID
sky.SkyboxLf = 'rbxassetid://' .. ID
sky.SkyboxRt = 'rbxassetid://' .. ID
sky.SkyboxUp = 'rbxassetid://' .. ID
end)
addcmd('shrek','shrek <p>',nil,
function(args)
local players = getPlayer(args[1])
for i,v in pairs(players) do
local pchar = gPlayers[v].Character
for i,v in pairs(pchar:GetChildren()) do
if v:IsA('Hat') or v:IsA('CharacterMesh') or v:IsA('Shirt') or v:IsA('Pants') then
v:remove()
end
end
for i,v in pairs(pchar.Head:GetChildren()) do
if v:IsA('Decal') or v:IsA('SpecialMesh')then
v:remove()
end
end
if pchar:FindFirstChild('Shirt Graphic') then
pchar['Shirt Graphic'].Archivable = false
pchar['Shirt Graphic'].Graphic = ''
end
local mesh = Instance.new('SpecialMesh', pchar.Head)
mesh.MeshType = 'FileMesh'
pchar.Head.Mesh.MeshId = 'http://www.roblox.com/asset/?id=19999257'
pchar.Head.Mesh.Offset = Vector3.new(-0.1, 0.1, 0)
pchar.Head.Mesh.TextureId = 'http://www.roblox.com/asset/?id=156397869'
local Shirt = Instance.new('Shirt', gPlayers[v].Character)
local Pants = Instance.new('Pants', gPlayers[v].Character)
Shirt.ShirtTemplate = 'rbxassetid://133078194'
Pants.PantsTemplate = 'rbxassetid://133078204'
end
end)
addcmd('ambient','ambient <n> <n> <n>',nil,
function(args)
game.Lighting.Ambient = Color3.new(args[1], args[2], args[3])
end)
addcmd('fetp','fetp',nil,
function(args)
local last_pos = game.Players.LocalPlayer.Character.Torso.CFrame
for _, Player in pairs(game:GetService("Players"):GetChildren()) do
if game.Workspace:findFirstChild(Player.Name) then
local w = Instance.new("Weld", game.Players.LocalPlayer.Character.Torso)
w.Part0 = w.Parent
w.Part1 = Player.Character.Torso
w.C0 = last_pos
w.C1 = last_pos
wait(0.1)
w:Destroy()
game.Players.LocalPlayer.Character.Torso.CFrame = last_pos
end
end
wait(1)
game.Players.LocalPlayer.Character.Torso.CFrame = last_pos
end)
addcmd('fogend','fogend <n>',nil,
function(args)
game.Lighting.FogEnd = args[1]
end)
addcmd('slock','serverlock',nil,
function(args)
serverLocked = true
end)

addcmd('unslock','unserverlock',nil,
function(args)
serverLocked = false
end)
addcmd('fogend','fogend <n>',{},
function(args)
game.Lighting.FogEnd = args[1]
end)
addcmd('fogcolor','fogcolor <n> <n> <n>',{},
function(args)
game.Lighting.FogColor = Color3.new(args[1], args[2], args[3])
end)
addcmd('fixl','fixlighting',nil,
function(args)
FIX_LIGHTING()
end)
addcmd('particles','particles <p> <id>',{'pts'},
function(args)
local players = getPlayer(args[1])
for i,v in pairs(players) do
local pchar = gPlayers[v].Character
for i,v in pairs(pchar.Torso:GetChildren()) do
if v:IsA('ParticleEmitter') then
v:remove()
end
end
wait()
Instance.new('ParticleEmitter', pchar.Torso).Texture = 'http://www.roblox.com/asset/?id=' .. args[2] - 1
end
end)
addcmd('nuke','nuke <p>',nil,
function(args)
local players = getPlayer(args[1])
for i,v in pairs(players) do
local pchar = gPlayers[v].Character
spawn(function()
if gPlayers[v] and pchar and pchar:FindFirstChild('Torso') then
local nuke = Instance.new('Part', game.Workspace)
nuke.Name = 'nuke_seth'
nuke.Anchored = true
nuke.CanCollide = false
nuke.FormFactor = 'Symmetric'
nuke.Shape = 'Ball'
nuke.Size = Vector3.new(1,1,1)
nuke.BrickColor = BrickColor.new('New Yeller')
nuke.Transparency = 0.5
nuke.Reflectance = 0.2
nuke.TopSurface = 0
nuke.BottomSurface = 0
nuke.Touched:connect(function (hit)
if hit and hit.Parent then
local boom = Instance.new('Explosion', game.Workspace)
boom.Position = hit.Position
boom.BlastRadius = 11
boom.BlastPressure = math.huge
end
end)
local CF = pchar.Torso.CFrame
nuke.CFrame = CF
for i = 1,333 do
nuke.Size = nuke.Size + Vector3.new(3,3,3)
nuke.CFrame = CF
wait(1/44)
end
nuke:remove()
end
end)
end
end)
addcmd('nonuke','nonuke',{'unnuke'},
function(args)
for i,v in pairs(game.Workspace:GetChildren()) do
if v.Name == 'nuke_seth' then
v:remove()
end
end
end)
_G.Rc7Notification("Done","Moon Admin is fully initilizied",5)
wait(5)
if game.Workspace.FilteringEnabled == true then
_G.Rc7Notification("Filtering","Anal rape is Enabled",5)
else
_G.Rc7Notification("Filtering","Anal rape is Disabled",5)
end
end)
-- cmd3
cmd3.Name = "galaxy titan"
cmd3.Parent = Main2
cmd3.Active = true
cmd3.BackgroundColor3 = Color3.new(0, 100, 255)
cmd3.BorderSizePixel = 1
cmd3.BorderColor3 = Color3.new(0, 0, 0)
cmd3.ZIndex = 8
cmd3.Size = UDim2.new(0, 200, 0, 100)
cmd3.Position = UDim2.new(0, 0, 0, 200)
cmd3.TextColor3 = Color3.new(255, 255, 255)
cmd3.Text = "Galaxy Titan"
cmd3.FontSize = "Size32"
-- btools
cmd3.MouseButton1Click:connect(function()
--[[PointCoded's Edit Of The Titan Script]]--
--[[Old]]--

local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local TitanBet = ";"
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
local stanceToggle = "Normal"
local Mana = Instance.new("IntValue", char)
Mana.Value = 5000
Mana.Name = "Mana"
math.randomseed(os.time())
hum.WalkSpeed = 50
char.Health:Destroy()
hum.MaxHealth = math.huge
wait(0.1)
hum.Health = math.huge
----------------------------------------------------
local G = Instance.new("ScreenGui")
G.Parent = p.PlayerGui
G.Name = "Mana"
local T = Instance.new("TextLabel")
T.Name = "Mana"
T.Parent = G
T.Text = "Mana: "..char.Mana.Value
T.FontSize = "Size24"
T.BackgroundTransparency = 1
T.TextColor3 = Color3.new(255,255,255)
T.TextStrokeTransparency = 0
T.Position = UDim2.new(0,250,0,400)
T.BorderSizePixel = 0
--//
for i = 1,30 do
Instance.new('Fire',larm); Instance.new('Fire',rarm)
end
--//
Debounces = {
on = false;
ks = false;
CanAttack = true;
CanJoke = true;
NoIdl = false;
Slashing = false;
Slashed = false;
Grabbing = false;
Grabbed = false;
}
local Touche = {char.Name, }
----------------------------------------------------
function lerp(a, b, t) -- Linear interpolation
    return a + (b - a)*t
end
 
function slerp(a, b, t) --Spherical interpolation
    dot = a:Dot(b)
    if dot > 0.99999 or dot < -0.99999 then
        return t <= 0.5 and a or b
    else
        r = math.acos(dot)
        return (a*math.sin((1 - t)*r) + b*math.sin(t*r)) / math.sin(r)
    end
end
 
function matrixInterpolate(a, b, t)
    local ax, ay, az, a00, a01, a02, a10, a11, a12, a20, a21, a22 = a:components()
    local bx, by, bz, b00, b01, b02, b10, b11, b12, b20, b21, b22 = b:components()
    local v0 = lerp(Vector3.new(ax, ay, az), Vector3.new(bx , by , bz), t) -- Position
    local v1 = slerp(Vector3.new(a00, a01, a02), Vector3.new(b00, b01, b02), t) -- Vector  right
    local v2 = slerp(Vector3.new(a10, a11, a12), Vector3.new(b10, b11, b12), t) -- Vector  up
    local v3 = slerp(Vector3.new(a20, a21, a22), Vector3.new(b20, b21, b22), t) -- Vector  back
    local t = v1:Dot(v2)
    if not (t < 0 or t == 0 or t > 0) then     -- Failsafe
        return CFrame.new()
    end
    return CFrame.new(
    v0.x, v0.y, v0.z,
    v1.x, v1.y, v1.z,
    v2.x, v2.y, v2.z,
    v3.x, v3.y, v3.z)
end
----------------------------------------------------//Mesh setting
local cmeshes = {}
local ll,rl,la,ra,t = Instance.new('CharacterMesh',char),Instance.new('CharacterMesh',char),Instance.new('CharacterMesh',char),Instance.new('CharacterMesh',char),Instance.new('CharacterMesh',char)
ll.BodyPart = 'LeftLeg'
rl.BodyPart = 'RightLeg'
la.BodyPart = 'LeftArm'
ra.BodyPart = 'RightArm'
t.BodyPart = 'Torso'
ll.MeshId,ll.OverlayTextureId,rl.MeshId,rl.OverlayTextureId = 68241558,18051314,68241677,18051314
ra.MeshId,ra.OverlayTextureId,la.MeshId,la.OverlayTextureId = 68241658,18051314,68241543,18051314
t.MeshId,t.OverlayTextureId=68241695,18051314

----------------------------------------------------
function genWeld(a,b)
    local w = Instance.new("Weld",a)
    w.Part0 = a
    w.Part1 = b
    return w
end
function weld(a, b)
    local weld = Instance.new("Weld")
    weld.Name = "W"
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    weld.Parent = a
    return weld;
end
----------------------------------------------------
function Lerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do 
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
----------------------------------------------------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
----------------------------------------------------
for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end
for i,v in pairs(hed:children()) do
    if v:IsA("Sound") then
        v:Destroy()
    end
end
----------------------------------------------------
function HasntTouched(plrname)
local ret = true
for _, v in pairs(Touche) do
if v == plrname then
ret = false
end
end
return ret
end
----------------------------------------------------
larm.Size = larm.Size * 2
rarm.Size = rarm.Size * 2
lleg.Size = lleg.Size * 2
rleg.Size = rleg.Size * 2
torso.Size = torso.Size * 2
hed.Size = hed.Size * 2
root.Size = root.Size * 2
----------------------------------------------------
newWeld(torso, larm, -1.5, 1, 0)
larm.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rarm, 1.5, 1, 0)
rarm.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, hed, 0, 3, 0)
newWeld(torso, lleg, -1, -2, 0)
lleg.Weld.C1 = CFrame.new(0, 1.5, 0)
newWeld(torso, rleg, 1, -2, 0)
rleg.Weld.C1 = CFrame.new(0, 1.5, 0)
newWeld(root, torso, 0, -2, 0)
torso.Weld.C1 = CFrame.new(0, -2, 0)
----------------------------------------------------

hed.face:Remove''
hed.Transparency = 0
local meshx9 = Instance.new('SpecialMesh',hed)
meshx9.MeshType = 'FileMesh'
meshx9.MeshId,meshx9.TextureId = 'rbxassetid://21057410','rbxassetid://122569107'
meshx9.Scale = Vector3.new(2,2,2)



lite = Instance.new("PointLight", torso)
lite.Brightness = 14
lite.Range = 10
lite.Color = Color3.new(1, 0, 0)
local hed2 = hed:Clone()
hed2.CanCollide = false
hed2.Parent = char
hed2:ClearAllChildren()
hed2.Transparency = 1
hed2.Name = "DARP"
local w = Instance.new("Weld",hed2)
w.Part0 = hed
w.Part1 = hed2
w.C0 = CFrame.new(0,0,-0.175)
z=Instance.new("SurfaceGui",hed2)
z.Enabled = true
z.Face = "Front"
z.Adornee = hed2
z.CanvasSize = Vector2.new(100,100)
local face = Instance.new("ImageLabel",z)
face.Size = UDim2.new(1,-30,1,0)
face.Position = UDim2.new(0,15,0,0)
face.BackgroundTransparency = 1
face.Image='rbxassetid://46282671'
----------------------------------------------------
local m = Instance.new("Model")
m.Name = "Absolution"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Really black")
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(1, 0.600000024, 1.5)
p1.CFrame = CFrame.new(67.4994888, 12.1560526, 73.0205841, 0.999972522, -3.59117985e-005, -8.00192356e-006, -1.39250187e-005, 0.358383715, -0.933530986, 5.28097153e-005, 0.933500648, 0.358406395)
p1.CanCollide = false
p1.Locked = true
p1.Elasticity = 0
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Wedge
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.400000006, 0.600000024, 0.699999928)
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Really black")
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(1, 2.9000001, 1)
p2.CFrame = CFrame.new(67.4995728, 11.7633543, 74.2129135, -1.30959779e-005, 2.79811252e-006, 0.999972522, 0.961226642, 0.275612593, -7.50799518e-006, -0.275637805, 0.96119839, 1.01176247e-005)
p2.CanCollide = false
p2.Locked = true
p2.Elasticity = 0
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("BlockMesh", p2)
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.400000006, 1, 0.400000006)
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Really black")
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(1, 1.20000005, 2.0999999)
p3.CFrame = CFrame.new(67.4994965, 12.6401453, 73.9670334, 0.999972522, -3.52207899e-005, -8.10639358e-006, -1.61500211e-005, 0.309035271, -0.951007903, 5.24176576e-005, 0.950978875, 0.309059501)
p3.CanCollide = false
p3.Locked = true
p3.Elasticity = 0
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("SpecialMesh", p3)
b3.MeshType = Enum.MeshType.Wedge
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.400000006, 0.600000024, 0.699999928)
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Really black")
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(1, 1.43999994, 2.05000019)
p4.CFrame = CFrame.new(67.4995575, 11.8683414, 76.1565704, 0.999972522, -2.5085672e-005, -1.53700166e-005, -4.86194367e-005, -0.800831437, -0.598821938, 1.9131101e-005, 0.598835468, -0.800796151)
p4.CanCollide = false
p4.Locked = true
p4.Elasticity = 0
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("SpecialMesh", p4)
b4.MeshType = Enum.MeshType.Wedge
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.300000012, 0.600000024, 0.699999988)
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Really black")
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(1, 1.20000005, 3.20000005)
p5.CFrame = CFrame.new(67.4995193, 13.241991, 74.8357468, 0.999972522, -3.59118021e-005, -8.00191992e-006, -1.39250224e-005, 0.358383656, -0.933530807, 5.2809708e-005, 0.933500469, 0.358406246)
p5.CanCollide = false
p5.Locked = true
p5.Elasticity = 0
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("SpecialMesh", p5)
b5.MeshType = Enum.MeshType.Wedge
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.400000006, 0.600000024, 0.699999928)
p6 = Instance.new("Part", m)
p6.Name = "Handle"
p6.BrickColor = BrickColor.new(192)
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(1.5999999, 13.6000004, 1)
p6.CFrame = CFrame.new(67.5017471, 11.2780685, 66.1421967, -1.18190947e-005, 6.28741009e-006, 0.999972522, 0.99995929, -1.39772892e-005, -7.50630716e-006, -1.79708004e-005, 0.999939024, 1.01296728e-005)
p6.CanCollide = false
p6.Locked = true
p6.Elasticity = 0
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("BlockMesh", p6)
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.400000006, 1, 0.400000006)
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Really black")
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(1, 1.00999999, 1.05000019)
p7.CFrame = CFrame.new(67.5174179, 10.5228004, 76.3114471, 0.999972522, -2.76626724e-005, -6.72184569e-006, -4.7347472e-005, -0.91489929, -0.403581172, 2.14323372e-005, 0.403602213, -0.914867818)
p7.CanCollide = false
p7.Locked = true
p7.Elasticity = 0
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Wedge
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.300000012, 0.600000024, 0.699999988)
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Really black")
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(1, 1.00999999, 1.05000019)
p8.CFrame = CFrame.new(67.5074387, 8.51285458, 76.8714371, 0.999972522, -2.76626724e-005, -6.72184387e-006, -4.73474684e-005, -0.91489917, -0.403581113, 2.14323354e-005, 0.403602153, -0.914867699)
p8.CanCollide = false
p8.Locked = true
p8.Elasticity = 0
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p8)
b8.MeshType = Enum.MeshType.Wedge
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.300000012, 0.600000024, 0.699999988)
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Really black")
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(1, 1.07999957, 1)
p9.CFrame = CFrame.new(67.5095749, 7.1092, 74.5051422, -2.60536999e-005, -5.21559741e-006, 0.999972522, 0.35323599, -0.935490847, -1.50012565e-005, 0.935460567, 0.353258699, 4.2632455e-005)
p9.CanCollide = false
p9.Locked = true
p9.Elasticity = 0
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("BlockMesh", p9)
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.550000012, 1, 0.550000012)
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Really black")
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(1, 1.41999948, 1)
p10.CFrame = CFrame.new(67.489624, 8.67401791, 72.7929764, -9.47785156e-006, -9.42233055e-006, 0.999972522, 0.292371064, 0.956263304, -7.54374832e-006, -0.956253231, 0.292334616, 1.01081387e-005)
p10.CanCollide = false
p10.Locked = true
p10.Elasticity = 0
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("BlockMesh", p10)
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.400000006, 1, 0.400000006)
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Really black")
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(1, 1.50999951, 1)
p11.CFrame = CFrame.new(67.509552, 7.11887455, 70.3475952, -1.87569385e-005, 1.80455972e-005, 0.999972522, -0.36222899, -0.932047009, -9.30004444e-006, 0.932039678, -0.362191886, 4.04359016e-005)
p11.CanCollide = false
p11.Locked = true
p11.Elasticity = 0
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("BlockMesh", p11)
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.550000012, 1, 0.550000012)
p12 = Instance.new("Part", m)
p12.Name = "BladeCenter"
p12.BrickColor = BrickColor.new("")
p12.Material = Enum.Material.Concrete
p12.FormFactor = Enum.FormFactor.Symmetric
p12.Size = Vector3.new(1, 2, 2)
p12.CFrame = CFrame.new(67.4995346, 6.83217764, 72.2514038, -0.999972522, 2.42275873e-005, 0.000103325896, -8.39982677e-005, 4.44650614e-005, -0.999960959, -4.06451727e-005, -0.999940753, -1.25430051e-005)
p12.CanCollide = false
p12.Locked = true
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b12 = Instance.new("SpecialMesh", p12)
b12.MeshType = Enum.MeshType.Brick
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.499999911, 1, 0.699999928)
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Really black")
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(2.91000009, 4.3300004, 1)
p13.CFrame = CFrame.new(67.5096359, 9.31026554, 73.9751816, 7.60371313e-006, 1.0943455e-005, 0.999972522, -0.119072244, -0.99284631, -7.55448127e-006, 0.992830038, -0.119038157, 1.01703836e-005)
p13.CanCollide = false
p13.Locked = true
p13.Elasticity = 0
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b13 = Instance.new("BlockMesh", p13)
b13.Name = "Mesh"
b13.Scale = Vector3.new(1, 1, 0.400000006)
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Really black")
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(2.5, 2.17999935, 1)
p14.CFrame = CFrame.new(67.4896011, 10.1621294, 72.6420059, -1.55498967e-007, -1.33476442e-005, 0.999972522, -0.462319613, 0.886669755, -7.56198779e-006, -0.886637092, -0.462338567, 1.01078904e-005)
p14.CanCollide = false
p14.Locked = true
p14.Elasticity = 0
p14.BottomSurface = Enum.SurfaceType.Smooth
p14.TopSurface = Enum.SurfaceType.Smooth
b14 = Instance.new("BlockMesh", p14)
b14.Name = "Mesh"
b14.Scale = Vector3.new(0.400000006, 1, 0.400000006)
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Really black")
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(1.16999996, 4.2699995, 1)
p15.CFrame = CFrame.new(67.5095901, 9.35303593, 70.6884613, -1.24399676e-005, -4.94209144e-006, 0.999972522, 0.645082474, 0.764063478, -7.52419282e-006, -0.764068604, 0.645045042, 1.0099785e-005)
p15.CanCollide = false
p15.Locked = true
p15.Material = "Neon"
p15.Elasticity = 0
p15.BottomSurface = Enum.SurfaceType.Smooth
p15.TopSurface = Enum.SurfaceType.Smooth
b15 = Instance.new("BlockMesh", p15)
b15.Name = "Mesh"
b15.Scale = Vector3.new(1, 1, 0.400000006)
p16 = Instance.new("Part", m)
p16.BrickColor = BrickColor.new("Really black")
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(1.68999994, 4.76000023, 1)
p16.CFrame = CFrame.new(67.4996033, 9.63990211, 75.3800278, 2.98175655e-006, 1.30014914e-005, 0.999972522, 0.258795738, -0.965893507, -7.53869244e-006, 0.965865672, 0.258821338, 1.01718706e-005)
p16.CanCollide = false
p16.Locked = true
p16.Material = "Neon"
p16.Elasticity = 0
p16.BottomSurface = Enum.SurfaceType.Smooth
p16.TopSurface = Enum.SurfaceType.Smooth
b16 = Instance.new("BlockMesh", p16)
b16.Name = "Mesh"
b16.Scale = Vector3.new(1, 1, 0.400000006)
p17 = Instance.new("Part", m)
p17.BrickColor = BrickColor.new("Really black")
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(1.78999996, 4.21999979, 1)
p17.CFrame = CFrame.new(67.499588, 9.28996372, 69.8789978, -9.50601952e-006, -9.41252802e-006, 0.999972522, 0.293352425, 0.955965877, -7.53842551e-006, -0.955955863, 0.293315947, 1.00904235e-005)
p17.CanCollide = false
p17.Material = "Neon"
p17.Locked = true
p17.Elasticity = 0
p17.BottomSurface = Enum.SurfaceType.Smooth
p17.TopSurface = Enum.SurfaceType.Smooth
b17 = Instance.new("BlockMesh", p17)
b17.Name = "Mesh"
b17.Scale = Vector3.new(1, 1, 0.400000006)
p18 = Instance.new("WedgePart", m)
p18.BrickColor = BrickColor.new("Black")
p18.Material = "Neon"
p18.Name = "BladePart1"
p18.Material = Enum.Material.Concrete
p18.Name = "Wedge"
p18.FormFactor = Enum.FormFactor.Symmetric
p18.Size = Vector3.new(1, 4, 2)
p18.CFrame = CFrame.new(67.499321, 6.83199787, 69.4816895, 0.999972522, -3.68033288e-005, -4.22928351e-005, 2.29664256e-005, -1.65102574e-005, 0.999963701, -2.03872096e-005, -0.999943435, -4.84290831e-005)
p18.CanCollide = false
p18.Locked = true
p18.BottomSurface = Enum.SurfaceType.Smooth
p18.TopSurface = Enum.SurfaceType.Smooth
b18 = Instance.new("SpecialMesh", p18)
b18.MeshType = Enum.MeshType.Wedge
b18.Name = "Mesh"
b18.Scale = Vector3.new(0.499999911, 0.899999976, 0.699999928)
p19 = Instance.new("WedgePart", m)
p19.BrickColor = BrickColor.new("Institutional white")
p19.Name = "BladePart2"
p19.Material = "Neon"
p19.Material = Enum.Material.Concrete
p19.Name = "Wedge"
p19.FormFactor = Enum.FormFactor.Symmetric
p19.Size = Vector3.new(1, 4, 2)
p19.CFrame = CFrame.new(67.4994736, 6.83213568, 75.0314102, -0.999972522, 3.68059118e-005, -0.000103325001, -8.40002976e-005, -4.4521752e-005, 0.999963701, 2.03864402e-005, 0.999943435, 1.26029336e-005)
p19.CanCollide = false
p19.Locked = true
p19.BottomSurface = Enum.SurfaceType.Smooth
p19.TopSurface = Enum.SurfaceType.Smooth
b19 = Instance.new("SpecialMesh", p19)
b19.MeshType = Enum.MeshType.Wedge
b19.Name = "Mesh"
b19.Scale = Vector3.new(0.499999911, 0.899999976, 0.699999928)
p20 = Instance.new("Part", m)
p20.BrickColor = BrickColor.new("Really black")
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(2.53000021, 2.39999938, 1)
p20.CFrame = CFrame.new(67.4996414, 7.91898966, 71.4148178, -1.09432585e-005, 7.6432425e-006, 0.999972522, 0.992849231, -0.119072601, -7.55000656e-006, 0.119038492, 0.992832959, 1.01311334e-005)
p20.CanCollide = false
p20.Material = "Neon"
p20.Locked = true
p20.Elasticity = 0
p20.BottomSurface = Enum.SurfaceType.Smooth
p20.TopSurface = Enum.SurfaceType.Smooth
b20 = Instance.new("BlockMesh", p20)
b20.Name = "Mesh"
b20.Scale = Vector3.new(0.400000006, 1, 0.400000006)
p21 = Instance.new("Part", m)
p21.BrickColor = BrickColor.new("Really black")
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(1, 1.43999994, 1.59000015)
p21.CFrame = CFrame.new(67.509613, 9.57073689, 76.6228256, 0.999972522, -2.50856156e-005, -1.53699839e-005, -4.86196222e-005, -0.800835371, -0.598824739, 1.91311228e-005, 0.59883821, -0.800800025)
p21.CanCollide = false
p21.Locked = true
p21.Elasticity = 0
p21.BottomSurface = Enum.SurfaceType.Smooth
p21.TopSurface = Enum.SurfaceType.Smooth
b21 = Instance.new("SpecialMesh", p21)
b21.MeshType = Enum.MeshType.Wedge
b21.Name = "Mesh"
b21.Scale = Vector3.new(0.300000012, 0.600000024, 0.699999988)
w1 = Instance.new("Weld", p1)
w1.Name = "Part_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(-67.5030899, -72.5280457, -14.8209743, 1, -6.37466928e-006, 4.26825172e-005, -3.75621021e-005, 0.358411252, 0.933563769, -2.12490559e-005, -0.933563769, 0.358411252)
w1.Part1 = p2
w1.C1 = CFrame.new(9.14727688, -74.5847855, -67.5001221, -4.37113883e-008, 0.961261749, -0.27563718, 0, 0.27563718, 0.961261749, 1, 4.20180868e-008, -1.2048484e-008)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(9.14727688, -74.5847855, -67.5001221, -4.37113883e-008, 0.961261749, -0.27563718, 0, 0.27563718, 0.961261749, 1, 4.20180868e-008, -1.2048484e-008)
w2.Part1 = p3
w2.C1 = CFrame.new(-67.5030823, -74.2541809, -10.8368053, 1, -8.59976626e-006, 4.22903977e-005, -3.75621021e-005, 0.30906105, 0.951042175, -2.12490559e-005, -0.951042175, 0.30906105)
w3 = Instance.new("Weld", p3)
w3.Name = "Part_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(-67.5030823, -74.2541809, -10.8368053, 1, -8.59976626e-006, 4.22903977e-005, -3.75621021e-005, 0.30906105, 0.951042175, -2.12490559e-005, -0.951042175, 0.30906105)
w3.Part1 = p4
w3.C1 = CFrame.new(-67.5002975, -36.1002579, 68.1035233, 1, -4.10709617e-005, 9.00123541e-006, -3.82823673e-005, -0.800855637, 0.598857403, -1.73869594e-005, -0.598857403, -0.800855637)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-67.5002975, -36.1002579, 68.1035233, 1, -4.10709617e-005, 9.00123541e-006, -3.82823673e-005, -0.800855637, 0.598857403, -1.73869594e-005, -0.598857403, -0.800855637)
w4.Part1 = p5
w4.C1 = CFrame.new(-67.5031891, -74.611969, -14.457736, 1, -6.37466928e-006, 4.26825172e-005, -3.75621021e-005, 0.358411252, 0.933563769, -2.12490559e-005, -0.933563769, 0.358411252)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(-67.5031891, -74.611969, -14.457736, 1, -6.37466928e-006, 4.26825172e-005, -3.75621021e-005, 0.358411252, 0.933563769, -2.12490559e-005, -0.933563769, 0.358411252)
w5.Part1 = p6
w5.C1 = CFrame.new(-11.2799978, -66.1456223, -67.5023346, -4.37113883e-008, 1, 4.37113883e-008, 0, -4.37113883e-008, 1, 1, 4.37113883e-008, 1.91068547e-015)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(-11.2799978, -66.1456223, -67.5023346, -4.37113883e-008, 1, 4.37113883e-008, 0, -4.37113883e-008, 1, 1, 4.37113883e-008, 1.91068547e-015)
w6.Part1 = p7
w6.C1 = CFrame.new(-67.5183792, -21.1694489, 74.0717163, 1, -3.97989206e-005, 1.13026372e-005, -4.09751265e-005, -0.91493088, 0.403610349, -5.72212457e-006, -0.403610349, -0.91493088)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(-67.5183792, -21.1694489, 74.0717163, 1, -3.97989206e-005, 1.13026372e-005, -4.09751265e-005, -0.91493088, 0.403610349, -5.72212457e-006, -0.403610349, -0.91493088)
w7.Part1 = p8
w7.C1 = CFrame.new(-67.508461, -23.234499, 73.7728119, 1, -3.97989206e-005, 1.13026372e-005, -4.09751265e-005, -0.91493088, 0.403610349, -5.72212457e-006, -0.403610349, -0.91493088)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(-67.508461, -23.234499, 73.7728119, 1, -3.97989206e-005, 1.13026372e-005, -4.09751265e-005, -0.91493088, 0.403610349, -5.72212457e-006, -0.403610349, -0.91493088)
w8.Part1 = p9
w8.C1 = CFrame.new(-72.2151413, -19.6674671, -67.5124359, -2.77766703e-005, 0.353263557, 0.935524285, -1.84533783e-005, -0.935524285, 0.353263557, 1, -7.4510931e-006, 3.25046385e-005)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(-72.2151413, -19.6674671, -67.5124359, -2.77766703e-005, 0.353263557, 0.935524285, -1.84533783e-005, -0.935524285, 0.353263557, 1, -7.4510931e-006, 3.25046385e-005)
w9.Part1 = p10
w9.C1 = CFrame.new(67.0792923, -29.5803547, -67.4901428, -2.24114753e-008, 0.292369425, -0.956305802, 3.04095332e-010, 0.956305802, 0.292369425, 1, 6.26159258e-009, -2.15211493e-008)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(67.0792923, -29.5803547, -67.4901428, -2.24114753e-008, 0.292369425, -0.956305802, 3.04095332e-010, 0.956305802, 0.292369425, 1, 6.26159258e-009, -2.15211493e-008)
w10.Part1 = p11
w10.C1 = CFrame.new(-62.9921722, 32.1197624, -67.5121918, -2.88835581e-005, -0.362230271, 0.932088912, 9.3476192e-006, -0.932088912, -0.362230271, 1, -1.74967965e-006, 3.03080251e-005)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(-62.9921722, 32.1197624, -67.5121918, -2.88835581e-005, -0.362230271, 0.932088912, 9.3476192e-006, -0.932088912, -0.362230271, 1, -1.74967965e-006, 3.03080251e-005)
w11.Part1 = p12
w11.C1 = CFrame.new(67.5028763, 72.2527161, 6.8300252, -1, -9.15522687e-005, -3.05189751e-005, 3.05161811e-005, 3.05189751e-005, -1, 9.15532e-005, -1, -3.05161811e-005)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(67.5028763, 72.2527161, 6.8300252, -1, -9.15522687e-005, -3.05189751e-005, 3.05161811e-005, 3.05189751e-005, -1, 9.15532e-005, -1, -3.05161811e-005)
w12.Part1 = p13
w12.C1 = CFrame.new(-72.3439255, 18.054121, -67.5101624, -4.09776035e-008, -0.11906305, 0.992886722, 4.05430745e-010, -0.992886722, -0.11906305, 1, -4.47637571e-009, 4.0734399e-008)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(-72.3439255, 18.054121, -67.5101624, -4.09776035e-008, -0.11906305, 0.992886722, 4.05430745e-010, -0.992886722, -0.11906305, 1, -4.47637571e-009, 4.0734399e-008)
w13.Part1 = p14
w13.C1 = CFrame.new(69.1140671, 24.5752277, -67.4901428, -2.4837334e-008, -0.462350011, -0.886697888, 5.64353009e-010, 0.886697888, -0.462350011, 1, -1.19839818e-008, -2.17623022e-008)
w14 = Instance.new("Weld", p14)
w14.Name = "Part_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(69.1140671, 24.5752277, -67.4901428, -2.4837334e-008, -0.462350011, -0.886697888, 5.64353009e-010, 0.886697888, -0.462350011, 1, -1.19839818e-008, -2.17623022e-008)
w14.Part1 = p15
w14.C1 = CFrame.new(47.9809418, -52.7511749, -67.5101318, -3.94735267e-008, 0.64509654, -0.764101744, -4.55740418e-010, 0.764101744, 0.64509654, 1, 2.58124242e-008, -2.98677882e-008)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(47.9809418, -52.7511749, -67.5101318, -3.94735267e-008, 0.64509654, -0.764101744, -4.55740418e-010, 0.764101744, 0.64509654, 1, 2.58124242e-008, -2.98677882e-008)
w15.Part1 = p16
w15.C1 = CFrame.new(-75.3105469, -10.1974039, -67.5001221, -4.37113883e-008, 0.258818924, 0.965925872, 0, -0.965925872, 0.258818924, 1, 1.13133343e-008, 4.22219593e-008)
w16 = Instance.new("Weld", p16)
w16.Name = "Part_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(-75.3105469, -10.1974039, -67.5001221, -4.37113883e-008, 0.258818924, 0.965925872, 0, -0.965925872, 0.258818924, 1, 1.13133343e-008, 4.22219593e-008)
w16.Part1 = p17
w16.C1 = CFrame.new(64.0820847, -29.3829937, -67.5001373, -4.09009289e-008, 0.293349952, -0.956005633, 4.38312497e-010, 0.956005633, 0.293349952, 1, 1.15792238e-008, -3.92300876e-008)
w17 = Instance.new("Weld", p17)
w17.Name = "Wedge_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(64.0820847, -29.3829937, -67.5001373, -4.09009289e-008, 0.293349952, -0.956005633, 4.38312497e-010, 0.956005633, 0.293349952, 1, 1.15792238e-008, -3.92300876e-008)
w17.Part1 = p18
w17.C1 = CFrame.new(-67.4979324, 69.4871521, -6.82958078, 1, 3.05171125e-005, -3.05180438e-005, -3.05171125e-005, -3.05180438e-005, -1, -3.05180438e-005, 1, -3.05171125e-005)
w18 = Instance.new("Weld", p18)
w18.Name = "Wedge_Weld"
w18.Part0 = p18
w18.C0 = CFrame.new(-67.4979324, 69.4871521, -6.82958078, 1, 3.05171125e-005, -3.05180438e-005, -3.05171125e-005, -3.05180438e-005, -1, -3.05180438e-005, 1, -3.05171125e-005)
w18.Part1 = p19
w18.C1 = CFrame.new(67.4982986, -75.0367737, -6.83008671, -1, -9.15532e-005, 3.05161811e-005, 3.05189751e-005, -3.05161811e-005, 1, -9.15522687e-005, 1, 3.05189751e-005)
w19 = Instance.new("Weld", p19)
w19.Name = "Part_Weld"
w19.Part0 = p19
w19.C0 = CFrame.new(67.4982986, -75.0367737, -6.83008671, -1, -9.15532e-005, 3.05161811e-005, 3.05189751e-005, -3.05161811e-005, 1, -9.15522687e-005, 1, 3.05189751e-005)
w19.Part1 = p20
w19.C1 = CFrame.new(-16.3677292, -69.9670334, -67.5001678, -1.77821063e-010, 0.992886961, 0.119063012, -1.46926671e-009, -0.119063012, 0.992886961, 1, 1.59595731e-012, 1.47997492e-009)
w20 = Instance.new("Weld", p20)
w20.Name = "Part_Weld"
w20.Part0 = p20
w20.C0 = CFrame.new(-16.3677292, -69.9670334, -67.5001678, -1.77821063e-010, 0.992886961, 0.119063012, -1.46926671e-009, -0.119063012, 0.992886961, 1, 1.59595731e-012, 1.47997492e-009)
w20.Part1 = p21
w20.C1 = CFrame.new(-67.5104218, -38.2193756, 67.100563, 1, -4.10709617e-005, 9.00123541e-006, -3.82823673e-005, -0.800855637, 0.598857403, -1.73869594e-005, -0.598857403, -0.800855637)
m.Parent = char
m:MakeJoints()
----------------------------------------------------
local cor = Instance.new("Part", char.Absolution)
cor.Name = "Thingy"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 13, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = rarm
corw.Part1 = cor
corw.C0 = CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw.C1 = CFrame.new(0, 0, 0)
weld1 = Instance.new("Weld", char.Absolution)
weld1.Part0 = cor
weld1.Part1 = p6
weld1.C0 = CFrame.new(0, 0, 0)
----------------------------------------------------
hitb = Instance.new("Part", char.Absolution)
hitb.Name = "Thingy2"
hitb.Locked = true
hitb.BottomSurface = 0
hitb.CanCollide = false
hitb.Size = Vector3.new(0, 8, 6)
hitb.Transparency = 1
hitb.TopSurface = 0
weld2 = Instance.new("Weld", char.Absolution)
weld2.Part0 = hitb
weld2.Part1 = p12
weld2.C0 = CFrame.new(0, .6, 1)


----------------------------------------------------
function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end
----------------------------------------------------
function newRay(start,face,range,wat)
	local rey=Ray.new(start.p,(face.p-start.p).Unit*range)
	hit,pos=Workspace:FindPartOnRayWithIgnoreList(rey,wat)
	return rey,hit,pos
end
----------------------------------------------------
mod5 = Instance.new("Model",char)

function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end 
                    end 
                end 
            end 
        end
    return List
end

function Landing()
    part=Instance.new('Part',mod5)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,-2,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Really black')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
	mesh.TextureId = "http://www.roblox.com/asset/?id=122569107"
    mesh.Scale=Vector3.new(10,5,10)

    for i,v in pairs(FindNearestTorso(torso.CFrame.p,40))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(20,30))
            v.Humanoid.PlatformStand = true
            v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 100
        end
    end

    coroutine.resume(coroutine.create(function() 
        for i=0,3.8,0.05 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(3,3,3)
            end
        part.Parent = nil
    end))
end
----------------------------------------------------
mod4 = Instance.new("Model",char)

ptez = {0.7, 0.8, 0.9, 1}

function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end 
                    end 
                end 
            end 
        end
    return List
end

function GroundPound()
    part=Instance.new('Part',mod4)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,-5.8,-2.4)*CFrame.Angles(math.rad(90),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Institutional white')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=3270017'
	mesh.TextureId = "http://www.roblox.com/asset/?id=122569107"
    mesh.Scale=Vector3.new(3,3,3)
    part2=Instance.new('Part',mod4)
    part2.Anchored=true
    part2.CanCollide=false
    part2.FormFactor='Custom'
    part2.Size=Vector3.new(.2,.2,.2)
    part2.CFrame=root.CFrame*CFrame.new(0,-5,-2.6)
    part2.Transparency=.7
    part2.BrickColor=BrickColor.new('Institutional white')
    mesh2=Instance.new('SpecialMesh',part2)
    mesh2.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh2.Scale=Vector3.new(3,1.5,3)
    x = Instance.new("Sound",char)
    x.SoundId = "http://www.roblox.com/asset/?id=142070127"
    x.Pitch = ptez[math.random(1,#ptez)]
    x.Volume = 1
    wait(.1)
    x:Play()
    for i,v in pairs(FindNearestTorso(torso.CFrame.p,12))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(8,15))
        end
    end
    coroutine.resume(coroutine.create(function() 
        for i=0,0.62,0.13 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(5,5,5)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(5,5,5)
            end
        part.Parent=nil
        part2.Parent=nil
        x:Destroy()
    end))
end
----------------------------------------------------
mod=Instance.new('Model',char)

function charge()
    hed.Velocity=hed.CFrame.lookVector*200
    part=Instance.new('Part',mod)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=hed.CFrame*CFrame.Angles(math.rad(90),0,0)
    part.Transparency=.7
    part.Name = "Wow"
    part.BrickColor=BrickColor.new('Black')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
	mesh.TextureId = "http://www.roblox.com/asset/?id=122569107"
    mesh.Scale=Vector3.new(10,5,10)
    part2=part:clone()
    part2.Parent=mod
    part2.BrickColor=BrickColor.new('Institutional white')
    mesh2=mesh:clone()
    mesh2.Parent=part2
    mesh2.Scale=Vector3.new(20,10,20)
    part3=part2:clone()
    part3.Parent = mod
    part3.BrickColor=BrickColor.new('Cyan')
    mesh3=mesh2:clone()
    mesh2.Parent=part3
    mesh3.Scale=Vector3.new(30,15,30)
    coroutine.resume(coroutine.create(function() 
        for i=0,1,0.1 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(1,1,1)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(1,1,1)
            part3.CFrame=part3.CFrame
            part3.Transparency=i
            mesh3.Scale=mesh3.Scale+Vector3.new(1,1,1)
            end
        part.Parent=nil
        part2.Parent=nil
        part3.Parent = nil
        part1:remove()
        part:remove()
        part2:remove()
        part3:remove()
    end))
end
----------------------------------------------------
function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end 
                    end 
                end 
            end 
        end
    return List
end

mod3 = Instance.new("Model",rleg)

function Stomp()
    part=Instance.new('Part',mod3)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=rleg.CFrame*CFrame.new(0,-2.4,0)*CFrame.Angles(math.rad(90),0,0)
    part.Transparency=0.7
    part.BrickColor=BrickColor.new('')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=3270017'
	mesh.TextureId = "http://www.roblox.com/asset/?id=122569107"
    mesh.Scale=Vector3.new(25,25,25)
    part2=part:clone()
    part2.Parent=mod3
    part2.BrickColor=BrickColor.new('Deep orange')
    mesh2=mesh:clone()
    mesh2.Parent=part2
    mesh2.Scale=Vector3.new(15,15,15)
    part3=part:clone()
    part3.Parent=mod3
    part3.TopSurface=0
    part3.BottomSurface=0
    part3.CFrame=rleg.CFrame*CFrame.new(0,-3,0)
    mesh3=Instance.new('SpecialMesh',part3)
    mesh3.MeshType = 3
    mesh3.Scale=Vector3.new(12,12,12)
    for i,v in pairs(FindNearestTorso(torso.CFrame.p,50))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(20,60))
            v.Humanoid.PlatformStand = true
            v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 100
        end
    end 
    coroutine.resume(coroutine.create(function() 
        for i=0,3.8,0.05 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(5,5,5)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(5,5,5)
            part3.CFrame=part3.CFrame
            part3.Transparency=i
            mesh3.Scale=mesh3.Scale+Vector3.new(1.5,1.5,1.5)
        end
    end))
end
----------------------------------------------------

local acos = math.acos
local sqrt = math.sqrt
local Vec3 = Vector3.new
local fromAxisAngle = CFrame.fromAxisAngle

local function toAxisAngle(CFr)
        local X,Y,Z,R00,R01,R02,R10,R11,R12,R20,R21,R22 = CFr:components()
        local Angle = math.acos((R00+R11+R22-1)/2)
        local A = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        A = A == 0 and 0.00001 or A
        local B = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        B = B == 0 and 0.00001 or B
        local C = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        C = C == 0 and 0.00001 or C
        local x = (R21-R12)/sqrt(A)
        local y = (R02-R20)/sqrt(B)
        local z = (R10-R01)/sqrt(C)
        return Vec3(x,y,z),Angle
end

function ApplyTrig(Num,Func)
        local Min,Max = Func(0),Func(1)
        local i = Func(Num)
        return (i-Min)/(Max-Min)
end

function LerpCFrame(CFrame1,CFrame2,Num)
        local Vec,Ang = toAxisAngle(CFrame1:inverse()*CFrame2)
        return CFrame1*fromAxisAngle(Vec,Ang*Num) + (CFrame2.p-CFrame1.p)*Num
end

function Crater(Torso,Radius)
        Spawn(function()
        local Ray = Ray.new(Torso.Position,Vector3.new(0,-1,0)*10)
        local Ignore = {}
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Character ~= nil then
                        Ignore[#Ignore+1] = v.Character
                end
        end
        local Hit,Pos,SurfaceNorm = Workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
        if Hit == nil then return end
        local Parts = {}
        for i = 1,360,10 do
                local P = Instance.new("Part",Torso.Parent)
                P.Anchored = true
                P.FormFactor = "Custom"
                P.BrickColor = Hit.BrickColor
                P.Material = Hit.Material
                P.TopSurface = "Smooth"
                P.BottomSurface = "Smooth"
                P.Size = Vector3.new(5,10,10)*(math.random(80,100)/100)
                P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,7,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
                Parts[#Parts+1] = {P,P.CFrame,((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,1,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius)*CFrame.Angles(math.rad(math.random(-50,-20)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),P.Size}
                if math.random(0,5) == 0 then -- rubble
                        local P = Instance.new("Part",Torso.Parent)
                        P.Anchored = true
                        P.FormFactor = "Custom"
                        P.BrickColor = Hit.BrickColor
                        P.Material = Hit.Material
                        P.TopSurface = "Smooth"
                        P.BottomSurface = "Smooth"
                        P.Size = Vector3.new(2,2,2)*(math.random(80,100)/100)
                        P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,2.5,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
                        Parts[#Parts+1] = {P,P.CFrame,(CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius-8)*CFrame.Angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90))),P.Size}
                end
        end
        for i = 0,1,0.05 do
                for i2,v in pairs(Parts) do
                        v[1].CFrame = LerpCFrame(v[2],v[3],ApplyTrig(i,math.cos))
                end
                wait(0.02)
        end
        for i,v in pairs(Parts) do
                if v[1].Size.X > 2.1 then
                        v[1].CFrame = v[1].CFrame+Vector3.new(0,2,0)
                end
                v[1].Anchored = false
        end
        for i = 0,1,0.05 do
                for i2,v in pairs(Parts) do
                        v[1].Transparency = i
                        if i == 1 then
                                v[1]:Destroy()
                        elseif i >= 0.25 then
                                v[1].CanCollide = false
                        end
                end
                wait(0.02)
        end
        Parts = nil
        end)
end

----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "r" and char.Mana.Value>=50 then
	char.Mana.Value = char.Mana.Value - 50
        larm.BrickColor = BrickColor.new("Bright red")
        rarm.BrickColor = BrickColor.new("Bright red")
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
to = char.Absolution.Thingy2.Touched:connect(function(ht)
        hit = ht.Parent
        if ht and hit:IsA("Model") then
                if hit:FindFirstChild("Humanoid") then
                    if hit.Name ~= p.Name then
                                    hit:FindFirstChild("Humanoid"):TakeDamage(10)
                                wait(1)
                    end
                end
        elseif ht and hit:IsA("Hat") then
            if hit.Parent.Name ~= p.Name then
                if hit.Parent:FindFirstChild("Humanoid") then
                     
                                hit.Parent:FindFirstChild("Humanoid"):TakeDamage(10)
                                wait(1)
                    --Debounces.Slashed = false
                end
            end
        end    
    end)
q = Instance.new("Sound",hed)
q.SoundId = "http://www.roblox.com/asset/?id=134012322"
q.Pitch = 0.85
q.Looped = false
q1 = Instance.new("Sound",hed)
q1.SoundId = "http://www.roblox.com/asset/?id=134012322"
q1.Pitch = 0.85
q1.Looped = false
q:Play()
q1:Play()
    for i = 1,20 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.3,1.1,-1) * CFrame.Angles(math.rad(115), math.rad(0), math.rad(-55)), 0.4)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.3,1.1,-1) * CFrame.Angles(math.rad(115), math.rad(0), math.rad(55)), 0.4)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)),0.4)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(30), math.rad(0), 0), 0.4)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 1) * CFrame.Angles(math.rad(-60), 0, math.rad(0)), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, .6) * CFrame.Angles(math.rad(-60), 0, math.rad(0)), 0.4)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -2.2, -3) * CFrame.Angles(math.rad(-90), math.rad(-142), math.rad(0)), 0.5)
        if Debounces.on == false then break end
    wait()
end
n = Instance.new("Sound",hed)
n.SoundId = "http://www.roblox.com/asset/?id=168514932"
n.Pitch = 0.94
n.Looped = false
n1 = Instance.new("Sound",hed)
n1.SoundId = "http://www.roblox.com/asset/?id=168514932"
n1.Pitch = 0.94
n1.Looped = false
n:Play()
n1:Play()
b = Instance.new("Sound",hed)
b.SoundId = "http://www.roblox.com/asset/?id=168586586"
b.Pitch = 0.94
b.Looped = false
b1 = Instance.new("Sound",hed)
b1.SoundId = "http://www.roblox.com/asset/?id=168586586"
b1.Pitch = 0.94
b1.Looped = false
b:Play()
b1:Play()
    for i = 1,26 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.3,1.1,-1) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(-55)), 0.5)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.3,1.1,-1) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(55)), 0.5)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)),0.5)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(-40), math.rad(0), 0), 0.5)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, -1) * CFrame.Angles(math.rad(50), 0, math.rad(0)), 0.5)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, .4) * CFrame.Angles(math.rad(-10), 0, math.rad(0)), 0.5)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(1.4, -3.5, -7) * CFrame.Angles(math.rad(-90), math.rad(-142), math.rad(20)), 0.5)
        if Debounces.on == false then break end
    wait()
end
wait(.5)
to:disconnect()
q:Destroy()
q1:Destroy()
n:Destroy()
n1:Destroy()
larm.BrickColor = BrickColor.new("Really black")
rarm.BrickColor = BrickColor.new("Really black")
    if Debounces.CanAttack == false then
        Debounces.CanAttack = true
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "q" and char.Mana.Value>=50  then
		char.Mana.Value = char.Mana.Value - 50
        larm.BrickColor = BrickColor.new("Bright red")
        rarm.BrickColor = BrickColor.new("Bright red")
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
to = char.Absolution.Thingy2.Touched:connect(function(ht)
        hit = ht.Parent
        if ht and hit:IsA("Model") then
                if hit:FindFirstChild("Humanoid") then
                    if hit.Name ~= p.Name then
                                    hit:FindFirstChild("Humanoid"):TakeDamage(4)
                                wait(1)
                                --Debounces.Slashed = false
                        --end
                    end
                end
        elseif ht and hit:IsA("Hat") then
            if hit.Parent.Name ~= p.Name then
                if hit.Parent:FindFirstChild("Humanoid") then
                                hit.Parent:FindFirstChild("Humanoid"):TakeDamage(4)
                                wait(1)
                    --Debounces.Slashed = false
                end
            end
        end    
    end)
        for i = 1, 20 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0) * CFrame.Angles(math.rad(21), math.rad(75), math.rad(50)), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(-18)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2) * CFrame.Angles(math.rad(-14),math.rad(-60),0), 0.5)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(70), 0), 0.5)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.5)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.5)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.7, -1.4) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
        wait()
    end
    z = Instance.new("Sound",hed)
    z.SoundId = "rbxassetid://160069154"
    z.Looped = false
    z.Pitch = .9
    z1 = Instance.new("Sound",hed)
    z1.SoundId = "rbxassetid://160069154"
    z1.Looped = false
    z1.Pitch = .9
    wait(0.01)
    z:Play()
    z1:Play()
        for i = 1, 12 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(50)), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2,.9,-1) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(20)), 0.5)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2) * CFrame.Angles(math.rad(-14),math.rad(30),0), 0.5)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -3, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), 0.5)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -1, -2) * CFrame.Angles(math.rad(-10), 0, 0), 0.5)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2.8, .6) * CFrame.Angles(math.rad(-65), 0, 0), 0.5)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.7, -1.4) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
        wait()
    end
        for i = 1, 12 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0) * CFrame.Angles(math.rad(140), math.rad(0), math.rad(50)), 0.4)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-18)), 0.4)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2) * CFrame.Angles(math.rad(-14),math.rad(10),0), 0.5)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(-10), 0), 0.5)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.5)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.5)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.7, -1.4) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
        wait()
    end
    z = Instance.new("Sound",hed)
    z.SoundId = "rbxassetid://168586621"
    z.Looped = false
    z.Pitch = 1
    z1 = Instance.new("Sound",hed)
    z1.SoundId = "rbxassetid://168586621"
    z1.Looped = false
    z1.Pitch = 1
    wait(0.01)
    z:Play()
    z1:Play()
        for i = 1, 12 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0) * CFrame.Angles(math.rad(40), math.rad(-20), math.rad(10)), 0.5)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-18)), 0.4)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2) * CFrame.Angles(math.rad(-14),math.rad(-40),0), 0.5)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(40), 0), 0.5)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(-20), 0, math.rad(-10)), 0.5)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(20), 0, math.rad(10)), 0.5)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -2.8, -1.4) * CFrame.Angles(math.rad(-110), math.rad(-90), math.rad(20)), 1)
        if Debounces.on == false then break end
        wait()
    end
to:disconnect()
larm.BrickColor = BrickColor.new("Really black")
rarm.BrickColor = BrickColor.new("Really black")
    if Debounces.CanAttack == false then
        Debounces.CanAttack = true
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end)
----------------------------------------------------
Sit = false
mouse.KeyDown:connect(function(key)
    if key == "v" then
        if Sit == false then
            Sit = true
            hum.WalkSpeed = 20
        stanceToggle = "Sitting"
    elseif Sit == true then
        Sit = false
            hum.WalkSpeed = 50
        stanceToggle = "Normal"
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "t" and char.Mana.Value>=50  then
		char.Mana.Value = char.Mana.Value - 50
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
        for i = 1, 25 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.3,1.1,-1) *  CFrame.Angles(math.rad(115), math.rad(0), math.rad(-55)), 0.4)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.3,1.1,-1) *  CFrame.Angles(math.rad(115), math.rad(0), math.rad(55)), 0.4)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)),0.4)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(0), 0), 0.4)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, .6) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, -1.2) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.4)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(1.4, -3.5, -7) * CFrame.Angles(math.rad(-90), math.rad(-142), math.rad(20)), 1)
            if Debounces.on == false then break end
            wait()
        end
        Spawn(function()
            local Parts = {}
            for Y = -5,5 do
                local P = Instance.new("Part",char)
                P.Anchored = true
                P.FormFactor = "Custom"
                P.CanCollide = false
                P.Size = Vector3.new(1,1,1)
                P.TopSurface = "SmoothNoOutlines"
                P.BottomSurface = "SmoothNoOutlines"
                P.BrickColor = BrickColor.new("Really black")
				P.Material = "Neon"
                P.Name = tostring(Y)
                local i = (Y+5)/(10)
                i = 1-math.cos(math.pi*i-(math.pi/2))
                P.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0,Y,-15+(i*1.5))*CFrame.Angles(math.rad(Y*6),0,0)
                P.Touched:connect(function(ht)
                    local hit = ht.Parent
                    if hit:FindFirstChild("Humanoid") then
                        hit.Humanoid:TakeDamage(math.random(100,math.huge))
                    end
                end)
        s = Instance.new("Sound",P)
        s.SoundId = "rbxassetid://228343271"
        s.Volume = .7
        s.Pitch = 0.9
        s:Play()
P.Touched:connect(function(ht)
        hit = ht.Parent
        if ht and hit:IsA("Model") then
                if hit:FindFirstChild("Humanoid") then
                    if hit.Name ~= p.Name then
                       
                                    hit:FindFirstChild("Humanoid"):TakeDamage(math.huge)
                                    hit:FindFirstChild("Humanoid").PlatformStand = true
                                wait(1)
                                --Debounces.Slashed = false
                        --end
                end
                end
        elseif ht and hit:IsA("Hat") then
            if hit.Parent.Name ~= p.Name then
                if hit.Parent:FindFirstChild("Humanoid") then
                       
                                hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random (1,3))
                                hit:FindFirstChild("Humanoid").PlatformStand = true
                                wait(1)
                    --Debounces.Slashed = false
                --end
            end
        end
    end
end)
                Parts[#Parts+1] = P
            end
            local BREAKIT = false
            local CParts = {}
            local Rocks = {}
            local LastPos = nil
            for i = 1,70 do
                for i2,v in pairs(Parts) do
                    v.CFrame = v.CFrame*CFrame.new(0,0,-4)
                    local cf = v.CFrame
                    v.Size = v.Size+Vector3.new(1,1,1)
                    v.CFrame = cf
                    v.Transparency = v.Transparency+0.02
                    if v.Transparency >= 0.975 then BREAKIT = true end
                    if v.Name == "0" then
                        local Ignore = {}
                        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                            if v.Character ~= nil then
                                Ignore[#Ignore+1] = v.Character
                            end
                        end
                        local ray = Ray.new(v.Position+Vector3.new(0,20,0),Vector3.new(0,-200,0))
                        local Hit,Pos,SurfaceNorm = Workspace:FindPartOnRayWithIgnoreList(ray,Ignore)
                        if Hit ~= nil then
                            if #Rocks == 0 then
                                for i = 1,5 do
                                    local P = Instance.new("Part",char)
                                    Rocks[#Rocks+1] = P
                                    P.Anchored = true
                                    P.FormFactor = "Custom"
                                    P.BrickColor = Hit.BrickColor
                                    P.Material = Hit.Material
                                    P.TopSurface = "Smooth"
                                    P.BottomSurface = "Smooth"
                                    P.Size = Vector3.new(1,1,1)*(math.random(500,900)/100)
                                end
                            end
                            for i,P in pairs(Rocks) do
                                P.CFrame = ((CFrame.new(Pos)*(v.CFrame-v.Position))*CFrame.new(math.random(-math.ceil(v.Size.X/2),math.ceil(v.Size.X/2)),0,-math.random(5,8))-Vector3.new(0,0.25,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(20,50)))
                            end
                            local P = Instance.new("Part",char)
                            CParts[#CParts+1] = {P,tick()}
                            P.Anchored = true
                            P.FormFactor = "Custom"
                            P.BrickColor = Hit.BrickColor
                            P.Material = Hit.Material
                            P.TopSurface = "Smooth"
                            P.BottomSurface = "Smooth"
                            P.Size = Vector3.new(5,5,5)*(math.random(100,300)/100)
                            Pos = CFrame.new(Pos)*(v.CFrame-v.Position)*CFrame.new(v.Size.X/2,0,0)
                            Pos = Pos.p
                            P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,0.25,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(20,50)))
                            local P = P:Clone()
                            CParts[#CParts+1] = {P,tick()}
                            P.Parent = char
                            Pos = CFrame.new(Pos)*(v.CFrame-v.Position)*CFrame.new(-v.Size.X,0,0)
                            Pos = Pos.p
                            P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,0.25,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,-20)))
                            if LastPos ~= nil then
                                local P = P:Clone()
                                CParts[#CParts+1] = {P,tick()}
                                P.Parent = char
                                P.BrickColor = BrickColor.new("Really black")
                                Pos = CFrame.new(Pos)*(v.CFrame-v.Position)*CFrame.new(v.Size.X/2,0,0)
                                Pos = Pos.p
                                local CFr = (CFrame.new(Pos)*(v.CFrame-v.Position))-Vector3.new(0,0.4,0)
                                P.Size = Vector3.new(v.Size.X-0.25,1,(CFr.p-LastPos.p).Magnitude+0.30)
                                --P.Velocity = Vector3.new(0,-1000,0)
                                P.CFrame = CFrame.new(CFr.p,LastPos.p)*CFrame.new(0,0,-((CFr.p-LastPos.p).Magnitude+0.25)/2)
                            end
                            LastPos = (CFrame.new(Pos)*(v.CFrame-v.Position))-Vector3.new(0,0.4,0)
                        end
                    end
                end
                if BREAKIT then break end
                wait(0.002)
            end
            for i,v in pairs(Rocks) do
                CParts[#CParts+1] = {v,tick()}
            end
            for i,v in pairs(Parts) do
                v:Destroy()
            end
            Parts = nil
            while true do
                local t = tick()
                local p = nil
                for i,v in pairs(CParts) do
                    if t-v[2] > 4 then
                        v[1].Transparency = v[1].Transparency+0.05
                        if v[1].Transparency >= 1 then
                            v[1]:Destroy()
                            CParts[i] = nil
                        end
                    end
                    p = v
                end
                if p == nil then break end
                wait(0.002)
            end
            for i,v in pairs(CParts) do
                v:Destroy()
            end
            CParts = {}
        end)
        for i = 1, 20 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.3,.8,-1) *   CFrame.Angles(math.rad(50), math.rad(0), math.rad(-55)), 0.4)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.3,.8,-1) *   CFrame.Angles(math.rad(50), math.rad(0), math.rad(55)), 0.4)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)),0.4)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.6, 0) * CFrame.Angles(math.rad(-30), math.rad(0), 0), 0.4)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -1, -1.4) * CFrame.Angles(math.rad(40), 0, math.rad(0)), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -1.6, -.9) * CFrame.Angles(math.rad(10), 0, math.rad(0)), 0.4)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(1.4, -3.5, -7) * CFrame.Angles(math.rad(-90), math.rad(-142), math.rad(20)), 1)
            if Debounces.on == false then break end
            wait()
        end
    if Debounces.CanAttack == false then
        Debounces.CanAttack = true
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "e" and char.Mana.Value>=50  then
	 char.Mana.Value =  char.Mana.Value - 50
    larm.BrickColor = BrickColor.new("Bright red")
    rarm.BrickColor = BrickColor.new("Bright red")
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
        for i = 1, 18 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 1.7, 0) * CFrame.Angles(math.rad(90),math.rad(50),math.rad(90)), 0.4)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.9, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.4)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0) * CFrame.Angles(math.rad(-14),math.rad(0),0), 0.4)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(0), 0), 0.4)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.4)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.4)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
            wait()
        end
        local HandCF = CFrame.new(char.Absolution.Handle.Position - Vector3.new(0,8.8,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local rng = Instance.new("Part", char.Absolution.Handle)
        rng.Anchored = true
        rng.BrickColor = BrickColor.new("Really black")
        rng.CanCollide = true
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.CanCollide = false
        rng.Transparency = 0.35
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = HandCF
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
        rngm.Scale = Vector3.new(1, 1, 2)
            x = Instance.new("Sound", hed)
            x.SoundId = "http://www.roblox.com/asset/?id=169445602"
            x.Looped = false
            x.Pitch = .7
            x.Volume = 1
            x1 = Instance.new("Sound", hed)
            x1.SoundId = "http://www.roblox.com/asset/?id=169445602"
            x1.Looped = false
            x1.Pitch = .7
            x1.Volume = 1
            x:Play()
            x1:Play()
            rngto = rng.Touched:connect(function(ht)
            hit = ht.Parent
            if ht and hit:IsA("Model") then
                    if hit:FindFirstChild("Humanoid") then
                        if hit.Name ~= p.Name then
                            
                                    hit:FindFirstChild("Humanoid"):TakeDamage(4)
                                    hit:FindFirstChild("Humanoid").PlatformStand = true
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -120
                                    --Debounces.Slashed = false
                            --end
                        end
                    end
            elseif ht and hit:IsA("Hat") then
                if hit.Parent.Name ~= p.Name then
                    if hit.Parent:FindFirstChild("Humanoid") then
                          
                                    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(4)
                                    hit:FindFirstChild("Humanoid").PlatformStand = true
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -120
                        --Debounces.Slashed = false
                    end
                end
            end    
        end)
                coroutine.wrap(function()
                for i = 1, 60, 2 do
                rngm.Scale = Vector3.new(10 + i*10, 10 + i*10, 10)
                rng.Size = rngm.Scale
                rng.CFrame = HandCF
                rng.Transparency = i/60
                wait()
                end
                wait()
                rng:Destroy()
                end)()
        for i = 1, 18 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(90)), 0.4)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.9, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.4)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0) * CFrame.Angles(math.rad(-14),math.rad(0),0), 0.4)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(0), 0), 0.4)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.4)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.4)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, 0.2) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
            wait()
        end
        larm.BrickColor = BrickColor.new("Really black")
        rarm.BrickColor = BrickColor.new("Really black")
        x:Destroy()
        x1:Destroy()
    if Debounces.CanAttack == false then
        Debounces.CanAttack = true
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
	if key == "y" then
		if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.on = true
            Debounces.NoIdl = true
				for i = 1, 15 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(30)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90)), 0.2)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.2)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.2)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
					cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
				x = Instance.new("Sound",char)
				x.SoundId = "rbxassetid://228343271"
				x.Pitch = 1
				x.Volume = .8
				wait(.1)
				x:Play()
				Debounces.on = false
				Debounces.Here = false
				shot = shot + 1
local rng = Instance.new("Part", char)
rng.Anchored = true
rng.BrickColor = BrickColor.new("Really black")
rng.CanCollide = false
rng.FormFactor = 3
rng.Name = "Ring"
rng.Size = Vector3.new(1, 1, 1)
rng.Transparency = 0.35
rng.TopSurface = 0
rng.BottomSurface = 0
rng2 = rng:clone()
rng3 = rng2:clone()
rng4 = rng2:clone()
local rngm = Instance.new("SpecialMesh", rng)
rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm.TextureId = "http://www.roblox.com/asset/?id=122569107"
rngm.Scale = Vector3.new(10, 10, 1)
rngm2 = rngm:clone()
rngm2.Scale = Vector3.new(5, 5, 1)
rngm3=rngm2:clone()
rngm3.Parent = rng3
rngm3.Scale = Vector3.new(8, 8, 1)
rngm4 = rngm2:clone()
rngm4.Parent = rng4
rngm4.Scale = Vector3.new(6, 6, 1)
local bem = Instance.new("Part", char)
bem.Anchored = true
bem.BrickColor = BrickColor.new("Really black")
bem.CanCollide = false
bem.FormFactor = 3
bem.Name = "Beam" .. shot
bem.Size = Vector3.new(1, 1, 1)
bem.Transparency = 0.35
bem.TopSurface = 0
bem.BottomSurface = 0
local bemm = Instance.new("SpecialMesh", bem)
bemm.MeshType = 4
bemm.Scale = Vector3.new(1, 4, 4)
local out = Instance.new("Part", char)
out.Anchored = true
out.BrickColor = BrickColor.new("Really black")
out.CanCollide = false
out.FormFactor = 3
out.Name = "Out"
out.Size = Vector3.new(4, 4, 4)
out.Transparency = 0.35
out.TopSurface = 0
out.BottomSurface = 0
local outm = Instance.new("SpecialMesh", out)
outm.MeshId = "http://www.roblox.com/asset/?id=1033714"
outm.TextureId = "http://www.roblox.com/asset/?id=122569107"
outm.Scale = Vector3.new(4, 4, 4)
local bnd = Instance.new("Part", char)
bnd.Anchored = true
bnd.BrickColor = BrickColor.new("Really black")
bnd.CanCollide = false
bnd.FormFactor = 3
bnd.Material = "Neon"
bnd.Name = "Bend"
bnd.Size = Vector3.new(1, 1, 1)
bnd.Transparency = 1
bnd.TopSurface = 0
bnd.BottomSurface = 0
local bndm = Instance.new("SpecialMesh", bnd)
bndm.MeshType = 3
bndm.Scale = Vector3.new(8, 8, 8)
out.CFrame = larm.CFrame * CFrame.new(0, -2.7, 0)
bem.CFrame = out.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(0, 0, math.rad(90))
bnd.CFrame = bem.CFrame * CFrame.new(0, 0, 0)
rng.CFrame = out.CFrame * CFrame.Angles(math.rad(90), 0, 0)
rng3.CFrame = rng.CFrame * CFrame.new(0, -.5, 0)
rng4.CFrame = rng3.CFrame * CFrame.new(0, -.5, 0)
Debounces.Shewt = true
coroutine.wrap(function()
for i = 1, 50, 0.2 do
rngm.Scale = Vector3.new(10 + i*2, 10 + i*2, 1)
rngm3.Scale = Vector3.new(8 + i*2, 8 + i*2, 1)
rngm4.Scale = Vector3.new(6 + i*2, 6 + i*2, 1)
rng.Transparency = i/20
rng3.Transparency = 1/16
rng4.Transparency = i/12
wait()
end
wait()
rng:Destroy()
end)()
if Debounces.Shewt == true then
char:WaitForChild("Beam" .. shot).Touched:connect(function(ht)
hit = ht.Parent
if hit:IsA("Model") and hit:findFirstChild("Humanoid") then
if HasntTouched(hit.Name) == true and deb == false then
deb = true
coroutine.wrap(function()
hit:FindFirstChild("Humanoid").PlatformStand = true
hit:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 180
hit:FindFirstChild("Humanoid"):TakeDamage(math.random(24,73))
end)()
table.insert(Touche, hit.Name)
deb = false
end
elseif hit:IsA("Hat") and hit.Parent:findFirstChild("Humanoid") then
if HasntTouched(hit.Parent.Name) == true and deb == false then
deb = true
coroutine.wrap(function()
hit.Parent:FindFirstChild("Humanoid").PlatformStand = true
hit.Parent:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 180
wait(1)
hit.Parent:FindFirstChild("Humanoid").PlatformStand = false
end)()
table.insert(Touche, hit.Parent.Name)
deb = false
for i, v in pairs(Touche) do
print(v)
end
end
end
end)
end
for i = 0, 260, 8 do
bem.Size = Vector3.new(i, 2, 2)
bem.CFrame = larm.CFrame * CFrame.new(0, -4.2 -(i/2), 0) * CFrame.Angles(0, 0, math.rad(90))
bnd.CFrame = bem.CFrame * CFrame.new(-i/2, 0, 1.2)
bnd.Size = Vector3.new(1,1,1)
bndm.Scale = Vector3.new(8,8,8)
if i % 10 == 0 then
local newRng = rng2:Clone()
newRng.Parent = char
newRng.CFrame = larm.CFrame * CFrame.new(0, -4.2-i, 0) * CFrame.Angles(math.rad(90), 0, 0)
local newRngm = rngm2:clone()
newRngm.Parent=newRng
coroutine.wrap(function()
for i = 1, 10, 0.2 do
newRngm.Scale = Vector3.new(8 + i*2, 8 + i*2, 1)
newRng.Transparency = i/10
wait()
end
wait()
newRng:Destroy()
end)()
end
wait()
end
wait()
Debounces.Shewt = false
bem:Destroy()
out:Destroy()
bnd:Destroy()
Debounces.Ready = false
for i, v in pairs(Touche) do
table.remove(Touche, i)
end
wait()
table.insert(Touche, char.Name)
Debounces.NoIdl = false
if Debounces.CanAttack == false then
Debounces.CanAttack = true
end
end
end
end)
----------------------------------------------------
sidz = {"231917888", "231917845", "231917806"}
ptz = {0.65, 0.7, 0.75, 0.8, 0.95, 1}
mouse.KeyDown:connect(function(key)
    if key == "f" and char.Mana.Value>=50 then
	char.Mana.Value = char.Mana.Value - 50
    larm.BrickColor = BrickColor.new("Really black")
    rarm.BrickColor = BrickColor.new("Camo")
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.on = true
            Debounces.NoIdl = true
                for i = 1, 10 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(-34)), 0.4)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(34)), 0.4)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2)*CFrame.Angles(math.rad(16),math.rad(0),0), 0.4)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(20), math.rad(0), 0), 0.4)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.4)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, -1.4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.4)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                z = Instance.new("Sound",char)
                z.SoundId = "rbxassetid://"..sidz[math.random(1,#sidz)]
                z.Pitch = ptz[math.random(1,#ptz)]
                z.Volume = 1
                z1 = Instance.new("Sound",char)
                z1.SoundId = z.SoundId
                z1.Pitch = z.Pitch
                z1.Volume = 1
                wait(1)
                z:Play()
                z1:Play()
                Stomp()
                for i = 1, 20 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, .4)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(28)), 0.6)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.9, .4)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(-28)), 0.6)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, -.2)*CFrame.Angles(math.rad(-26),math.rad(0),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, -.6) * CFrame.Angles(math.rad(-30), math.rad(0), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(30), 0, math.rad(0)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2.8, -1.4) * CFrame.Angles(math.rad(30), 0, math.rad(0)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
        if Debounces.CanAttack == false then
            Debounces.CanAttack = true
            Debounces.on = false
            Debounces.NoIdl = false
            larm.BrickColor = BrickColor.new("Really black")
            rarm.BrickColor = BrickColor.new("Really black")
            end
        end
    end
end)    
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "g" and char.Mana.Value>5 then
	char.Mana.Value = char.Mana.Value - 5
    larm.BrickColor = BrickColor.new("Camo")
    rarm.BrickColor = BrickColor.new("Really black")
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
        chrg = lleg.Touched:connect(function(ht)
        hit = ht.Parent
            if ht and hit:IsA("Model") then
                    if hit:FindFirstChild("Humanoid") then
                        if hit.Name ~= p.Name then
                          
                                    hit:FindFirstChild("Humanoid"):TakeDamage(2)
                                    hit:FindFirstChild("Humanoid").PlatformStand = true
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -70
                                    --Debounces.Slashed = false
                            --end
                        end
                    end
            elseif ht and hit:IsA("Hat") then
                if hit.Parent.Name ~= p.Name then
                    if hit.Parent:FindFirstChild("Humanoid") then
                           
                                    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
                                    hit:FindFirstChild("Humanoid").PlatformStand = true
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -70
                        --Debounces.Slashed = false
                    end
                end
            end    
        end)
        for i = 1, 14 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)), 0.5)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.6, .9, -.4)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.5)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, -.2)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)), 0.5)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.5)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.8, -3, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(15)), 0.5)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(15)), 0.5)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.3, -1.1) * CFrame.Angles(math.rad(-60), math.rad(-90), math.rad(0)), 0.9)
            if Debounces.on == false then break end
            wait()
        end
        charge()
        z = Instance.new("Sound",char)
        z.SoundId = "rbxassetid://200632875"
        z.Volume = 1
        z.Pitch = .8
        z1 = Instance.new("Sound",char)
        z1.SoundId = "rbxassetid://200632875"
        z1.Volume = 1
        z1.Pitch = .9
        z:Play()
        z1:Play()
        wait(1)
        z:Destroy()
        z1:Destroy()
        chrg:disconnect()
        if Debounces.CanAttack == false then
            Debounces.CanAttack = true
            Debounces.on = false
            Debounces.NoIdl = false
            larm.BrickColor = BrickColor.new("Really black")
            rarm.BrickColor = BrickColor.new("Really black")
            end
        end
    end
end)
----------------------------------------------------
pt = {0.7, 0.8, 0.9}
mouse.KeyDown:connect(function(key)
    if key == "h" and char.Mana.Value>50 then
		char.Mana.Value = char.Mana.Value - 50
        if Debounces.CanJoke == true then
            Debounces.CanJoke = false
            u = Instance.new("Sound")
            u.SoundId = "http://www.roblox.com/asset/?id=138199573"
            u.Parent = char
            u.Looped = false
            u.Pitch = pt[math.random(1,#pt)]
            u.Volume = 1
            u2 = Instance.new("Sound")
            u2.SoundId = "http://www.roblox.com/asset/?id=138199573"
            u2.Parent = char
            u2.Looped = false
            u2.Pitch = u.Pitch
            u2.Volume = 1
            wait(.01)
            u:Play()
            u2:Play()
            wait(6)
            u:Destroy()
            u2:Destroy()
            if Debounces.CanJoke == false then
                Debounces.CanJoke = true
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "j" and char.Mana.Value> 30 then
	char.Mana.Value = char.Mana.Value-30
			if Debounces.CanJoke == true then
				Debounces.CanJoke = false
                z = Instance.new("Sound",char)
                z.SoundId = "rbxassetid://135017755"
                z.Pitch = .76
                z.Volume = 1
				wait()
				z:Play()
				wait(6)
				z:Destroy()
			if Debounces.CanJoke == false then
				Debounces.CanJoke = true
			end
		end
	end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "k" and char.Mana.Value> 10 then
	char.Mana.Value = char.Mana.Value -10
			if Debounces.CanJoke == true then
				Debounces.CanJoke = false
                z = Instance.new("Sound",char)
                z.SoundId = "rbxassetid://135017578"
                z.Pitch = .76
                z.Volume = 1
				wait()
				z:Play()
				wait(4)
				z:Destroy()
			if Debounces.CanJoke == false then
				Debounces.CanJoke = true
			end
		end
	end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "u" and char.Mana.Value>200 then
    wait(1)
	char.Mana.Value = char.Mana.Value-200
    charge()
    wait(0.6)
    charge()
    wait(0.6)
    charge()
    wait(2)
    end
    end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "x" and char.Mana.Value>50 then
	char.Mana.Value = char.Mana.Value-50
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
            Debounces.ks = true
        for i = 1, 10 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.6)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.7,.9,-.5)*CFrame.Angles(math.rad(40),math.rad(0),math.rad(20)), 0.6)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.4)*CFrame.Angles(math.rad(-26),math.rad(0),0), 0.6)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.6)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.6)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2.7, .6) * CFrame.Angles(math.rad(-70), math.rad(0), math.rad(0)), 0.6)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
            if Debounces.on == false then break end
            wait()
        end
        z = Instance.new("Sound",hed)
        z.SoundId = "rbxassetid://169445092"
        z.Volume = 1
        wait(0.1)
        z:Play()
        kik = rleg.Touched:connect(function(ht)
        hit = ht.Parent
            if ht and hit:IsA("Model") then
                    if hit:FindFirstChild("Humanoid") then
                        if hit.Name ~= p.Name then
                          
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                    z.Volume = 1
                                    z:Play()
                                    Debounces.ks=false
                                    end
                                    hit:FindFirstChild("Humanoid"):TakeDamage(2)
                                    hit:FindFirstChild("Humanoid").PlatformStand = true
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -70
                            --Debounces.Slashed = false
                        --end
                    end
                end
            elseif ht and hit:IsA("Hat") then
                if hit.Parent.Name ~= p.Name then
                    if hit.Parent:FindFirstChild("Humanoid") then
                          
                                    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
                                    hit:FindFirstChild("Humanoid").PlatformStand = true
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -70
                            --Debounces.Slashed = false
                        --end
                    end
                end
            end    
        end)
        for i = 1, 8 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.7)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,0)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(-20)), 0.7)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,.2)*CFrame.Angles(math.rad(8),math.rad(0),0), 0.7)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(16), math.rad(0), 0), 0.7)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(-16), math.rad(0), math.rad(0)), 0.7)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2.6, -1.4) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(0)), 0.7)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
            if Debounces.on == false then break end
            wait()
        end
        kik:disconnect()
        if Debounces.CanAttack == false then
            Debounces.CanAttack = true
            Debounces.on = false
            Debounces.NoIdl = false
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "c" and char.Mana.Value>80 then
	char.Mana.Value = char.Mana.Value -80
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
            SIDZ = {"231917744", "231917742"}
            PTZ = {0.7, 0.8, 0.9, 1}
                for i = 1, 20 do
                    wait()
                        for i,v in pairs(char.Absolution:children()) do
                    if v:IsA("Part") or v:IsA("WedgePart") then
                        v.Transparency = v.Transparency + 0.05
                        end
                    end
                end
                function FindNearestTorso(Position,Distance,SinglePlayer)
                    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
                        local List = {}
                        for i,v in pairs(workspace:GetChildren())do
                            if v:IsA("Model")then
                                if v:findFirstChild("Torso")then
                                    if v ~= char then
                                        if(v.Torso.Position -Position).magnitude <= Distance then
                                            table.insert(List,v)
                                        end 
                                    end 
                                end 
                            end 
                        end
                    return List
                end
                GroundPound()
                for i = 1, 5 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.7)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.7)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(20),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(-20), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(-30)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                GroundPound()
                for i = 1, 5 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.7)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.7)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(-20),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(20), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(30)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                GroundPound()
                for i = 1, 5 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.7)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.7)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(20),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(-20), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(-30)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                GroundPound()
                for i = 1, 5 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.7)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.7)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(-20),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(20), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(30)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                GroundPound()
                for i = 1, 5 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.7)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.7)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(20),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(-20), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(-30)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                GroundPound()
                for i = 1, 5 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.7)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.7)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(-20),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(20), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(30)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                for i = 1, 18 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(-10)), 0.4)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(10)), 0.4)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2)*CFrame.Angles(math.rad(16),math.rad(0),0), 0.4)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 2, 0) * CFrame.Angles(math.rad(20), math.rad(0), 0), 0.4)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.4)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, -1.4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.4)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                for i,v in pairs(FindNearestTorso(torso.CFrame.p,25))do
                    if v:FindFirstChild('Humanoid') then
                        v.Humanoid:TakeDamage(math.random(20,60))
                        v.Humanoid.PlatformStand = true
                        v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 100
                    end
                end
                x = Instance.new("Sound",char)
                x.SoundId = "rbxassetid://"..SIDZ[math.random(1,#SIDZ)]
                x.Pitch = PTZ[math.random(1,#PTZ)]
                x.Volume = 1
                wait(0.1)
                x:Play()
                Crater(hed,20)
                for i = 1, 14 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.4, 3.2, -.5)*CFrame.Angles(math.rad(160),math.rad(0),math.rad(-10)), 0.6)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.4, 3.2, -.5)*CFrame.Angles(math.rad(160),math.rad(0),math.rad(10)), 0.6)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2)*CFrame.Angles(math.rad(16),math.rad(0),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -5, 0) * CFrame.Angles(math.rad(-90), math.rad(0), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, .4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, .4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
            if Debounces.CanAttack == false then
                Debounces.CanAttack = true
                Debounces.on = false
                Debounces.NoIdl = false
                for i = 1, 20 do
                    wait()
                        for i,v in pairs(char.Absolution:children()) do
                    if v:IsA("Part") or v:IsA("WedgePart") then
                        v.Transparency = v.Transparency - 0.05
                        end
                    end
                end
            end
        end
    end
end)
----------------------------------------------------176349813
mouse.KeyDown:connect(function(key)
    if key == "b" and char.Mana.Value>80 then
	char.Mana.Value = char.Mana.Value -80
        hum.WalkSpeed = 20
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
            for i = 1,20 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(75), 0, math.rad(-30)), 0.1)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(75), 0, math.rad(30)), 0.1)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0) * CFrame.Angles(math.rad(-20), math.rad(0), 0), 0.1)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(-30), math.rad(0), 0), 0.1)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles (math.rad(30), 0, math.rad(-5)), 0.1)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, 0) * CFrame.Angles (math.rad(30), 0, math.rad(5)), 0.1)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
            if Debounces.on == false then break end
            wait()
            end
        wait(1)
        v = Instance.new("Sound")
        v.SoundId = "rbxassetid://181384451"
        v.Parent = char
        v.Looped = false
        v.Pitch = 1.04
        v.Volume = 1.5
        wait(.01)
        v:Play()
        
				v = Instance.new("Sound")
        v.SoundId = "rbxassetid://138252341"
        v.Parent = char
        v.Looped = false
        v.Pitch = 1.04
        v.Volume = 1.2
        wait(.01)
        v:Play()
        if Daytime == true then
            Daytime = false
            l.TimeOfDay = 24
        else
            Daytime = true
            l.TimeOfDay = 12
            l.OutdoorAmbient = Color3.new(0.498039, 0.498039, 0.498039)
        end
        
            local Shockwave = function()
                local rng1 = Instance.new("Part", char)
                rng1.Anchored = true
                rng1.BrickColor = BrickColor.new("Institutional white")
                rng1.CanCollide = false
                rng1.FormFactor = 3
                rng1.Name = "Ring"
				rng1.Material = "Neon"
                rng1.Size = Vector3.new(1, 1, 1)
                rng1.Transparency = 0.35
                rng1.TopSurface = 0
                rng1.BottomSurface = 0
                local rngm1 = Instance.new("SpecialMesh", rng)
                rngm1.MeshId = "http://www.roblox.com/asset/?id=3270017"
                rngm1.Scale = Vector3.new(10, 10, 1)
                rng1.CFrame = CFrame.new(0, -2, 0) * CFrame.Angles(0, 0, 0)
                local Wave = Instance.new("Part", game.Workspace)
                Wave.Name = "Shockwave"
                Wave.BrickColor = BrickColor.new("Really black")
                Wave.Size = Vector3.new(1, 1, 1)
                Wave.Shape = "Ball"
				Wave.Name = "Wave"
				Wave.Material = "Neon"
                Wave.CanCollide = false
                Wave.Anchored = true
                Wave.TopSurface = 0
                Wave.BottomSurface = 0
                Wave.Touched:connect(function(hit)
                    if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
                        local Occlude = true
                        local NotOccludes = {
                            char.Name;
                            "Wings";
                            "Scythe";
                            "Thingy";
                            "Thingy2"; -- put all of the names in a table pls
                        }
                        for i,v in pairs(NotOccludes) do
                            if hit.Parent.Name == v then
                                Occlude = false
                            end
                        end
                        --if hit.Parent.Name ~= char.Name and hit.Name ~= "Wings" and hit.Name ~= "Scythe" and hit.Name     ~= "Thingy" and hit.Name ~= "Thingy2" and hit.Parent.Name ~= "Wings" and hit.Parent.Name ~= "Scythe" and     hit.Parent.Name ~= "Thingy" and hit.Parent.Name ~= "Thingy2" then
                        if Occlude then
                            hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - math.huge
                            hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * -120
                        end
                    end
                end)
                
                Instance.new("SpecialMesh", Wave).MeshType = "Sphere"
                
                coroutine.wrap(function()
                    for i = 1, 20, 0.2 do
                        rngm1.Scale = Vector3.new(30 + i*2, 30 + i*2, 1)
                        rng1.Transparency = i/20
						local Wav2 = game.Workspace.Wave:Clone()
						Wav2.Position = Vector3.new(math.random(0,200),2,math.random(0,200))
                    wait()
                    end
                    wait()
                    rng1:Destroy()
                end)()
                
                Delay(0, function()

                    if Daytime == false then
                       for i = 1, 50, 1 do
                            Wave.Size = Vector3.new(1 + i, 1 + i, 1 + i)
                            Wave.CFrame = char.Torso.CFrame
                            local t = i / 50
                            Wave.Transparency = t
                            wait()
                        end
                    else
                        for i = 1, 50, 1 do
                            Wave.Size = Vector3.new(20 + i, 20 + i, 20 + i)
                            Wave.CFrame = char.Torso.CFrame
                            local t = i / 50
                            Wave.Transparency = t
                            wait()
                        end
                    end
                    Wave:Destroy()
                end)
                Delay(0, function()
                    while wait() do
                        if Wave ~= nil then
                            Wave.CFrame = char.Torso.CFrame
                        else
                            break
                        end
                    end
                end)
            end
        Shockwave() 
        for i = 1, 15 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3.2, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(-130)), 0.2)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3.2, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(70)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2) * CFrame.Angles(math.rad(45), math.rad(30), 0), 0.1)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(30), math.rad(20),     math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-40)), 0.1)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
            if Debounces.on == false then break end
            wait()
        end
        for i = 1, 15 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(-70)), 0.2)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(130)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2) * CFrame.Angles(math.rad(45), math.rad(-30), 0), 0.1)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(30), math.rad(-20),     math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(40)), 0.1)
            if Debounces.on == false then break end
            wait()
        end
        for i = 1, 15 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3.2, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(-130)), 0.2)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3.2, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(70)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2) * CFrame.Angles(math.rad(45), math.rad(30), 0), 0.1)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(30), math.rad(20),     math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-40)), 0.1)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
            if Debounces.on == false then break end
            wait()
        end
        for i = 1, 15 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(-70)), 0.2)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(130)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2) * CFrame.Angles(math.rad(45), math.rad(-30), 0), 0.1)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(30), math.rad(-20),     math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(40)), 0.1)
            if Debounces.on == false then break end
            wait()
        end
        for i = 1, 15 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3.2, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(-130)), 0.2)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3.2, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(70)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2) * CFrame.Angles(math.rad(45), math.rad(30), 0), 0.1)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(30), math.rad(20),     math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-40)), 0.1)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
            if Debounces.on == false then break end
            wait()
        end
        for i = 1, 15 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(-70)), 0.2)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(130)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2) * CFrame.Angles(math.rad(45), math.rad(-30), 0), 0.1)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(30), math.rad(-20),     math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(40)), 0.1)
            if Debounces.on == false then break end
            wait()
        end
        wait(1.4)
        Debounces.NoIdl = false
        hum.WalkSpeed = 50
        Debounces.on = false
        wait()
        if Debounces.CanAttack == false then
            Debounces.CanAttack = true
            v:Destroy()
            end
            char.Mana.Value = char.Mana.Value + 1000
            wait(4)
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "m"  and char.Mana.Value> 60 then
	char.Mana.Value = char.Mana.Value-60
hum.WalkSpeed = 0
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
            x = Instance.new("Sound",char)
            x.SoundId = "http://www.roblox.com/asset/?id=169445572"
            x.Looped = false
            x.Pitch = 1.1
            x.Volume = 1
            x:Play()
            x2 = Instance.new("Sound",char)
            x2.SoundId = "http://www.roblox.com/asset/?id=169380495"
            x2.Looped = false
            x2.Pitch = .7
            x2.Volume = 1
            wait(.1)
            x:Play()
            x2:Play()
        for i = 1, 20 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,0.6,-.2) *CFrame.Angles (math.rad    (45),math.rad(0),math.rad(32)), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,1,0)*CFrame.Angles(math.rad     (0),math.rad(0),math.rad(-20)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.4)*CFrame.Angles(math.rad (-    8),math.rad(-40), math.rad(-8)),0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -3.2, 0) * CFrame.Angles  (math.rad    (-50), math.rad(40), math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.8, .4, -1.6) * CFrame.Angles  (math.rad    (30), 0, math.rad(20)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.6, -2, 0) * CFrame.Angles  (math.rad(-    10), math.rad(-40), math.rad(0)), 0.2)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.3, -1.1) * CFrame.Angles(math.rad(-60), math.rad(-90), math.rad(0)), 0.4)
            if Debounces.on == false then break end
                wait()
            x:Destroy()
            x2:Destroy()
            end
            wait(1)
        local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = BrickColor.new("Really black")
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0.35
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.Position = torso.Position - Vector3.new(0,2,0)
        rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
        rngm.Scale = Vector3.new(1, 1, 2)
            x = Instance.new("Sound",char)
            x.SoundId = "http://www.roblox.com/asset/?id=169445602"
            x.Looped = false
            x.Pitch = .7
            x.Volume = 1
            x:Play()
                coroutine.wrap(function()
                for i = 1, 60, 2 do
                rngm.Scale = Vector3.new(2 + i*2, 2 + i*2, 1)
                rng.Transparency = i/60
                wait()
                end
                wait()
                rng:Destroy()
                end)()
            hum.WalkSpeed = 50
        BV = Instance.new("BodyVelocity", torso)
        BV.maxForce = Vector3.new(0,200000,0)
        BV.P = 100000
        BV.velocity = Vector3.new(0,800,0)
    for i = 1, 20 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0)*CFrame.Angles(math.rad(20),math.rad(0),     math.rad(0)),0.7)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-16),     math.rad(0), math.rad(0)), 0.7)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(40), 0,     math.rad(-20)), 0.7)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(-40),     math.rad(0), math.rad(20)), 0.7)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -2, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.7)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, 0, -2) * CFrame.Angles(math.rad(0), 0, 0), 0.7)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
        wait()
    end
x:Destroy()
BV:Destroy()
    for i = 1, 30 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-14),math.rad(0),     math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-16), math.rad    (0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(-10)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(10)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.4, -1) * CFrame.Angles(math.rad(20), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8, -.6) * CFrame.Angles(math.rad(-30), 0, 0),     0.3)
        if Debounces.on == false then break end
        wait()
    end
if (torso.Velocity*Vector3.new(1, 1, 1)).magnitude > 1 then
    for i = 1, 30 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0)*CFrame.Angles(math.rad(-14),math.rad(0), math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 1.4, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 1.4, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
        wait()
    end
end
Debounces.on = false
Debounces.NoIdl = false
local ry,ht,ps=nil,nil,nil
while ht==nil do
	ry,ht,ps=newRay(root.CFrame*CFrame.new(0,-2,0),root.CFrame*CFrame.new(0,-3,0),4.1,{char})
	wait()
end
z = Instance.new("Sound",char)
z.SoundId = "rbxassetid://142070127"
z.Volume = 1
wait(.1)
z:Play()
Landing()
hum.WalkSpeed = 50
if Debounces.CanAttack == false then
Debounces.CanAttack = true
end
end
end
end)
----------------------------------------------------
Grab = false
mouse.KeyDown:connect(function(key)
    if key == "z" then
    larm.BrickColor = BrickColor.new("Bright red")
    rarm.BrickColor = BrickColor.new("Bright red")
        Debounces.on = true
        Debounces.NoIdl = true
        if Grab == false then
        gp = nil
        con1=larm.Touched:connect(function(hit) -- this is grab
            ht = hit.Parent
            hum1=ht:FindFirstChild('Humanoid')
            if hum1 ~= nil then
                hum1.PlatformStand=true
                gp = ht
                Grab = true
                asd=weld5(larm,ht:FindFirstChild("Torso"),CFrame.new(0,-3.3,0),CFrame.new(0,0,0))
                asd.Parent = larm
                asd.Name = "asd"
                asd.C0=asd.C0*CFrame.Angles(math.rad(-90),0,0)
            elseif hum1 == nil then
                con1:disconnect()
                wait() return
            end
        end)
        for i = 1, 18 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(36)), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.65,.9,-.5)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(20)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.8, 0) * CFrame.Angles(math.rad(-60), math.rad(0), 0), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, -.6) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(0)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, -.6) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(0)), 0.2)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.3, -1.1) * CFrame.Angles(math.rad(-60), math.rad(-90), math.rad(0)), 0.9)
            if Debounces.on == false then break end
            wait()
        end
    con1:disconnect()
    Debounces.on = false
    Debounces.NoIdl = false
    elseif Grab == true then
        Grab = false
    for i = 1, 20 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.2)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.6, .9, -.4)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(-20)), 0.1)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.2)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
        if Debounces.on == false then end
        wait()
    end
        if gp ~= nil then
        for i,v in pairs(larm:GetChildren()) do
            if v.Name == "asd" and v:IsA("Weld") then
                v:Remove()
            end
        end
        bv = Instance.new("BodyVelocity",gp:FindFirstChild("Torso"))
        bv.maxForce = Vector3.new(400000, 400000, 400000)
        bv.P = 125000
        bv.velocity = char.Head.CFrame.lookVector * 200
        for i = 1, 12 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.6, .9, -.75)*CFrame.Angles(math.rad(30),math.rad(0),math.rad(20)), 0.5)
            if Debounces.on == false then end
            wait()
        end
        ht=nil
        Spawn(function()
            wait(0.5)
            bv:Destroy()
        end)
        Debounces.on = false
        Debounces.NoIdl = false
        elseif ht == nil then wait()
        Grab = false
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 21
    end
end)
mouse.KeyUp:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 50
    end
end)
----------------------------------------------------
local animpose = "Idle"
local lastanimpose = "Idle"
local sine = 0
local change = 1
local val = 0
local ffing = false
----------------------------------------------------
x = Instance.new("Sound", char)
x.SoundId = "http://www.roblox.com/asset/?id=187922823"
x.Looped = true
x.Volume = 1
x.Pitch = 1
local footsteps = false
-------------------------------
game:GetService("RunService").RenderStepped:connect(function()
if char.Humanoid.Jump == true then
jump = true
else
jump = false
end
char.Humanoid.FreeFalling:connect(function(f)
if f then
ffing = true
else
ffing = false
end
end)
sine = sine + change
if jumpn == true then
animpose = "Jumping"
elseif ffing == true then
animpose = "Freefalling"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
animpose = "Idle"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 20 then
animpose = "Walking"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 20 then
animpose = "Running"
end
if animpose ~= lastanimpose then
sine = 0
if Debounces.NoIdl == false then
if animpose == "Idle" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
end
elseif animpose == "Walking" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, .9, 0)*CFrame.Angles(0, math.rad(1), math.rad(-10)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0)*CFrame.Angles(math.rad(-8), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-4), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, -.05) * CFrame.Angles(math.rad(-18), 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, -.05) * CFrame.Angles(math.rad(-18), 0, 0), .4)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
end
elseif animpose == "Running" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, .5) * CFrame.Angles(math.rad(-10), math.rad(-40), math.rad(50)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 1.2, 0-1*math.cos(sine/4)/2)*CFrame.Angles(math.rad(50-80*math.cos(sine/8)/2), math.rad(0), math.rad(0-70*math.cos(sine/8)/2)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0)*CFrame.Angles(math.rad(6+8*math.cos(sine/4)/1.8), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2+0.2*math.cos(sine/4)/2, 0) * CFrame.Angles(math.rad(-14+4*math.cos(sine/4)/2), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3-0.44*math.cos(sine/8)/2.4, -.15 + math.sin(sine/8)/1.5) * CFrame.Angles(math.rad(-20) + -math.sin(sine/8)/1.7, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3+0.44*math.cos(sine/8)/2.4, -.15 + -math.sin(sine/8)/1.5) * CFrame.Angles(math.rad(-20) + math.sin(sine/8)/1.7, 0, 0), .4)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
end
wait()
end
else
end
end
lastanimpose = animpose
if Debounces.NoIdl == false then
if animpose == "Idle" then
if stanceToggle == "Normal" then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(88+2*math.cos(sine/14)),math.rad(0),math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(50),math.rad(-30),math.rad(-40-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/14)),math.rad(40),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(-40), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.15, -3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.15, -3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
elseif stanceToggle == "Sitting" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, 0) * CFrame.Angles(math.rad(100-1*math.cos(sine/14)), math.rad(0), math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2, .9, -1)*CFrame.Angles(math.rad(78+1*math.cos(sine/14)), math.rad(0), math.rad(50)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, -.3) * CFrame.Angles(math.rad(-14+1*math.cos(sine/14)), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -3, 0) * CFrame.Angles(math.rad(-10+1*math.cos(sine/14)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -1, -2) * CFrame.Angles(math.rad(-10-1*math.cos(sine/14)), 0, 0), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, .6) * CFrame.Angles(math.rad(-50-1*math.cos(sine/14)), 0, 0), 0.2)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
end
elseif animpose == "Walking" then
if stanceToggle == "Normal" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9+.1*math.cos(sine/7), 0) * CFrame.Angles(math.rad(90+2*math.cos(sine/7)), math.rad(0), math.rad(20)), 0.04)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, .9+.1*math.cos(sine/7), -math.sin(sine/14)/2)*CFrame.Angles(math.sin(sine/14)/4, math.rad(1) + -math.sin(sine/14)/2, math.rad(-30)), 0.04)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0)*CFrame.Angles(math.rad(-8+2*math.cos(sine/7)), math.rad(0), math.rad(0)),0.03)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2+0.1*math.cos(sine/7), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/7)), 0, math.rad(0)), 0.04)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3-0.3*math.cos(sine/14)/2, -.05 + math.sin(sine/14)/2) * CFrame.Angles(math.rad(-18) + -math.sin(sine/14)/2.3, 0, 0), 0.04)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3+0.3*math.cos(sine/14)/2, -.05 + -math.sin(sine/14)/2) * CFrame.Angles(math.rad(-18) + math.sin(sine/14)/2.3, 0, 0), .04)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 0.04)
end
elseif animpose == "Running" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, .5) * CFrame.Angles(math.rad(-10-20*math.cos(sine/4)/2), math.rad(-40+10*math.cos(sine/4)/2), math.rad(50-10*math.cos(sine/4)/2)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.9, .5)*CFrame.Angles(math.rad(10+20*math.cos(sine/4)/2), math.rad(40-10*math.cos(sine/4)/2), math.rad(-50+10*math.cos(sine/4)/2)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0)*CFrame.Angles(math.rad(6+6*math.cos(sine/4)/1.8), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2+0.2*math.cos(sine/4)/2, 0) * CFrame.Angles(math.rad(-14+10*math.cos(sine/4)/2), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3-0.44*math.cos(sine/8)/2.4, -.15 + math.sin(sine/8)/1.5) * CFrame.Angles(math.rad(-20) + -math.sin(sine/8)/1.7, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3+0.44*math.cos(sine/8)/2.4, -.15 + -math.sin(sine/8)/1.5) * CFrame.Angles(math.rad(-20) + math.sin(sine/8)/1.7, 0, 0), .4)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
end
end
if animpose == "Walking" then
    if footsteps == false then
        x:Play()
        footsteps = true
    end
    x.Pitch = 1.1
elseif animpose == "Idle" then
    x:Stop()
    footsteps = false
elseif animpose == "Running" then
    x.Pitch = 1.2
    if footsteps == false then
        x:Play()
        footsteps = true
    end
end
end)
p.Chatted:connect(function(msg)
    if msg == TitanBet.."loadsong" then
                z = Instance.new("Sound", char)
z.SoundId = "rbxassetid://306826153"--242463565
z.Name = "Music"
z.Looped = true
z.Volume = 1
z.Pitch = 1
wait()
if p.Name == "PointCoded" or "nguyenjimbo" then
z:Play()
else
	print("Not Point Coded = no music")
end
    end
   
end)

p.Chatted:connect(function(msg)
    if msg == TitanBet.."stopsong" then
               char.Music:remove()
    end
   
end)

while true do
local pe = char:GetChildren()
pe.Locked = true
p.PlayerGui.Mana.Mana.Text = "Mana: "..char.Mana.Value
if char.Mana.Value>4999 then
		char.Mana.Value = 4999
	end
	char.Mana.Value = char.Mana.Value + 1
	local pe = char:GetChildren()
	hum.MaxHealth = 50000
	hum.Health = 50000
pe.Locked = true
	wait(0.000000000000000000000000001)
end
end)
-- cmd4
cmd4.Name = "666"
cmd4.Parent = Main2
cmd4.Active = true
cmd4.BackgroundColor3 = Color3.new(0, 100, 255)
cmd4.BorderSizePixel = 1
cmd4.BorderColor3 = Color3.new(0, 0, 0)
cmd4.ZIndex = 7
cmd4.Size = UDim2.new(0, 200, 0, 100)
cmd4.Position = UDim2.new(0, 0, 0, 300)
cmd4.TextColor3 = Color3.new(255, 255, 255)
cmd4.Text = "666"
cmd4.FontSize = "Size32"
-- 666
cmd4.MouseButton1Click:connect(function()
local rekt = Instance.new('ColorCorrectionEffect', game.Lighting)
rekt.TintColor = Color3.new(155, 1, 0)
rekt.Brightness = 0.2
rekt.Contrast = 1
rekt.Saturation = 1
local topkek = Instance.new('BlurEffect', game.Lighting)
topkek.Size = 3
local bloom = Instance.new('BloomEffect', game.Lighting)
bloom.Intensity = 0.4
bloom.Size = 56
bloom.Threshold = 1

for i,v in next,workspace:children''do
  if(v:IsA'BasePart')then
    me=v;
    bbg=Instance.new('BillboardGui',me);
    bbg.Name='stuf';
    bbg.Adornee=me;
    bbg.Size=UDim2.new(2.5,0,2.5,0)
    tlb=Instance.new'TextLabel';
    tlb.Text='666 666 666 666 666 666';
    tlb.Font='SourceSansBold';
    tlb.FontSize='Size48';
    tlb.TextColor3=Color3.new(1,0,0);
    tlb.Size=UDim2.new(1.25,0,1.25,0);
    tlb.Position=UDim2.new(-0.125,-22,-1.1,0);
    tlb.BackgroundTransparency=1;
    tlb.Parent=bbg;
    end;end;
      s=Instance.new'Sound';
      s.Parent=workspace;
      s.SoundId='rbxassetid://152840862';
      s.Pitch=1;
      s.Volume=1;
      s.Looped=true;
      s:play();
      --end;end)();
      function xds(dd)
        for i,v in next,dd:children''do
          if(v:IsA'BasePart')then
            v.BrickColor=BrickColor.new'Really black';
            v.TopSurface='Smooth';
            v.BottomSurface='Smooth';
            a=Instance.new('PointLight',v);
            a.Color=Color3.new(1,0,0);
            a.Range=15;
            a.Brightness=5;
            f=Instance.new('Fire',v);
            f.Size=19;
            f.Heat=22;
            end;
            game.Lighting.TimeOfDay=0;
            game.Lighting.Brightness=0;
            game.Lighting.ShadowColor=Color3.new(0,0,0);
            game.Lighting.Ambient=Color3.new(1,0,0);
            game.Lighting.FogEnd=200;
            game.Lighting.FogColor=Color3.new(0,0,0);
        local dec = 'http://www.roblox.com/asset/?id=19399245';
            local fac = {'Front', 'Back', 'Left', 'Right', 'Top', 'Bottom'}
            if #(v:GetChildren())>0 then
                   xds(v) 
              end
         end
    end
xds(game.Workspace)
end)
-- cmd5
cmd5.Name = "wings"
cmd5.Parent = Main2
cmd5.Active = true
cmd5.BackgroundColor3 = Color3.new(0, 100, 255)
cmd5.BorderSizePixel = 1
cmd5.BorderColor3 = Color3.new(0, 0, 0)
cmd5.ZIndex = 6
cmd5.Size = UDim2.new(0, 200, 0, 100)
cmd5.Position = UDim2.new(0, 0, 0, 400)
cmd5.TextColor3 = Color3.new(255, 255, 255)
cmd5.Text = "Wings"
cmd5.FontSize = "Size32"
-- wings
cmd5.MouseButton1Click:connect(function()

function weld(p0,p1,c0,c1,par)
	local w = Instance.new("Weld",p0 or par)
	w.Part0 = p0
	w.Part1 = p1
	w.C0 = c0 or CFrame.new()
	w.C1 = c1 or CFrame.new()
	return w
end

local motors = {}

function motor(p0,p1,c0,c1,des,vel,par)
	local w = Instance.new("Motor6D",p0 or par)
	w.Part0 = p0
	w.Part1 = p1
	w.C0 = c0 or CFrame.new()
	w.C1 = c1 or CFrame.new()
	w.MaxVelocity = tonumber(vel) or .05
	w.DesiredAngle = tonumber(des) or 0
	return w
end

function lerp(a,b,c)
    return a+(b-a)*c
end

function clerp(c1,c2,al)
	local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
	local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
	for i,v in pairs(com1) do
		com1[i] = lerp(v,com2[i],al)
	end
	return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end

function ccomplerp(c1,c2,al)
	local com1 = {c1:components()}
	local com2 = {c2:components()}
	for i,v in pairs(com1) do
		com1[i] = lerp(v,com2[i],al)
	end
	return CFrame.new(unpack(com1))
end

function tickwave(time,length,offset)
	return (math.abs((tick()+(offset or 0))%time-time/2)*2-time/2)/time/2*length
end

function invcol(c)
	c = c.Color
	return BrickColor.new(Color3.new(1-c.b,1-c.g,1-c.r))
end

local oc = oc or function(...) return ... end
local plr = game.Players.LocalPlayer
local char = plr.Character
local tor = char.Torso
local hum = char.Humanoid

hum.PlatformStand = false

pcall(function()
	char.Wings:Destroy()
end)
pcall(function()
	char.Angel:Destroy() -- hat
end)

local mod = Instance.new("Model",char)
mod.Name = "Wings"

local special = {
	--rigletto = {"Really black","Institutional white",0,0,false,Color3.new(1,1,.95),Color3.new(1,1,.6)},
	--rigletto = {"New Yeller",nil,0.4,0.7,true,Color3.new(1,1,.95),Color3.new(1,1,.6)},
	--rigletto = {"Cyan","Toothpaste",0,0,false,Color3.new(1,0,0),Color3.new(0,0,0)},
	--rigletto = {"Royal purple",nil,.4,.4,true},
	--rigletto = {"Black",nil,0,0,false},

	--rigletto = {"White",nil,0,0,false},
	--rigletto = {"Black","Bright red",.5,0,false,Color3.new(1,0,0),Color3.new(0,0,0)},
	--rigletto = {"Cyan","Toothpaste",0,0,false,Color3.new(1,0,0),Color3.new(0,0,0)},
	rigletto = {"Reddish brown",1030,0,0,false},
	--rigletto = {"Really black","Really black",.2,0,true,Color3.new(0,0,0),Color3.new(0,0,0)},
	--rigletto = {"Brown","Nougat",0,0,false,Color3.new(1,0,0),Color3.new(0,0,0)},
	--rigletto = {"Bright red","Really black",0.5,0,false,Color3.new(1,0,0),Color3.new(0,0,0)},
	--rigletto = {"Bright red","Bright orange",0,0,true,Color3.new(1,150/225,0)},
	--rigletto = {"Dark grey","Dark grey",0,0.6,false,Color3.new(1,150/225,0)},
	--rigletto = {"Light stone grey","White",0.5,0,false,Color3.new(1,150/225,0)},
}

local topcolor = BrickColor.new("White")--invcol(char.Torso.BrickColor)
local feacolor = BrickColor.new("White")--char.Torso.BrickColor
local part = Instance.new("Part")
part.FormFactor = "Custom"
part.Size = Vector3.new(.2,.2,.2)
part.TopSurface,part.BottomSurface = 0,0
part.CanCollide = false
part.BrickColor = topcolor
--part.Transparency = .7
--part.Reflectance = .7
local ef = Instance.new("Fire",part2)
ef.Size = .15
ef.Color = Color3.new(0,0,1)
ef.SecondaryColor = Color3.new()
part:BreakJoints()

local a = special[plr.Name:lower()]
if a then
	part.BrickColor,part.Transparency,part.Reflectance,ef.Parent,ef.Color,ef.SecondaryColor = BrickColor.new(a[1]),a[3],a[4],a[5] and part or nil,a[6] or ef.Color,a[7] or ef.SecondaryColor
end
function newpart()
	local clone = part:Clone()
	clone.Parent = mod
	clone:BreakJoints()
	return clone
end

local feath = newpart()
feath.BrickColor = a and (a[2] and BrickColor.new(a[2]) or feath.BrickColor) or feacolor
feath.Transparency = 0
Instance.new("SpecialMesh",feath).MeshType = "Sphere"

function newfeather()
	local clone = feath:Clone()
	clone.Parent = mod
	clone:BreakJoints()
	return clone
end



---------- RIGHT WING

local r1 = newpart()
r1.Size = Vector3.new(.3,1.5,.3)*1.2
local rm1 = motor(tor,r1,CFrame.new(.35,.6,.4) * CFrame.Angles(0,0,math.rad(-60)) * CFrame.Angles(math.rad(30),math.rad(-25),0),CFrame.new(0,-.8,0),.1)

local r2 = newpart()
r2.Size = Vector3.new(.4,1.8,.4)*1.2
local rm2 = motor(r1,r2,CFrame.new(0,.75,0) * CFrame.Angles(0,0,math.rad(50)) * CFrame.Angles(math.rad(-30),math.rad(15),0),CFrame.new(0,-.9,0),.1)

local r3 = newpart()
r3.Size = Vector3.new(.3,2.2,.3)*1.2
local rm3 = motor(r2,r3,CFrame.new(.1,.9,0) * CFrame.Angles(0,0,math.rad(-140)) * CFrame.Angles(math.rad(-3),0,0),CFrame.new(0,-1.1,0),.1)

local r4 = newpart()
r4.Size = Vector3.new(.25,1.2,.25)*1.2
local rm4 = motor(r3,r4,CFrame.new(0,1.1,0) * CFrame.Angles(0,0,math.rad(-10)) * CFrame.Angles(math.rad(-3),0,0),CFrame.new(0,-.6,0),.1)

local feather = newfeather()
feather.Mesh.Scale = Vector3.new(1,1,1)
feather.Size = Vector3.new(.4,3,.3)
weld(r4,feather,CFrame.new(-.1,-.3,0),CFrame.new(0,-1.5,0))

feather = newfeather()
feather.Mesh.Scale = Vector3.new(1,1,1)
feather.Size = Vector3.new(.4,2.3,.3)
weld(r4,feather,CFrame.new(.1,-.1,0) * CFrame.Angles(0,math.random()*.1,0),CFrame.new(0,-1.1,0))

feather = newfeather()
feather.Mesh.Scale = Vector3.new(1,1,1)
feather.Size = Vector3.new(.35,2.2,.25)
weld(r4,feather,CFrame.new(.1,-.3,0) * CFrame.Angles(0,math.random()*.1,math.rad(-10)),CFrame.new(0,-1.1,0))

local rf3 = {}
for i=0,7 do
	feather = newfeather()
	feather.Mesh.Scale = Vector3.new(1,1,1)
	feather.Size = Vector3.new(.45,2.2,.35)
	table.insert(rf3,motor(r3,feather,CFrame.new(.05,1-i*.285,0) * CFrame.Angles(0,math.random()*.1,math.rad(-25-i*2)),CFrame.new(0,-feather.Size.Y/2,0)))
end

local rf2 = {}
for i=0,6 do
	feather = newfeather()
	feather.Mesh.Scale = Vector3.new(1,1,1)
	feather.Size = Vector3.new(.45,2.2-i*.08,.3)
	table.insert(rf2,motor(r2,feather,CFrame.new(.05,.75-i*.26,0) * CFrame.Angles(0,math.random()*.1,math.rad(-75-i*4)),CFrame.new(0,-feather.Size.Y/2,0)))
end

local rf1 = {}
for i=0,6 do
	feather = newfeather()
	feather.Mesh.Scale = Vector3.new(1,1,1)
	feather.Size = Vector3.new(.37,1.65-i*.06,.25)
	table.insert(rf1,motor(r1,feather,CFrame.new(.05,.63-i*.21,0) * CFrame.Angles(0,math.random()*.05,math.rad(-75)),CFrame.new(0,-feather.Size.Y/2,0)))
end

---------- LEFT WING

local l1 = newpart()
l1.Size = Vector3.new(.3,1.5,.3)*1.2
local lm1 = motor(tor,l1,CFrame.new(-.35,.6,.4) * CFrame.Angles(0,0,math.rad(60)) * CFrame.Angles(math.rad(30),math.rad(25),0) * CFrame.Angles(0,-math.pi,0),CFrame.new(0,-.8,0) ,.1)

local l2 = newpart()
l2.Size = Vector3.new(.4,1.8,.4)*1.2
local lm2 = motor(l1,l2,CFrame.new(0,.75,0) * CFrame.Angles(0,0,math.rad(50)) * CFrame.Angles(math.rad(30),math.rad(-15),0),CFrame.new(0,-.9,0),.1)

local l3 = newpart()
l3.Size = Vector3.new(.3,2.2,.3)*1.2
local lm3 = motor(l2,l3,CFrame.new(.1,.9,0) * CFrame.Angles(0,0,math.rad(-140)) * CFrame.Angles(math.rad(3),0,0),CFrame.new(0,-1.1,0),.1)

local l4 = newpart()
l4.Size = Vector3.new(.25,1.2,.25)*1.2
local lm4 = motor(l3,l4,CFrame.new(0,1.1,0) * CFrame.Angles(0,0,math.rad(-10)) * CFrame.Angles(math.rad(3),0,0),CFrame.new(0,-.6,0),.1)

local feather = newfeather()
feather.Mesh.Scale = Vector3.new(1,1,1)
feather.Size = Vector3.new(.4,3,.3)
weld(l4,feather,CFrame.new(-.1,-.3,0),CFrame.new(0,-1.5,0))

feather = newfeather()
feather.Mesh.Scale = Vector3.new(1,1,1)
feather.Size = Vector3.new(.4,2.3,.3)
weld(l4,feather,CFrame.new(.1,-.1,0) * CFrame.Angles(0,math.random()*.1,0),CFrame.new(0,-1.1,0))

feather = newfeather()
feather.Mesh.Scale = Vector3.new(1,1,1)
feather.Size = Vector3.new(.35,2.2,.25)
weld(l4,feather,CFrame.new(.1,-.3,0) * CFrame.Angles(0,math.random()*.1,math.rad(-10)),CFrame.new(0,-1.1,0))

local lf3 = {}
for i=0,7 do
	feather = newfeather()
	feather.Mesh.Scale = Vector3.new(1,1,1)
	feather.Size = Vector3.new(.45,2.2,.35)
	table.insert(lf3,motor(l3,feather,CFrame.new(.05,1-i*.285,0) * CFrame.Angles(0,math.random()*.1,math.rad(-25-i*2)),CFrame.new(0,-feather.Size.Y/2,0)))
end

local lf2 = {}
for i=0,6 do
	feather = newfeather()
	feather.Mesh.Scale = Vector3.new(1,1,1)
	feather.Size = Vector3.new(.45,2.2-i*.08,.3)
	table.insert(lf2,motor(l2,feather,CFrame.new(.05,.75-i*.26,0) * CFrame.Angles(0,math.random()*.1,math.rad(-75-i*4)),CFrame.new(0,-feather.Size.Y/2,0)))
end

local lf1 = {}
for i=0,6 do
	feather = newfeather()
	feather.Mesh.Scale = Vector3.new(1,1,1)
	feather.Size = Vector3.new(.37,1.65-i*.06,.25)
	table.insert(lf1,motor(l1,feather,CFrame.new(.05,.63-i*.21,0) * CFrame.Angles(0,math.random()*.05,math.rad(-75)),CFrame.new(0,-feather.Size.Y/2,0)))
end

local rwing = {rm1,rm2,rm3,rm4}
local lwing = {lm1,lm2,lm3,lm4}

local oc0 = {}
for i,v in pairs(rwing) do
	oc0[v] = v.C0
end
for i,v in pairs(lwing) do
	oc0[v] = v.C0
end

function gotResized()
	if lastsize then
		if tor.Size == lastsize then return end -- This shouldn't happen?
		local scaleVec = tor.Size/lastsize
		for i,v in pairs(oc0) do
			oc0[i] = v-v.p+scaleVec*v.p
		end
		lastsize = tor.Size
	end
	lastsize = tor.Size
end

tor.Changed:connect(function(p)
	if p == "Size" then
		gotResized()
	end
end)

gotResized()

local idle = {0,0.5,-.2,0; .05,.05,.1,.05; -.6,-1.5,.1,0;}--0,.3,0,0

local outlow = {-.7,-.2,1.8,0; .3,.05,.1,.05; .2,0,0,0}
local outhigh = {.5,-.2,1.8,0; .3,.05,.1,.05; .2,0,0,0}

local veryhigh = {.9,-.3,1.9,0; .3,.05,.1,.05; .2,0,0,0}

local flap1 = {-.3,.3,1.1,-.2; .3,.05,.1,.05; .2,-.6,0,0}

local divebomb = {0,.2,.4,-.7; .3,.05,.1,.05; 0,-.5,-.6,0}


function setwings(tab,time)
	time = time or 10

	for i=1,4 do
		rwing[i].DesiredAngle = tab[i]
		lwing[i].DesiredAngle = tab[i]
		rwing[i].MaxVelocity = math.abs(tab[i]-rwing[i].CurrentAngle)/time
		lwing[i].MaxVelocity = math.abs(tab[i]-lwing[i].CurrentAngle)/time
		local rcf = oc0[rwing[i]] * (tab[12+i] or CFrame.new())
		local lcf = oc0[lwing[i]] * (tab[12+i] or CFrame.new())
	end

	for i,v in pairs(rf1) do
		v.DesiredAngle = tab[9]
		v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time
	end
	for i,v in pairs(lf1) do
		v.DesiredAngle = tab[9]
		v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time
	end
	for i,v in pairs(rf2) do
		v.DesiredAngle = tab[10]
		v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time
	end
	for i,v in pairs(lf2) do
		v.DesiredAngle = tab[10]
		v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time
	end
	for i,v in pairs(rf3) do
		v.DesiredAngle = tab[11]
		v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time
	end
	for i,v in pairs(lf3) do
		v.DesiredAngle = tab[11]
		v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time
	end
end
setwings(outhigh,1)

flying = false
moving = false

for i,v in pairs(tor:GetChildren()) do
	if v.ClassName:lower():match("body") then
		v:Destroy()
	end
end

local ctor = tor:Clone()
ctor:ClearAllChildren()
ctor.Name = "cTorso"
ctor.Transparency = 1
ctor.CanCollide = false
ctor.FormFactor = "Custom"
ctor.Size = Vector3.new(.2,.2,.2)
ctor.Parent = mod
weld(tor,ctor)
local bg = Instance.new("BodyGyro",ctor)
bg.maxTorque = Vector3.new()
bg.P = 15000
bg.D = 1000

local bv = Instance.new("BodyVelocity",ctor)
bv.maxForce = Vector3.new()
bv.P = 15000

vel = Vector3.new()
cf = CFrame.new()
flspd = 0


keysdown = {}
keypressed = {}
ktime = {}
descendtimer = 0

jumptime = tick()
hum.Jumping:connect(function()
	jumptime = tick()
end)

cam = workspace.CurrentCamera

kd = plr:GetMouse().KeyDown:connect(oc(function(key) 
	keysdown[key] = true 
	keypressed[key] = true 
	if key == "2" then 
		descendtimer = tick() 
	elseif key == " " and not hum.Jump then 
		jumptime = tick()
	elseif (key == "a" or key == "d") and ktime[key] and tick()-ktime[key] < .3 and math.abs(reqrotx) < .1 then
		reqrotx = key == "a" and math.pi*2 or -math.pi*2
		print(reqrotx)
	end
	ktime[key] = tick() 
end))

ku = plr:GetMouse().KeyUp:connect(function(key) 
	keysdown[key] = false 
	if key == " " then 
		descendtimer = tick() 
	end 
end)

function mid(a,b,c)
	return math.max(a,math.min(b,c or -a))
end
function bn(a)
	return a and 1 or 0
end
function gm(tar)
	local m = 0
	for i,v in pairs(tar:GetChildren()) do
		if v:IsA("BasePart") then
			m = m + v:GetMass()
		end
			m = m + gm(v)
	end
	return m
end
reqrotx = 0
local con
con = game:GetService("RunService").Stepped:connect(oc(function()
	if not mod:IsDescendantOf(workspace) then
		pcall(function() kd:disconnect() end)
		pcall(function() ku:disconnect() end)
		bg:Destroy()
		bv:Destroy()
		con:disconnect()
		script:Destroy()
		return
	end

	local obvel = tor.CFrame:vectorToObjectSpace(tor.Velocity)
	local sspd, uspd,fspd = obvel.X,obvel.Y,obvel.Z
	if flying then
		local lfldir = fldir
		fldir = cam.CoordinateFrame:vectorToWorldSpace(Vector3.new(bn(keysdown.d)-bn(keysdown.a),0,bn(keysdown.s)-bn(keysdown.w))).unit
		local lmoving = moving
		moving = fldir.magnitude > .1
		if lmoving and not moving then
			idledir = lfldir*Vector3.new(1,0,1)
			descendtimer = tick()
		end
		local dbomb = fldir.Y < -.6 or (moving and keysdown["0"])
		if moving and keysdown["0"] and lmoving then
			fldir = (Vector3.new(lfldir.X,math.min(fldir.Y,lfldir.Y+.01)-.1,lfldir.Z)+(fldir*Vector3.new(1,0,1))*.05).unit
		end
		local down = tor.CFrame:vectorToWorldSpace(Vector3.new(0,-1,0))
		local descending = (not moving and keysdown["2"] and not keysdown[" "])
		cf = ccomplerp(cf,CFrame.new(tor.Position,tor.Position+(not moving and idledir or fldir)),keysdown["0"] and .02 or .07)
		local gdown = not dbomb and cf.lookVector.Y < -.2 and tor.Velocity.unit.Y < .05
		hum.PlatformStand = true
		bg.maxTorque = Vector3.new(1,1,1)*9e5
		local rotvel = CFrame.new(Vector3.new(),tor.Velocity):toObjectSpace(CFrame.new(Vector3.new(),fldir)).lookVector
		bg.cframe = cf * CFrame.Angles(not moving and -.1 or -math.pi/2+.2,moving and mid(-2.5,rotvel.X/1.5) + reqrotx or 0,0)
		reqrotx = reqrotx - reqrotx/10
		bv.maxForce = Vector3.new(1,1,1)*9e4*.5
		local anioff =(bn(keysdown[" "])-bn(keysdown["2"]))/2
		local ani = tickwave(1.5-anioff,1)
		bv.velocity = bv.velocity:Lerp(Vector3.new(0,bn(not moving)*-ani*15+(descending and math.min(20,tick()-descendtimer)*-8 or bn(keysdown[" "])-bn(keysdown["2"]))*15,0)+vel,.6) 
		vel = moving and cf.lookVector*flspd or Vector3.new()
		flspd = math.min(140,lerp(flspd,moving and (fldir.Y<0 and flspd-fldir.Y*2 or math.max(60,flspd-fldir.Y)) or 60,.4))
		setwings(moving and (gdown and outlow or dbomb and divebomb) or (descending and veryhigh or flap1),15)
		for i=1,4 do
			--CFrame.Angles(-.5+bn(i==3)*2.4+bn(i==4)*.5,.1+bn(i==2)*.5-bn(i==3)*1.1,bn(i==3)*.1)
			rwing[i].C0 = clerp(rwing[i].C0,oc0[rwing[i]] * (gdown and CFrame.new() or dbomb and CFrame.Angles(-.5+bn(i==3)*.4+bn(i==4)*.5,.1+bn(i==2)*.5-bn(i==3)*1.1,bn(i==3)*.1) or descending and CFrame.Angles(.3,0,0) or CFrame.Angles((i*.1+1.5)*ani,ani*-.5,1*ani)),descending and .8 or .2)
			lwing[i].C0 = clerp(lwing[i].C0,oc0[lwing[i]] * (gdown and CFrame.new() or dbomb and CFrame.Angles(-(-.5+bn(i==3)*.4+bn(i==4)*.5),-(.1+bn(i==2)*.5-bn(i==3)*1.1),bn(i==3)*.1) or descending and CFrame.Angles(-.3,0,0) or CFrame.Angles(-(i*.1+1.5)*ani,ani*.5,1*ani)),descending and .8 or .2)
		end
		local hit,ray = workspace:FindPartOnRayWithIgnoreList(Ray.new(tor.Position,Vector3.new(0,-3.5+math.min(0,bv.velocity.y)/30,0)),{char})
		if hit and down.Y < -.85 and tick()-flystart > 1 then
			flying = false
			hum.PlatformStand = false
			tor.Velocity = Vector3.new()
		end
	else
		bg.maxTorque = Vector3.new()
		bv.maxForce = Vector3.new()
		local ani = tickwave(walking and .8 or 4.5,1)
		setwings(idle,10)
		local x,y,z = fspd/160,uspd/700,sspd/900
		for i=1,4 do
			rwing[i].C0 = clerp(rwing[i].C0,oc0[rwing[i]] * CFrame.Angles(ani*.1 + -mid(-.1,x),0 + -mid(-.1,y) + bn(i==2)*.6,ani*.02 + -mid(-.1,z)),.2)
			lwing[i].C0 = clerp(lwing[i].C0,oc0[lwing[i]] * CFrame.Angles(ani*-.05 + mid(-.1,x),0 + mid(-.1,y) + -bn(i==2)*.6,ani*.02 + mid(-.1,z)),.2)
		end

		if keypressed[" "] and not flying and (tick()-jumptime > .05 and (tick()-jumptime < 3 or hum.Jump)) then
			vel = Vector3.new(0,50,0)
			bv.velocity = vel
			idledir = cam.CoordinateFrame.lookVector*Vector3.new(1,0,1)
			cf = tor.CFrame * CFrame.Angles(-.01,0,0)
			tor.CFrame = cf
			bg.cframe = cf
			flystart = tick()
			flying = true
		end
	end
	keypressed = {}
end))

-- FUCK U LOL
end)
credits.Name = "credits"
credits.Parent = Main2
credits.Active = true
credits.BackgroundColor3 = Color3.new(0, 100, 255)
credits.BorderSizePixel = 0
credits.BorderColor3 = Color3.new(0, 0, 0)
credits.ZIndex = 1
credits.Size = UDim2.new(0, 200, 0, 100)
credits.Position = UDim2.new(0, 0, 0, 500)
credits.TextColor3 = Color3.new(255, 255, 255)
credits.Text = "Leaked By Team N3x"
credits.FontSize = "Size14"