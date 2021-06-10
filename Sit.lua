--[[
Fenrier's Storm Blade Script created by: 
Fenrier: Everything.
If you're gonna steal this, then please I ask you. Please don't forum,free model, give 
away, or anything like that to this script. Thank you very much :) 
]] 
--[[OLD]]--
Player = game:GetService("Players").LocalPlayer
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
bladecolor = BrickColor.new("Gold") 
attack = false 
attackdebounce = false 
attacktype = 1 
damage = 25 
oridamage = 25 
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
--what anim 
anim = "none" 
demondance = false 
demonmode = false 
ragecharge = 400 
skill = false 
mode = 1 
guardy = false 
unsheathed = false 
walking = false 
guardattack = false 

if Character:findFirstChild("StormBlade",true) ~= nil then 
Character:findFirstChild("StormBlade",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("RageGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("RageGUI",true).Parent = nil 
end 


	
local stormblade = Instance.new("Model") 
stormblade.Name = "StormBlade" 
stormblade.Parent = Character 
local prt1 = Instance.new("Part") 
prt1.formFactor = 1 
prt1.Parent = stormblade 
prt1.CanCollide = false 
prt1.BrickColor = Character.Torso.BrickColor
prt1.Name = "Handle1" 
prt1.Size = Vector3.new(1,1,1) 
prt1.CFrame = Torso.CFrame 
local prt2 = Instance.new("Part") 
prt2.formFactor = 1 
prt2.Parent = stormblade 
prt2.CanCollide = false 
prt2.BrickColor = Character.Torso.BrickColor
prt2.Name = "Handle2" 
prt2.Size = Vector3.new(1,1,1) 
prt2.CFrame = Torso.CFrame 
local prt3 = Instance.new("Part") 
prt3.formFactor = 1 
prt3.Parent = stormblade 
prt3.CanCollide = false 
prt3.BrickColor = BrickColor.new("Really black") 
prt3.Name = "Part1" 
prt3.Size = Vector3.new(1,1,1) 
prt3.CFrame = Torso.CFrame 
local prt4 = Instance.new("Part") 
prt4.formFactor = 1 
prt4.Parent = stormblade 
prt4.CanCollide = false 
prt4.BrickColor = BrickColor.new("Really black") 
prt4.Name = "Part2" 
prt4.Size = Vector3.new(1,1,1) 
prt4.CFrame = Torso.CFrame 
local prt5 = Instance.new("Part") 
prt5.formFactor = 1 
prt5.Parent = stormblade 
prt5.CanCollide = false 
prt5.BrickColor = BrickColor.new("Bright blue") 
prt5.Name = "Part3" 
prt5.Size = Vector3.new(1,1,1) 
prt5.CFrame = Torso.CFrame 
local prt6 = Instance.new("Part") 
prt6.formFactor = 1 
prt6.Parent = stormblade 
prt6.CanCollide = false 
prt6.BrickColor = BrickColor.new("Bright blue") 
prt6.Name = "Part4" 
prt6.Size = Vector3.new(1,1,1) 
prt6.CFrame = Torso.CFrame 
local prt7 = Instance.new("Part") 
prt7.formFactor = 1 
prt7.Parent = stormblade 
prt7.Reflectance = 0.5 
prt7.CanCollide = false 
prt7.BrickColor = bladecolor
prt7.Name = "Blade1" 
prt7.Size = Vector3.new(1,2,1) 
prt7.CFrame = Torso.CFrame 
local prt8 = Instance.new("Part") 
prt8.formFactor = 1 
prt8.Parent = stormblade 
prt8.Reflectance = 0.5 
prt8.CanCollide = false 
prt8.BrickColor = bladecolor
prt8.Name = "Blade2" 
prt8.Size = Vector3.new(1,2,1) 
prt8.CFrame = Torso.CFrame 
stormblade:BreakJoints() 

local msh1 = Instance.new("CylinderMesh") 
msh1.Parent = prt1 
msh1.Scale = Vector3.new(0.5,0.1,0.5) 
local msh2 = Instance.new("CylinderMesh") 
msh2.Parent = prt2 
msh2.Scale = Vector3.new(0.5,0.1,0.5) 
local msh3 = Instance.new("CylinderMesh") 
msh3.Parent = prt3 
msh3.Scale = Vector3.new(0.5,1,0.5) 
local msh4 = Instance.new("CylinderMesh") 
msh4.Parent = prt4 
msh4.Scale = Vector3.new(0.5,1,0.5) 
local msh5 = Instance.new("CylinderMesh") 
msh5.Parent = prt5 
msh5.Scale = Vector3.new(0.5,0.1,0.5) 
local msh6 = Instance.new("CylinderMesh") 
msh6.Parent = prt6 
msh6.Scale = Vector3.new(0.5,0.1,0.5) 
local msh7 = Instance.new("SpecialMesh") 
msh7.Parent = prt7 
msh7.MeshType = "Torso" 
msh7.Scale = Vector3.new(0.7,0.7,0.7) 
local msh8 = Instance.new("SpecialMesh") 
msh8.Parent = prt8 
msh8.MeshType = "Torso" 
msh8.Scale = Vector3.new(0.7,0.7,0.7) 

local wld1 = Instance.new("Weld") 
wld1.Parent = prt1 
wld1.Part0 = prt1 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,-1.57) * CFrame.new(-0.1,0.7, -0.75) 
local wld2 = Instance.new("Weld") 
wld2.Parent = prt2 
wld2.Part0 = prt2 
wld2.Part1 = prt1 
wld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.1,0) 
local wld3 = Instance.new("Weld") 
wld3.Parent = prt3 
wld3.Part0 = prt3 
wld3.Part1 = prt2 
wld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.66,0) 
local wld4 = Instance.new("Weld") 
wld4.Parent = prt4 
wld4.Part0 = prt4 
wld4.Part1 = prt1 
wld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.66,0) 
local wld5 = Instance.new("Weld") 
wld5.Parent = prt5 
wld5.Part0 = prt5 
wld5.Part1 = prt3 
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.66,0) 
local wld6 = Instance.new("Weld") 
wld6.Parent = prt6 
wld6.Part0 = prt6 
wld6.Part1 = prt4 
wld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.66,0) 
local wld7 = Instance.new("Weld") 
wld7.Parent = prt7 
wld7.Part0 = prt7 
wld7.Part1 = prt5 
wld7.C0 = CFrame.fromEulerAnglesXYZ(0,1.57,0) * CFrame.new(0,-0.66,0) 
local wld8 = Instance.new("Weld") 
wld8.Parent = prt8 
wld8.Part0 = prt8 
wld8.Part1 = prt6 
wld8.C0 = CFrame.fromEulerAnglesXYZ(3.15,1.57,0) * CFrame.new(0,0.66,0) 

local fengui = Instance.new("GuiMain") 
fengui.Parent = Player.PlayerGui 
fengui.Name = "RageGUI" 
local fenframe = Instance.new("Frame") 
fenframe.Parent = fengui
fenframe.BackgroundColor3 = Color3.new(255,255,255) 
fenframe.BackgroundTransparency = 1 
fenframe.BorderColor3 = Color3.new(17,17,17) 
fenframe.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
local fentext = Instance.new("TextLabel") 
fentext.Parent = fenframe 
fentext.Text = "Rage Charge("..ragecharge..")" 
fentext.BackgroundTransparency = 1 
fentext.SizeConstraint = "RelativeXY" 
fentext.TextXAlignment = "Center" 
fentext.TextYAlignment = "Center" 
fentext.Position = UDim2.new(0,50,1,150) 
local fentext2 = Instance.new("TextLabel") 
fentext2.Parent = fenframe 
fentext2.Text = " " 
fentext2.BackgroundTransparency = 0 
fentext2.BackgroundColor3 = Color3.new(1,1,0) 
fentext2.SizeConstraint = "RelativeXY" 
fentext2.TextXAlignment = "Center" 
fentext2.TextYAlignment = "Center" 
fentext2.Position = UDim2.new(0,10,1,170)

local sword1fire = Instance.new("Fire") 
sword1fire.Parent = prt7 
sword1fire.Enabled = false 
sword1fire.Color = Color3.new(1,1,0) 
sword1fire.Heat = "13" 
sword1fire.Size = "3" 
sword1fire.SecondaryColor = Color3.new(1,1,1) 
local sword1bfire = sword1fire:Clone() 
sword1bfire.Parent = prt8 
sword1bfire.Color = Color3.new(1,1,0) 
sword1bfire.SecondaryColor = Color3.new(1,1,1) 
local fenfire = Instance.new("Fire") 
fenfire.Parent = Torso 
fenfire.Color = Color3.new(1,0,0) 
fenfire.SecondaryColor = Color3.new(1,0,0) 
fenfire.Heat = "15" 
fenfire.Size = "3" 
fenfire.Enabled = false 

if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Storm Blade" 
Tool.TextureId = "http://www.roblox.com/asset/?id=31872785" 
Player.Backpack["Storm Blade"].TextureId = "http://www.roblox.com/asset/?id=31872785"
script.Parent = Tool 
end 
Bin = script.Parent 
if Bin:findFirstChild("ManaBar",true) ~= nil then 
mana=Bin.ManaBar.Value
Bin:findFirstChild("ManaBar",true).Parent = nil 
end 
local bar=Instance.new("IntValue")
bar.Parent=Bin
bar.Name="ManaBar"
bar.Value=mana

function unequipweld() 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,-1.57) * CFrame.new(-0.1,0.7, -0.75)  
end 

function equipweld() 
wld1.Part1 = RightArm 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 1.57) * CFrame.new(0, 1, 0) 
end 

function hideanim() 
for i = 0 ,1 , 0.1 do 
wait(0) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1*i,0,-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
unequipweld() 
wait(0.1) 
for i = 0 , 1 , 0.075 do 
wait(0) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i-1,0,1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 

function equipanim() 
for i = 0 , 1 , 0.085 do 
wait(0)  
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1*i,1*i,-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
equipweld() 
wait(0.1) 
for i = 0 , 1 , 0.075 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i-1,-1*i+1,1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 

function hideanim2() 
for i = 0 ,1 , 0.1 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2-2+math.rad(260)*i, 0.5+0.5*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.5-1.5+math.rad(260)*i,-0.5-0.5*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
wait(0.1) 
end 

function equipanim2() 

for i = 0 , 1 , 0.085 do 
wait(0)  
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(260)-math.rad(260)*i, 1,-1+1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(260)-math.rad(260)*i,-1,1-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
wait(0.1) 
for i = 0 , 1 , 0.075 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2*i, 1-0.5*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(1.5*i,-1+0.5*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 


end 

function unequipweld2() 
wld1.Part1 = Torso 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, -0.57) * CFrame.new(1, -1.57, -0.75) 
wld2.Part1 = Torso 
wld2.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, -0.57) * CFrame.new(-1, 0, -0.75) 
end 

function equipweld2() 
wld1.Part1 = RightArm 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(4.7, 0, 1.57) * CFrame.new(0, 1, -0.57) 
wld2.Part1 = LeftArm 
wld2.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld2.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 1.57) * CFrame.new(0, 1, -0.57) 
end 

DBHit=function(hit,DB) --credits to turdulator for making this function :D
	if hit.Parent==nil then
		return
	end
	h=hit.Parent:FindFirstChild("Humanoid")
	t=hit.Parent:FindFirstChild("Torso")
	if h~=nil and t~=nil then
		if h.Parent==Character then
			return
		end
		h:TakeDamage(5)
		vl=Instance.new("BodyVelocity")
		vl.P=4500
		vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
		vl.velocity=DB.BodyVelocity.velocity*1.05+Vector3.new(0,3,0)
		vl.Parent=t
		game:GetService("Debris"):AddItem(vl,.2)
		rl=Instance.new("BodyAngularVelocity")
		rl.P=3000
		rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
		rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
		rl.Parent=t
		game:GetService("Debris"):AddItem(rl,.2)
	else
		if hit.CanCollide==false then
			return
		end
		MagicCom:disconnect()
--		DBExplode(DB)
	end
end

function effectone(part,cframe) 
		p2=Instance.new("Part")
		p2.Name="Blast"
		p2.TopSurface=0
		p2.BottomSurface=0
		p2.CanCollide=false
		p2.Anchored=true
		p2.BrickColor=BrickColor.new("Gold")
		p2.Size=Vector3.new(2,2,2)
		p2.formFactor="Symmetric"
		p2.CFrame=part.CFrame*CFrame.new(0,cframe,0)
		p2.Parent=workspace
		m=Instance.new("BlockMesh")
		m.Parent=p2
		m.Name="BlastMesh"
		coroutine.resume(coroutine.create(function(part,dir) for loll=1, 15 do part.BlastMesh.Scale=part.BlastMesh.Scale-Vector3.new(.09,.09,.09) part.Transparency=loll/20 part.CFrame=part.CFrame*CFrame.new(dir)*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100, math.random(-100,100)/100, math.random(-100,100)/100) wait() end part.Parent=nil end),p2,Vector3.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10))
end 
function ringattack(part,cframe) 
	r=Instance.new("Part")
	r.Anchored=true
	r.Name="Ring"
	r.CanCollide=false
	r.TopSurface=0
	r.BottomSurface=0
	r.CFrame=part.CFrame*CFrame.new(0,cframe,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
	r.Parent=workspace
	local ring = Instance.new("SpecialMesh") 
	ring.Parent = r 
	ring.MeshId = "http://www.roblox.com/asset/?id=3270017" 
	ring.Name = "RingMesh" 
	r.RingMesh.Scale=Vector3.new(3,3,3)
	r.BrickColor=BrickColor.new("Gold")
	coroutine.resume(coroutine.create(function(par) for i=1, 14 do par.Transparency=i/14 par.RingMesh.Scale=par.RingMesh.Scale+Vector3.new(5,5,.1) wait() end par.Parent=nil end),r)
	p=Instance.new("Part")
	p.Name="BlastRing"
	p.TopSurface=0
	p.BottomSurface=0
	p.CanCollide=false
	p.Anchored=true
	p.BrickColor=BrickColor.new("Gold")
	p.Size=Vector3.new(1,1,1)
	p.CFrame=part.CFrame*CFrame.new(0,cframe,0)*CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0) 
	p.CFrame=p.CFrame-Vector3.new(0,3,0)
	p.Parent=workspace
	local mesheh = Instance.new("SpecialMesh") 
	mesheh.Parent = p 
	mesheh.Name = "BlastMesh" 
	mesheh.MeshId = "http://www.roblox.com/asset/?id=20329976" 
	p.BlastMesh.Scale=Vector3.new(5,5,1)
	coroutine.resume(coroutine.create(function(par) for lol=1, 17 do if Corrupt==false then par.BlastMesh.Scale=par.BlastMesh.Scale+Vector3.new(1,1,1) else par.BlastMesh.Scale=par.BlastMesh.Scale+Vector3.new(2,1.3,2) end par.Transparency=lol/17 par.CFrame=par.CFrame*CFrame.new(0,.1,0) wait() end par.Parent=nil end),p)
end 

function oneslash() 
if mode == 0 then 
attack = true 
wait(0)  
ss(prt1,0.7) 
ss(prt2,0.7) 
wait(0.3) 
local con = prt7.Touched:connect(OT) 
local con2 = prt8.Touched:connect(OT) 
for i = 0 , 1 , 0.20 do 
wait(0)  
effect() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
con:disconnect() 
con2:disconnect() 
elseif mode == 1 then 
attack = true 
wait(0)  
for i = 0 , 1 , 0.125 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.5+2*i, 0.5,-0.75+1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
local con = prt8.Touched:connect(OT) 
ss(prt1,1) 
for i = 0 , 0.95 , 0.25 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(3.5-4.5*i, 0.5,0.25-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
effect2() 
end 
con:disconnect() 
attack = false 
end 
end 

function twoslash() 
if mode == 0 then 
attack = true 
wait(0)  
ss(prt1,0.7) 
ss(prt2,0.7) 
wait(0.3) 
local con = prt7.Touched:connect(OT) 
local con2 = prt8.Touched:connect(OT) 
for i = 0 , 1 , 0.20 do 
wait(0)  
effect() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-4*i+3,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
con:disconnect() 
con2:disconnect() 
elseif mode == 1 then 
attack = true 
wait(0)  
for i = 0 , 1 , 0.125 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.5+2*i,-0.5,0.75-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
local con2 = prt7.Touched:connect(OT) 
ss(prt2,1) 
for i = 0 , 0.9 , 0.25 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(3.5-4.5*i,-0.5,-0.25+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
effect1() 
end 
con2:disconnect() 
attack = false 
end 
end 

function threeslash() 
if mode == 0 then 
attack = true 
wait(0) 
ss(prt1,0.7) 
ss(prt2,0.7) 
wait(0.3) 
local con = prt7.Touched:connect(OT) 
local con2 = prt8.Touched:connect(OT) 
for i = 0 , 1 , 0.20 do 
wait(0)  
effect() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.5*i+1,0,0) 
end 
attack = false 
con:disconnect() 
con2:disconnect() 
elseif mode == 1 then 
attack = true 
wait(0.1) 
local con = prt8.Touched:connect(OT) 
ss(prt1,1) 
for i = 0 , 0.95 , 0.25 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(6.5-4.5*-i, 0.5,0.25-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
effect2() 
end 
con:disconnect() 
attack = false 
end 
end 

function fourslash() 
if mode == 0 then 
attack = true 
wait(0)  
ss(prt1,0.7) 
ss(prt2,0.7) 
wait(0.3) 
local con = prt7.Touched:connect(OT) 
local con2 = prt8.Touched:connect(OT) 
for i = 0 , 1 , 0.20 do 
wait(0)  
effect() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i+0.5,0,0) 
end 
attack = false 
con:disconnect() 
con2:disconnect() 
elseif mode == 1 then 
attack = true 
wait(0.1)
local con2 = prt7.Touched:connect(OT) 
ss(prt2,1) 
for i = 0 , 0.9 , 0.25 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(6.5-4.5*-i,-0.5,-0.25+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
effect1() 
end 
con2:disconnect() 
attack = false 
end 
end 

function fiveslash() 
if mode == 0 then 
attack = true 
wait(0)  
ss(prt1,0.7) 
ss(prt2,0.7) 
wait(0.3) 
local con = prt7.Touched:connect(megatouch) 
local con2 = prt8.Touched:connect(megatouch) 
for i = 0 , 1 , 0.20 do 
wait(0)  
effect() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0.5*i, 1.57) * CFrame.new(0, 1, 0) 
end 
for i = 0 , 1 , 0.30 do 
wait(0)  
effect() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 1*i, 1.57) * CFrame.new(0, 1, 0) 
end 
attack = false 
con:disconnect() 
con2:disconnect() 
elseif mode == 1 then 
attack = true 
wait(0.1) 
local con = prt7.Touched:connect(OT) 
local con2 = prt8.Touched:connect(OT) 
ss(prt1,1) 
ss(prt2,1)
for i = 0 , 1 , 0.10 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(3.5-4.5*i, 1.1*i,0.001-1*-i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(3.5-4.5*i, -1.1*i,-0.001+1*-i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
effect1() 
effect2() 
end 
con:disconnect() 
con2:disconnect() 
attack = false 
end 
end 

function sixslash() 
attack = true 
wait(0.1) 
local con = prt7.Touched:connect(OT) 
local con2 = prt8.Touched:connect(OT) 
ss(prt1,1) 
ss(prt2,1)
for i = 0 , 1 , 0.10 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(-1.2-4.5*i, 1.1*i,0.1-1*-i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(-1.2-4.5*i, -1.1*i,-0.1+1*-i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
effect1() 
effect2() 
end 
con:disconnect() 
con2:disconnect() 
attack = false 
end 

function sevenslash() 
attack = true 
ss(prt1,1) 
ss(prt2,1) 
local con = prt7.Touched:connect(OT) 
local con2 = prt8.Touched:connect(OT) 
for i = 0 , 1 , 0.15 do 
wait(0) 
RW.C0 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(-1.2-4.5, -1*i,0.1-1*-i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(-1.2-4.5, 1*i,-0.1+1*-i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
effect1() 
effect2() 
end 
con:disconnect() 
con2:disconnect() 
attack = false 
end 

function guard2slash() 
attack = true 
ss(prt1,1) 
ss(prt2,1) 
local con = prt7.Touched:connect(guardOT2) 
local con2 = prt8.Touched:connect(guardOT2) 
for i = 0 , 1 , 0.15 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(-1.2-4.5, -1*i,0.1-1*-i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(-1.2-4.5, 1*i,-0.1+1*-i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
effect1() 
effect2() 
end 
con:disconnect() 
con2:disconnect() 
attack = false 
end 

function guardslash() 
attack = true 
wait(0)  
ss(prt1,0.7) 
ss(prt2,0.7) 
wait(0.3) 
local con = prt7.Touched:connect(guardOT2) 
local con2 = prt8.Touched:connect(guardOT2) 
for i = 0 , 1 , 0.20 do 
wait(0)  
effect() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0.5*i, 1.57) * CFrame.new(0, 1, 0) 
end 
for i = 0 , 1 , 0.30 do 
wait(0)  
effect() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 1*i, 1.57) * CFrame.new(0, 1, 0) 
end 
attack = false 
con:disconnect() 
con2:disconnect() 
end 

function guardslashtwo() 
attack = true 
wait(0)  
	for _,v in pairs(Torso.Parent:children()) do
		if v.className=="Part" then
			n=v:clone()
			n.archivable=true
			n.Anchored=true
			n.CanCollide=false
			n.Name="TRAILER"
			n.BrickColor=BrickColor.new("Gold")
			n.Parent=workspace
			coroutine.resume(coroutine.create(function(ne) for i=1, 12 do ne.Transparency=i/12 wait() end ne.Parent=nil end),n)
		elseif v.className=="Hat" then
			n=v.Handle:clone()
			n.archivable=true
			n.Anchored=true
			n.CanCollide=false
			n.Name="TRAILER"
			n.BrickColor=BrickColor.new("Bright yellow")
			n.Parent=workspace
			coroutine.resume(coroutine.create(function(ne) for i=1, 12 do ne.Transparency=i/12 wait() end ne.Parent=nil end),n)
		end
	end
	for _,v in pairs(stormblade:children()) do
		if v.className=="Part" then
			n=v:clone()
			n.archivable=true
			n.Anchored=true
			n.CanCollide=false
			n.Name="TRAILER"
			n.BrickColor=BrickColor.new("Gold")
			n.Parent=workspace
			coroutine.resume(coroutine.create(function(ne) for i=1, 12 do ne.Transparency=i/12 wait() end ne.Parent=nil end),n)
		end
	end
ass(Torso,0.8) 
Character:MoveTo(Torso.Position+Torso.CFrame.lookVector*10) 
Torso.CFrame = Torso.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(180),0) 
attack = false 
end 

function stab() 
if ragecharge >= 10 then 
skill = true 
attack = true 
for i = 0 , 1 , 0.20 do 
wait(0)  
LW.C0 = CFrame.new(-1, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(1.5*i,0,1*i) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , math.rad(90) , 0.10 do 
wait(0)  
wld1.C0 = wld1.C0 * CFrame.fromEulerAnglesXYZ(0, math.rad(90)*i, 0) 
end 
ss(prt1,0.7) 
ss(prt2,0.7) 
wait(0.3) 
local con = prt7.Touched:connect(megatouch) 
local con2 = prt8.Touched:connect(megatouch) 
for i = 0 , 1 , 0.20 do 
wait(0)  
effect() 
LW.C0 = CFrame.new(-1.5, 0.5, 0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-1.5*i+1,0,-1*i+1) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0.5*i, 1.57) * CFrame.new(0, 1, 0) 
end 
for i = 0 , 1 , 0.30 do 
wait(0)  
effect() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 1*i, 1.57) * CFrame.new(0, 1, 0) 
end 
ragecharge = ragecharge - 10 
con:disconnect() 
con2:disconnect() 
wait(1) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 1.57) * CFrame.new(0, 1, 0) 
skill = false 
attack = false 
end 
end 

function showoff() 
attack = true 
for i = 0 , 1 , 0.05 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.57*i,1.57*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.57*i,1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.01 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.57,1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
end 
for i = 0 , 1 , 0.01 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.57,1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1*i+1,0,0) 
end 
for i = 0 , 1 , 0.01 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.57,1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
end 
for i = 0 , 1 , 0.01 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.57,1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1*i+1,0,0) 
end 
ragecharge = ragecharge + 100 
for i = 0 , 1 , 0.05 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57*i+1.57,-1.57*i+1.57,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57*i+1.57,-1.57*i+1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
end 

function bewmstab() 
if ragecharge >= 50 then 
skill = true 
attack = true 
for i = 0 , 1 , 0.20 do 
wait(0)  
LW.C0 = CFrame.new(-1, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(1.5*i,0,1*i) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , math.rad(90) , 0.10 do 
wait(0)  
wld1.C0 = wld1.C0 * CFrame.fromEulerAnglesXYZ(0, math.rad(90)*i, 0) 
end 
efect() 
ss(prt1,0.7) 
ss(prt2,0.7) 
wait(0.3) 
local con = prt7.Touched:connect(boomtouch) 
local con2 = prt8.Touched:connect(boomtouch) 
for i = 0 , 1 , 0.20 do 
wait(0)  
effect() 
LW.C0 = CFrame.new(-1.5, 0.5, 0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-1.5*i+1,0,-1*i+1) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0.5*i, 1.57) * CFrame.new(0, 1, 0) 
end 
local vel = Instance.new("BodyVelocity")
vel.Parent = Player.Character.Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Player.Character.Torso.CFrame.lookVector * 250
for i = 0 , 1 , 0.30 do 
wait(0)  
effect() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 1*i, 1.57) * CFrame.new(0, 1, 0) 
end 
vel:Remove() 
ragecharge = ragecharge - 50 
con:disconnect() 
con2:disconnect() 
wait(1) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 1.57) * CFrame.new(0, 1, 0) 
skill = false 
attack = false 
end 
end 

function attack1() 
if ragecharge >= 5 then 
skill = true 
attack = true 
ss(prt1,0.7) 
ss(prt2,0.7) 
wait(0.3) 
coroutine.resume(coroutine.create(function() 
wait(0)  
ss(prt1,0.7) 
ss(prt2,0.7) 
end)) 
local con = prt7.Touched:connect(skillOT) 
local con2 = prt8.Touched:connect(skillOT) 
for i = 0 , 1 , 0.20 do 
wait(0)  
effect() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0 , 1 , 0.20 do 
wait(0)  
effect() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2*i-0.1,0,0) 
end 
ragecharge = ragecharge - 5 
con:disconnect() 
con2:disconnect() 
wait(1) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 1.57) * CFrame.new(0, 1, 0) 
skill = false 
attack = false 
end 
end 

function charging() 
charging2 = true 
attack = true 
skill = true 
Character.Humanoid.WalkSpeed = 0 
for i = 0 ,1 , 0.05 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1*i) 
RW.C0 = CFrame.new(1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(0.43*i+1.57,3.14,0) * CFrame.new(0,0,-0.5) 
end 
while charging2 == true do 
	Character.Humanoid.Health = Character.Humanoid.Health + 1
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
		local targ = head.Position - Torso.Position;
		local mag = targ.magnitude;
		if mag <= 6 and c[i].Name ~= Player.Name then
	        hum.Health = hum.Health + 1 
		end
                end
	end 
wait(0.15) 
	p=Instance.new("Part")
	p.Name="FlameEm"
	p.Shape=0
	p.TopSurface=0
	p.BottomSurface=0
	p.BrickColor=BrickColor.new("White") 
	p.Anchored=true
	p.CanCollide=false
	p.Size=Vector3.new(1,1,1)
	p.CFrame=CFrame.new(Character["Torso"].CFrame.p+Vector3.new(0,-3,0))+Vector3.new(math.random(-10,10)/5,0,math.random(-10,10)/5)
	p.Parent=workspace
	m=Instance.new("SpecialMesh")
	m.MeshType="Sphere"
	m.Parent=p
	m.Scale=Vector3.new(1,1,1)
	coroutine.resume(coroutine.create(function(p) for i=1, 9 do p.Mesh.Scale=p.Mesh.Scale+Vector3.new(0,1.5,0) p.Transparency=p.Transparency+1/9  wait(0)  end p.Parent=nil end),p)
if ragecharge >= 400 then 
wait(0)  
else 
coroutine.resume(coroutine.create(function() 
wait(1) 
if charging2 == true then 
if ragecharge >= 400 then 
wait(0)  
else 
Character.Humanoid.Health = Character.Humanoid.Health + 0.01 
ragecharge = ragecharge + 1 
end 
end 
end)) 
end 
end 
if charging2 == false then 
attack = false 
skill = false 
Character.Humanoid.WalkSpeed = 16 
for i = 0 ,1 , 0.05 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-1.57*i+1.57,0,-1*i+1) 
RW.C0 = CFrame.new(1.5, 0.5, 0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-1.57*i+1.57,0,1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(-0.50*i+0.43+1.57,3.14,0) * CFrame.new(0,0,-0.5) 
end 
end 
end 

function boomerang() 
if ragecharge >= 20 then 
attack = true 
skill = true 
for i = 0 , 1 , 0.20 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1*i,0,0) 
end 
efect() 
--[[coroutine.resume(coroutine.create(function() 
end))]] 
for i = 0 , 1 , 0.20 do 
wait(0)  
RW.C0 = CFrame.new(math.rad(90), 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5*i-1,0,0) 
end 
wait(0)  
ragecharge = ragecharge - 20
local con = prt7.Touched:connect(spinOT) 
local con2 = prt8.Touched:connect(spinOT) 
for i = 0 , 1 , 0.05 do 
wait(0)  
effect() 
ss(prt1,1) 
ss(prt2,1) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(630)*i, 1.57) * CFrame.new(0, 20*i+1, 0) 
end 
for i = 0 , 1 , 0.05 do 
wait(0)  
effect() 
ss(prt1,1) 
ss(prt2,1) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(630)*i, 1.57) * CFrame.new(0, -20*i+21, 0) 
end 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 1.57) * CFrame.new(0, 1, 0) 
con:disconnect() 
con2:disconnect() 
for i = 0 , 1 , 0.25 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i-4,0,0) 
end 
wait(0.25) 
for i = 0 , 1 , 0.10 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-3*i+3,0,0) 
end 
attack = false 
skill = false 
end 
end 

function rampage() 
attack = true 
skill = true 
for i = 0 , 1 , 0.175 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(2-0.5*i, 0.5,-0.75*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.5,-0.5,0.75*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
uss(prt3,1.5) 
wait(0.1) 
for i = 0 , 1 , 0.125 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.5+2*i, 0.5,-0.75+1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.5+2*i,-0.5,0.75-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
local con = prt7.Touched:connect(rampageOT) 
local con2 = prt8.Touched:connect(rampageOT) 
Character.Humanoid.WalkSpeed = 0 
local vel = Instance.new("BodyVelocity")
vel.Parent = Player.Character.Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Player.Character.Torso.CFrame.lookVector * 20
ss(prt2,1) 
for i = 0 , 0.8 , 0.2 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(3.5-4.5*i, 0.5,0.25-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
effect2() 
end 
ss(prt2,1) 
for i = 0 , 0.8 , 0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(3.5-4.5*i,-0.5,-0.25+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
for i = 0 , 1 , 0.2 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(6.5-4.5*-i, 0.5,0.25-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(prt2,1) 
for i = 0 , 0.8 , 0.2 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(3.5-4.5*i, 0.5,0.25-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
effect2() 
end 
for i = 0 , 1 , 0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(6.5-4.5*-i,-0.5,-0.25+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
ss(prt2,1) 
for i = 0 , 0.8 , 0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(3.5-4.5*i,-0.5,-0.25+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
effect1() 
end 
for i = 0 , 1 , 0.2 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(6.5-4.5*-i, 0.5,0.25-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(prt2,1) 
for i = 0 , 0.8 , 0.2 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(3.5-4.5*i, 0.5,0.25-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
effect2() 
end 
for i = 0 , 1 , 0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(6.5-4.5*-i,-0.5,-0.25+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
ss(prt2,1) 
for i = 0 , 0.8 , 0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(3.5-4.5*i,-0.5,-0.25+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
effect1() 
end 
wait(0.5) 
Character.Humanoid.WalkSpeed = 16 
con:disconnect() 
con2:disconnect() 
vel:Remove() 
coroutine.resume(coroutine.create(function() 
for i = 0 , 0.8 , 0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(3.5-4.5*i,-0.5,-0.25+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
RW.C0 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(3.5-4.5*i, 0.5,0.25-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
effect() 
end 
end)) 
local conneh = prt7.Touched:connect(finalrampageOT) 
local conneh2 = prt8.Touched:connect(finalrampageOT) 
	g=Instance.new("BodyGyro")
	g.P=6000
	g.D=100
	g.maxTorque=Vector3.new(5000000,500000000,5000000)*5000000
	g.cframe=Torso.CFrame
	g.Parent=Torso 
	for i=1, 16 do
		g.cframe=g.cframe*CFrame.fromEulerAnglesXYZ(-math.pi/4,0,0)
		wait()
	end 
ss(prt2,1) 
ss(prt2,1) 
for i = 0 , 0.8 , 0.1 do 
wait(0)  
effect() 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(3.5-4.5*i,-0.5,-0.25+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
RW.C0 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(3.5-4.5*i, 0.5,0.25-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(1) 
	for i=1, 16 do
		g.cframe=g.cframe*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
		wait()
	end
g:Remove() 
conneh:disconnect() 
conneh2:disconnect() 
attack = false 
skill = false 
end 

function trololol() 
for i = 0, 1, 0.2 do 
wait() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5, -0.5-1.7*i, 0.5+0.5*i) 
end 
end 

function guard() 
attack = true 
skill = true 
wait(0)  
guardattack = false 
guardy = true 
--Character.Humanoid.WalkSpeed = 0 
--Torso.CFrame = Torso.CFrame * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 1.57, 0) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.57,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,1) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,1.57) * CFrame.new(0,0,-0.5) 
local con = prt1.Touched:connect(guardOT) 
local vel = Instance.new("BodyGyro") 
vel.Parent = Player.Character.Torso 
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
CF = Torso.CFrame 
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(90),0) 
while guardy == true do 
wait(0)  
effect() 
wld1.C0 = wld1.C0 * CFrame.fromEulerAnglesXYZ(0, 0.5, 0) 
end 
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 1.57) * CFrame.new(0, 1, 0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
--Torso.CFrame = Torso.CFrame * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, -1.57, 0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
if guardattack == true then 
guardslash() 
end 
vel:Remove() 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 1.57) * CFrame.new(0, 1, 0) 
con:disconnect() 
guardy = false 
attack = false 
skill = false 
end 

function guardtwo() 
attack = true 
skill = true 
wait(0)  
guardattack = false 
guardy = true 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(90),0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.57,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,1) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,1.57) * CFrame.new(0,0,-0.5) 
local con = prt1.Touched:connect(guardOT) 
local vel = Instance.new("BodyGyro") 
vel.Parent = Player.Character.Torso 
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
CF = Torso.CFrame 
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(90),0) 
while guardy == true do 
wait(0)  
effect() 
wld1.C0 = wld1.C0 * CFrame.fromEulerAnglesXYZ(0, 0.5, 0) 
end 
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 1.57) * CFrame.new(0, 1, 0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
Torso.CFrame = Torso.CFrame * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, -1.57, 0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
if guardattack == true then 
wait(0.1) 
guardslashtwo() 
end 
vel:Remove() 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 1.57) * CFrame.new(0, 1, 0) 
con:disconnect() 
guardy = false 
attack = false 
skill = false 
end 


function magicbeam() 
attack = true 
skill = true 
css(Torso,0.2) 
local vel = Instance.new("BodyGyro") 
vel.Parent = Player.Character.Torso 
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
CF = Torso.CFrame 
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(-90),0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,math.rad(-90)) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1,0,1) 
for i = 0,1,0.03 do 
wait() 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(3,3,3)
	S.BrickColor=BrickColor.new("Gold")
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=LeftArm.CFrame*CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
for i = 0,1,0.03 do 
wait() 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(3,3,3)
	S.BrickColor=BrickColor.new("Gold")
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=LeftArm.CFrame*CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.2,0.2,0.2) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
for i = 0,1,0.03 do 
wait() 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(3,3,3)
	S.BrickColor=BrickColor.new("Gold")
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=LeftArm.CFrame*CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.3,0.3,0.3) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
for i = 0,1,0.03 do 
wait() 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(3,3,3)
	S.BrickColor=BrickColor.new("Gold")
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=LeftArm.CFrame*CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.4,0.4,0.4) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-.5*i-1, 0.5, 0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(.57*i+1,0,-2.57*i+1) 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(3,3,3)
	S.BrickColor=BrickColor.new("Gold")
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=LeftArm.CFrame*CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.4,0.4,0.4) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
for i = 0,1,0.03 do 
wait() 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(3,3,3)
	S.BrickColor=BrickColor.new("Gold")
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=LeftArm.CFrame*CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.5,0.5,0.5) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
ubersoundboom(Torso) 
	local msh1 = Instance.new("SpecialMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	msh1.MeshType = "Sphere" 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(3,3,3)
	S.BrickColor=BrickColor.new("Bright yellow")
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=LeftArm.CFrame*CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S 
	ringattack(LeftArm,-1) 
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 19 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(1,1,1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=Part.Transparency+0.05 wait() end Part.Parent=nil end),S,S.CFrame)

	local msh1 = Instance.new("SpecialMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	msh1.MeshType = "Sphere" 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(3,3,3)
	S.BrickColor=BrickColor.new("Gold")
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=LeftArm.CFrame*CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 19 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.7,0.7,0.7) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=Part.Transparency+0.05 wait() end Part.Parent=nil end),S,S.CFrame)
	Vel=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)
	v=Instance.new("BodyVelocity")
	v.P=3000
	v.maxForce=Vector3.new(math.huge,math.huge,math.huge)
	v.velocity=Vel
	v.Parent=S
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - S.Position;
		local mag = targ.magnitude;
		if mag <= 25 and c[i].Name ~= Player.Name then 
		coroutine.resume(coroutine.create(function() 
		for i = 0,1,0.1 do 
		wait() 
		DBHit(head,S) 
		end 
		end)) 
		end 
		end 
		end 
	end 
wait(1) 
vel:Remove() 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,math.rad(90)*i+math.rad(-90)) * CFrame.new(0,0,-0.5) 
end 
attack = false 
skill = false 
end 

function haxball() 
attack = true 
skill = true 
css(Torso,0.4) 
local vel = Instance.new("BodyGyro") 
vel.Parent = Player.Character.Torso 
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
CF = Torso.CFrame 
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(-90),0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,math.rad(-90)) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1,0,1) 
for i = 0,1,0.03 do 
wait() 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(3,3,3)
	S.BrickColor=BrickColor.new("Gold")
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=LeftArm.CFrame*CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-.5*i-1, 0.5, 0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(.57*i+1,0,-2.57*i+1) 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(3,3,3)
	S.BrickColor=BrickColor.new("Gold")
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=LeftArm.CFrame*CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.2,0.2,0.2) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
for i = 0,1,0.03 do 
wait() 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(3,3,3)
	S.BrickColor=BrickColor.new("Gold")
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=LeftArm.CFrame*CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.2,0.2,0.2) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
local msh1 = Instance.new("SpecialMesh") 
msh1.Scale = Vector3.new(1.2,1.2,1.2) 
msh1.MeshType = "Sphere" 
local bawl = Instance.new("Part") 
bawl.Parent = workspace 
bawl.formFactor = 0
bawl.BrickColor = BrickColor.new("Gold") 
bawl.Size = Vector3.new(3,3,3) 
bawl.CFrame = LeftArm.CFrame*CFrame.new(0,-1.5,0) 
bawl.Reflectance = 0
bawl.TopSurface = 0
bawl.BottomSurface = 0
bawl.Transparency = 0
bawl.Friction = .9 
bawl.Elasticity = 0 
bawl.Anchored = true 
bawl.CanCollide = true 
msh1.Parent = bawl 
wait(2) 
bawl.Velocity = Head.CFrame.lookVector * 50 
bawl.CFrame = LeftArm.CFrame*CFrame.new(0,-1,0) 
bawl.Anchored = false 
local force = Instance.new("BodyForce") 
force.Parent = bawl 
force.force = Vector3.new(0,2200,0) 
ubersoundboom(Torso) 
wait(1) 
vel:Remove() 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,math.rad(90)*i+math.rad(-90)) * CFrame.new(0,0,-0.5) 
end 
attack = false 
skill = false 
end 

function guard2() 
attack = true 
skill = true 
wait(0)  
guardy = true 
--Character.Humanoid.WalkSpeed = 0 
Torso.CFrame = Torso.CFrame * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(-0.5, 0, 0) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1,3.14,0) * CFrame.new(0,0,-0.5) 
local con = prt7.Touched:connect(guardOT) 
local con2 = prt8.Touched:connect(guardOT) 
local vel = Instance.new("BodyGyro") 
vel.Parent = Player.Character.Torso 
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
CF = Torso.CFrame 
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(-360),0) 
coroutine.resume(coroutine.create(function() 
wait(8) 
if guardy == true then 
guardy = false 
Character.Humanoid.WalkSpeed = 16 
end 
end)) 
while guardy == true do 
wait(0)  
effect() 
wld1.C0 = wld1.C0 * CFrame.fromEulerAnglesXYZ(0, 0.5, 0) 
wld2.C0 = wld2.C0 * CFrame.fromEulerAnglesXYZ(0, 0.5, 0) 
end 
vel:Remove() 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(4.7, 0, 1.57) * CFrame.new(0, 1, -0.57) 
wld2.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld2.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 1.57) * CFrame.new(0, 1, -0.57) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
guard2slash() 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2, 1-0.5,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.5,-1+0.5,0) 
LW.C1 = CFrame.new(0, 0.5, 0) 
con:disconnect() 
con2:disconnect() 
guardy = false 
attack = false 
skill = false 
end 

function spinny() 
if ragecharge >= 10 then 
attack = true 
skill = true 
for i = 0 , 1 , 0.20 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.57*i,1.57*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.57*i,1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 1.57) * CFrame.new(0, 1, 1.5*i) 
end 
local con = prt7.Touched:connect(skillOT) 
local con2 = prt8.Touched:connect(skillOT) 
local vel = Instance.new("BodyGyro") 
vel.Parent = Player.Character.Torso 
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
CF = Torso.CFrame 
ragecharge = ragecharge - 5 
ss(prt1,0.7) 
ss(prt2,0.7) 
for i = 0 , 1 , 0.075 do 
wait(0)  
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(-360)*i,0) 
effect() 
end 
ragecharge = ragecharge - 5 
ss(prt1,0.7) 
ss(prt2,0.7) 
for i = 1 , 0 , -0.075 do 
wait(0)  
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(-360)-math.rad(-360)*i*i,0) 
effect() 
end 
con:disconnect() 
con2:disconnect() 
for i = 0 , 1 , 0.20 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57*i+1.57,-1.57*i+1.57,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57*i+1.57,-1.57*i+1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 1.57) * CFrame.new(0, 1, -1.5*i+1.5) 
end 
vel:Remove() 
attack = false 
skill = false 
end 
end 

--other mode skills here 

function crossslash() 
if ragecharge >= 10 then 
attack = true 
skill = true 
for i = 0 , 1 , 0.175 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(2-0.5*i, 0.5,-0.75*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.5,-0.5,0.75*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
uss(prt3,1.5) 
wait(0.1) 
for i = 0 , 1 , 0.125 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.5+2*i, 0.5,-0.75+1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.5+2*i,-0.5,0.75-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
local con = prt7.Touched:connect(skillOT) 
local con2 = prt8.Touched:connect(skillOT) 
ragecharge = ragecharge - 10 
ss(prt3,1) 
for i = 0 , 1 , 0.2 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(3.5-4.5*i, 0.5,0.25-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(3.5-4.5*i,-0.5,-0.25+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
effect() 
end 
con:disconnect() 
con2:disconnect() 
for i = 0 , 1 , 0.075 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(-1+3*i, 0.5,-0.75+0.75*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(-1+2.5*i,-0.5,0.75-.75*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
attack = false 
skill = false 
end 
end 

function animationlol() --turdulator was here X3
for i = 0 , 1 , 0.05 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(4*i, 1*i, 0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,2*i) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(4*i, -1*i, 0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,-2*i) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(0.43*i+1.57,3.14,0) * CFrame.new(0,0,-0.5) 
end 
end 

function animationlol2() 
for i = 0 , 1 , 0.2 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-3+4, 1, 0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2*i,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-3+4, -1, 0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2*i,0,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(-1*i-4.5,3.14,0) * CFrame.new(0,0,-0.5) 
end 
end 

function animationlol3() 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57+1.57,0,-1+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57+1.57,0,1-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
end 

function spinslash() 
if ragecharge >= 10 then 
attack = true 
for i = 0 , 1 , 0.175 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(2+2*i, 0.5-.5*i,2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.5-5.5*i,-0.5+.5*i,-2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
local con = prt7.Touched:connect(skillOT) 
local con2 = prt8.Touched:connect(skillOT) 
local vel = Instance.new("BodyGyro") 
vel.Parent = Player.Character.Torso 
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
CF = Player.Character.Torso.CFrame 
ss(prt1,1) 
ragecharge = ragecharge - 5 
for i = 0 , 1 , 0.075 do 
wait(0)  
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(-360)*i,0) 
effect() 
end 
ss(prt1,1) 
ragecharge = ragecharge - 5 
for i = 1 , 0 , -0.075 do 
wait(0)  
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(-360)-math.rad(-360)*i*i,0) 
effect() 
end 
vel.Parent = nil 
con:disconnect() 
con2:disconnect() 
wait(0.1) 
for i = 0 , 1 , 0.075 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, -0.5+.5*i) * CFrame.fromEulerAnglesXYZ(4-2*i, 0+0.5*i,2-2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(-4+5.5*i,0-.5*i,-2+2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
walkspeed(16) 
attack = false 
end 
end 

function thrustspread() 
if ragecharge >= 5 then 
attack = true 
ss(prt1,0.5) 
for i = 0 , 1 , 0.175 do 
wait(0) 
RW.C0 = CFrame.new(1.5-0.5*i, 0.5, -1*i) * CFrame.fromEulerAnglesXYZ(2-.5*i, 0.5-0.5*i,-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5*i, 0.5, -0.5-0.5*i) * CFrame.fromEulerAnglesXYZ(1.5,-0.5+0.5*i,1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
for i = 0 , 1 , 0.1 do 
wait(0)  
RW.C0 = CFrame.new(1.0, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5-2*i, 0,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.0, 0.5, -1) * CFrame.fromEulerAnglesXYZ(1.5-2*i,0,1) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
local con = prt7.Touched:connect(skillOT) 
local con2 = prt8.Touched:connect(skillOT) 
ragecharge = ragecharge - 5 
ss(prt1,1) 
for i = 0 , 1 , 0.1 do 
wait(0)  
RW.C0 = CFrame.new(1+0.5*i , 0.5, -1+0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.5*i, 0,-1+3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1-0.5*i, 0.5, -1+0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.5*i,0,1-3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
effect() 
end 
con:disconnect() 
con2:disconnect() 
wait(0.1) 
for i = 0 , 1 , 0.05 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, -0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(2, 0+0.5*i,2-2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(2-0.5*i,0-.5*i,-2+2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
walkspeed(16) 
attack = false 
end 
end 

function testy() 
if ragecharge >= 50 then 
attack = true 
for i = 0 , 1 , 0.175 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(2-0.5*i, 0.5,-0.75*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.5,-0.5,0.75*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
uss(prt1,1.5) 
efect() 
wait(0) 
for i = 0 , 1 , 0.125 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.5+2*i, 0.5,-0.75+1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.5+2*i,-0.5,0.75-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
local con = prt7.Touched:connect(boomtouch) 
local con2 = prt8.Touched:connect(boomtouch) 
ss(prt1,1) 
ragecharge = ragecharge - 50 
local vel = Instance.new("BodyVelocity")
vel.Parent = Player.Character.Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Player.Character.Torso.CFrame.lookVector * 250
for i = 0 , 0.5 , 0.2 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(3.5-4.5*i, 0.5,0.25-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(3.5-4.5*i,-0.5,-0.25+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
effect() 
end 
blast4(prt1) 
for i = 0.5 , 1 , 0.2 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(3.5-4.5*i, 0.5,0.25-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(3.5-4.5*i,-0.5,-0.25+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
effect() 
end 
vel:Remove() 
con:disconnect() 
con2:disconnect() 
for i = 0 , 1 , 0.075 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(-1+3*i, 0.5,-0.75+0.75*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(-1+2.5*i,-0.5,0.75-.75*i) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
attack = false 
end 
end 

function blast4(part) 
colors = {BrickColor.new("Bright red")} 
local mesh = Instance.new("SpecialMesh") 
mesh.MeshType = "Sphere" 
local shell = Instance.new("Part") 
mesh.Parent = shell 
shell.Anchored = true 
shell.formFactor = 1 
shell.Size = Vector3.new(1,1,1) 
shell.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(14,5.5,0) 
shell.Parent = swordholder 
shell.Transparency = 0 
if demondance == true then 
shell.BrickColor = BrickColor.new("Bright red") 
else 
shell.BrickColor = BrickColor.new("White") 
end 
shell.CanCollide = false 
coroutine.resume(coroutine.create(function() 
for i = 0 , 3 , 0.5 do 
wait(0.1) 
mesh.Scale = Vector3.new(2,40*i,2) 
shell.Transparency = 0.5*i 
end 
shell.Transparency = 1 
shell.Parent = nil 
end)) 
end 

function switch() 
if mode == 0 then 
mode = 1 
attack = true 
skill = true 
for i = 0 , 1 , 0.20 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.57*i,1.57*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.57*i,1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 1.57) * CFrame.new(0, 1, 1.5*i) 
end 
wait(0.2) 
Player.Backpack["Storm Blade"].TextureId = "http://www.roblox.com/asset/?id=31872483" 
wld2.Part1 = LeftArm 
for i = 0 , 1 , 0.20 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.57,1.57,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.57,1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 1.57) * CFrame.new(0, 1, -1*i+1.5) 
wld2.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld2.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 1.57) * CFrame.new(0, 1, 1*i-1.5) 
end 
wait(0.3) 
for i = 0 , 1 , 0.20 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57*i+1.57,-1.57*i+1.57,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57*i+1.57,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57*i+1.57,-1.57*i+1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.57*i-1.57,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(4.7, 0, 1.57) * CFrame.new(0, 1, -0.57) 
wld2.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld2.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 1.57) * CFrame.new(0, 1, -0.57) 
end 
wait(0.1) 
for i = 0 , 1 , 0.075 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2*i, 1*i-0.5,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(1.5*i,-1*i+0.5,0) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
elseif mode == 1 then 
mode = 0 
if walking == false then 
for i = 0 , 1 , 0.1 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-2*i+2, -0.5*i+0.5,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.5*i+1.5,0.5*i-0.5,0) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
wait(0.1) 
end 
for i = 0 , 1 , 0.1 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.57*i,-1.57*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.57*i,1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(4.7, 0, 1.57) * CFrame.new(0, 1, -0.57*i-0.9) 
wld2.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld2.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 1.57) * CFrame.new(0, 1, -0.57*i-0.9) 
end 
wait(0.2) 
Player.Backpack["Storm Blade"].TextureId = "http://www.roblox.com/asset/?id=31872785" 
wld2.Part1 = prt1 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 1.57) * CFrame.new(0, 1, 0) 
wld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.1,0) 
wld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
for i = 0 , 1 , 0.075 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57*i+1.57,-1.57*i+1.57,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57*i+1.57,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57*i+1.57,-1.57*i+1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.57*i-1.57,0,0) 
end 
end 
attack = false 
skill = false 
end 

function efect() 
local lol = Instance.new("Part") 
lol.Parent = Character 
lol.Shape = "Ball" 
lol.Position = Torso.Position 
lol.Anchored = true 
lol.CanCollide = false 
lol.Size = Vector3.new(1,1,1) 
lol.BrickColor = BrickColor.new("White") 
lol.Reflectance = 1 
lol.CFrame = Torso.CFrame 
local lolmesh = Instance.new("SpecialMesh") 
lolmesh.Parent = lol 
lolmesh.Scale = Vector3.new(0.5,0.5,0.5) 
lolmesh.MeshType = "Sphere"
wait(0)  
local lolweld = Instance.new("Weld") 
lolweld.Parent = lol 
lolweld.Part0 = lol 
lolweld.Part1 = Torso 
lolweld.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
lolweld.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
for i = 0, 1, 0.05 do 
wait(0)  
lolmesh.Scale = lolmesh.Scale + Vector3.new(9,9,9) 
lol.Transparency = lol.Transparency + 0.20 
lol.Reflectance = lol.Reflectance - 0.25 
lol.CFrame = Torso.CFrame 
end 
lol:Remove() 
end 

function deman() 
coroutine.resume(coroutine.create(function() 
wait(0)  
local m = Instance.new("Part") 
m.Parent = workspace 
m.BrickColor = BrickColor.new("Bright red") 
m.Transparency = 0 
m.Anchored = true 
m.Size = Vector3.new(25,25,25) 
m.CFrame = Character.Torso.CFrame + Vector3.new(0,-2.5,0) 
m.CanCollide = false 
m.Touched:connect(function(hit) kill(b,hit) end) 

function kill(brick,hit) 
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= ""..script.Name.."" then 
hum:TakeDamage(damage + 2) 
local torso = hit.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
if (torso.Position-RightArm.Position).magnitude<=25 then
local angle = (torso.Position-(RightArm.Position+Vector3.new(0,-3,0))).unit
torso.CFrame=CFrame.new(torso.Position,Vector3.new(angle.x,torso.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						local Gyro=Instance.new("BodyGyro")
						Gyro.P=1000
						Gyro.D=Gyro.D/2
						Gyro.maxTorque=Vector3.new(30000,30000,30000)*300000
						Gyro.cframe=torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						Gyro.Parent=torso
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=500
bodyVelocity.maxForce=Vector3.new(4e+003, 4e+003, 4e+003)
bodyVelocity.Parent=torso
coroutine.resume(coroutine.create(function() 
wait(0.3) 
bodyVelocity:Remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(0.8) 
Gyro:Remove() 
end)) 
end
end
end 
end 
local me = Instance.new("SpecialMesh") 
me.Parent = m 
me.MeshType = "FileMesh" 
me.MeshId = "http://www.roblox.com/asset/?id=1323306" 
me.Scale = Vector3.new(6,3.5,6) 
coroutine.resume(coroutine.create(function() 
for i = 0,15 do 
wait(0)  
m.CFrame = Character.Torso.CFrame + Vector3.new(0,-2.5,0) 
m.CFrame = m.CFrame * CFrame.fromEulerAnglesXYZ(0, 1, 0) 
m.CFrame = Character.Torso.CFrame + Vector3.new(0,-2.5,0) 
m.CFrame = m.CFrame * CFrame.fromEulerAnglesXYZ(0, 1, 0) 
me.Scale = me.Scale + Vector3.new(0.8,1.5,0.8) 
end 
for i = 0,15 do 
wait(0)  
m.CFrame = m.CFrame * CFrame.fromEulerAnglesXYZ(0, 1, 0) 
m.Transparency = m.Transparency + 0.06
me.Scale = me.Scale + Vector3.new(1.2,-2.5,1.2) 
end 
m:Remove() 
fieldcon:disconnect()
end)) 
end)) 
end 

function waveef() 
coroutine.resume(coroutine.create(function() 
wait(0)  
local m = Instance.new("Part") 
m.Parent = workspace 
m.BrickColor = BrickColor.new("Bright red") 
m.Transparency = 0 
m.Anchored = true 
m.CFrame = Character.Torso.CFrame + Vector3.new(0,-2.5,0) 
m.CanCollide = false 
local me = Instance.new("SpecialMesh") 
me.Parent = m 
me.MeshType = "FileMesh" 
me.MeshId = "http://www.roblox.com/asset/?id=20329976" 
me.Scale = Vector3.new(2,2.5,2) 
m.CFrame=CFrame.new(Character["Torso"].CFrame.p+Vector3.new(0,-2.5,0))+Vector3.new(0,0,0)
coroutine.resume(coroutine.create(function() 
for i = 0,5 do 
wait(0.1) 
m.CFrame = m.CFrame * CFrame.fromEulerAnglesXYZ(0, math.random(0,2), 0) 
me.Scale = me.Scale + Vector3.new(0.5,-0.4,0.5) 
m.Transparency = m.Transparency + 0.20
end 
m:Remove() 
end)) 
end)) 
end 

function demonize() 
if demonmode == true then return end 
attack = true 
skill = true 
animationlol() 
wait(0.3) 
coroutine.resume(coroutine.create(function() 
animationlol2() 
wait(1.5) 
animationlol3() 
attack = false 
skill = false 
end)) 
demondance = true 
demonmode = true 
sword1fire.Enabled = true 
sword1bfire.Enabled = true 
sword1fire.Color = Color3.new(1,0,0) 
sword1fire.SecondaryColor = Color3.new(1,0,0) 
sword1bfire.Color = Color3.new(1,0,0) 
sword1bfire.SecondaryColor = Color3.new(1,0,0) 
if Character.Humanoid.Health < 50 then 
fenfire.Enabled = true 
damage = 15 
else 
damage = 10 
end 
deman() 
sss(Torso,1) 
prt7.BrickColor = BrickColor.new("Bright red") 
prt8.BrickColor = BrickColor.new("Bright red") 
while ragecharge >= 5 do 
ragecharge = ragecharge - 1 
coroutine.resume(coroutine.create(function() 
wait(0.1) 
waveef() 
end)) 
wait(0)  
end 
prt7.BrickColor = bladecolor 
prt8.BrickColor = bladecolor 
sword1fire.Enabled = false 
sword1bfire.Enabled = false 
fenfire.Enabled = false 
damage = oridamage 
demondance = false 
demonmode = false 
end 

function OT(hit) 
if hit.Parent == nil then return end 
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage) 
c=Instance.new("ObjectValue")
c.Name="creator"
c.Value=game.Players.LocalPlayer
c.Parent=hum
game:GetService("Debris"):AddItem(c,.5) 
if ragecharge < 400 then 
ragecharge = ragecharge + math.random(1,5)  
end 
if ragecharge > 400 then 
ragecharge = 400 
end 
end 
end 

end 

function skillOT(hit) 
if hit.Parent == nil then return end 
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage + 1) 
c=Instance.new("ObjectValue")
c.Name="creator"
c.Value=game.Players.LocalPlayer
c.Parent=hum
game:GetService("Debris"):AddItem(c,.5) 
end 
end 

end 

function rampageOT(hit) 
if hit.Parent == nil then return end 
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage) 
c=Instance.new("ObjectValue")
c.Name="creator"
c.Value=game.Players.LocalPlayer
c.Parent=hum
game:GetService("Debris"):AddItem(c,.5) 
end 
end 

end 

function finalrampageOT(hit) 
if hit.Parent == nil then return end 
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage + 5) 
c=Instance.new("ObjectValue")
c.Name="creator"
c.Value=game.Players.LocalPlayer
c.Parent=hum
game:GetService("Debris"):AddItem(c,.5) 
local torso = hit.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
if (torso.Position-RightArm.Position).magnitude<=25 then
local angle = (torso.Position-(RightArm.Position+Vector3.new(0,-3,0))).unit
torso.CFrame=CFrame.new(torso.Position,Vector3.new(angle.x,torso.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						local Gyro=Instance.new("BodyGyro")
						Gyro.P=1000
						Gyro.D=Gyro.D/2
						Gyro.maxTorque=Vector3.new(30000,30000,30000)*300000
						Gyro.cframe=torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						Gyro.Parent=torso
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=500
bodyVelocity.maxForce=Vector3.new(4e+003, 4e+003, 4e+003)
bodyVelocity.Parent=torso
coroutine.resume(coroutine.create(function() 
wait(0.3) 
bodyVelocity:Remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(0.8) 
Gyro:Remove() 
end)) 
end
end 
end
end 
end 

function guardOT(hit) 
if hit.Parent == nil then return end 
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
Character.Humanoid.WalkSpeed = 16 
guardattack = true 
guardy = false 
end 
end 

end 

function spinOT(hit) 
if hit.Parent == nil then return end 
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage + 2) 
c=Instance.new("ObjectValue")
c.Name="creator"
c.Value=game.Players.LocalPlayer
c.Parent=hum
game:GetService("Debris"):AddItem(c,.5) 
local torso = hit.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
if (torso.Position-prt1.Position).magnitude<=25 then
local angle = (torso.Position-(prt1.Position+Vector3.new(0,-3,0))).unit
torso.CFrame=CFrame.new(torso.Position,Vector3.new(angle.x,torso.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						local Gyro=Instance.new("BodyGyro")
						Gyro.P=1000
						Gyro.D=Gyro.D/2
						Gyro.maxTorque=Vector3.new(30000,30000,30000)*300000
						Gyro.cframe=torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						Gyro.Parent=torso
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=500
bodyVelocity.maxForce=Vector3.new(4e+003, 4e+003, 4e+003)
bodyVelocity.Parent=torso
coroutine.resume(coroutine.create(function() 
wait(0.3) 
bodyVelocity:Remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(0.8) 
Gyro:Remove() 
end)) 
end
end 
end
end 

end 

function waveOT(hit) 
if hit.Parent == nil then return end 
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum.Health = hum.Health - 100 
c=Instance.new("ObjectValue")
c.Name="creator"
c.Value=game.Players.LocalPlayer
c.Parent=hum
hit.Velocity = hit.CFrame.lookVector * 500 
hum.PlatformStand = true 
wait(0.5) 
hum.PlatformStand = false
end 
end 

end 

function guardOT2(hit) 
if hit.Parent == nil then return end 
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(2) 
c=Instance.new("ObjectValue")
c.Name="creator"
c.Value=game.Players.LocalPlayer
c.Parent=hum
local torso = hit.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
if (torso.Position-RightArm.Position).magnitude<=25 then
local angle = (torso.Position-(RightArm.Position+Vector3.new(0,-3,0))).unit
torso.CFrame=CFrame.new(torso.Position,Vector3.new(angle.x,torso.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						local Gyro=Instance.new("BodyGyro")
						Gyro.P=1000
						Gyro.D=Gyro.D/2
						Gyro.maxTorque=Vector3.new(30000,30000,30000)*300000
						Gyro.cframe=torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						Gyro.Parent=torso
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=500
bodyVelocity.maxForce=Vector3.new(4e+003, 4e+003, 4e+003)
bodyVelocity.Parent=torso
coroutine.resume(coroutine.create(function() 
wait(0.3) 
bodyVelocity:Remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(0.8) 
Gyro:Remove() 
end)) 
end
end 
end
end 
end 

function megatouch(hit) 
if hit.Parent == nil then return end 
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage + 2) 
c=Instance.new("ObjectValue")
c.Name="creator"
c.Value=game.Players.LocalPlayer
c.Parent=hum
local torso = hit.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
if (torso.Position-RightArm.Position).magnitude<=25 then
local angle = (torso.Position-(RightArm.Position+Vector3.new(0,-3,0))).unit
torso.CFrame=CFrame.new(torso.Position,Vector3.new(angle.x,torso.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						local Gyro=Instance.new("BodyGyro")
						Gyro.P=1000
						Gyro.D=Gyro.D/2
						Gyro.maxTorque=Vector3.new(30000,30000,30000)*300000
						Gyro.cframe=torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						Gyro.Parent=torso
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=500
bodyVelocity.maxForce=Vector3.new(4e+003, 4e+003, 4e+003)
bodyVelocity.Parent=torso
coroutine.resume(coroutine.create(function() 
wait(0.3) 
bodyVelocity:Remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(0.8) 
Gyro:Remove() 
end)) 
end
end 
end
end 
end 

function boomtouch(hit) 
if hit.Parent == nil then return end 
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage + 5) 
c=Instance.new("ObjectValue")
c.Name="creator"
c.Value=game.Players.LocalPlayer
c.Parent=hum
local torso = hit.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
local bewm = Instance.new("Explosion") 
bewm.Parent = workspace
bewm.BlastPressure = 0 
bewm.BlastRadius = 5 
bewm.Position = torso.Position 
if (torso.Position-RightArm.Position).magnitude<=25 then
local angle = (torso.Position-(RightArm.Position+Vector3.new(0,-3,0))).unit
torso.CFrame=CFrame.new(torso.Position,Vector3.new(angle.x,torso.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						local Gyro=Instance.new("BodyGyro")
						Gyro.P=1000
						Gyro.D=Gyro.D/2
						Gyro.maxTorque=Vector3.new(30000,30000,30000)*300000
						Gyro.cframe=torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
						Gyro.Parent=torso
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=1000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=torso
coroutine.resume(coroutine.create(function() 
wait(0.5) 
bodyVelocity:Remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
Gyro:Remove() 
end)) 
end
end 
end
end 
end 

function ss(parent,pitch) --linerider64 was here :D

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.Parent = parent 

SlashSound.Volume = .7 
SlashSound.Pitch = pitch --linerider64 was also here XD
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function sss(parent,pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = parent 

SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function css(parent,pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2101137" 
SlashSound.Parent = parent 

SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(7) 
SlashSound.Parent = nil 
end)) 
end 
function ubersoundboom(parent) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2691586" 
SlashSound.Parent = parent 

SlashSound.Volume = 1 
SlashSound.Pitch = 0.3
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2974000" 
SlashSound.Parent = parent 

SlashSound.Volume = 0.8 
SlashSound.Pitch = 1.1
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function uss(parent,pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\unsheath.wav" 
SlashSound.Parent = parent 

SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function fss(parent,pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209908" 
SlashSound.Parent = parent 

SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function ass(parent,pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2767090" 
SlashSound.Parent = parent 

SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 

function effect() 
local clone = prt7:clone() 
clone.Parent = workspace 
clone.Anchored = true 
clone.Transparency = 0.5 
clone.Reflectance = 0 
clone.Mesh.Scale = clone.Mesh.Scale + Vector3.new(0.1,0.1,0.1) 
if demondance == true then 
clone.BrickColor = BrickColor.new("Bright red") 
else 
clone.BrickColor = BrickColor.new("Gold") 
end 
coroutine.resume(coroutine.create(function() 
wait(0.25) 
clone.Parent = nil 
end)) 
local cloneb = prt8:clone() 
cloneb.Parent = workspace 
cloneb.Anchored = true 
cloneb.Transparency = 0.5 
cloneb.Reflectance = 0 
cloneb.Mesh.Scale = cloneb.Mesh.Scale + Vector3.new(0.1,0.1,0.1) 
if demondance == true then 
cloneb.BrickColor = BrickColor.new("Bright red") 
else 
cloneb.BrickColor = BrickColor.new("Gold") 
end 
coroutine.resume(coroutine.create(function() 
wait(0.25) 
cloneb.Parent = nil 
end)) 
end 

function effect1() 
local clone = prt7:clone() 
clone.Parent = workspace 
clone.Anchored = true 
clone.Transparency = 0.5 
clone.Reflectance = 0 
clone.Mesh.Scale = clone.Mesh.Scale + Vector3.new(0.1,0.1,0.1) 
if demondance == true then 
clone.BrickColor = BrickColor.new("Bright red") 
else 
clone.BrickColor = BrickColor.new("Gold") 
end 
coroutine.resume(coroutine.create(function() 
wait(0.25) 
clone.Parent = nil 
end)) 
end 
function effect2() 
local cloneb = prt8:clone() 
cloneb.Parent = workspace 
cloneb.Anchored = true 
cloneb.Transparency = 0.5 
cloneb.Reflectance = 0 
cloneb.Mesh.Scale = cloneb.Mesh.Scale + Vector3.new(0.1,0.1,0.1) 
if demondance == true then 
cloneb.BrickColor = BrickColor.new("Bright red") 
else 
cloneb.BrickColor = BrickColor.new("Gold") 
end 
coroutine.resume(coroutine.create(function() 
wait(0.25) 
cloneb.Parent = nil 
end)) 
end 

function walkspeed(value) 
Character.Humanoid.WalkSpeed = value 
end 



hold = false 

function ob1d(mouse) 
hold = true 
if attack == true then return end 
oneslash() 
if hold == true then 
twoslash() 
end 
if hold == true then 
threeslash() 
end 
if hold == true then 
fourslash() 
end 
if hold == true then 
fiveslash() 
end 
if mode == 1 then 
if hold == true then 
sixslash() 
end 
if hold == true then 
sevenslash() 
end 
end 
if mode == 0 then 
attack = true 
wait(1) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 1.57) * CFrame.new(0, 1, 0) 
attack = false 
elseif mode == 1 then 
attack = true 
wait(1) 
for i = 0 , 1 , 0.075 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2, 1-0.5,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.5,-1+0.5,0) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
attack = false 
end 
end 

function ob1u(mouse) 
hold = false 
end 

buttonhold = false 

function key(key) 
if key == "h" then 
if mode == 0 then 
if guardy == false then 
guard() 
else 
guardy = false 
end 
end 
end 
if key == "k" then 
if mode == 0 then 
if guardy == false then 
guardtwo() 
else 
guardy = false 
end 
end 
end 
if attack == true then return end 
if key == "q" then 
if mode == 0 then 
stab() 
elseif mode == 1 then 
crossslash() 
end 
end 
if key == "e" then 
if mode == 0 then 
spinny() 
elseif mode == 1 then 
spinslash() 
end 
end 
if key == "r" then 
if mode == 0 then 
attack1() 
elseif mode == 1 then 
thrustspread() 
end 
end 
if key == "f" then 
demonize() 
end 
end 
if key == "g" then 
charging() 
end 
if key == "z" then 
if mode == 0 then 
bewmstab() 
elseif mode == 1 then 
testy() 
end 
end 

if key == "x" then 
if mode == 0 then 
boomerang() 
elseif mode == 1 then 
rampage() 
end 
end 
if key == "j" then 
switch() 
end 



function key2(key) 
charging2 = false 
end 

function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
if mode == 0 then 
unsheathed = true 
player = Player 
ch = Character 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
-- 
RW.Part0 = ch.Torso 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
_G.L = LW 
--
equipanim() 
elseif mode == 1 then 
equipweld2() 
player = Player 
ch = Character 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
-- 
RW.Part0 = ch.Torso 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
_G.L = LW 
--
equipanim2() 

end 
end 

function ds(mouse) 
unsheathed = false 
if mode == 0 then 
guardy = false 
hideanim() 
chargy = ragecharge 
guardy = false 
Character.Humanoid.WalkSpeed = 16 
wait(0.1) 
prt7.BrickColor = bladecolor 
prt8.BrickColor = bladecolor 
if demonmode == true then
demondance = false 
demonmode = false 
ragecharge = 0 
wait(0)  
ragecharge = chargy 
end 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
elseif mode == 1 then 
hideanim2() 
unequipweld2() 
chargy = ragecharge 
guardy = false 
Character.Humanoid.WalkSpeed = 16 
wait(0.1) 
prt7.BrickColor = bladecolor 
prt8.BrickColor = bladecolor 
if demonmode == true then
demondance = false 
demonmode = false 
ragecharge = 0 
wait(0)  
ragecharge = chargy 
end 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 
end 

Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
 
function onRunning(speed)
if skill == true then return end 
if mode == 0 then 
	if speed>0 then 
walking = true 
for i = 0 ,1 , 0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(1.5*i,0,1*i) 
if attack == false then 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
	else 
walking = false 
for i = 0 ,1 , 0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-1.5*i+1.5,0,-1*i+1) 
if attack == false then 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.5*i-0.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
	end 
elseif mode == 1 then  
	if speed>0 then 
walking = true
for i = 0 ,1 , 0.05 do 
wait(0) 
if attack == false then 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-3*i+2, -0.5*i+1-0.5,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-2.5*i+1.5,0.5*i-1+0.5,0) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
end 
else 
walking = false 
for i = 0 ,1 , 0.05 do 
wait(0)  
if attack == false then 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3*i-3+2, 0.5*i-0.5+1-0.5,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5*i-2.5+1.5,-0.5*i+0.5-1+0.5,0) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
end 
end 
end 
end 
Character.Humanoid.Running:connect(onRunning)

coroutine.resume(coroutine.create(function()
while true do 
wait(0)  
bar.Value=mana
fentext2.Size = UDim2.new(ragecharge*0.007,0,0.400000006,0)
fentext.Text = "Rage Charge("..ragecharge..")" 
end 
end)) 

--[[coroutine.resume(coroutine.create(function()
while true do 
wait(0)  
if mode == 0 then 
if attack == false and skill == false and unsheathed == true then 
wait(math.random(10,30)) 
if attack == false and skill == false and unsheathed == true and mode == 0 and walking == false then 
attack = true 
skill = true 
for i = 0 ,1 , 0.05 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1*i) 
RW.C0 = CFrame.new(1.5, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.5,1.5) 
for i = 0 ,4 , 0.05 do 
wait(0)  
effect() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,1.5*i) * CFrame.new(0,-0.5,1.5) 
end 
wld1.Part1 = RightArm 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 1.57) * CFrame.new(0, 1, 0) 
wait(0.5) 
for i = 0 ,1 , 0.05 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57*i+1.57,0,-1*i+1) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57*i+1.57,0,1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
skill = false 
end 
end 
elseif mode == 1 then 
wait(0)  
if attack == false and skill == false and unsheathed == true then 
wait(math.random(10,30)) 
if attack == false and skill == false and unsheathed == true and mode == 1 and walking == false then 
for i = 0 ,1 , 0.05 do 
wait(0)  
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-3*i+2, -0.5*i+1-0.5,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-2.5*i+1.5,0.5*i-1+0.5,0) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
wait(0.5) 
for i = 0 ,1 , 0.05 do 
wait(0)  
effect() 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(4.7, 351*i, 1.57) * CFrame.new(0, 1, -0.57) 
wld2.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld2.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 351*i, 1.57) * CFrame.new(0, 1, -0.57) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3*i-3+2, 0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3*i-2.5+1.5,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(4.7, 0, 1.57) * CFrame.new(0, 1, -0.57) 
wld2.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld2.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 1.57) * CFrame.new(0, 1, -0.57) 
wait(0.5) 
for i = 0 ,1 , 0.05 do 
wait(0) 
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1*i+3-3+2, 0.5*i-0.5+1-0.5,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5*i+3-2.5+1.5,-0.5*i+0.5-1+0.5,0) 
LW.C1 = CFrame.new(0, 0.5, 0) 
end 
end 
end 
end 
end 
end)) ]]

print("Fenrier's Storm Blade script loaded :D") 

-- lego blockland This acts as a chat filter. Don't ask why I do it. I just do >.> 
--[[ 
Copyrighted (C) Fenrier 2011 
This script is copyrighted for Fenrier. Any use of this script is breaking 
this copyright. 
All Rights Reserved. 
]] 