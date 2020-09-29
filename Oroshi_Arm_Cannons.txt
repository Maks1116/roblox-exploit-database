-- Extreme Rare Script! --
-- Its Parkour Time script --
-- Owned by Immunidon, not the script --

local player = game:service("Players").LocalPlayer
local mouse = player:GetMouse()
local cam = workspace.CurrentCamera
local char = player.Character
local Torsoz = char:findFirstChild("Torso")
local RA = char:findFirstChild("Right Arm")
local LA = char:findFirstChild("Left Arm")
local RL = char:findFirstChild("Right Leg")
local LL = char:findFirstChild("Left Leg")
local H = char:findFirstChild("Head")
local Hu = char:findFirstChild("Humanoid")
local RS = Torsoz:findFirstChild("Right Shoulder")
local LS = Torsoz:findFirstChild("Left Shoulder")
local RH = Torsoz:findFirstChild("Right Hip")
local LH = Torsoz:findFirstChild("Left Hip")
local N = Torsoz:findFirstChild("Neck")
local NV = Vector3.new(0,0,0)
local FOV = 70
local Shift, Space, Sitting = false,false,false
local GravPoint = 0
local Diving = false
local DivingCooldown = 0
local DivingDir = NV
local DivingCF = CFrame.new(0,0,0)
local DivingBG, DivingBV
local HWallRunning = false
local HWRGravDrop = false
local HWRLastPart
local HWRCooldown = 0
local HWRDir
local VWallRunning = false
local VWRLastPart
local VWRCooldown = 0
local VWRLeft,VWRRight = false,false
local Sliding = false
local SlideCooldown = 0
local Standing = true
local Action = "Standing"
local animplus = true
local animspeed = 0
local animangle = 0.01
local Joint1, Joint2, Joint3, Joint4, Joint5
 
for i, v in pairs(char:children()) do
if (v.className == "LocalScript" and v.Name == "ParkourSkrip") or v.className == "NumberValue" or v.className == "BoolValue" or v.className == "Model" or v.Name == "Animate" then
v:remove()
end
end
 
local loadids = {112474909, 112474911, 112474909}
 
local stamina = 999999
local maxstamina = 999999
local defsprint = 28
local sprint = defsprint  
 
local pause = Instance.new("BoolValue", char)
pause.Name = "Pause"
pause.Value = false
local flow = Instance.new("NumberValue", char)
flow.Name = "Flow"
flow.Value = 0
local flowcooldown = 0
 
local m = Instance.new("Model", char)
m.Name = "FlowChainPartz"
 
local P = Instance.new("Part")
P.Name = "TrailPart"
P.formFactor = "Custom"
P.Size = Vector3.new(0.2,0.2,0.2)
P.Locked = true
P.Anchored = true
P.CanCollide = false
P.TopSurface = 0
P.BottomSurface = 0
 
script.Name = "ParkourSkrip"
 
local hue = 0
 
function HSV(H,S,V)
H = H % 360
local C = V * S
local H2 = H/60
local X = C * (1 - math.abs((H2 %2) -1))
local color = Color3.new(0,0,0)
if H2 <= 0 then
color = Color3.new(C,0,0)
elseif 0 <= H2 and H2 <= 1 then
color = Color3.new(C,X,0)
elseif 1 <= H2 and H2 <= 2 then
color = Color3.new(X,C,0)
elseif 2 <= H2 and H2 <= 3 then
color = Color3.new(0,C,X)
elseif 3 <= H2 and H2 <= 4 then
color = Color3.new(0,X,C)
elseif 4 <= H2 and H2 <= 5 then
color = Color3.new(X,0,C)
elseif 5 <= H2 and H2 <= 6 then
color = Color3.new(C,0,X)
end
local m = V - C
return Color3.new(color.r + m, color.g + m, color.b + m)
end
 
function GetWeld(weld)
if weld:findFirstChild("XAngle") == nil then
local a = Instance.new("NumberValue", weld)
a.Name = "XAngle"
end
if weld:findFirstChild("YAngle") == nil then
local a = Instance.new("NumberValue", weld)
a.Name = "YAngle"
end
if weld:findFirstChild("ZAngle") == nil then
local a = Instance.new("NumberValue", weld)
a.Name = "ZAngle"
end
return weld.C0.p, Vector3.new(weld.XAngle.Value, weld.YAngle.Value, weld.ZAngle.Value)
end
 
function SetWeld(weld, i, loops, origpos,origangle, nextpos,nextangle)
if weld:findFirstChild("XAngle") == nil then
local a = Instance.new("NumberValue", weld)
a.Name = "XAngle"
end
if weld:findFirstChild("YAngle") == nil then
local a = Instance.new("NumberValue", weld)
a.Name = "YAngle"
end
if weld:findFirstChild("ZAngle") == nil then
local a = Instance.new("NumberValue", weld)
a.Name = "ZAngle"
end
 
local tox,toy,toz = 0,0,0
if origangle.x > nextangle.x then
tox = -math.abs(origangle.x - nextangle.x) /loops*i
else
tox = math.abs(origangle.x - nextangle.x) /loops*i
end
if origangle.y > nextangle.y then
toy = -math.abs(origangle.y - nextangle.y) /loops*i
else
toy = math.abs(origangle.y - nextangle.y) /loops*i
end
if origangle.z > nextangle.z then
toz = -math.abs(origangle.z - nextangle.z) /loops*i
else
toz = math.abs(origangle.z - nextangle.z) /loops*i
end
 
local tox2,toy2,toz2 = 0,0,0
if origpos.x > nextpos.x then
tox2 = -math.abs(origpos.x - nextpos.x) /loops*i
else
tox2 = math.abs(origpos.x - nextpos.x) /loops*i
end
if origpos.y > nextpos.y then
toy2 = -math.abs(origpos.y - nextpos.y) /loops*i
else
toy2 = math.abs(origpos.y - nextpos.y) /loops*i
end
if origpos.z > nextpos.z then
toz2 = -math.abs(origpos.z - nextpos.z) /loops*i
else
toz2 = math.abs(origpos.z - nextpos.z) /loops*i
end
 
weld.XAngle.Value = origangle.x + tox
weld.YAngle.Value = origangle.y + toy
weld.ZAngle.Value = origangle.z + toz
weld.C0 = CFrame.new(origpos.x + tox2,origpos.y + toy2,origpos.z + toz2) * CFrame.Angles(origangle.x + tox,origangle.y + toy,origangle.z + toz)
end
 
function LoadTextures()
local pls = game:service("ContentProvider")
for i, v in pairs(loadids) do
pls:Preload("http://www.roblox.com/asset/?id="..v)
wait(0.04)
end
end
LoadTextures()
 
function CreateGui()
for i, v in pairs(player.PlayerGui:children()) do
if v.className == "ScreenGui" and v.Name == "staminaGui" then
v:remove()
end
end
local g = Instance.new("ScreenGui", player.PlayerGui)
g.Name = "staminaGui"
 
local c = Instance.new("Frame", g)
c.Visible = false
c.Size = UDim2.new(0,86,0,320)
c.BackgroundTransparency = 1
c.Position = UDim2.new(1,-96,0.5,-160)
c.Name = "Container"
 
local t = Instance.new("TextLabel", c)
t.Size = UDim2.new(0,0,-0.1,0)
t.Position = UDim2.new(0.3,0,0.5,0)
t.TextXAlignment = "Right"
t.Font = "ArialBold"
t.TextTransparency = 0.1
t.TextColor3 = Color3.new(0,0.6,0.8)
t.TextStrokeColor3 = Color3.new(0,0.2,0.8)
t.TextStrokeTransparency = 0.3
t.FontSize = 6
t.BackgroundTransparency = 1
local t2 = t:Clone()
t2.Parent = c
t2.Size = UDim2.new(0,0,0.1,0)
local l = t:Clone()
l.Parent = c
l.Size = UDim2.new(0,0,0,0)
l.Text = "-----"
 
local f1 = Instance.new("Frame", c)
f1.Name = "Backing"
f1.ClipsDescendants = true
f1.Size = UDim2.new(1,0,0,0)
f1.BackgroundColor3 = Color3.new(0.8,0,0)
f1.BackgroundTransparency = 1
local f1img = Instance.new("ImageLabel", f1)
f1img.BackgroundTransparency = 1
f1img.Image = "http://www.roblox.com/asset/?id=112474909"
f1img.Size = UDim2.new(1,0,0,c.Size.Y.Offset)
 
local f2 = Instance.new("Frame", c)
f2.Name = "Overlay"
f2.ClipsDescendants = true
f2.Size = UDim2.new(1,0,1,0)
f2.BackgroundColor3 = Color3.new(0,0,0.8)
f2.BackgroundTransparency = 1
local f2img = Instance.new("ImageLabel", f2)
f2img.BackgroundTransparency = 1
f2img.Image = "http://www.roblox.com/asset/?id=112474911"
f2img.Size = UDim2.new(1,0,0,c.Size.Y.Offset)
 
function Calculate()
local ysize = c.Size.Y.Offset
local per = (stamina/maxstamina) * c.Size.Y.Offset
local rem = (-(stamina/maxstamina-1)) * c.Size.Y.Offset
f1.Size = UDim2.new(1,0,0,rem)
f2.Size = UDim2.new(1,0,0,per)
f2.Position = UDim2.new(0,0,0,rem)
f2img.Position = UDim2.new(0,0,0,-rem)
t.Text = math.floor(stamina)
t2.Text = maxstamina
end
Calculate()
 
wait(0.01)
c.Visible = true
end
CreateGui()
 
player.CharacterAdded:connect(function()
char = player.Character
Torsoz = char:findFirstChild("Torso")
RA = char:findFirstChild("Right Arm")
LA = char:findFirstChild("Left Arm")
RL = char:findFirstChild("Right Leg")
LL = char:findFirstChild("Left Leg")
H = char:findFirstChild("Head")
Hu = char:findFirstChild("Humanoid")
RS = Torsoz:findFirstChild("Right Shoulder")
LS = Torsoz:findFirstChild("Left Shoulder")
RH = Torsoz:findFirstChild("Right Hip")
LH = Torsoz:findFirstChild("Left Hip")
N = Torsoz:findFirstChild("Neck")
stamina = maxstamina
CreateGui()
end)
 
function RAY(pos, dir, startpos, endpos, distleft, collidedlist)
collidedlist = collidedlist or {char}
startpos = startpos or pos
distleft = distleft or dir.unit * dir.magnitude
endpos = endpos or pos + distleft
local ray = Ray.new(pos, distleft)
local hitz,enz = workspace:FindPartOnRayWithIgnoreList(ray, collidedlist)
--[[
local p = P:Clone()
p.Parent = char
p.Size = Vector3.new(0.4,0.4,0.4)
p.BrickColor = BrickColor.new("Lime green")
p.CanCollide = false
p.CFrame = CFrame.new(enz)
p.Transparency = 0.3
]]
if hitz ~= nil then
if hitz.CanCollide == false then
table.insert(collidedlist, hitz)
local newpos = enz
local newdistleft = distleft - (dir.unit * (pos - newpos).magnitude)
if newdistleft ~= NV then
return RAY(newpos-(dir*0.01), dir, startpos, endpos, newdistleft+(dir*0.01), collidedlist)
end
end
end
 
return hitz, enz, ray
end
 
function Sit()
Standing = false
local hitz,enz = RAY(Torsoz.Position, Vector3.new(0,-4.1,0))
local tordir = Vector3.new(Torsoz.CFrame.lookVector.x,0,Torsoz.CFrame.lookVector.z)
if (hitz ~= nil and hitz.CanCollide == true) then
local cf = CFrame.new(enz+Vector3.new(0,1.28,0), enz+Vector3.new(0,1.28,0)+tordir) * CFrame.Angles(math.pi/6,0,0)
local hitz2,enz2 = RAY(enz+Vector3.new(0,2.25,0), tordir*-2.2)
Hu.PlatformStand = true
Torsoz.CFrame = cf
local bp = Instance.new("BodyPosition", Torsoz)
bp.Name = "StaminaBodyObject"
bp.maxForce = Vector3.new(1/0,1/0,1/0)
bp.D = 100
bp.position = cf.p
local bg = Instance.new("BodyGyro", Torsoz)
bg.Name = "StaminaBodyObject"
bg.maxTorque = Vector3.new(1/0,1/0,1/0)
bg.cframe = cf
bg.D = 100
SetWeld(Joint1,1,1, NV,NV, Vector3.new(0.34,-1,0.2), Vector3.new((math.pi/2)-(math.pi/6),0,math.pi/8))
SetWeld(Joint2,1,1, NV,NV, Vector3.new(-0.34,-1,0.2), Vector3.new((math.pi/2)-(math.pi/6),0,-math.pi/8))
 
if hitz2 ~= nil and hitz2.CanCollide == true then
Joint3.C0 = CFrame.new(0.9,0.4,-0.45) * CFrame.Angles(0,math.pi/2.13,0) * CFrame.Angles(math.pi/2.3,0,0)
Joint4.C0 = CFrame.new(-0.9,0.4,-0.4) * CFrame.Angles(0,-math.pi/2.05,0) * CFrame.Angles(math.pi/2.3,0,0)
Joint5.C0 = CFrame.new(0,1,0) * CFrame.Angles(-math.pi/8.8,0,0)
else
SetWeld(Joint3,1,1, NV,NV, Vector3.new(1.4,0.4,0.1), Vector3.new(-(math.pi/6)-(math.pi/10),0,math.pi/9))
SetWeld(Joint4,1,1, NV,NV, Vector3.new(-1.4,0.4,0.1), Vector3.new(-(math.pi/6)-(math.pi/10),0,-math.pi/9))
SetWeld(Joint5,1,1, NV,NV, Vector3.new(0,1,0), Vector3.new(-math.pi/12,0,0))
end
 
Sitting = true
Action = "Sitting"
end
end
 
 
function Stand()
Hu.PlatformStand = false
if Sitting == true then
local tordir = Torsoz.Position + (Torsoz.CFrame.lookVector*10000)
local cf = CFrame.new(Torsoz.Position + Vector3.new(0,1.8,0), Vector3.new(tordir.x,Torsoz.Position.y,tordir.z))
Torsoz.CFrame = cf
end
for i, v in pairs(Torsoz:children()) do
if v.Name == "StaminaBodyObject" then
v:remove()
end
end
RH.Part0 = nil
LH.Part0 = nil
RS.Part0 = nil
LS.Part0 = nil
Joint1.Part0 = Torsoz
Joint1.Part1 = RL
Joint1.C0 = CFrame.new(0.5,-1,0)
Joint1.C1 = CFrame.new(0,1,0)
Joint2.Part0 = Torsoz
Joint2.Part1 = LL
Joint2.C0 = CFrame.new(-0.5,-1,0)
Joint2.C1 = CFrame.new(0,1,0)
Joint3.Part0 = Torsoz
Joint3.Part1 = RA
Joint3.C0 = CFrame.new(1.5,0.5,0)
Joint3.C1 = CFrame.new(0,0.5,0)
Joint4.Part0 = Torsoz
Joint4.Part1 = LA
Joint4.C0 = CFrame.new(-1.5,0.5,0)
Joint4.C1 = CFrame.new(0,0.5,0)
Joint5.Part0 = Torsoz
Joint5.Part1 = H
Joint5.C0 = CFrame.new(0,1,0)
Joint5.C1 = CFrame.new(0,-0.5,0)
Sitting = false
Diving = false
Standing = true
Action = "Standing"
end
 
--------------------------------------- Dive ----------------------------------
 
function Dive()
stamina = stamina - 10
flow.Value = flow.Value + 10
if flow.Value > 100 then
flow.Value = 100
end
Standing = false
local dir = Vector3.new(Torsoz.CFrame.lookVector.x,0,Torsoz.CFrame.lookVector.z)
GravPoint = 18
DivingDir = dir
local cf = CFrame.new(Torsoz.Position, dir+Vector3.new(0,Torsoz.Position.y,0))
DivingCF = cf
DivingDir = dir
Hu.PlatformStand = true
local bv = Instance.new("BodyVelocity", Torsoz)
bv.Name = "StaminaBodyObject"
bv.maxForce = Vector3.new(1/0,1/0,1/0)
bv.velocity = Vector3.new(DivingDir.x*24,GravPoint,DivingDir.z*24)
DivingBV = bv
local bg = Instance.new("BodyGyro", Torsoz)
bg.Name = "StaminaBodyObject"
bg.maxTorque = Vector3.new(1/0,1/0,1/0)
bg.cframe = CFrame.new(Torsoz.Position, Torsoz.Position+bv.velocity) * CFrame.Angles(-math.pi/2,0,0)
bg.D = 100
DivingBG = bg
 
local joint = Joint3
joint.C1 = CFrame.new(0,0.5,0)
local joint2 = Joint4
joint2.C1 = CFrame.new(0,0.5,0)
local joint3 = Joint1
joint3.C1 = CFrame.new(0,1,0)
local joint4 = Joint2
joint4.C1 = CFrame.new(0,1,0)
 
local joint5 = Joint5
 
Diving = true
Action = "Diving"
 
for i = 1, 8 do
SetWeld(joint,i,8, Vector3.new(1.5,0.5,0), NV, Vector3.new(1.45,0.5,0.1), Vector3.new(-0.2,-math.pi/9,math.pi/13))
SetWeld(joint2,i,8, Vector3.new(-1.5,0.5,0), NV, Vector3.new(-1.45,0.5,0.1), Vector3.new(-0.2,math.pi/9,-math.pi/13))
SetWeld(joint3,i,8, Vector3.new(0.5,-1,0), NV, Vector3.new(0.5,-1,0.03), Vector3.new(-0.2,-math.pi/10,math.pi/14))
SetWeld(joint4,i,8, Vector3.new(-0.5,-1,0), NV, Vector3.new(-0.5,-1,0.03), Vector3.new(-0.2,math.pi/10,-math.pi/14))
SetWeld(joint5,i,8, Vector3.new(0,1,0), NV, Vector3.new(0,1,0), Vector3.new(0.45,0,0))
wait(0.025)
end
 
local counter = 0
while Diving == true do
counter = counter + 1
bg.Parent = Torsoz
local hitz, enz = RAY(Torsoz.Position, bv.velocity.unit*4.6)
if hitz ~= nil and hitz.CanCollide == true then
local hitz2, enz2 = RAY(Torsoz.Position, Vector3.new(0,-4,0))
if hitz2 ~= nil then
Diving = "Rolling"
Action = "DiveRolling"
else
Torsoz.CFrame = Torsoz.CFrame * CFrame.new(0,-0.3,0)
Torsoz.Velocity = NV
flow.Value = 0
break
end
end
if counter > 190 then
break
end
wait(0.02)
end
 
bv.velocity = (dir*20) + Vector3.new(0,-0.5,0)
 
local bgcf = bg.cframe
local haslanded = false
local count = 0
 
while haslanded == false do
bg.cframe = bgcf * CFrame.Angles(-0.3*count,0,0)
local hitz, enz = RAY(Torsoz.Position, ((Torsoz.CFrame*CFrame.new(0,-1,0)).p - Torsoz.CFrame.p).unit*1.6)
if hitz ~= nil and hitz.CanCollide == true then
haslanded = true
end
local hitz2, enz2 = RAY(Torsoz.Position, Vector3.new(0,-3.8,0))
if hitz2 == nil then
Torsoz.Velocity = NV
break
elseif haslanded == true then
local bp = Instance.new("BodyPosition", Torsoz)
bp.Name = "StaminaJumpFix"
bp.maxForce = Vector3.new(0,1/0,0)
bp.P = 7000
bp.position = enz2 + Vector3.new(0,2.8,0)
game:service("Debris"):AddItem(bp, 0.3)
else
bv.velocity = (dir*20) + Vector3.new(0,-(Torsoz.Position - enz2).magnitude*3,0)
 
end
count = count + 1
if count <= 6 then
local i = count
local j1,j1a = GetWeld(joint)
local j2,j2a = GetWeld(joint2)
local j3,j3a = GetWeld(joint3)
local j4,j4a = GetWeld(joint4)
local j5,j5a = GetWeld(joint5)
SetWeld(joint,i,6, j1,j1a, Vector3.new(1.35,0.5,-0.2), Vector3.new(math.pi/2.6,0,-math.pi/5.8))
SetWeld(joint2,i,6, j2,j2a, Vector3.new(-1.35,0.5,-0.2), Vector3.new(math.pi/2.6,0,math.pi/5.8))
SetWeld(joint3,i,6, j3,j3a, Vector3.new(0.51,0.4,-0.6), Vector3.new(-0.1,0,0.05))
SetWeld(joint4,i,6, j4,j4a, Vector3.new(-0.51,0.4,-0.6), Vector3.new(-0.1,0,-0.05))
SetWeld(joint5,i,6, j5,j5a, Vector3.new(0,1,0), Vector3.new(-0.4,0,0))
elseif count >= 50 then
break
end
wait(0.02)
end
 
Torsoz.Velocity = NV
 
Stand()
DivingCooldown = 9
end
 
function FindSurface(part, position)
local obj = part.CFrame:pointToObjectSpace(position)
local siz = part.Size/2
for i,v in pairs(Enum.NormalId:GetEnumItems()) do
local vec = Vector3.FromNormalId(v)
local wvec = part.CFrame:vectorToWorldSpace(vec)
local vz = (obj)/(siz*vec)
if (math.abs(vz.X-1) < 0.01 or math.abs(vz.Y-1) < 0.01 or math.abs(vz.Z-1) < 0.01) then
return wvec,vec
end
end
if part.className == "WedgePart" then
return part.CFrame:vectorToWorldSpace(Vector3.new(0,0.707,-0.707)), Vector3.new(0,0.707,-0.707)
end
end
 
function HWallRun(part, pos, side)
if (part.className == "Part" and part.Shape == Enum.PartType.Block) or part.className ~= "Part" then
flow.Value = flow.Value + 9
Standing = false
HWallRunning = true
Action = "HWallRunning"
GravPoint = 10
HWRLastPart = part
local dir, dirc = FindSurface(part, pos)
towall = -dir
dir = (CFrame.new(NV, dir) * CFrame.Angles(0,side,0)).lookVector
 
local bv = Instance.new("BodyVelocity", Torsoz)
bv.Name = "StaminaBodyObject"
bv.maxForce = Vector3.new(1/0,1/0,1/0)
bv.P = 9000
bv.velocity = (dir*(sprint-0.5)) + Vector3.new(0,GravPoint,0)
local bg = Instance.new("BodyGyro", Torsoz)
bg.Name = "StaminaBodyObject"
bg.maxTorque = Vector3.new(1/0,1/0,1/0)
bg.cframe = CFrame.new(Torsoz.Position+(towall*-2), Torsoz.Position) * CFrame.Angles(0,-side,-side/4.2)
bg.D = 100
 
local sid = Instance.new("Snap")
 
local joint1 = Joint3
if side == -math.pi/2 then
SetWeld(joint1,1,1, NV,NV, Vector3.new(1.5,0.5,0), Vector3.new(math.pi/1.3,0.1,math.pi/2.5))
else
sid = joint1
SetWeld(joint1,1,1, NV,NV, Vector3.new(1.4,0.6,0), Vector3.new(-math.pi/12,0,math.pi/7))
end
local j1c0 = joint1.C0
 
local joint2 = Joint4
if side == math.pi/2 then
SetWeld(joint2,1,1, NV,NV, Vector3.new(-1.5,0.5,0), Vector3.new(math.pi/1.3,-0.1,-math.pi/2.5))
else
sid = joint2
SetWeld(joint2,1,1, NV,NV, Vector3.new(-1.4,0.6,0), Vector3.new(-math.pi/12,0,-math.pi/7))
end
local j2c0 = joint2.C0
 
local joint3 = Joint1
joint3.C1 = CFrame.new(0,1,0)
if side == -math.pi/2 then
SetWeld(joint3,1,1, NV,NV, Vector3.new(0.5,-0.38,-0.3), Vector3.new(0,math.pi/2,0.14))
else
SetWeld(joint3,1,1, NV,NV, Vector3.new(0.5,-0.8,-0.2), Vector3.new(0,math.pi/2,0.2))
end
 
local joint4 = Joint2
joint4.C1 = CFrame.new(0,1,0)
if side == -math.pi/2 then
SetWeld(joint4,1,1, NV,NV, Vector3.new(-0.5,-0.8,-0.2), Vector3.new(0,0,0.2))
else
SetWeld(joint4,1,1, NV,NV, Vector3.new(-0.5,-0.38,-0.3), Vector3.new(0,0,0.14))
end
 
local joint5 = Joint5
SetWeld(joint5,1,1,NV,NV,Vector3.new(0,0.9,0),Vector3.new(0,0,side/7))
 
Torsoz.CFrame = CFrame.new(pos+(towall*-2), pos) * CFrame.Angles(0,-side,-side/2.2)
bg.cframe = CFrame.new(pos+(towall*-2), pos) * CFrame.Angles(0,-side,-side/2.2)
 
local aniangle = 0
local aniplus = true
local aniangle2 = 0
local aniplus2 = true
 
local prevpart = part
HWRLastPart = part
while HWallRunning == true do
 
if aniangle > math.pi then
aniplus = false
elseif aniangle < -math.pi then
aniplus = true  
end
if aniplus == true then
aniangle = aniangle + 0.95
elseif aniplus == false then
aniangle = aniangle - 0.95
end
 
if aniangle2 > math.pi then
aniplus2 = false
elseif aniangle2 < -math.pi then
aniplus2 = true  
end
if aniplus2 == true then
aniangle2 = aniangle2 + 0.23
elseif aniplus2 == false then
aniangle2 = aniangle2 - 0.23
end
 
Hu.PlatformStand = true
local hitz, enz = RAY(Torsoz.Position, Vector3.new(0,-3,0))
local hitz2, enz2 = RAY(Torsoz.Position, towall*3.4)
 
--- if player ends wall run on ground
if hitz ~= nil and hitz.CanCollide == true then
bg.cframe = CFrame.new(enz2+(towall*-2), enz2) * CFrame.Angles(0,-side,0)
local offset = (bg.cframe.p.y+enz2.y) - bg.cframe.p.y
Torsoz.CFrame = CFrame.new(Vector3.new(bg.cframe.p.x,offset,bg.cframe.p.z), enz2) * CFrame.Angles(0,-side,0)
Torsoz.Velocity = NV
break
end
 
---- if new wall found --------
if hitz2 ~= nil and hitz2.CanCollide == true then
if hitz2 ~= prevpart then
local direct = CFrame.new(Torsoz.Position, Torsoz.Position+dir) * CFrame.Angles(0,side,0)
local hitz3, enz3 = RAY(Torsoz.Position, (direct * CFrame.Angles(0,-side/2.3,0)).lookVector*4)
if hitz3 ~= nil then
Torsoz.CFrame = CFrame.new(enz2+(towall*-2), enz2) * CFrame.Angles(0,-side*1.1,-side/2.2)
bg.cframe = CFrame.new(enz2+(towall*-2), enz2) * CFrame.Angles(0,-side*1.1,-side/2.2)
dir, dirc = FindSurface(hitz2, enz2)
towall = -dir
dir = (CFrame.new(NV, dir) * CFrame.Angles(0,side,0)).lookVector
prevpart = hitz2
HWRLastPart = hitz2
else
---- if player fails to find new wall to run on
Torsoz.CFrame = CFrame.new(Torsoz.Position, Torsoz.Position+dir)
bg.cframe = CFrame.new(Torsoz.Position, Torsoz.Position+dir)
Torsoz.Velocity = NV
HWRCooldown = 8
break
end
end
--- continue to wall run
Torsoz.CFrame = CFrame.new(enz2+(towall*-2), enz2) * CFrame.Angles(0,-side,-side/2.2)
bg.cframe = CFrame.new(enz2+(towall*-2), enz2) * CFrame.Angles(0,-side,-side/2.2)
else
---- if player ends wall run at end of wall
Torsoz.CFrame = CFrame.new(Torsoz.Position, Torsoz.Position+dir)
bg.cframe = CFrame.new(Torsoz.Position, Torsoz.Position+dir)
Torsoz.Velocity = NV
HWRCooldown = 8
break
end
 
local hitz3, enz3 = RAY(Torsoz.Position, Torsoz.CFrame.lookVector*2)
if hitz3 ~= nil and hitz3.CanCollide == true then
Torsoz.CFrame = CFrame.new(Torsoz.Position, Torsoz.Position+dir)
bg.cframe = CFrame.new(Torsoz.Position, Torsoz.Position+dir)
Torsoz.Velocity = NV
HWRCooldown = 8
break
end
 
bv.Parent = Torsoz
bv.velocity = (dir*(sprint-0.5)) + Vector3.new(0,GravPoint,0)
bg.cframe = bg.cframe * CFrame.Angles(aniangle/80,aniangle/80,0)
Torsoz.CFrame = Torsoz.CFrame * CFrame.Angles(aniangle/80,aniangle/80,0)
local j3,j3a = GetWeld(joint3)
local j4,j4a = GetWeld(joint4)
SetWeld(joint3,1,1, j3,j3a, j3,Vector3.new(-0.2+(aniangle/4),0,0))
SetWeld(joint4,1,1, j4,j4a, j4,Vector3.new(-0.2+(-aniangle/4),0,0))
if side == math.pi/2 then
local j1,j1a = GetWeld(joint1)
SetWeld(joint1,1,1, j1,j1a, j1, Vector3.new(0,0,0.8+(aniangle2/14)))
else
local j2,j2a = GetWeld(joint2)
SetWeld(joint2,1,1, j2,j2a, j2, Vector3.new(0,0,-0.8-(aniangle2/14)))
end
 
wait(0.025)
if GravPoint < -100 then
bg.cframe = CFrame.new(enz2+(towall*-2), enz2) * CFrame.Angles(0,-side,0)
local offset = math.abs((bg.cframe.p.y+enz2.y) - bg.cframe.p.y)
Torsoz.CFrame = CFrame.new(Vector3.new(bg.cframe.p.x,offset,bg.cframe.p.z), enz2) * CFrame.Angles(0,-side,0)
break
end
 
end
 
if HWallRunning == "Jumping" then
HWRCooldown = 6
joint1.C1 = CFrame.new(0,0.5,0)
 
joint2.C1 = CFrame.new(0,0.5,0)
if side == -math.pi/2 then
joint2.C0 = CFrame.new(-1.35,0.5,0) * CFrame.Angles(0,side/2.4,-math.pi/3)
else
joint2.C0 = CFrame.new(-1.35,0.5,0) * CFrame.Angles(0,side/2.4,-math.pi/4)
end
 
joint3.C1 = CFrame.new(0,1,0)
if side == -math.pi/2 then
joint3.C0 = CFrame.new(0.5,-0.8,0) * CFrame.Angles(0,math.pi+(side/2.4),-math.pi/4)
else
joint3.C0 = CFrame.new(0.5,-0.8,0) * CFrame.Angles(0,(side/2.4),math.pi/4)
end
joint4.MaxVelocity = 10
joint4.DesiredAngle = 0
joint4.C1 = CFrame.new(0,1,0)
if side == -math.pi/2 then
joint4.C0 = CFrame.new(-0.5,-0.8,0) * CFrame.Angles(0,math.pi+(side/2.4),math.pi/4)
else
joint4.C0 = CFrame.new(-0.5,-0.8,0) * CFrame.Angles(0,(side/2.4),-math.pi/4)
end
 
local joint5 = Joint5
joint5.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(0,side/2.4,0)
joint5.C0 = CFrame.new(0,1,0)
 
local j1,j1a = GetWeld(joint1)
local j2,j2a = GetWeld(joint2)
local j3,j3a = GetWeld(joint3)
local j4,j4a = GetWeld(joint4)
local j5,j5a = GetWeld(joint5)
 
GravPoint = 26
local collidecount = 0
local bgangle = side/2
local count = 1
local dir2 = (CFrame.new(NV, dir) * CFrame.Angles(0,-side/2.4,0)).lookVector
HWRDir = dir2
bv.velocity = (dir2*(sprint+5)) + Vector3.new(0,GravPoint,0)
while HWallRunning == "Jumping" do
local hitz, enz = RAY(Torsoz.Position, Vector3.new(0,-4,0))
local hitz2, enz2 = RAY(Torsoz.Position, dir2*1.4)
if hitz ~= nil and hitz.CanCollide == true then
local offset = math.abs(enz.y - Torsoz.CFrame.p.y)
Torsoz.CFrame = CFrame.new(enz+Vector3.new(0,2.9,0), enz+Vector3.new(0,2.9,0)+dir2)
Torsoz.Velocity = NV
break
end
 
if hitz2 ~= nil and hitz2.CanCollide == true then
collidecount = collidecount + 1
if collidecount == 4 then
Torsoz.CFrame = CFrame.new(Torsoz.Position, Torsoz.Position+dir2) * CFrame.new(0,0,0.4)
Torsoz.Velocity = Vector3.new(0,Torsoz.Velocity.y,0)
HWRCooldown = 5
VWRCooldown = 5
wait(0.02)
break
end
end
 
if side/2 > 0 then
if bgangle > 0.2 then
bgangle = bgangle - 0.055
end
else
if bgangle < -0.2 then
bgangle = bgangle + 0.055
end
end
 
if count <= 5 then
if side == -math.pi/2 then
SetWeld(joint1,count,5, j1,j1a, Vector3.new(1.35,0.5,0), Vector3.new(0,side/2.4,math.pi/4))
SetWeld(joint2,count,5, j2,j2a, Vector3.new(-1.35,0.5,0), Vector3.new(0,side/2.4,-math.pi/3))
SetWeld(joint3,count,5, j3,j3a, Vector3.new(0.5,-0.8,0), Vector3.new(0,-side/1.7,0))
joint3.C0 = joint3.C0 * CFrame.Angles((-math.pi/4)/5*count,0,0)
SetWeld(joint4,count,5, j4,j4a, Vector3.new(-0.5,-0.8,0), Vector3.new(0,-side/1.7,0))
joint4.C0 = joint4.C0 * CFrame.Angles((math.pi/4)/5*count,0,0)
else
SetWeld(joint1,count,5, j1,j1a, Vector3.new(1.35,0.5,0), Vector3.new(0,side/2.4,math.pi/3))
SetWeld(joint2,count,5, j2,j2a, Vector3.new(-1.35,0.5,0), Vector3.new(0,side/2.4,-math.pi/4))
SetWeld(joint3,count,5, j3,j3a, Vector3.new(0.5,-0.8,0), Vector3.new(0,-side/1.7,0))
joint3.C0 = joint3.C0 * CFrame.Angles((math.pi/4)/5*count,0,0)
SetWeld(joint4,count,5, j4,j4a, Vector3.new(-0.5,-0.8,0), Vector3.new(0,-side/1.7,0))
joint4.C0 = joint4.C0 * CFrame.Angles((-math.pi/4)/5*count,0,0)
end
 
count = count + 1
end
 
bg.Parent = Torsoz
bg.cframe = CFrame.new(NV, dir) * CFrame.Angles(0,side/15,-bgangle)
bv.velocity = (dir2*(sprint+5)) + Vector3.new(0,GravPoint,0)
if collidecount ~= 0 then
bv.velocity = Vector3.new(0,bv.velocity.y,0)
end
if GravPoint < -120 then
break
end
wait(0.025)
end
end
 
Hu.PlatformStand = false
bv:remove()
 
HWRGravDrop = false
Stand()
HWallRunning = false
end
end
 
function VWR(part, pos)
if (part.className == "Part" and part.Shape == Enum.PartType.Block) or part.className ~= "Part" then
print("VWR Activated")
flow.Value = flow.Value + 9
Standing = false
VWallRunning = true
Action = "VWallRunning"
GravPoint = 0
local percent = 1
VWRLastPart = part
local dir, dirc = FindSurface(part, pos)
towall = -dir
dir = (CFrame.new(NV, -dir) * CFrame.Angles(math.pi/2,0,0)).lookVector
--[[
local p = P:Clone()
p.Parent = char
p.Size = Vector3.new(2,2,2)
p.BrickColor = BrickColor.new("Lime green")
p.CanCollide = false
p.CFrame = part.CFrame * CFrame.new(dirc*5)
p.Transparency = 0.3
]]
local bv = Instance.new("BodyVelocity", Torsoz)
bv.Name = "StaminaBodyObject"
bv.maxForce = Vector3.new(1/0,1/0,1/0)
bv.P = 9000
bv.velocity = (dir*(sprint-1))*percent
 
local bg = Instance.new("BodyGyro", Torsoz)
bg.Name = "StaminaBodyObject"
bg.maxTorque = Vector3.new(1/0,1/0,1/0)
bg.D = 100
local posi = pos + (-towall*1.8)
bg.cframe = CFrame.new(posi, posi+towall) * CFrame.Angles((math.pi/5),0,0)
Torsoz.CFrame = CFrame.new(posi, posi+towall) * CFrame.Angles((math.pi/5),0,0)
 
local joint1 = Joint3
SetWeld(joint1,1,1, NV,NV, Vector3.new(1.4,0.45,-0.1), Vector3.new(-math.pi/3.2,0,math.pi/8))
 
local joint2 = Joint4
SetWeld(joint2,1,1, NV,NV, Vector3.new(-1.4,0.45,-0.1), Vector3.new(-math.pi/3.2,0,-math.pi/8))
 
local joint3 = Joint1
SetWeld(joint3,1,1, NV,NV, Vector3.new(0.48,-0.6,-0.1), Vector3.new(0,math.pi/2,0))
joint3.C1 = CFrame.new(0,0.7,0.2) * CFrame.Angles(0,math.pi/2,0)
 
local joint4 = Joint2
SetWeld(joint4,1,1, NV,NV, Vector3.new(-0.48,-0.6,-0.1), Vector3.new(0,math.pi/2,0))
joint4.C1 = CFrame.new(0,0.7,0.2) * CFrame.Angles(0,math.pi/2,0)
 
local joint5 = Joint5
SetWeld(joint5,1,1, NV,NV, Vector3.new(0,1,0), Vector3.new(math.pi/20,0,0))
 
local aniangle = 0
local aniplus = true
 
while VWallRunning == true do
local hitz, enz = RAY(Torsoz.Position, towall*2.1)
local hitz2, enz2 = RAY(Torsoz.Position, (CFrame.new(NV,towall)*CFrame.Angles(math.pi/2,0,0)).lookVector*2.4)
 
if aniangle > math.pi then
aniplus = false
elseif aniangle < -math.pi then
aniplus = true  
end
if aniplus == true then
aniangle = aniangle + (1.3*(percent+0.2))
elseif aniplus == false then
aniangle = aniangle - (1.3*(percent+0.2))
end
 
bv.velocity = (dir*(sprint-1))*percent
if VWRLeft == true then
bv.velocity = bv.velocity + ((CFrame.new(NV, towall) * CFrame.Angles(0,math.pi/2,0)).lookVector * (11*percent+5))
end
if VWRRight == true then
bv.velocity = bv.velocity - ((CFrame.new(NV, towall) * CFrame.Angles(0,math.pi/2,0)).lookVector * (11*percent+5))
end
 
bg.cframe = CFrame.new(posi, posi+towall) * CFrame.Angles((math.pi/5),0,0) * CFrame.Angles(0,aniangle/60,0)
 
SetWeld(joint1,1,1, NV,NV, Vector3.new(1.4,0.45,-0.1), Vector3.new(-math.pi/3.2,aniangle/52,(math.pi/8)+(aniangle/30)))
SetWeld(joint2,1,1, NV,NV, Vector3.new(-1.4,0.45,-0.1), Vector3.new(-math.pi/3.2,aniangle/52,(-math.pi/8)+(-aniangle/30)))
SetWeld(joint3,1,1, NV,NV, Vector3.new(0.51,-0.75,-(aniangle/30)), Vector3.new(0,math.pi/2,(aniangle/8)-0.3))
SetWeld(joint4,1,1, NV,NV, Vector3.new(-0.51,-0.75,(aniangle/30)), Vector3.new(0,math.pi/2,(-aniangle/8)-0.3))
 
if hitz == nil then
local lv = Torsoz.Position + (Torsoz.CFrame.lookVector*100)
Torsoz.CFrame = CFrame.new(Torsoz.Position, Vector3.new(lv.x,Torsoz.Position.y,lv.z))
break
end
 
if hitz2 ~= nil then
percent = 0
VWallRunning = "Falling"
Action = "VWRFalling"
GravPoint = -7
break
end
 
wait(0.02)
percent = percent - 0.028
if percent <= 0.15 then
VWallRunning = "Falling"
Action = "VWRFalling"
end
end
 
-------------------------- Falling from VWR ------------------------------
if VWallRunning == "Falling" then
GravPoint = GravPoint - 1
local dirpos = (-towall *5) + Vector3.new(0,GravPoint,0)
bv.velocity = CFrame.new(NV, dirpos).lookVector * dirpos.magnitude
 
local j1,j1a = GetWeld(joint1)
local j2,j2a = GetWeld(joint2)
local j3,j3a = GetWeld(joint3)
local j4,j4a = GetWeld(joint4)
local j5,j5a = GetWeld(joint5)
 
local counter = 0
while VWallRunning == "Falling" do
counter = counter + 1
local hitz, enz = RAY(H.Position, Vector3.new(0,-2.4,0))
 
dirpos = (-towall *5) + Vector3.new(0,GravPoint,0)
bv.velocity = CFrame.new(NV, dirpos).lookVector * dirpos.magnitude
if VWRLeft == true then
bv.velocity = bv.velocity + ((CFrame.new(NV, towall) * CFrame.Angles(0,math.pi/2,0)).lookVector * 9)
end
if VWRRight == true then
bv.velocity = bv.velocity - ((CFrame.new(NV, towall) * CFrame.Angles(0,math.pi/2,0)).lookVector * 9)
end
bg.cframe = CFrame.new(NV, (-towall*30) + Vector3.new(0,GravPoint,0)) * CFrame.Angles(-math.pi/2.55,math.pi,0)
 
if counter <= 35 then
SetWeld(joint1,counter,35, j1,j1a, Vector3.new(1.4,0.45,-0.1), Vector3.new(math.pi/9,0,math.pi/9))
SetWeld(joint2,counter,35, j2,j2a, Vector3.new(-1.4,0.45,-0.1), Vector3.new(math.pi/9,0,-math.pi/9))
SetWeld(joint3,counter,35, j3,j3a, Vector3.new(0.5,-0.75,0), Vector3.new(0,math.pi/2,math.pi/9))
joint3.C1 = CFrame.new(0,0.7 + (0.3/35*counter),0.2 - (0.2/35*counter)) * CFrame.Angles(0,math.pi/2,0)
SetWeld(joint4,counter,35, j4,j4a, Vector3.new(-0.5,-0.75,0), Vector3.new(0,math.pi/2,math.pi/9))
joint4.C1 = CFrame.new(0,0.7 + (0.3/35*counter),0.2 - (0.2/35*counter)) * CFrame.Angles(0,math.pi/2,0)
SetWeld(joint5,counter,35, j5,j5a, Vector3.new(0,1,0), Vector3.new(-math.pi/6,0,0))
end
 
if hitz ~= nil then
bv:remove()
Torsoz.CFrame = CFrame.new(enz+Vector3.new(0,2,0), (enz+Vector3.new(0,2,0)) + ((-towall*25) + Vector3.new(0,GravPoint,0))) * CFrame.Angles(-math.pi/2.55,math.pi,0)
Torsoz.Velocity = NV
Torsoz.RotVelocity = NV
local bp = Instance.new("BodyPosition", Torsoz)
bp.maxForce = Vector3.new(1/0,1/0,1/0)
bp.position = Torsoz.CFrame.p
game:service("Debris"):AddItem(bp, 0.16)
flow.Value = 0
break
end
 
if GravPoint > - 180 then
GravPoint = GravPoint - 1.9
end
if counter > 200 then
break
end
wait(0.02)
end
 
local bp = Instance.new("BodyPosition")
 
local counter2 = counter
local bgangleplus = 0
 
local j1,j1a = GetWeld(joint1)
local j2,j2a = GetWeld(joint2)
local j3,j3a = GetWeld(joint3)
local j4,j4a = GetWeld(joint4)
local j5,j5a = GetWeld(joint5)
 
local landingpos
 
while VWallRunning == "BackflipFromFall" do
counter2 = counter2 + 1
local hitz, enz = RAY(H.Position+Vector3.new(0,2,0), Vector3.new(0,-4.4,0))
 
if counter2 - counter < 13 then
bgangleplus = bgangleplus - ((math.pi*1.1)/13)
end
if counter2 - counter <= 13 then
SetWeld(joint1,counter2-counter,13, j1,j1a, Vector3.new(1.4,0.5,0.1), Vector3.new(math.pi/2,0.1,math.pi/2))
SetWeld(joint2,counter2-counter,13, j2,j2a, Vector3.new(-1.4,0.5,0.1), Vector3.new(math.pi/2,-0.1,-math.pi/2))
SetWeld(joint3,counter2-counter,13, j3,j3a, Vector3.new(0.52,-0.3,-0.65), Vector3.new(0,math.pi/2,0))
SetWeld(joint4,counter2-counter,13, j4,j4a, Vector3.new(-0.51,-0.9,-0.05), Vector3.new(0,math.pi/2,0))
SetWeld(joint5,counter2-counter,13, j5,j5a, Vector3.new(0,0.9,0), Vector3.new(-math.pi/7,0,0))
end
 
dirpos = (-towall *5) + Vector3.new(0,GravPoint,0)
--bv.velocity = Vector3.new(0,-2,0)
bv.velocity = CFrame.new(NV, dirpos).lookVector * dirpos.magnitude
if VWRLeft == true then
bv.velocity = bv.velocity + ((CFrame.new(NV, towall) * CFrame.Angles(0,math.pi/2,0)).lookVector * 9)
end
if VWRRight == true then
bv.velocity = bv.velocity - ((CFrame.new(NV, towall) * CFrame.Angles(0,math.pi/2,0)).lookVector * 9)
end
bg.cframe = CFrame.new(NV, (-towall*30) + Vector3.new(0,GravPoint,0)) * CFrame.Angles((-math.pi/2.4) + bgangleplus,math.pi,0)
 
if hitz ~= nil then
bv:remove()
landingpos = enz - (towall*1.3)
if counter2 - counter > 8 then
bp = Instance.new("BodyPosition", Torsoz)
bp.maxForce = Vector3.new(1/0,1/0,1/0)
bp.position = enz+Vector3.new(0,2.4,0) + (-towall*1)
VWallRunning = "LandingFall"
else
Torsoz.CFrame = bg.cframe + (enz+Vector3.new(0,2.3,0))
Torsoz.Velocity = NV
Torsoz.RotVelocity = NV
local bp = Instance.new("BodyPosition", Torsoz)
bp.maxForce = Vector3.new(1/0,1/0,1/0)
bp.position = Torsoz.CFrame.p
game:service("Debris"):AddItem(bp, 0.14)
flow.Value = 0
end
break
end
 
if GravPoint > - 180 then
GravPoint = GravPoint - 1.9
end
if counter2 > 200 then
break
end
wait(0.02)
end
 
if VWallRunning == "LandingFall" then
print("Landing")
 
joint3.C1 = CFrame.new(0,1,0) * CFrame.Angles(0,math.pi/2,0)
joint4.C1 = CFrame.new(0,1,0) * CFrame.Angles(0,math.pi/2,0)
local j1,j1a = GetWeld(joint1)
local j2,j2a = GetWeld(joint2)
local j3,j3a = GetWeld(joint3)
local j4,j4a = GetWeld(joint4)
local j5,j5a = GetWeld(joint5)
 
local a
local mesh
if GravPoint < -70 then
a = P:Clone()
a.Parent = Torsoz
a.Name = "AirLandingEffect"
a.BrickColor = BrickColor.new("Medium stone grey")
a.Transparency = 0.3
a.CFrame = CFrame.new(landingpos+Vector3.new(0,0.4,0))
mesh = Instance.new("SpecialMesh", a)
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
mesh.Scale = Vector3.new(0,0,0)
end
 
local bgcf = CFrame.new(NV, Vector3.new(towall.x,0,towall.z))
bg.cframe = bgcf * CFrame.Angles(-math.pi/7,0,0)
local bgval = math.pi/7/2
 
for i = 1, 6 do
Hu.PlatformStand = true
SetWeld(joint1,i,6, j1,j1a, Vector3.new(1.2,0.5,0.2), Vector3.new(math.pi/2,0.5,math.pi/1.2))
SetWeld(joint2,i,6, j2,j2a, Vector3.new(-1.2,0.5,0.2), Vector3.new(math.pi/2,-0.5,-math.pi/1.2))
SetWeld(joint3,i,6, j3,j3a, Vector3.new(0.51,-0.3,-0.8), Vector3.new(0,math.pi/2,-math.pi/7))
SetWeld(joint4,i,6, j4,j4a, Vector3.new(-0.51,-0.8,-0.7), Vector3.new(0,math.pi/2,-math.pi/3))
SetWeld(joint5,i,6, j5,j5a, Vector3.new(0,0.85,0), Vector3.new(-math.pi/8,0,0))
bp.position = bp.position + Vector3.new(0,-0.07,0)
bg.cframe = bgcf * CFrame.Angles((-bgval*2) + (bgval/6*i),0,0)
Torsoz.CFrame = bg.cframe + bp.position
if a ~= nil then
mesh.Scale = mesh.Scale + Vector3.new(1.3,0.35,1.3)
a.Transparency = 0.3 + (0.7/6*i)
end
wait(0.02)
end
if a ~= nil then
a:remove()
end
local j1,j1a = GetWeld(joint1)
local j2,j2a = GetWeld(joint2)
local j3,j3a = GetWeld(joint3)
local j4,j4a = GetWeld(joint4)
local j5,j5a = GetWeld(joint5)
for i = 1, 6 do
Hu.PlatformStand = true
SetWeld(joint1,i,6, j1,j1a, Vector3.new(1.5,0.5,0), Vector3.new(0,0,0))
SetWeld(joint2,i,6, j2,j2a, Vector3.new(-1.5,0.5,0), Vector3.new(0,0,0))
SetWeld(joint3,i,6, j3,j3a, Vector3.new(0.5,-1,0), Vector3.new(0,math.pi/2,0))
SetWeld(joint4,i,6, j4,j4a, Vector3.new(-0.5,-1,0), Vector3.new(0,math.pi/2,0))
SetWeld(joint5,i,6, j5,j5a, Vector3.new(0,1,0), Vector3.new(0,0,0))
bp.position = bp.position + Vector3.new(0,0.1,0)
bg.cframe = bgcf * CFrame.Angles(-bgval + (bgval/6*i),0,0)
Torsoz.CFrame = bg.cframe + bp.position
wait(0.02)
end
 
bp:remove()
end
 
end
 
bv:remove()
bg:remove()
VWallRunning = false
Stand()
end
end
 
function Slide(pos)
flow.Value = flow.Value + 6
Action = "Sliding"
Sliding = true
GravPoint = Torsoz.Velocity.y
local spd = Vector3.new(Torsoz.Velocity.x,0,Torsoz.Velocity.z).magnitude + 10
local dir = Vector3.new(Torsoz.Velocity.x,0,Torsoz.Velocity.z).unit
 
local bv = Instance.new("BodyVelocity", Torsoz)
bv.maxForce = Vector3.new(1/0,1/0,1/0)
bv.velocity = dir*spd
local bg = Instance.new("BodyGyro", Torsoz)
bg.maxTorque = Vector3.new(1/0,1/0,1/0)
bg.cframe = CFrame.new(NV, dir) * CFrame.Angles(math.pi/2.2,0.24,0)
 
local joint1 = Joint1
local joint2 = Joint2
local joint3 = Joint3
local joint4 = Joint4
local joint5 = Joint5
local j1,j1a = GetWeld(joint1)
local j2,j2a = GetWeld(joint2)
 
SetWeld(joint1,1,1, NV,NV, Vector3.new(j1.x,j1.y,j1.z), Vector3.new(j1a.x,math.pi/2,j1a.z))
joint1.C1 = CFrame.new(0,1,0) * CFrame.Angles(0,math.pi/2,0)
SetWeld(joint2,1,1, NV,NV, Vector3.new(j2.x,j2.y,j2.z), Vector3.new(j2a.x,math.pi/2,j2a.z))
joint2.C1 = CFrame.new(0,1,0) * CFrame.Angles(0,math.pi/2,0)
 
local j1,j1a = GetWeld(joint1)
local j2,j2a = GetWeld(joint2)
local j3,j3a = GetWeld(joint3)
local j4,j4a = GetWeld(joint4)
local j5,j5a = GetWeld(joint5)
 
local count = 0
local lastpos
 
while Sliding == true do
count = count + 1
Hu.PlatformStand = true
local hitz1, enz1 = RAY(Torsoz.Position+Vector3.new(0,0.03,0), dir *2.5)
local hitz2, enz2 = RAY(Torsoz.Position-Vector3.new(0,0.2,0), dir *2.5)
local ghitz, genz = RAY(Torsoz.Position, Vector3.new(0,-2.6,0))
bv.velocity = dir*spd + Vector3.new(0,GravPoint,0)
 
if count <= 5 then
SetWeld(joint1,count,5, j1,j1a, Vector3.new(0.5,-0.8,-0.15), Vector3.new(0,(math.pi/2)+0.1,-0.4))
SetWeld(joint2,count,5, j2,j2a, Vector3.new(-0.5,-1,0), Vector3.new(0,(math.pi/2)-0.4,0))
SetWeld(joint3,count,5, j3,j3a, Vector3.new(1.5,0.5,0), Vector3.new(-0.7,-0.24,math.pi/5))
SetWeld(joint4,count,5, j4,j4a, Vector3.new(-1.5,0.5,0), Vector3.new(-0.1,0,-math.pi/1.5))
SetWeld(joint5,count,5, j5,j5a, Vector3.new(0,1,0), Vector3.new(-0.5,-0.2,0))
end
 
if (hitz1 ~= nil and hitz1.CanCollide == true) or (hitz2 ~= nil and  hitz2.CanCollide == true) then
bv:remove()
bg:remove()
Sliding = "HitObject"
end
if ghitz ~= nil then
GravPoint = 0
Torsoz.CFrame = CFrame.new(genz, genz+dir) * CFrame.Angles(math.pi/2.2,0.24,0) + Vector3.new(0,0.7,0)
spd = spd - 0.95
else
if GravPoint > -180 then
GravPoint = GravPoint - 5.6
end
spd = spd - 0.36
end
if spd < 7 then
Sliding = false
end
wait(0.02)
end
 
if Sliding == false then
local j1,j1a = GetWeld(joint1)
local j2,j2a = GetWeld(joint2)
local j3,j3a = GetWeld(joint3)
local j4,j4a = GetWeld(joint4)
local j5,j5a = GetWeld(joint5)
for i = 1, 4 do
SetWeld(joint1,i,4, j1,j1a, Vector3.new(0.5,-1,0), Vector3.new(0,math.pi/2,0))
SetWeld(joint2,i,4, j2,j2a, Vector3.new(-0.5,-1,0), Vector3.new(0,math.pi/2,0))
SetWeld(joint3,i,4, j3,j3a, Vector3.new(1.5,0.5,0), NV)
SetWeld(joint4,i,4, j4,j4a, Vector3.new(-1.5,0.5,0), NV)
SetWeld(joint5,i,4, j5,j5a, Vector3.new(0,1,0), NV)
local hitz, enz = RAY(Torsoz.Position, Vector3.new(0,-2.6,0))
bg.cframe = CFrame.new(NV, dir) * CFrame.Angles((math.pi/2.2) - ((math.pi/2.2)/4*i),0.24 - (0.24/4*i),0)
bv.velocity = dir*spd + Vector3.new(0,GravPoint,0)
 
if hitz ~= nil then
GravPoint = 0
Torsoz.CFrame = CFrame.new(enz, enz+dir) * CFrame.Angles((math.pi/2.2) - ((math.pi/2.2)/4*i),0.24 - (0.24/4*i),0) + Vector3.new(0,0.7+(1.8/4*i),0)
spd = spd - 0.95
else
if GravPoint > -180 then
GravPoint = GravPoint - 5.6
end
spd = spd - 0.36
end
wait(0.02)
end
local hitz, enz = RAY(Torsoz.Position, Vector3.new(0,-2.6,0))
Torsoz.CFrame = CFrame.new(enz, enz+dir) + Vector3.new(0,3,0)
end
bv:remove()
bg:remove()
SlideCooldown = 10
Stand()
end
 
function KD(key)
if pause.Value == false then
if key == string.char(32) then
Space = true
 
local ghitz, genz = RAY(Torsoz.Position, Vector3.new(0,-3.7,0))
local hitz, enz = RAY(Torsoz.Position+Vector3.new(0,1.1,0), Torsoz.CFrame.lookVector*2.3)
local righthitz, rightenz
local lefthitz, leftenz
 
if HWallRunning == false then
righthitz, rightenz = RAY(Torsoz.Position, ((Torsoz.CFrame * CFrame.new(1.5,0,-0.2)).p - Torsoz.CFrame.p).unit*3.9)
lefthitz, leftenz = RAY(Torsoz.Position, ((Torsoz.CFrame * CFrame.new(-1.5,0,-0.2)).p - Torsoz.CFrame.p).unit*3.9)
 
elseif HWallRunning == "Jumping" then
righthitz, rightenz = RAY(Torsoz.Position, ((CFrame.new(Torsoz.Position, Torsoz.Position + HWRDir) * CFrame.new(1.5,0,-0.2)).p - Torsoz.Position).unit*3.9)
lefthitz, leftenz = RAY(Torsoz.Position, ((CFrame.new(Torsoz.Position, Torsoz.Position + HWRDir) * CFrame.new(-1.5,0,-0.2)).p - Torsoz.Position).unit*3.9)
 
end
 
if Action == "Standing" and Shift == true and (hitz == nil or hitz.CanCollide == false) and (righthitz == nil or righthitz.CanCollide == false) and (lefthitz == nil or lefthitz.CanCollide == false) and (ghitz == nil or ghitz.CanCollide == false) and (Torsoz.Velocity.y > 6 and Torsoz.Velocity.y < 50) and DivingCooldown <= 0 then
if stamina >= 10 then
--if Vector3.new(Torsoz.Velocity.x,0,Torsoz.Velocity.z).magnitude > 12 then
Dive()
--end
end
end
 
if hitz == nil and VWallRunning == "Falling" then
VWallRunning = "BackflipFromFall"
end
 
if Shift == true and Torsoz.Velocity.y > -50 and Diving == false and DivingCooldown <= 0 then
local hitz2, enz2 = RAY(Torsoz.Position, Vector3.new(0,-3.5,0))
 
if hitz ~= nil then
if Action == "Standing" and VWRCooldown == 0 then
if hitz2 == nil or hitz2.CanCollide == false then
VWR(hitz, enz)
end
end
end
 
if (HWallRunning == false or (HWallRunning == "Jumping" and (HWRLastPart ~= righthitz or HWRLastPart ~= lefthitz))) and HWRCooldown == 0 and VWallRunning == false then
 
if (hitz == nil or HWallRunning == "Jumping") and ((righthitz ~= nil and righthitz.Parent:findFirstChild("Humanoid") == nil and righthitz.Parent.className ~= "Hat") or (lefthitz ~= nil and lefthitz.Parent:findFirstChild("Humanoid") == nil and lefthitz.Parent.className ~= "Hat")) then
if hitz2 == nil or hitz2.CanCollide == false then
local right = (rightenz - Torsoz.Position).magnitude
local left = (leftenz - Torsoz.Position).magnitude
if right < left then
if HWallRunning == "Jumping" and HWRLastPart ~= righthitz then
HWallRunning = false
while Standing == false do
wait(0.01)
end
print("2nd Right Activated!")
HWallRun(righthitz, rightenz, -math.pi/2)
else
if hitz == nil then
print("Right Activated")
HWallRun(righthitz, rightenz, -math.pi/2)
end
end
elseif left < right then
if HWallRunning == "Jumping" and HWRLastPart ~= lefthitz then
HWallRunning = false
while Standing == false do
wait(0.01)
end
print("2nd Left Activated!")
HWallRun(lefthitz, leftenz, math.pi/2)
else
if hitz == nil then
print("Left Activated")
HWallRun(lefthitz, leftenz, math.pi/2)
end
end
end
end
end
end
 
end
 
if HWallRunning == true then
HWallRunning = "Jumping"
Action = "HWRJumping"
end
 
elseif key == string.char(48) then
Shift = true
elseif key == string.char(50) then
if Action == "Standing" then
Sit()
elseif HWallRunning == true then
HWRGravDrop = true
end
elseif key == string.char(52) then
if Shift == true and Action == "Standing" and SlideCooldown == 0 and Vector3.new(Torsoz.Velocity.x,0,Torsoz.Velocity.z).magnitude > 15 and Torsoz.Velocity.y > -40 then
print("Sliding")
Slide()
end
elseif key == "a" then
VWRLeft = true
elseif key == "d" then
VWRRight = true
end
end
end
 
function KU(key)
if key == string.char(32) then
Space = false
elseif key == string.char(48) then
Shift = false
elseif key == string.char(50) then
if Action == "Sitting" then
Stand()
end
elseif key == string.char(52) then
Sliding = false
elseif key == "a" then
VWRLeft = false
elseif key == "d" then
VWRRight = false
end
end
 
mouse.KeyDown:connect(function(key) KD(key) end)
mouse.KeyUp:connect(function(key) KU(key) end)
 
Joint1 = Instance.new("Snap", Torsoz)
GetWeld(Joint1)
Joint2 = Instance.new("Snap", Torsoz)
GetWeld(Joint2)
Joint3 = Instance.new("Snap", Torsoz)
GetWeld(Joint3)
Joint4 = Instance.new("Snap", Torsoz)
GetWeld(Joint4)
Joint5 = Instance.new("Snap", Torsoz)
GetWeld(Joint5)
Stand()
 
local animatebg = Instance.new("BodyGyro")
animatebg.D = 100
local GravAction = "Idle"
local PrevGravAction = GravAction
 
local prevrapos = (RA.CFrame * CFrame.new(0,-1,0)).p
local prevlapos = (LA.CFrame * CFrame.new(0,-1,0)).p
local hue = 0
local recyclecount = 0
local tickoffset = tick()
local fadetab = {}
local fadetab2 = {}
local animatebgcount = 0
 
for i = 1, 13 do
local p = P:Clone()
p.Name = "Part"..i
local mesh = Instance.new("SpecialMesh", p)
mesh.MeshId = "http://www.roblox.com/Asset/?id=9856898"
mesh.TextureId = "http://www.roblox.com/Asset/?id=48358980"
table.insert(fadetab, {p, mesh})
end
for i = 1, 13 do
local p = P:Clone()
p.Name = "Part"..i
local mesh = Instance.new("SpecialMesh", p)
mesh.MeshId = "http://www.roblox.com/Asset/?id=9856898"
mesh.TextureId = "http://www.roblox.com/Asset/?id=48358980"
table.insert(fadetab2, {p, mesh})
end
 
game:service("RunService").Stepped:connect(function()
GravAction = "Idle"
hue = hue + 3
hue = hue % 360
 
------------- anim angle changing --------
if animangle > math.pi then
animplus = false
elseif animangle < -math.pi then
animplus = true  
end
if animplus == true then
animangle = animangle + animspeed
elseif animplus == false then
animangle = animangle - animspeed
end
 
local hitz, enz = RAY(Torsoz.Position, Vector3.new(0,-3.9,0))
if Shift == true then
Hu.WalkSpeed = sprint
else
Hu.WalkSpeed = 16
end
if (FOV >= 70 and FOV < 74) and Vector3.new(Torsoz.Velocity.x,0,Torsoz.Velocity.z).magnitude > 25 then
FOV = FOV + 1
elseif (FOV <= 74 and FOV > 70) and Vector3.new(Torsoz.Velocity.x,0,Torsoz.Velocity.z).magnitude < 20 then
FOV = FOV - 1
end
if pause.Value == true then
Hu.WalkSpeed = 0
end
if Sitting == true then
local hitz2, enz2 = RAY(Torsoz.Position, Vector3.new(0,-2.2,0))
Hu.PlatformStand = true
if hitz2 == nil then
Stand()
end
end
if Diving == true then
Hu.PlatformStand = true
DivingBV.velocity = Vector3.new(DivingDir.x*(sprint+2),GravPoint,DivingDir.z*(sprint+2))
DivingBG.cframe = CFrame.new(Torsoz.Position, Torsoz.Position+DivingBV.velocity) * CFrame.Angles(-math.pi/2,0,0)
 
if GravPoint > -180 then
GravPoint = GravPoint - 2
end
end
if DivingCooldown > 0 then
DivingCooldown = DivingCooldown - 1
end
if HWallRunning == true then
if HWRGravDrop == false then
GravPoint = GravPoint - 0.4
else
GravPoint = GravPoint - 2
end
elseif HWallRunning == "Jumping" then
GravPoint = GravPoint - 1.7
end
----------------------------- stamina ----------------------------------------
if Vector3.new(Torsoz.Velocity.x, 0, Torsoz.Velocity.z).magnitude > 18 and Action == "Standing" and Shift == true then
if stamina > 0 then
stamina = stamina - 0.5
if stamina < 0 then
Shift = false
stamina = 0
end
else
Shift = false
stamina = 0
end
if Action == "Standing" then
animspeed = 0.85
SetWeld(Joint1,1,1, NV,NV, Vector3.new(0.5,-1,0), Vector3.new(-animangle/4.85,0,0))
SetWeld(Joint2,1,1, NV,NV, Vector3.new(-0.5,-1,0), Vector3.new(animangle/4.85,0,0))
SetWeld(Joint3,1,1, NV,NV, Vector3.new(1.5,0.5,0), Vector3.new(animangle/3.5,0,0))
SetWeld(Joint4,1,1, NV,NV, Vector3.new(-1.5,0.5,0), Vector3.new(-animangle/3.5,0,0))
end
elseif Vector3.new(Torsoz.Velocity.x, 0, Torsoz.Velocity.z).magnitude > 12 and Action ~= "Sliding" then
if stamina < maxstamina then
stamina = stamina + 0.5
if stamina > maxstamina then
stamina = maxstamina
end
else
stamina = maxstamina
end
if Action == "Standing" then
animspeed = 0.65
SetWeld(Joint1,1,1, NV,NV, Vector3.new(0.5,-1,0), Vector3.new(-animangle/7,0,0))
SetWeld(Joint2,1,1, NV,NV, Vector3.new(-0.5,-1,0), Vector3.new(animangle/7,0,0))
SetWeld(Joint3,1,1, NV,NV, Vector3.new(1.5,0.5,0), Vector3.new(animangle/5,0,0))
SetWeld(Joint4,1,1, NV,NV, Vector3.new(-1.5,0.5,0), Vector3.new(-animangle/5,0,0))
end
elseif Vector3.new(Torsoz.Velocity.x, 0, Torsoz.Velocity.z).magnitude < 2 then
animspeed = 0.1
if Action == "Standing" then
SetWeld(Joint1,1,1, NV,NV, Vector3.new(0.5,-1,0), Vector3.new(-animangle/38,0,0))
SetWeld(Joint2,1,1, NV,NV, Vector3.new(-0.5,-1,0), Vector3.new(animangle/38,0,0))
SetWeld(Joint3,1,1, NV,NV, Vector3.new(1.5,0.5,0), Vector3.new(animangle/30,0,0))
SetWeld(Joint4,1,1, NV,NV, Vector3.new(-1.5,0.5,0), Vector3.new(-animangle/30,0,0))
end
if stamina < maxstamina then
if Sitting == false then
stamina = stamina + 0.65
else
stamina = stamina + 1.02
end
if stamina > maxstamina then
stamina = maxstamina
end
else
stamina = maxstamina
end
end
 
if hitz == nil then
if Torsoz.Velocity.y > 1 or (Torsoz.Velocity.y < -1 and Torsoz.Velocity.y > -90) then
if Action == "Standing" then
GravAction = "Rising"
animspeed = 0.1
SetWeld(Joint1,1,1, NV,NV, Vector3.new(0.5,-1,0), Vector3.new(-animangle/38,0,0))
SetWeld(Joint2,1,1, NV,NV, Vector3.new(-0.5,-1,0), Vector3.new(animangle/38,0,0))
SetWeld(Joint3,1,1, NV,NV, Vector3.new(1.5,0.5,0), Vector3.new((math.pi-0.2)+(animangle/30),0,0))
SetWeld(Joint4,1,1, NV,NV, Vector3.new(-1.5,0.5,0), Vector3.new((math.pi-0.2)+(-animangle/30),0,0))
if animatebg.Parent ~= nil then
animatebg.Parent = Torsoz
animatebg.maxTorque = Vector3.new(1/0,10000,1/0)
local lokvec = Torsoz.CFrame.lookVector*100
animatebg.cframe = CFrame.new(NV, Vector3.new(lokvec.x,0,lokvec.z))
animatebg.Parent = nil
end
end
end
end
 
if hitz == nil then
local hitz2, enz2 = RAY(Torsoz.Position, Vector3.new(0,-6,0))
if hitz2 == nil then
if Torsoz.Velocity.y < -90 then
if Action == "Standing" then
GravAction = "Falling"
animspeed = 1.1
animatebg.Parent = Torsoz
animatebg.maxTorque = Vector3.new(1/0,10000,1/0)
local lokvec = Torsoz.CFrame.lookVector*100
animatebg.cframe = CFrame.new(NV, Vector3.new(lokvec.x,0,lokvec.z)) * CFrame.Angles(-math.pi/11,animangle/70,0)
SetWeld(Joint1,1,1, NV,NV, Vector3.new(0.45,-0.8,0), Vector3.new((animangle/27)-0.3,0,0.18))
SetWeld(Joint2,1,1, NV,NV, Vector3.new(-0.45,-0.8,0), Vector3.new((-animangle/27)-0.3,0,-0.18))
SetWeld(Joint3,1,1, NV,NV, Vector3.new(1.4,0.5,0), Vector3.new((math.pi+0.2)+(animangle/26),0,0.18))
SetWeld(Joint4,1,1, NV,NV, Vector3.new(-1.4,0.5,0), Vector3.new((math.pi+0.2)+(-animangle/26),0,-0.18))
end
end
elseif hitz2.CanCollide == true then
if animatebg.Parent ~= nil then
animatebg.Parent = Torsoz
animatebg.maxTorque = Vector3.new(1/0,10000,1/0)
local lokvec = Torsoz.CFrame.lookVector*100
animatebg.cframe = CFrame.new(NV, Vector3.new(lokvec.x,0,lokvec.z))
animatebg.Parent = nil
end
end
end
 
if GravAction == "Idle" and animatebg.Parent ~= nil then
animatebg.Parent = nil
end
 
if math.abs(tickoffset - tick()) > 0.05 then
tickoffset = tick()
local flowcolor = HSV(hue, 0.7,1)
recyclecount = (recyclecount % #fadetab) + 1
if flow.Value > 25 then
local lapos = (LA.CFrame * CFrame.new(0,-1,0)).p
local rapos = (RA.CFrame * CFrame.new(0,-1,0)).p
local p = fadetab[recyclecount]
p[1].Parent = m
p[1].CFrame = CFrame.new((lapos+prevlapos)/2, lapos)
p[2].Scale = Vector3.new(0.5,0.5,(lapos-prevlapos).magnitude*2)
p[2].VertexColor = Vector3.new(flowcolor.r,flowcolor.g,flowcolor.b)
p[1].Transparency = math.abs((flow.Value/120) - 0.8)
p[1].Transparency = p[1].Transparency + (1/#fadetab)
local p = fadetab2[recyclecount]
p[1].Parent = m
p[1].CFrame = CFrame.new((rapos+prevrapos)/2, rapos)
p[2].Scale = Vector3.new(0.5,0.5,(rapos-prevrapos).magnitude*2)
p[2].VertexColor = Vector3.new(flowcolor.r,flowcolor.g,flowcolor.b)
p[1].Transparency = math.abs((flow.Value/120) - 0.8)
p[1].Transparency = p[1].Transparency + (1/#fadetab)
end
 
for i, v in pairs(fadetab) do
if v[1].Transparency < 0.9 then
v[1].Transparency = v[1].Transparency + (1/#fadetab)
fadetab2[i][1].Transparency = fadetab2[i][1].Transparency + (1/#fadetab)
elseif v[1].Transparency ~= 1 then
v[1].Transparency = 1
v[1].Position = Vector3.new(50000,0,0)
fadetab2[i][1].Transparency = 1
fadetab2[i][1].Position = Vector3.new(50000,0,0)
end
end
 
prevrapos = (RA.CFrame * CFrame.new(0,-1,0)).p
prevlapos = (LA.CFrame * CFrame.new(0,-1,0)).p
end
 
if flow.Value > 140 then
if char.Parent ~= nil then
char:remove()
end
end
 
if flowcooldown > 0 then
flowcooldown = flowcooldown - 1
end
if HWRCooldown > 0 then
HWRCooldown = HWRCooldown - 1
end
if VWRCooldown > 0 then
if hitz ~= nil and VWRCooldown > 0 then
VWRCooldown = VWRCooldown - 1
end
end
if SlideCooldown > 0 then
SlideCooldown = SlideCooldown - 1
end
 
if Action == "HWallRunning" or Action == "VWallRunning" then
flow.Value = flow.Value + 0.24
if flow.Value > 100 then
flow.Value = 100
end
flowcooldown = 40
elseif Action == "Diving" then
flowcooldown = 30
elseif Action == "Sliding" then
flowcooldown = 15
elseif Action == "Standing" or Action == "Sitting" then
if flow.Value > 0 and flowcooldown <= 0 then
flow.Value = flow.Value - 0.37
if flow.Value < 0 then
flow.Value = 0
end
end
end
 
cam.FieldOfView = FOV
prevanimbgcount = animatebgcount
sprint = defsprint + ((flow.Value/100)*2.4)
PrevGravAction = GravAction
Calculate()
end)
