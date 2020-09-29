wait(1)
v3 = Vector3.new
cn = CFrame.new
ca2 = CFrame.Angles
mceil = math.ceil mc = mceil
mran = math.random rn=mran
mrad = math.rad rd=mrad
mdeg = math.deg dg=mdeg
mabs = math.abs abs=mabs
ud = UDim2.new
ca = function(x,y,z) return ca2(mrad(x),mrad(y),mrad(z)) end 
mran2 = function(a,b) return mran(a*1000,b*1000)/1000 end 
bn = BrickColor.new bc=bn
c3 = Color3.new
deb = game:GetService("Debris")

Player = game.Players.LocalPlayer
Char = Player.Character
Torso = Char.Torso
Head = Char.Head
Humanoid = Char.Humanoid
RootPart = Char.HumanoidRootPart
Root  = RootPart.RootJoint
Mouse = Player:GetMouse()

LA=Char["Left Arm"]
RA=Char["Right Arm"]
LL=Char["Left Leg"]
RL=Char["Right Leg"]
LAM=Torso["Left Shoulder"]
RAM=Torso["Right Shoulder"]
LLM=Torso["Left Hip"]
RLM=Torso["Right Hip"]
Neck=Torso.Neck
Neck.C0=cn(0,1.5,0)
Neck.C1=cn(0,0,0)

name="Timbersaw"

pcall(function() Char["Sawsuit"]:Destroy() end)
pcall(function() Player.PlayerGui[name]:Destroy() end)
pcall(function() Char[name]:Destroy() end)
pcall(function() Char.Block:Destroy() end)
pcall(function() Char.Animate:Destroy() end)


script.Name = name

as = {}
so = {"Block","Hit","Shoot"}
as.Cone = "1033714"
as.Blast = "20329976"
as.Diamond = "9756362"
as.Block = "rbxasset://sounds\\metal.ogg"
as.Wind = "rbxasset://168892363"
as.Hit = "10209583"
as.ElectricShock = "157325701"
as.Shoot = "130849509"
as.Chakram = "74322089"
as.Ring = "3270017"


iNew=function(tab)
	local v=Instance.new(tab[1])
	for Ind,Val in pairs(tab) do
		if Ind~=1 and Ind~=2 then 
			v[Ind] = Val
		end
	end
	v.Parent=tab[2]==0 and LastMade or tab[2]
	LastMade=v
	return v
end

iPart=function(tab)
	local v=Instance.new(tab.type or "Part")
	if tab.type~="CornerWedgePart" then v.formFactor="Custom" end
	v.TopSurface=10 v.BottomSurface=10 v.RightSurface=10 v.LeftSurface=10 v.FrontSurface=10 v.BackSurface=10
	v.Size=v3(tab[2],tab[3],tab[4])
	v.Locked = true
	v.Material="SmoothPlastic"
	if tab.co then v.BrickColor=bn(tab.co) end
	if tab.tr then v.Transparency=tab.tr end
	if tab.rf then v.Reflectance=tab.rf end
	if tab.cf then v.CFrame=tab.cf end
	if tab.an then v.Anchored=tab.an end
	if tab.mt then v.Material=tab.mt end
	if tab.ca then v.CanCollide=tab.ca end
	v.Parent=tab[1]
	LastMade=v
	return v
end

function Raycast(Pos,Dir,Dist,tab)
	return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *Dist),tab)
end 

function wait2(tim)
	local last = tick()
	repeat wait(0) until (tick()-last)>=tim
end

Block=iNew{"NumberValue",Char,Name="Block",Value=0}

Root.C0=cn(0,0,0)
Root.C1=cn(0,0,0)

for _,force in pairs(Torso:GetChildren()) do if force:IsA("BodyForce") or force:IsA("BodyGyro") or force:IsA("RocketPropulsion") then force:Destroy() end end

pcall(function() Torso.LAW:Remove() Torso.RAW:Remove() Torso.LLW:Remove() Torso.RLW:Remove() end)
LAW=iNew{"Weld",Torso,Name="LAW",Part0=Torso,C0=cn(-1.5,0.5,0),C1=cn(0,0.5,0)}
RAW=iNew{"Weld",Torso,Name="RAW",Part0=Torso,C0=cn( 1.5,0.5,0),C1=cn(0,0.5,0)}
LLW=iNew{"Weld",Torso,Name="LLW",Part0=Torso,C0=cn(-0.5, -1,0),C1=cn(0,  1,0)}
RLW=iNew{"Weld",Torso,Name="RLW",Part0=Torso,C0=cn( 0.5, -1,0),C1=cn(0,  1,0)}

function Arms(on)
	LAM.Parent=Torso LAM.Part0=Torso
	RAM.Parent=Torso RAM.Part0=Torso
	LAM.Part1=on and nil or LA
	RAM.Part1=on and nil or RA
	LAW.Part1=on and LA  or nil
	RAW.Part1=on and RA  or nil
end

function Legs(on)
	LLM.Parent=Torso LLM.Part0=Torso
	RLM.Parent=Torso RLM.Part0=Torso
	LLM.Part1=on and nil or LL
	RLM.Part1=on and nil or RL
	LLW.Part1=on and LL  or nil
	RLW.Part1=on and RL  or nil
end

function GetWeld(weld) 
    if not weld:FindFirstChild("Angle") then 
        local a = Instance.new("Vector3Value", weld) 
        a.Name = "Angle"
        local x,y,z=weld.C0:toEulerAnglesXYZ()
        a.Value=v3(mdeg(x),mdeg(y),mdeg(z)) 
    end 
    return weld.C0.p,weld.Angle.Value
end 

function ClearWeld(weld)
	if weld:FindFirstChild"Angle" then 
		weld.Angle:Remove() 
	end 
end

function SetWeld(weld,CC,i, loops, origpos,origangle, nextpos,nextangle,smooth) 
    local CO="C"..CC
    smooth = smooth or 1 
    if not weld:FindFirstChild("Angle") then 
        local a = Instance.new("Vector3Value", weld) 
        a.Name = "Angle"
        local x,y,z=weld.C0:toEulerAnglesXYZ()
        a.Value=v3(mdeg(x),mdeg(y),mdeg(z)) 
    end 
 
    local perc 
    if smooth == 1 then 
        perc = math.sin((math.pi/2)/loops*i) 
    else 
        perc = i/loops 
    end 
 
    local tox,toy,toz = 0,0,0 
    if origangle.x > nextangle.x then 
        tox = -mabs(origangle.x - nextangle.x) *perc 
    else 
        tox = mabs(origangle.x - nextangle.x) *perc 
    end 
    if origangle.y > nextangle.y then 
        toy = -mabs(origangle.y - nextangle.y) *perc 
    else 
        toy = mabs(origangle.y - nextangle.y) *perc 
    end 
    if origangle.z > nextangle.z then 
        toz = -mabs(origangle.z - nextangle.z) *perc 
    else 
        toz = mabs(origangle.z - nextangle.z) *perc 
    end 
 
    local tox2,toy2,toz2 = 0,0,0 
    if origpos.x > nextpos.x then 
        tox2 = -mabs(origpos.x - nextpos.x) *perc 
    else 
        tox2 = mabs(origpos.x - nextpos.x) *perc 
    end 
    if origpos.y > nextpos.y then 
        toy2 = -mabs(origpos.y - nextpos.y) *perc 
    else 
        toy2 = mabs(origpos.y - nextpos.y) *perc 
    end 
    if origpos.z > nextpos.z then 
        toz2 = -mabs(origpos.z - nextpos.z) *perc 
    else 
        toz2 = mabs(origpos.z - nextpos.z) *perc 
    end 
         weld.Angle.Value = v3(origangle.x + tox,origangle.y + toy,origangle.z + toz)
    weld[CO] = cn(origpos.x + tox2,origpos.y + toy2,origpos.z + toz2)*ca(origangle.x + tox,origangle.y + toy,origangle.z + toz) 
end 

function Triangle(p)
	local g, v = 0
	for s = 1, 3 do
		local l = (p[1+(s+1)%3] - p[1+s%3]).magnitude
		g, v = l > g and l or g, l > g and {p[1+(s-1)%3], p[1+(s)%3], p[1+(s+1)%3]} or v
	end
	local d = v[2]+(v[3]-v[2]).unit*((v[3]-v[2]).unit:Dot(v[1]-v[2]))
	local c, b = (d-v[1]).unit, (v[2]-v[3]).unit
	local a = b:Cross(c)
	local w0=iPart{workspace,1,1,1,an=true,tr=0.5,mt="SmoothPlastic",co=cc[2],cf=cn(0,0,0,a.x,b.x,c.x,a.y,b.y,c.y,a.z,b.z,c.z) + (v[1]+v[2])/2} w0.CanCollide = false w0.Name = "unray"
	local w1=iPart{workspace,1,1,1,an=true,tr=0.5,mt="SmoothPlastic",co=cc[2],cf=cn(0,0,0,-a.x,-b.x,c.x,-a.y,-b.y,c.y,-a.z,-b.z,c.z) + (v[1]+v[3])/2} w1.CanCollide = false w1.Name = "unray"
	local m0=iNew{"SpecialMesh",w0,MeshType="Wedge",Scale=v3(0,(v[2]-d).magnitude,(v[1]-d).magnitude)}
	local m1=iNew{"SpecialMesh",w1,MeshType="Wedge",Scale=v3(0,(v[3]-d).magnitude,(v[1]-d).magnitude)}
	return w0,w1
end

function Lightning(from,to,times,offset,col,thickness,tra)
	local magz = (from - to).magnitude 
	local curpos = from 
	local trz = {-offset,offset}
	for i=1,times do 
		local li = iPart{workspace,thickness,thickness,magz/times,an=true,tr=tra or 0.4,co=col or "New Yeller"} li.CanCollide = false li.Name = "unray"
		local ofz = v3(trz[mran(1,2)],trz[mran(1,2)],trz[mran(1,2)]) 
		local trolpos = cn(curpos,to)*cn(0,0,magz/times).p+ofz
		if times == i then 
			local magz2 = (curpos - to).magnitude 
			li.Size = v3(thickness,thickness,magz2)
			li.CFrame = cn(curpos,to)*cn(0,0,-magz2/2)
		else
			li.CFrame = cn(curpos,trolpos)*cn(0,0,magz/times/2)
		end
		curpos = li.CFrame*cn(0,0,magz/times/2).p 
		deb:AddItem(li,0.25)
	end
end

function PlaySound(sound,pitch,volume,parent)
	local newSound = iNew{"Sound",parent or Torso,Pitch=pitch,Volume=volume,Name=sound,SoundId=sound}
	newSound:Play()
	deb:AddItem(newSound,6)
	return newSound
end

function MeshEffect(par,cf,x,y,z,inc,col,sha,adj)
	local adj = adj or cn(0,0,0)
	local mp=iPart{par,1,1,1,co=col,tr=0.3,ca=false,an=true} mp.CFrame=cf mp.Name="unray"
	local ms
	if sha:sub(1,4)=="http" then
		ms=iNew{"SpecialMesh",mp,MeshId=sha}
	elseif sha=="Block" then
		ms=iNew{"BlockMesh",mp}
	elseif sha=="Cylinder" then
		ms=iNew{"CylinderMesh",mp}
	elseif sha=="Head" or sha=="Sphere" then
		ms=iNew{"SpecialMesh",mp,MeshType=sha}
	end
	deb:AddItem(mp,0.7)
	Spawn(function()
		for i=0,1,inc do
			mp.Transparency=0.3+(1*i)
			mp.CFrame=mp.CFrame*adj
			ms.Scale=v3(x,y,z)*(0.3+(1*i))
			if i>=1 or mp.Transparency >= 1 then mp:Destroy() end
			wait(0)
		end
	end)
end

Dmg=true
Dmgv={10,15}
HitDebounce={}
Mult = 1
Damage=function(Hum,Damage)
	local HName = Hum.Parent.Name
	if HitDebounce[HName] and HitDebounce[HName]>tick() then return end 
	HitDebounce[HName] = tick()+0.6
	local Dealt = Damage*Mult
	local col = ""

	if Hum.Parent:findFirstChild("Block") and Hum.Parent.Block:IsA("NumberValue") and Hum.Parent.Block.Value>0 then 
		Hum.Parent.Block.Value=Hum.Parent.Block.Value-1
		col="Bright blue"
		PlaySound(as.Block,1,1,Torso)
	else
		Hum:TakeDamage(Dealt)
		col="Bright red"
		PlaySound(as.Hit,1,1,Torso)
	end
	Knockback(Hum.Parent.Torso,Torso.Position,20,0.2)
	local DoH=iNew{'Model',workspace,Name=col=='Bright blue' and 'Block' or Dealt}
	iNew{'Humanoid',DoH,MaxHealth=0,Health=0,Name=''}
	local Doh=iPart{DoH,1,0.2,1,co=col,an=true} Doh.Name='Head' Doh.CanCollide = false
	iNew{'BlockMesh',Doh}
	local dofs=Hum.Parent.Torso.CFrame*cn(mran2(-1.5,1.5),2.5,mran2(-1,1)) 
	Doh.CFrame=dofs
	deb:AddItem(Doh,1)
end

local Suit = iNew{"Model",Char,Name="Sawsuit"}
cc = {"Black","Dark stone grey","Brown","Olive","Bright red","Bright orange","Bright yellow","Medium stone grey","Bright green","Bright blue","White","Bright purple",
"Really black"}
ButtonColors = {cc[5],cc[7],cc[9],cc[10],cc[12]}
Stand = iPart{Suit,2,2,1,tr=1}
wStand = iNew{"Weld",Suit,Part0=RootPart,Part1=Stand,C0=cn(0,0,0),C1=cn(0,0.5,0.5)}

for i=360/12,360,360/12 do
	local Wood = iPart{Suit,1.5,1,0.5,mt="WoodPlanks",co=cc[3]}
	iNew{"Weld",Suit,Part0=Stand,Part1=Wood,C0=cn(0,0,0)*ca(0,i,0)*cn(0,0,-2.5)}
	local Int = iPart{Suit,1.25,0.2,1,co=cc[2]}
	iNew{"Weld",Suit,Part0=Wood,Part1=Int,C0=cn(0,0.5,0.75)}
	local Metal = iPart{Suit,1.5,0.4,0.7,mt="DiamondPlate",co=cc[2]}
	iNew{"Weld",Suit,Part0=Wood,Part1=Metal,C0=cn(0,1.4/2,0)}
	local Wood2 = iPart{Suit,1.5,0.75,0.5,mt="WoodPlanks",co=cc[3]}
	iNew{"Weld",Suit,Part0=Wood,Part1=Wood2,C0=cn(0,-1.75/4,-0.25)*ca(-25,0,0)*cn(0,-1.75/4,0.25)}
end

SmokeStack = iPart{Suit,0.4,2,0.4,co=cc[2]}
iNew{"Weld",Suit,Part0=Stand,Part1=SmokeStack,C0=cn(1.75,1.5,1.25)}
iNew{"CylinderMesh",SmokeStack}
StackBall = iPart{Suit,0.8,0.8,0.8,co=cc[2]}
iNew{"Weld",Suit,Part0=SmokeStack,Part1=StackBall,C0=cn(0,1,0)}
iNew{"SpecialMesh",StackBall,MeshType="Sphere"}
StackC = iPart{Suit,1,0.2,1,co=cc[5]}
iNew{"Weld",Suit,Part0=SmokeStack,Part1=StackC,C0=cn(0,1,0)}
iNew{"CylinderMesh",StackC}
Cone = iPart{Suit,0,0,0,co=cc[5]}
iNew{"Weld",Suit,Part0=StackC,Part1=Cone,C0=cn(0,0.5,0)}
iNew{"SpecialMesh",Cone,MeshId=as.Cone,Scale=v3(0.4,1.1,0.4)}
StackC2 = iPart{Suit,0.55,0.2,0.55,co=cc[6]}
iNew{"Weld",Suit,Part0=StackC,Part1=StackC2,C0=cn(0,0.5,0)}
iNew{"CylinderMesh",StackC2,Scale=v3(1,0.5,1)}
Cone2 = iPart{Suit,0,0,0,co=cc[5]}
iNew{"Weld",Suit,Part0=Cone,Part1=Cone2,C0=cn(0,0,0)*ca(180,0,0)}
iNew{"SpecialMesh",Cone2,MeshId=as.Cone,Scale=v3(0.4,1.3,0.4)}
Hole = iPart{Suit,0.6,0.2,0.6,co=cc[2]}
iNew{"Weld",Suit,Part0=Cone2,Part1=Hole,C0=cn(0,-0.5,0)}
iNew{"CylinderMesh",Hole,Scale=v3(1,0.1,1)}
StackTop = iPart{Suit,0.8,0.2,0.8,co=cc[5]}
iNew{"Weld",Suit,Part0=Hole,Part1=StackTop,C0=cn(-0.4,-0,0)*ca(0,0,-30)*cn(0.4,0,0)}
iNew{"CylinderMesh",StackTop,Scale=v3(1,0.5,1)}
iNew{"Smoke",Hole,Color=bn(cc[13]).Color,RiseVelocity=-10,Size=1,Opacity = 0.4}

BackCyl = iPart{Suit,0,0,0,co=cc[2],mt="DiamondPlate"}
iNew{"Weld",Suit,Part0=Stand,Part1=BackCyl,C0=cn(0,0.5,2)}
iNew{"SpecialMesh",BackCyl,MeshType="Sphere",Scale=v3(3,4.5,1.25)/0.2}
SeatBack = iPart{Suit,2.25,3,0.3,co=cc[1]}
iNew{"Weld",Suit,Part0=Stand,Part1=SeatBack,C0=cn(0,0.5,1.2)*ca(5,0,0)}
SeatBack2 = iPart{Suit,2.25*0.9,3*0.9,0.2,mt="Fabric",co=cc[6]}
iNew{"Weld",Suit,Part0=SeatBack,Part1=SeatBack2,C0=cn(0,0,-0.25)}
for i=-1,1,2 do
	SeatS = iPart{Suit,0.2,1.5,2,co=cc[1]}
	iNew{"Weld",Suit,Part0=SeatBack,Part1=SeatS,C0=cn((2.05/2)*i,0,0.1)*ca(0,-15*i,0)*cn(0,0,-1)}
	SeatS2 = iPart{Suit,0.2,1.5*0.9,2*0.9,mt="Fabric",co=cc[6]}
	iNew{"Weld",Suit,Part0=SeatS,Part1=SeatS2,C0=cn(-0.1*i,0,0)}
end

Levers = {}
for i=-1,1,2 do
	local LevJ = iPart{Suit,0,0,0,tr=0.5}
	local LeverW = iNew{"Weld",Suit,Part0=Stand,Part1=LevJ,C0=cn(i,0.6,-1.5)}
	local Lever = iPart{Suit,0.2,1,0.2,co=cc[8]}
	iNew{"Weld",Suit,Part0=LevJ,Part1=Lever,C0=cn(0,0.5,0)}
	table.insert(Levers,{LeverW})
	iNew{"CylinderMesh",Lever}
	local LeverBall = iPart{Suit,0.5,0.5,0.5,co=cc[6]}
	iNew{"Weld",Suit,Part0=Lever,Part1=LeverBall,C0=cn(0,0.6,0)}
	iNew{"SpecialMesh",LeverBall,MeshType="Sphere"}
end

for i=-1,1,1 do
	local Button = iPart{Suit,0.3,0.2,0.3,co=ButtonColors[mran(1,#ButtonColors)]}
	iNew{"Weld",Suit,Part0=Stand,Part1=Button,C0=cn(0.5*i,0.6,-1.5)}
	iNew{"CylinderMesh",Button,Scale=v3(1,0.5,1)}
end

Chakram = iPart{Suit,5,5,1,co=cc[2]} Chakram.Name="Chakram"
wChakram = iNew{"Weld",Suit,Part0=Stand,Part1=Chakram,C0=cn(0,-1.4,0)*ca(90,0,0)}
iNew{"SpecialMesh",Chakram,MeshId=as.Chakram,Scale=v3(5.5,5.5,5)}
for i=-1,1,2 do
	Cyl = iPart{Suit,6,0.2,6,co=cc[2]}
	iNew{"Weld",Suit,Part0=Stand,Part1=Cyl,C0=cn(0,-1.4+i/5,0)}
	iNew{"CylinderMesh",Cyl}
end
for i=360/8,360,360/8 do 
	local Bolt = iPart{Suit,0.2,0.2,0.2,co=cc[4],mt="DiamondPlate"}
	iNew{"Weld",Suit,Part0=Cyl,Part1=Bolt,C0=cn(0,0.1,0)*ca(0,i,0)*cn(0,0,-2.75)}
	iNew{"SpecialMesh",Bolt,MeshType="Sphere",Scale=v3(1,0.75,1)}
end

Ball = iPart{Suit,4.5,3.5,4,co=cc[1]}
wBall = iNew{"Weld",Suit,Part0=Stand,Part1=Ball,C0=cn(0,-1.5,0)}
iNew{"SpecialMesh",Ball,MeshType="Sphere"}
BallM = iPart{Suit,2,3.5*1.1,4*1.1,co=cc[2]}
iNew{"Weld",Suit,Part0=Ball,Part1=BallM,C0=cn(0,0,0)}
iNew{"SpecialMesh",BallM,MeshType="Sphere"}
LArmConnect = iPart{Suit,0.25,1.25,0.5,co=cc[2],mt="DiamondPlate"}
iNew{"Weld",Suit,Part0=Stand,Part1=LArmConnect,C0=cn(-2.275,1.525,0)}
ConnectTop = iPart{Suit,0.5,0.2475,0.5,co=cc[2],mt="DiamondPlate"}
iNew{"Weld",Suit,Part0=LArmConnect,Part1=ConnectTop,C0=cn(0,1.25/2,0)*ca(0,0,90)}
iNew{"CylinderMesh",ConnectTop}
CCyl = iPart{Suit,2,0.25,2,co=cc[4],mt="DiamondPlate"}
iNew{"Weld",Suit,Part0=LArmConnect,Part1=CCyl,C0=cn(-0.25,-0.125,0)*ca(0,0,90)}
iNew{"CylinderMesh",CCyl}
CCyl2 = iPart{Suit,2.5,0.35,2.5,co=cc[5],mt="DiamondPlate"}
iNew{"Weld",Suit,Part0=CCyl,Part1=CCyl2,C0=cn(0,0.3,0)}
iNew{"CylinderMesh",CCyl2}
CCyl3 = iPart{Suit,2,0.25,2,co=cc[2],mt="DiamondPlate"}
iNew{"Weld",Suit,Part0=CCyl2,Part1=CCyl3,C0=cn(0,0.25,0)}
iNew{"CylinderMesh",CCyl3}
CCyl4 = iPart{Suit,1.5,0.25,1.5,co=cc[5],mt="DiamondPlate"}
iNew{"Weld",Suit,Part0=CCyl3,Part1=CCyl4,C0=cn(0,0.25,0)}
iNew{"CylinderMesh",CCyl4}

LArm = iPart{Suit,1.25,1.25,1.25,co=cc[1],mt="DiamondPlate"}
wLArm = iNew{"Weld",Suit,Part0=CCyl4,Part1=LArm,C0=ca(-35,0,45)}
iNew{"SpecialMesh",LArm,MeshType="Sphere"}
ArmE = iPart{Suit,0.5,1.5,0.5,co=cc[2]}
iNew{"Weld",Suit,Part0=LArm,Part1=ArmE,C0=cn(0,1.25,0)}
iNew{"CylinderMesh",ArmE}
LArm2 = iPart{Suit,1.25,1.25,1.25,co=cc[1],mt="DiamondPlate"}
wLArm2 = iNew{"Weld",Suit,Part0=ArmE,Part1=LArm2,C0=cn(0,0.75,0)*ca(-80,100,0)}
iNew{"SpecialMesh",LArm2,MeshType="Sphere"}
ArmF = iPart{Suit,1.35,0.25,1.35,co=cc[5],mt="DiamondPlate"}
iNew{"Weld",Suit,Part0=LArm2,Part1=ArmF}
iNew{"CylinderMesh",ArmF}
ArmFM = iPart{Suit,1.25,1,1.25,co=cc[3],mt="WoodPlanks"}
iNew{"Weld",Suit,Part0=ArmF,Part1=ArmFM,C0=cn(0,0.5,0)}
iNew{"CylinderMesh",ArmFM}
ArmF = iPart{Suit,1.35,0.25,1.35,co=cc[5],mt="DiamondPlate"}
iNew{"Weld",Suit,Part0=ArmFM,Part1=ArmF,C0=cn(0,0.5,0)}
iNew{"CylinderMesh",ArmF}
ArmAnt = iPart{Suit,0.4,0.75,0.4,co=cc[5],mt="DiamondPlate"}
iNew{"Weld",Suit,Part0=ArmFM,Part1=ArmAnt,C0=cn(-0.775,-0.25,0)}
iNew{"CylinderMesh",ArmAnt}
ArmAnt2 = iPart{Suit,0.2,0.75,0.2,co=cc[8]}
iNew{"Weld",Suit,Part0=ArmAnt,Part1=ArmAnt2,C0=cn(0,-0.75,0)}
iNew{"CylinderMesh",ArmAnt2}
ArmAnt3 = iPart{Suit,0.35,0.2,0.35,co=cc[2]}
iNew{"Weld",Suit,Part0=ArmAnt,Part1=ArmAnt3,C0=cn(0,0.75/2,0)}
iNew{"CylinderMesh",ArmAnt3,Scale=v3(1,0.1,1)}
ArmAnt4 = iPart{Suit,0.3,0.3,0.3,co=cc[5]}
iNew{"Weld",Suit,Part0=ArmAnt2,Part1=ArmAnt4,C0=cn(0,-0.75/2,0)}
iNew{"CylinderMesh",ArmAnt4}
for i=-1,1,2 do
	local BladeH = iPart{Suit,0.5,1.25,0.2,co=cc[2],mt="DiamondPlate"}
	iNew{"Weld",Suit,Part0=ArmF,Part1=BladeH,C0=cn(0,0.75,i/5)}
	local BladeH2 = iPart{Suit,0.5,0.2,0.5,co=cc[2],mt="DiamondPlate"}
	iNew{"Weld",Suit,Part0=BladeH,Part1=BladeH2,C0=cn(0,1.25/2,0)*ca(90,0,0)}
	iNew{"CylinderMesh",BladeH2,Scale=v3(1,0.99,1)}
	local Bolt = iPart{Suit,0.2,0.2,0.2,co=cc[8]}
	iNew{"Weld",Suit,Part0=BladeH2,Part1=Bolt,C0=cn(0,(0.25/2)*i,0)}
	iNew{"CylinderMesh",Bolt,Scale=v3(1,0.25,1)}
	local Bolt = iPart{Suit,0.2,0.2,0.2,co=cc[8]}
	iNew{"Weld",Suit,Part0=BladeH,Part1=Bolt,C0=cn(0,0,(0.25/2)*i)*ca(90,0,0)}
	iNew{"CylinderMesh",Bolt,Scale=v3(1,0.25,1)}
end
ArmSawP = iPart{Suit,0.8,2,0.2,co=cc[8]}
iNew{"Weld",Suit,Part0=ArmF,Part1=ArmSawP,C0=cn(0,2.25,0)}
for i=-1,1,2 do
	local ArmSawC = iPart{Suit,0.8,0.2,0.8,co=cc[8]}
	iNew{"Weld",Suit,Part0=ArmSawP,Part1=ArmSawC,C0=cn(0,1*i,0)*ca(90,0,0)}
	iNew{"CylinderMesh",ArmSawC,Scale=v3(1,0.99,1)}
end
for i=-1,1,1 do
	local ArmSawC = iPart{Suit,0.3,0.2,0.3,co=cc[8],mt="DiamondPlate"}
	iNew{"Weld",Suit,Part0=ArmSawP,Part1=ArmSawC,C0=cn(0,0.9*i,0.25/2)*ca(90,0,0)}
	iNew{"CylinderMesh",ArmSawC,Scale=v3(1,0.25,1)}
end
Saw0 = iPart{Suit,0,0,0,tr=1}
iNew{"Weld",Suit,Part0=ArmSawP,Part1=Saw0,C0=ca(90,90,0)}

Saws = {}
for i=1,28 do
	local Saw = iPart{Suit,0.55,0.2,i%2==0 and 0.55 or 0.8,co=cc[2]} Saw.Name="Saw"
	local wSaw = iNew{"Weld",Suit,Part0=Saw0,Part1=Saw}
	iNew{"BlockMesh",Saw,Scale=v3(1,0.5,1)}
	table.insert(Saws,{Saw,wSaw})
end

RArmConnect = iPart{Suit,0.25,1.25,0.5,co=cc[2],mt="DiamondPlate"}
iNew{"Weld",Suit,Part0=Stand,Part1=RArmConnect,C0=cn(2.275,1.525,0)}
ConnectTop = iPart{Suit,0.5,0.2475,0.5,co=cc[2],mt="DiamondPlate"}
iNew{"Weld",Suit,Part0=RArmConnect,Part1=ConnectTop,C0=cn(0,1.25/2,0)*ca(0,0,90)}
iNew{"CylinderMesh",ConnectTop}
CCyl = iPart{Suit,2,0.25,2,co=cc[4],mt="DiamondPlate"}
iNew{"Weld",Suit,Part0=RArmConnect,Part1=CCyl,C0=cn(0.25,-0.125,0)*ca(0,0,-90)}
iNew{"CylinderMesh",CCyl}
CCyl2 = iPart{Suit,2.5,0.35,2.5,co=cc[5],mt="DiamondPlate"}
iNew{"Weld",Suit,Part0=CCyl,Part1=CCyl2,C0=cn(0,0.3,0)}
iNew{"CylinderMesh",CCyl2}
CCyl3 = iPart{Suit,2,0.25,2,co=cc[2],mt="DiamondPlate"}
iNew{"Weld",Suit,Part0=CCyl2,Part1=CCyl3,C0=cn(0,0.25,0)}
iNew{"CylinderMesh",CCyl3}
CCyl4 = iPart{Suit,1.5,0.25,1.5,co=cc[5],mt="DiamondPlate"}
iNew{"Weld",Suit,Part0=CCyl3,Part1=CCyl4,C0=cn(0,0.25,0)}
iNew{"CylinderMesh",CCyl4}

RArm = iPart{Suit,1.25,1.25,1.25,co=cc[1],mt="DiamondPlate"}
wRArm = iNew{"Weld",Suit,Part0=CCyl4,Part1=RArm,C0=ca(0,-35,-50)}
iNew{"SpecialMesh",RArm,MeshType="Sphere"}
ArmE = iPart{Suit,0.5,1.5,0.5,co=cc[2]}
iNew{"Weld",Suit,Part0=RArm,Part1=ArmE,C0=cn(0,1.25,0)}
iNew{"CylinderMesh",ArmE}
RArm2 = iPart{Suit,1.25,1.25,1.25,co=cc[1],mt="DiamondPlate"}
wRArm2 = iNew{"Weld",Suit,Part0=ArmE,Part1=RArm2,C0=cn(0,0.75,0)*ca(0,90,-65)}
iNew{"SpecialMesh",RArm2,MeshType="Sphere"}
ArmF = iPart{Suit,1.35,0.25,1.35,co=cc[5],mt="DiamondPlate"}
iNew{"Weld",Suit,Part0=RArm2,Part1=ArmF}
iNew{"CylinderMesh",ArmF}
ArmFM = iPart{Suit,1.25,1,1.25,co=cc[3],mt="WoodPlanks"}
iNew{"Weld",Suit,Part0=ArmF,Part1=ArmFM,C0=cn(0,0.5,0)}
iNew{"CylinderMesh",ArmFM}
ArmF = iPart{Suit,1.35,0.25,1.35,co=cc[5],mt="DiamondPlate"}
iNew{"Weld",Suit,Part0=ArmFM,Part1=ArmF,C0=cn(0,0.5,0)}
iNew{"CylinderMesh",ArmF}
ArmAnt = iPart{Suit,0.4,0.75,0.4,co=cc[5],mt="DiamondPlate"}
iNew{"Weld",Suit,Part0=ArmFM,Part1=ArmAnt,C0=cn(-0.775,-0.25,0)}
iNew{"CylinderMesh",ArmAnt}
ArmAnt2 = iPart{Suit,0.2,0.75,0.2,co=cc[8]}
iNew{"Weld",Suit,Part0=ArmAnt,Part1=ArmAnt2,C0=cn(0,-0.75,0)}
iNew{"CylinderMesh",ArmAnt2}
ArmAnt3 = iPart{Suit,0.35,0.2,0.35,co=cc[2]}
iNew{"Weld",Suit,Part0=ArmAnt,Part1=ArmAnt3,C0=cn(0,0.75/2,0)}
iNew{"CylinderMesh",ArmAnt3,Scale=v3(1,0.1,1)}
ArmAnt4 = iPart{Suit,0.3,0.3,0.3,co=cc[5]}
iNew{"Weld",Suit,Part0=ArmAnt2,Part1=ArmAnt4,C0=cn(0,-0.75/2,0)}
iNew{"CylinderMesh",ArmAnt4}

for i=360/12,360,360/12 do
	local ArmP = iPart{Suit,0.45,0.8,0.2,co=cc[8]} ArmP.Name = "Saw"
	iNew{"Weld",Suit,Part0=ArmF,Part1=ArmP,C0=cn(0,0.4,0)*ca(0,i,0)*cn(0,0,0.6)*ca(20,0,0)}
end
for i=360/3,360,360/3 do
	local HookP = iPart{Suit,0.5,0.5,0.2,co=cc[8]} HookP.Name = "Saw"
	iNew{"Weld",Suit,Part0=ArmF,Part1=HookP,C0=cn(0,0.9,0)*ca(0,i,0)*cn(0,0,0.85)*ca(40,0,0)}
	local HookP2 = iPart{Suit,0.5,0.7,0.2,co=cc[8]} HookP2.Name = "Saw"
	iNew{"Weld",Suit,Part0=HookP,Part1=HookP2,C0=cn(0,0.25,0.1)*ca(-75,0,0)*cn(0,0.35,-0.1)}
end
Hole = iPart{Suit,1.1,0.2,1.1,co=cc[13]}
iNew{"Weld",Suit,Part0=ArmF,Part1=Hole,C0=cn(0,0.125,0)}
iNew{"CylinderMesh",Hole,Scale=v3(1,0.1,1)}
LLeg = iPart{Suit,1.5,1.5,1.5,co=cc[1],mt="DiamondPlate"} LastMade.CanCollide = false
wLLeg = iNew{"Weld",Suit,Part0=Ball,Part1=LLeg,C0=cn(-1.5,-1.25,-0.25)*ca(25,0,20)}
iNew{"SpecialMesh",LLeg,MeshType="Sphere"}
LegE = iPart{Suit,0.75,1.5,0.75,co=cc[2]} LastMade.CanCollide = false
iNew{"Weld",Suit,Part0=LLeg,Part1=LegE,C0=cn(0,-1.25,0)}
iNew{"CylinderMesh",LegE}
LLeg2 = iPart{Suit,1.25,1.25,1.25,co=cc[1],mt="DiamondPlate"} LastMade.CanCollide = false
wLLeg2 = iNew{"Weld",Suit,Part0=LegE,Part1=LLeg2,C0=cn(0,-0.75,0)*ca(-45,0,0)}
iNew{"SpecialMesh",LLeg2,MeshType="Sphere"}
LegE = iPart{Suit,0.75,1,0.75,co=cc[2]} LastMade.CanCollide = false
iNew{"Weld",Suit,Part0=LLeg2,Part1=LegE,C0=cn(0,-1,0)}
iNew{"CylinderMesh",LegE}
LLeg3 = iPart{Suit,1,1,1,co=cc[1],mt="DiamondPlate"} LastMade.CanCollide = false
wLLeg3 = iNew{"Weld",Suit,Part0=LegE,Part1=LLeg3,C0=cn(0,-0.5,0)*ca(0,0,0)}
iNew{"SpecialMesh",LLeg3,MeshType="Sphere"}

LFoot = iPart{Suit,1.5,0.5,2.25,co=cc[1],mt="DiamondPlate"} LastMade.CanCollide = false
iNew{"Weld",Suit,Part0=LLeg3,Part1=LFoot,C0=cn(0,-0.5,-0.5)*ca(0,0,0)}
FootT = iPart{Suit,1,0.25,1.25,co=cc[1],mt="DiamondPlate"} LastMade.CanCollide = false
iNew{"Weld",Suit,Part0=LFoot,Part1=FootT,C0=cn(0,0.75/2,0.5)}
FootT2 = iPart{Suit,1,0.25,1,co=cc[1],mt="DiamondPlate"} LastMade.CanCollide = false
iNew{"Weld",Suit,Part0=FootT,Part1=FootT2,C0=cn(0,0,-2.25/2+0.5)}
iNew{"CylinderMesh",FootT2}
for i=-1,1,2 do
	local FootWedge = iPart{Suit,1.5/4,0.5,0.75,co=cc[1],mt="DiamondPlate"} LastMade.CanCollide = false
	iNew{"Weld",Suit,Part0=LFoot,Part1=FootWedge,C0=cn((0.75-(1.5/4/2))*i,0,-2.25/2-0.75/2)}
	iNew{"SpecialMesh",FootWedge,MeshType="Wedge"}
	local FootPart = iPart{Suit,1.5/4,0.5,0.25,co=cc[1],mt="DiamondPlate"} LastMade.CanCollide = false
	iNew{"Weld",Suit,Part0=LFoot,Part1=FootPart,C0=cn((0.75-(1.5/4)*1.5)*i,0,-2.25/2-0.25/2)}
	local FootPart = iPart{Suit,1.5/4,0.5,1,co=cc[1],mt="DiamondPlate"} LastMade.CanCollide = false
	iNew{"Weld",Suit,Part0=LFoot,Part1=FootPart,C0=cn((0.75-(1.5/4)*1.5)*i,0,-2.5/2-1/2-0.125)}
	iNew{"SpecialMesh",FootPart,MeshType="Wedge"}
end
for i=-1,1,1 do
	local Bolt = iPart{Suit,0.3,0.2,0.3,co=cc[2],mt="DiamondPlate"} LastMade.CanCollide = false
	iNew{"Weld",Suit,Part0=FootT2,Part1=Bolt,C0=cn(0.5*i,-0.1,i==0 and -0.9 or -0.75)}
	iNew{"CylinderMesh",Bolt,Scale=v3(1,0.5,1)}
end

RLeg = iPart{Suit,1.5,1.5,1.5,co=cc[1],mt="DiamondPlate"} LastMade.CanCollide = false
wRLeg = iNew{"Weld",Suit,Part0=Ball,Part1=RLeg,C0=cn(1.5,-1.25,-0.25)*ca(25,0,-20)}
iNew{"SpecialMesh",RLeg,MeshType="Sphere"}
LegE = iPart{Suit,0.75,1.5,0.75,co=cc[2]} LastMade.CanCollide = false
iNew{"Weld",Suit,Part0=RLeg,Part1=LegE,C0=cn(0,-1.25,0)}
iNew{"CylinderMesh",LegE}
RLeg2 = iPart{Suit,1.25,1.25,1.25,co=cc[1],mt="DiamondPlate"} LastMade.CanCollide = false
wRLeg2 = iNew{"Weld",Suit,Part0=LegE,Part1=RLeg2,C0=cn(0,-0.75,0)*ca(-45,0,0)}
iNew{"SpecialMesh",RLeg2,MeshType="Sphere"}
LegE = iPart{Suit,0.75,1,0.75,co=cc[2]} LastMade.CanCollide = false
iNew{"Weld",Suit,Part0=RLeg2,Part1=LegE,C0=cn(0,-1,0)}
iNew{"CylinderMesh",LegE}
RLeg3 = iPart{Suit,1,1,1,co=cc[1],mt="DiamondPlate"} LastMade.CanCollide = false
wRLeg3 = iNew{"Weld",Suit,Part0=LegE,Part1=RLeg3,C0=cn(0,-0.5,0)*ca(0,0,0)}
iNew{"SpecialMesh",RLeg3,MeshType="Sphere"}

RFoot = iPart{Suit,1.5,0.5,2.25,co=cc[1],mt="DiamondPlate"} LastMade.CanCollide = false
iNew{"Weld",Suit,Part0=RLeg3,Part1=RFoot,C0=cn(0,-0.5,-0.5)*ca(0,0,0)}
FootT = iPart{Suit,1,0.25,1.25,co=cc[1],mt="DiamondPlate"} LastMade.CanCollide = false
iNew{"Weld",Suit,Part0=RFoot,Part1=FootT,C0=cn(0,0.75/2,0.5)}
FootT2 = iPart{Suit,1,0.25,1,co=cc[1],mt="DiamondPlate"} LastMade.CanCollide = false
iNew{"Weld",Suit,Part0=FootT,Part1=FootT2,C0=cn(0,0,-2.25/2+0.5)}
iNew{"CylinderMesh",FootT2}
for i=-1,1,2 do
	local FootWedge = iPart{Suit,1.5/4,0.5,0.75,co=cc[1],mt="DiamondPlate"} LastMade.CanCollide = false
	iNew{"Weld",Suit,Part0=RFoot,Part1=FootWedge,C0=cn((0.75-(1.5/4/2))*i,0,-2.25/2-0.75/2)}
	iNew{"SpecialMesh",FootWedge,MeshType="Wedge"}
	local FootPart = iPart{Suit,1.5/4,0.5,0.25,co=cc[1],mt="DiamondPlate"} LastMade.CanCollide = false
	iNew{"Weld",Suit,Part0=RFoot,Part1=FootPart,C0=cn((0.75-(1.5/4)*1.5)*i,0,-2.25/2-0.25/2)}
	local FootPart = iPart{Suit,1.5/4,0.5,1,co=cc[1],mt="DiamondPlate"} LastMade.CanCollide = false
	iNew{"Weld",Suit,Part0=RFoot,Part1=FootPart,C0=cn((0.75-(1.5/4)*1.5)*i,0,-2.5/2-1/2-0.125)}
	iNew{"SpecialMesh",FootPart,MeshType="Wedge"}
end
for i=-1,1,1 do
	local Bolt = iPart{Suit,0.3,0.2,0.3,co=cc[2],mt="DiamondPlate"} LastMade.CanCollide = false
	iNew{"Weld",Suit,Part0=FootT2,Part1=Bolt,C0=cn(0.5*i,-0.1,i==0 and -0.9 or -0.75)}
	iNew{"CylinderMesh",Bolt,Scale=v3(1,0.5,1)}
end

Char:MoveTo(Torso.Position+v3(0,10,0))

function AoEFind(Pos,Range)
	local fHumans = {}
	for i,v in pairs(workspace:GetChildren()) do
		local fHum,fTorso,fHead = GetHuman(v)
		if fHum and fTorso and fHead and v.Name~=Player.Name then
			if (fTorso.Position-Pos).magnitude<=Range then
				table.insert(fHumans,v)
			end
		end
	end
	return fHumans
end

HitData = {}
function AoEBreak(Pos,Range,Force,PropDmg)
	local function r(d)
		for i,v in pairs(d:GetChildren()) do
			if v:IsA("BasePart") and v.Name~="Terrain" then
				if (v.Position-Pos).magnitude<Range then
					local fHum,fTorso,fHead = GetHuman(v.Parent)
					if fHum and fTorso and fHead then return end
					if v:IsDescendantOf(Char) or v.Name=="unray" then return end
					
					local broke = false
					if not HitData[v] then
						local hh = v:GetMass()/1.5
						HitData[v] = hh
					end
					HitData[v]=HitData[v]-PropDmg
					if HitData[v]<=0 then 
						v.Anchored = false
						v:BreakJoints() 
						broke=true 
					end
					if broke then
						v.Velocity=cn(Pos,v.Position).lookVector*Force
					end
				end
			else
				r(v)
			end
		end
	end
	r(workspace)
end

function GetHuman(model)
	local foundHum
	local foundTorso
	local foundHead
	if #model:GetChildren()==0 then return end
	for i,v in pairs(model:GetChildren()) do
		if v:IsA("Humanoid") then
			foundHum = v
		elseif v.Name == "Torso" then
			foundTorso = v
		elseif v.Name == "Head" then
			foundHead = v
		end
	end
	return foundHum,foundTorso,foundHead
end

function Knockback(fTor,face,str,dur)
	local bodyVelo = iNew{"BodyVelocity",fTor,P=1250,maxForce=v3(1,1,1)/0,velocity=cn(face,fTor.Position).lookVector*str}
	deb:AddItem(bodyVelo,dur)
end

HitData = {}
function Touched(hit)
	if not Dmg then return end 
	if hit.Parent:IsDescendantOf(Char) then return end 
	local fHum,fTorso,fHead = GetHuman(hit.Parent)
	if fHum and fTorso and fHead then
		Damage(fHum,mran(Dmgv[1],Dmgv[2]))
	end
	
	if ArmAnim == "Lightning Fist" then 
		local BlastPos = (Hole.CFrame).p
		local at = BlastPos+v3(0,-5,0)
		ArmAnim = "Lightning Blast"
		local Prev = Knockback
		MeshEffect(workspace,cn(at),14,14,14,0.05,"New Yeller","Sphere",cn())
		MeshEffect(workspace,cn(at),9,14,9,0.05,"New Yeller",as.Blast,ca(0,mran(-5,5),0))
		for i=360/8,360,360/8 do
			MeshEffect(workspace,cn(at)*ca(0,i,0)*cn(0,2,3)*ca(-90,0,0),1.5,8,1.5,0.05,"New Yeller",as.Diamond,cn(0,1.5,0)*ca(1,0,0))
			if i==360/8 then
				local fHumans = AoEFind(BlastPos,10)
				AoEBreak(BlastPos,10,50,mran(35,50))
				if #fHumans > 0 then
					for i,v in pairs(fHumans) do
						local fHum,fTorso,fHead = v.Humanoid,v.Torso,v.Head
						Damage(fHum,mran(Dmgv[1],Dmgv[2])*2.5)
						Knockback(fTorso,BlastPos,35,0.25)
					end
				end
			end
		end
	end
end

for i,v in pairs(Suit:GetChildren()) do
	if v:IsA("BasePart") and (v.Name=="Saw" or v.Name=="Chakram") then
		v.Touched:connect(Touched)
	end
end

for i,v in pairs(Torso:children()) do 
	if v:IsA("Sound") then 
		v:Destroy() 
	end
end
for i,v in pairs(Head:children()) do 
	if v:IsA("Sound") then 
		v:Destroy() 
	end
end


function ReturnPose(AnimationSpeed)
	RePose()
	for i=1,AnimationSpeed do 
		if not Walking then
			SetWeld(LAW,0,i,AnimationSpeed,wLA,wLA2,PoseLA,PoseLA2,1) 
			SetWeld(RAW,0,i,AnimationSpeed,wRA,wRA2,PoseRA,PoseRA2,1)
			for lever = 1,2 do 
					local x = lever == 1 and -1 or lever == 2 and 1
					SetWeld(Levers[lever][1],0,i,AnimationSpeed,Levers[lever][2],Levers[lever][3],v3(x,0.6,-1.5),v3(0,0,0),1)
			end
		end
		SetWeld(Root,0,i,AnimationSpeed,wRT,wRT2,PoseRT,PoseRT2,1)
		SetWeld(wStand,0,i,AnimationSpeed,wST,wST2,PoseST,PoseST2,1) 
		SetWeld(wBall,0,i,AnimationSpeed,wBA,wBA2,PoseBA,PoseBA2,1) 
		SetWeld(wLArm,0,i,AnimationSpeed,wLAR,wLAR2,PoseLAR,PoseLAR2,1) 
		SetWeld(wLArm2,0,i,AnimationSpeed,wLARM,wLARM2,PoseLARM,PoseLARM2,1) 
		SetWeld(wRArm,0,i,AnimationSpeed,wRAR,wRAR2,PoseRAR,PoseRAR2,1) 
		SetWeld(wRArm2,0,i,AnimationSpeed,wRARM,wRARM2,PoseRARM,PoseRARM2,1) 
		SetWeld(wLLeg,0,i,AnimationSpeed,wLLE,wLLE2,PoseLLE,PoseLLE2,1) 
		SetWeld(wLLeg2,0,i,AnimationSpeed,wLLEG,wLLEG2,PoseLLEG,PoseLLEG2,1) 
		SetWeld(wLLeg3,0,i,AnimationSpeed,wLLL,wLLL2,PoseLLL,PoseLLL2,1) 
		SetWeld(wRLeg,0,i,AnimationSpeed,wRLE,wRLE2,PoseRLE,PoseRLE2,1) 
		SetWeld(wRLeg2,0,i,AnimationSpeed,wRLEG,wRLEG2,PoseRLEG,PoseRLEG2,1) 
		SetWeld(wRLeg3,0,i,AnimationSpeed,wRLL,wRLL2,PoseRLL,PoseRLL2,1) 
		wait(0)
	end
end

function RePose()
	local a,b=GetWeld(LAW)
	local c,d=GetWeld(RAW)
	local ee,ff=GetWeld(Root)
	wLA=a wLA2=b 
	wRA=c wRA2=d
	wRT=ee wRT2=ff
	local e,f=GetWeld(wStand)
	local g,h=GetWeld(wBall)
	local i,j=GetWeld(wLArm)
	local k,l=GetWeld(wLArm2)
	local m,n=GetWeld(wRArm)
	local o,p=GetWeld(wRArm2)
	local q,r=GetWeld(wLLeg)
	local s,t=GetWeld(wLLeg2)
	local y,z=GetWeld(wLLeg3)
	local u,v=GetWeld(wRLeg)
	local w,x=GetWeld(wRLeg2)
	local aa,bb=GetWeld(wRLeg3)
	for lever = 1,2 do Levers[lever][2],Levers[lever][3]=GetWeld(Levers[lever][1]) end 
	wST=e wST2=f
	wBA=g wBA2=h
	wLAR=i wLAR2=j
	wLARM=k wLARM2=l
	wRAR=m wRAR2=n
	wRARM=o wRARM2=p
	wLLE=q wLLE2=r
	wLLEG=s wLLEG2=t
	wLLL=y wLLL2=z
	wRLE=u wRLE2=v
	wRLEG=w wRLEG2=x
	wRLL=aa wRLL2=bb
end


Attacks = {}
Attacks[1] = function()
	ArmAnim = "Slash"
	if TorsoAnim == "" then TorsoAnim = ArmAnim end
	RePose()
	for i=1,ASpeed do 
		SetWeld(wLArm,0,i,ASpeed,wLAR,wLAR2,PoseLAR,v3(-35,0,-45),1) 
		SetWeld(wLArm2,0,i,ASpeed,wLARM,wLARM2,PoseLARM,v3(0,-65,-65),1) 
		wait(0)
	end
	Mult = 2
	Trail = true
	RePose()
	for i=1,ASpeed/1.6 do 
		if TorsoAnim == ArmAnim then
			SetWeld(Root,0,i,ASpeed/1.6,wRT,wRT2,PoseRT,v3(0,-70,0),1) 
			SetWeld(wStand,0,i,ASpeed/1.6,wST,wST2,PoseST,v3(0,-70,0),1) 
			SetWeld(wBall,0,i,ASpeed/1.6,wBA,wBA2,PoseBA,v3(0,70,0),1)
		end
		SetWeld(wLArm,0,i,ASpeed/1.6,wLAR,wLAR2,PoseLAR,v3(-140,0,60),1) 
		SetWeld(wLArm2,0,i,ASpeed/1.6,wLARM,wLARM2,PoseLARM,v3(0,-45,-25),1) 
		wait(0)
	end
	Mult = 1
	Trail = false
	ReturnPose(ASpeed)
	ArmAnim = ""
	TorsoAnim = TorsoAnim~="" and  "" or TorsoAnim
end
Attacks[2] = function()
	ArmAnim = "AoE Slash"
	if TorsoAnim == "" then TorsoAnim = ArmAnim end
	local Ang = MouseAngleY>25 and 25 or MouseAngleY<-35 and -35 or MouseAngleY
	RePose()
	for i=1,ASpeed do 
		if TorsoAnim == ArmAnim then
			SetWeld(Root,0,i,ASpeed,wRT,wRT2,PoseRT,v3(0,-70,0),1) 
			SetWeld(wStand,0,i,ASpeed,wST,wST2,PoseST,v3(0,-70,0),1) 
			SetWeld(wBall,0,i,ASpeed,wBA,wBA2,PoseBA,v3(0,70,0),1)
		end
		SetWeld(wLArm,0,i,ASpeed,wLAR,wLAR2,PoseLAR,v3(-90,0,-Ang),1) 
		SetWeld(wLArm2,0,i,ASpeed,wLARM,wLARM2,PoseLARM,v3(-70,90,0),1) 
		wait(0)
	end
	Mult = 2
	Trail = true
	RePose()
	for i=1,ASpeed/1.6 do 
		if TorsoAnim == ArmAnim then
			SetWeld(Root,0,i,ASpeed/1.6,wRT,wRT2,PoseRT,v3(0,100,0),1) 
			SetWeld(wStand,0,i,ASpeed/1.6,wST,wST2,PoseST,v3(0,100,0),1) 
			SetWeld(wBall,0,i,ASpeed/1.6,wBA,wBA2,PoseBA,v3(0,-100,0),1)
		end
		SetWeld(wLArm,0,i,ASpeed/1.6,wLAR,wLAR2,PoseLAR,v3(70,0,-Ang),1) 
		SetWeld(wLArm2,0,i,ASpeed/1.6,wLARM,wLARM2,PoseLARM,v3(20,90,0),1) 
		wait(0)
	end
	Mult = 1
	Trail = false
	ReturnPose(ASpeed)
	ArmAnim = ""
	TorsoAnim = TorsoAnim~="" and  "" or TorsoAnim
end
Attacks[3] = function()
	ArmAnim = "Lightning Fist Start"
	TorsoAnim = ArmAnim
	RePose()
	for i=1,ASpeed*1.5 do 
		if TorsoAnim == ArmAnim then
			SetWeld(Root,0,i,ASpeed*1.5,wRT,wRT2,PoseRT,v3(0,-70,0),1) 
			SetWeld(wStand,0,i,ASpeed*1.5,wST,wST2,PoseST,v3(0,-70,0),1) 
			SetWeld(wBall,0,i,ASpeed*1.5,wBA,wBA2,PoseBA,v3(0,70,0),1)
		end
		SetWeld(wRArm,0,i,ASpeed*1.5,wRAR,wRAR2,PoseRAR,v3(0,50,70),1) 
		SetWeld(wRArm2,0,i,ASpeed*1.5,wRARM,wRARM2,PoseRARM,v3(0,0,-140),1) 
		wait(0)
	end
	Trail2 = true
	
	PlaySound(as.ElectricShock,0.85,1,Torso)
	RePose()
	for i=1,ASpeed do 
		if TorsoAnim == ArmAnim then
			SetWeld(Root,0,i,ASpeed,wRT,wRT2,PoseRT,v3(0,80,0),1) 
			SetWeld(wStand,0,i,ASpeed,wST,wST2,PoseST,v3(0,80,0),1) 
			SetWeld(wBall,0,i,ASpeed,wBA,wBA2,PoseBA,v3(0,-80,0),1)
		end
		SetWeld(wRArm,0,i,ASpeed,wRAR,wRAR2,PoseRAR,v3(0,35,-70),1) 
		SetWeld(wRArm2,0,i,ASpeed,wRARM,wRARM2,PoseRARM,v3(0,0,0),1) 
		wait(0)
		if i==ASpeed-1 then ArmAnim = "Lightning Fist" end
	end
	Trail2 = false
	wait(0.5)
	ReturnPose(ASpeed)
	ArmAnim = ""
	TorsoAnim = TorsoAnim~="" and  "" or TorsoAnim
end
Attacks[4] = function()
	ArmAnim = "Shoot"
	TorsoAnim = ArmAnim
	RePose()
	for i=1,ASpeed*1.5 do 
		if TorsoAnim == ArmAnim then
			SetWeld(Root,0,i,ASpeed*1.5,wRT,wRT2,PoseRT,v3(0,90,0),1) 
			SetWeld(wStand,0,i,ASpeed*1.5,wST,wST2,PoseST,v3(0,90,0),1) 
			SetWeld(wBall,0,i,ASpeed*1.5,wBA,wBA2,PoseBA,v3(0,-90,0),1)
		end
		SetWeld(wRArm,0,i,ASpeed*1.5,wRAR,wRAR2,PoseRAR,v3(0,0,MouseAngleY),1) 
		SetWeld(wRArm2,0,i,ASpeed*1.5,wRARM,wRARM2,PoseRARM,v3(0,0,0),1) 
		wait(0)
	end
	Trail2 = true
	
	PlaySound(as.ElectricShock,0.85,1,Torso)
	RePose()
	for i=1,ASpeed do 
		if TorsoAnim == ArmAnim then
			SetWeld(Root,0,i,ASpeed,wRT,wRT2,PoseRT,v3(0,80,0),1) 
			SetWeld(wStand,0,i,ASpeed,wST,wST2,PoseST,v3(0,80,0),1) 
			SetWeld(wBall,0,i,ASpeed,wBA,wBA2,PoseBA,v3(0,-80,0),1)
		end
		SetWeld(wRArm,0,i,ASpeed,wRAR,wRAR2,PoseRAR,v3(0,35,-70),1) 
		SetWeld(wRArm2,0,i,ASpeed,wRARM,wRARM2,PoseRARM,v3(0,0,0),1) 
		wait(0)
		if i==ASpeed-1 then ArmAnim = "Lightning Fist" end
	end
	Trail2 = false
	wait(0.5)
	ReturnPose(ASpeed)
	Gyro = false
	ArmAnim = ""
	TorsoAnim = TorsoAnim~="" and  "" or TorsoAnim
end

BP = iNew{"BodyPosition",Stand,maxForce=v3(0,0,0)}

ArmAnim = ""
LegAnim = ""
TorsoAnim = ""
ASpeed = 12
SawSpeed = 5
Trail = false
Trail2 = false
State = "Idling"
GroundOffset = v3(0,6.75,0)
PoseLA=v3(-1.5,0.5,-0.5) PoseLA2=v3(110,0,14)
PoseRA=v3(1.5,0.5,-0.5) PoseRA2=v3(110,0,-14)
PoseRT=v3(0,0,0) PoseRT2=v3(0,0,0)
PoseST=v3(0,0,0) PoseST2=v3(0,0,0)
PoseBA=v3(0,-1.5,0) PoseBA2=v3(0,0,0)
PoseLAR=v3(0,0,0) PoseLAR2=v3(-35,0,45)
PoseLARM=v3(0,0.75,0) PoseLARM2=v3(-80,100,0)
PoseRAR=v3(0,0,0) PoseRAR2=v3(0,-35,-50)
PoseRARM=v3(0,0.75,0) PoseRARM2=v3(0,90,-65)
PoseLLE=v3(-1.5,-1.25,-0.25) PoseLLE2=v3(20,0,-15)
PoseLLEG=v3(0,-0.75,0) PoseLLEG2=v3(-40,0,15)
PoseLLL=v3(0,-0.5,0) PoseLLL2=v3(20,0,0)
PoseRLE=v3(1.5,-1.25,-0.25) PoseRLE2=v3(20,0,15)
PoseRLEG=v3(0,-0.75,0) PoseRLEG2=v3(-40,0,-15)
PoseRLL=v3(0,-0.5,0) PoseRLL2=v3(20,0,0)

Arms() Legs()
ReturnPose(ASpeed)
Arms(0) Legs(0)


button1 = false
keys = {}
Mouse.Button1Down:connect(function()
	button1 = true
	if ArmAnim == "" then
		Attacks[1]()
	end
end)

Mouse.Button1Up:connect(function()
	button1 = false
end)

Mouse.KeyDown:connect(function(key)
	keys[key]=true
	if key == "q" then
		if ArmAnim == "" then
			Attacks[2]()
		end
	end
	if key == "e" then
		if ArmAnim == "" then
			Attacks[3]()
		end
	end
	if key == "r" then
		if ArmAnim == "" then
			Attacks[4]()
		end
	end
	if key == " " then
		local hit,at = Raycast(Torso.Position,Torso.Position - (Torso.CFrame*cn(0,3,0)).p,10,Char)
		if not hit or not at then return end
		if ArmAnim == "" and TorsoAnim == "" and LegAnim == "" then
			ArmAnim = "Jump"
			LegAnim = "JumpS"
			local PrevOff = GroundOffset
			GroundOffset = v3(0,6,0)
			ReturnPose(1)
			RePose()
			for i=1,ASpeed do
				SetWeld(wLLeg,0,i,ASpeed,wLLE,wLLE2,PoseLLE,v3(15,0,-20),1) 
				SetWeld(wLLeg2,0,i,ASpeed,wLLEG,wLLEG2,PoseLLEG,v3(-45,-35,20),1) 
				SetWeld(wLLeg3,0,i,ASpeed,wLLL,wLLL2,PoseLLL,v3(30,35,0),0)
				SetWeld(wRLeg,0,i,ASpeed,wRLE,wRLE2,PoseRLE,v3(15,0,20),1) 
				SetWeld(wRLeg2,0,i,ASpeed,wRLEG,wRLEG2,PoseRLEG,v3(-45,35,-20),1) 
				SetWeld(wRLeg3,0,i,ASpeed,wRLL,wRLL2,PoseRLL,v3(30,-35,0),0)
				wait(0)
			end
			LegAnim = "Jump"
			GroundOffset = v3(0,18,0)
			RePose()
			for i=1,ASpeed/1.5 do
				SetWeld(wLLeg,0,i,ASpeed/1.5,wLLE,wLLE2,PoseLLE,v3(25,0,-20),1) 
				SetWeld(wLLeg2,0,i,ASpeed/1.5,wLLEG,wLLEG2,PoseLLEG,v3(-10,-35,20),1) 
				SetWeld(wLLeg3,0,i,ASpeed,wLLL,wLLL2,PoseLLL,v3(15,35,0),0)
				SetWeld(wRLeg,0,i,ASpeed/1.5,wRLE,wRLE2,PoseRLE,v3(25,0,20),1) 
				SetWeld(wRLeg2,0,i,ASpeed/1.5,wRLEG,wRLEG2,PoseRLEG,v3(-10,35,-20),1) 
				SetWeld(wRLeg3,0,i,ASpeed,wRLL,wRLL2,PoseRLL,v3(15,-35,0),0)
				wait(0)
			end
			GroundOffset = PrevOff
			ReturnPose(ASpeed)
			ArmAnim = ArmAnim~="" and  "" or ArmAnim
			LegAnim = LegAnim~="" and  "" or LegAnim
		end
	end
end)

Mouse.KeyUp:connect(function(key)
	keys[key]=false
end)
Humanoid.Changed:connect(function(prop)
	if prop == "Health" then
		if PrevHealth-Humanoid.Health>0 then
			for i,v in pairs(game:GetService("Players"):GetChildren()) do
				if not v:IsA("Player") or not v.Character.Parent then return end
				local fHum,fTorso,fHead = GetHuman(v.Character)
				if not fHum or not fTorso then return end
				if v.Name~=Player.Name then
					local Dist = (v.Character.Torso.Position-Torso.Position).magnitude
					if Dist<25 then
						Damage(v.Character.Humanoid,math.ceil((PrevHealth-Humanoid.Health)*0.75))
						Lightning(Hole.Position,fTorso.Position,mran(3,6),5,"New Yeller",0.3,mran2(0.5,0.9))
						PlaySound(as.ElectricShock,1,1,Torso)
					end
				end
			end
		end
	end
end)

Spawn(function()
	while Suit.Parent do
		for ii,vv in pairs(Saws) do
			Spawn(function()
				for i=0,180,360/(200/SawSpeed) do
					vv[2].C0=cn(-1.25/2-0.5,0,0)*ca(0,i,0)*cn(0,0,-1.25/2)
					wait(0)
				end
				for i=-1.25/2,1.25+0.3,(1.25/40)*SawSpeed do
					vv[2].C0=cn(-0.5+i,0,1.25/2)
					wait(0)
				end
				for i=180,360,360/(200/SawSpeed) do
					vv[2].C0=cn(1.25/2+0.4,0,0)*ca(0,i,0)*cn(0,0,-1.25/2)
					wait(0)
				end
				for i=1.25/2,-1.25-0.3,-(1.25/40)*SawSpeed do
					vv[2].C0=cn(0.4+i,0,-1.25/2)
					wait(0)
				end
			end)
			wait(0.08)
		end
		wait(0)
	end
end)

Count = 0
game:GetService("RunService").RenderStepped:connect(function()
	if Suit.Parent then
		Count = Count+1
		local hit,at = Raycast(Stand.Position,Stand.Position - (Stand.CFrame*cn(0,3,0)).p,10,Char)
		if hit and at then
			BP.position = at+GroundOffset
			BP.maxForce = v3(0,1/0,0)
		else 
			BP.maxForce = v3()
		end
		local CurrentPos = ArmSawP.CFrame*cn(0,0,-0.5)
		if Trail then
			if LastPos and (ArmSawP.Position-LastPos.p).magnitude > 0.1 then
				local h = 4.5
				local ft = 0.15
				local a,b = Triangle{(LastPos*cn(0,h/2,0)).p,(LastPos*cn(0,-h/2,0)).p,(CurrentPos*cn(0,h/2,0)).p}
				if a then deb:AddItem(a,ft) end 
				if b then deb:AddItem(b,ft) end
				local a,b = Triangle{(CurrentPos*cn(0,h/2,0)).p,(CurrentPos*cn(0,-h/2,0)).p,(LastPos*cn(0,-h/2,0)).p}
				if a then deb:AddItem(a,ft) end 
				if b then deb:AddItem(b,ft) end
				LastPos = CurrentPos
			elseif not LastPos then
				LastPos = CurrentPos
			end
		elseif not Trail then
			LastPos = nil
		end
		if Trail2 then
			if Count%1==0 then
				local sc = 5
				local To = Hole.Position+v3(mran(-sc,sc),mran(-sc,sc),mran(-sc,sc))
				Lightning(Hole.Position,To,mran(3,6),mran(1,4),"New Yeller",0.2,mran2(0.5,0.9))
			end
		end
		wChakram.C0=cn(0,-1.4,0)*ca(90,0,Count*SawSpeed)
		MouseAngleX = math.floor(cn(Head.Position,Mouse.Hit.p).lookVector.x*90)
		MouseAngleY = math.floor(cn(Head.Position,Mouse.Hit.p).lookVector.y*90)
		SetWeld(Neck,0,1,1,v3(),v3(),v3(0,1.5,-0.1),v3(MouseAngleY<-20 and -20 or MouseAngleY>45 and 45 or MouseAngleY,0,0),1)
		PrevHealth = Humanoid.Health
		Walking = v3(Torso.Velocity.x,0,Torso.Velocity.z).magnitude>1 and true or false
	end
end)
while wait(0) do
		if not Humanoid.PlatformStand and not Humanoid.Sit then
				local AnimSpeed = ASpeed/1.5
				if Walking then
						State = "Walking"
						RePose()
						Humanoid.WalkSpeed = 12
						for i=1,AnimSpeed do
								if TorsoAnim == "" then
										SetWeld(Root,0,i,AnimSpeed,wRT,wRT2,PoseRT,v3(0,-15,0),0) 
										SetWeld(wStand,0,i,AnimSpeed,wST,wST2,PoseST,v3(0,-15,0),0) 
										SetWeld(wBall,0,i,AnimSpeed,wBA,wBA2,PoseBA,v3(0,15,0),0)
								end
								if ArmAnim == "" then
										SetWeld(wLArm,0,i,AnimSpeed,wLAR,wLAR2,PoseLAR,v3(-90,0,20),1) 
										SetWeld(wLArm2,0,i,AnimSpeed,wLARM,wLARM2,PoseLARM,v3(-45,90,0),1) 
								end
								if LegAnim == "" then
										SetWeld(wLLeg,0,i,AnimSpeed,wLLE,wLLE2,PoseLLE,v3(80,0,-20),0) 
										SetWeld(wLLeg2,0,i,AnimSpeed,wLLEG,wLLEG2,PoseLLEG,v3(-80,0,20),0) 
										SetWeld(wLLeg3,0,i,AnimSpeed,wLLL,wLLL2,PoseLLL,v3(0,-15,0),0)
										SetWeld(wRLeg,0,i,AnimSpeed,wRLE,wRLE2,PoseRLE,v3(-35,0,20),0) 
										SetWeld(wRLeg2,0,i,AnimSpeed,wRLEG,wRLEG2,PoseRLEG,v3(-0,0,-20),0) 
										SetWeld(wRLeg3,0,i,AnimSpeed,wRLL,wRLL2,PoseRLL,v3(35,0,0),0)
								end
								SetWeld(RAW,0,i,AnimSpeed,wRA,wRA2,v3(1.5,0.5,0),PoseRA2,0)
								SetWeld(LAW,0,i,AnimSpeed,wLA,wLA2,v3(-1.5,0.5,-1),PoseLA2,0)
								for lever = 1,2 do 
										local x = lever == 1 and -1 or lever == 2 and 1
										SetWeld(Levers[lever][1],0,i,AnimSpeed,Levers[lever][2],Levers[lever][3],v3(x,0.6,-1.5),v3(25*x,0,0),0)
								end
								wait(0)
								
								if not Walking then
										break 
								end
						end
						RePose()
						Humanoid.WalkSpeed = 22
						for i=1,AnimSpeed/2.5 do
								if LegAnim == "" then
										SetWeld(wLLeg,0,i,AnimSpeed/2.5,wLLE,wLLE2,PoseLLE,v3(35,0,-20),0) 
										SetWeld(wLLeg2,0,i,AnimSpeed/2.5,wLLEG,wLLEG2,PoseLLEG,v3(-35,0,20),0) 
										SetWeld(wLLeg3,0,i,AnimSpeed/2.5,wLLL,wLLL2,PoseLLL,v3(0,-15,0),0)
										SetWeld(wRLeg,0,i,AnimSpeed/2.5,wRLE,wRLE2,PoseRLE,v3(-65,0,20),0) 
										SetWeld(wRLeg2,0,i,AnimSpeed/2.5,wRLEG,wRLEG2,PoseRLEG,v3(-45,0,-20),0) 
										SetWeld(wRLeg3,0,i,AnimSpeed/2.5,wRLL,wRLL2,PoseRLL,v3(0,15,0),0)
								end
								SetWeld(RAW,0,i,AnimSpeed/2.5,wRA,wRA2,v3(1.5,0.5,0),PoseRA2,0)
								SetWeld(LAW,0,i,AnimSpeed/2.5,wLA,wLA2,v3(-1.5,0.5,-1),PoseLA2,0)
								for lever = 1,2 do 
										local x = lever == 1 and -1 or lever == 2 and 1
										SetWeld(Levers[lever][1],0,i,AnimSpeed/2.5,Levers[lever][2],Levers[lever][3],v3(x,0.6,-1.5),v3(25*x,0,0),0)
								end
								wait(0)
								
								if not Walking then
										break 
								end
						end
						RePose()
						Humanoid.WalkSpeed = 12
						for i=1,AnimSpeed do
								if TorsoAnim == "" then
										SetWeld(Root,0,i,AnimSpeed,wRT,wRT2,PoseRT,v3(0,15,0),0) 
										SetWeld(wStand,0,i,AnimSpeed,wST,wST2,PoseST,v3(0,15,0),0) 
										SetWeld(wBall,0,i,AnimSpeed,wBA,wBA2,PoseBA,v3(0,-15,0),0)
								end
								if LegAnim == "" then
										SetWeld(wRLeg,0,i,AnimSpeed,wRLE,wRLE2,PoseRLE,v3(80,0,20),0) 
										SetWeld(wRLeg2,0,i,AnimSpeed,wRLEG,wRLEG2,PoseRLEG,v3(-80,0,-20),0) 
										SetWeld(wRLeg3,0,i,AnimSpeed,wRLL,wRLL2,PoseRLL,v3(0,15,0),0)
										SetWeld(wLLeg,0,i,AnimSpeed,wLLE,wLLE2,PoseLLE,v3(-35,0,-20),0) 
										SetWeld(wLLeg2,0,i,AnimSpeed,wLLEG,wLLEG2,PoseLLEG,v3(-0,0,20),0) 
										SetWeld(wLLeg3,0,i,AnimSpeed,wLLL,wLLL2,PoseLLL,v3(35,-0,0),0)
										
										SetWeld(RAW,0,i,AnimSpeed,wRA,wRA2,v3(1.5,0.5,-1),PoseRA2,0)
										SetWeld(LAW,0,i,AnimSpeed,wLA,wLA2,v3(-1.5,0.5,0),PoseLA2,0)
										for lever = 1,2 do 
												local x = lever == 1 and -1 or lever == 2 and 1
												SetWeld(Levers[lever][1],0,i,AnimSpeed,Levers[lever][2],Levers[lever][3],v3(x,0.6,-1.5),v3(-25*x,0,0),0)
										end
								end
								wait(0)
								
								if not Walking then
										break 
								end
						end
						RePose()
						Humanoid.WalkSpeed = 22
						for i=1,AnimSpeed/2.5 do
								if LegAnim == "" then
										SetWeld(wRLeg,0,i,AnimSpeed/2.5,wRLE,wRLE2,PoseRLE,v3(35,0,20),0) 
										SetWeld(wRLeg2,0,i,AnimSpeed/2.5,wRLEG,wRLEG2,PoseRLEG,v3(-35,0,-20),0) 
										SetWeld(wRLeg3,0,i,AnimSpeed/2.5,wRLL,wRLL2,PoseRLL,v3(0,15,0),0)
										SetWeld(wLLeg,0,i,AnimSpeed/2.5,wLLE,wLLE2,PoseLLE,v3(-65,0,-20),0) 
										SetWeld(wLLeg2,0,i,AnimSpeed/2.5,wLLEG,wLLEG2,PoseLLEG,v3(-45,0,20),0) 
										SetWeld(wLLeg3,0,i,AnimSpeed/2.5,wLLL,wLLL2,PoseLLL,v3(0,-15,0),0)
										
										SetWeld(RAW,0,i,AnimSpeed/2.5,wRA,wRA2,v3(1.5,0.5,-1),PoseRA2,0)
										SetWeld(LAW,0,i,AnimSpeed/2.5,wLA,wLA2,v3(-1.5,0.5,0),PoseLA2,0)
										for lever = 1,2 do 
												local x = lever == 1 and -1 or lever == 2 and 1
												SetWeld(Levers[lever][1],0,i,AnimSpeed/2.5,Levers[lever][2],Levers[lever][3],v3(x,0.6,-1.5),v3(-25*x,0,0),0)
										end
								end
								wait(0)
								
								if not Walking then
										break 
								end
						end
				elseif Torso.Velocity.magnitude < 1 then
						if State == "Walking" then
								State = "Idling"
								RePose()
								for i=1,AnimSpeed do
										if TorsoAnim == "" then
												SetWeld(Root,0,i,ASpeed,wRT,wRT2,PoseRT,PoseRT2,0) 
												SetWeld(wStand,0,i,ASpeed,wST,wST2,PoseST,PoseST2,0) 
												SetWeld(wBall,0,i,AnimSpeed,wBA,wBA2,PoseBA,PoseBA2,0)
										end
										if LegAnim == "" then
												SetWeld(wLLeg,0,i,AnimSpeed,wLLE,wLLE2,PoseLLE,PoseLLE2,0) 
												SetWeld(wLLeg2,0,i,AnimSpeed,wLLEG,wLLEG2,PoseLLEG,PoseLLEG2,0) 
												SetWeld(wLLeg3,0,i,AnimSpeed,wLLL,wLLL2,PoseLLL,PoseLLL2,0) 
												SetWeld(wRLeg,0,i,AnimSpeed,wRLE,wRLE2,PoseRLE,PoseRLE2,0) 
												SetWeld(wRLeg2,0,i,AnimSpeed,wRLEG,wRLEG2,PoseRLEG,PoseRLEG2,0) 
												SetWeld(wRLeg3,0,i,AnimSpeed,wRLL,wRLL2,PoseRLL,PoseRLL2,0) 
										end
										wait(0)
										
										if Walking then
												break 
										end
								end
						end
				end
		end
end