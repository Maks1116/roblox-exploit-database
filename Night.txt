Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"]
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
Mouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 
mana=0
Mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 



	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Heartbeat:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Heartbeat:wait(0)
    end
    end
	    end
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end
	
	
local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}

local Color = BrickColor.new("Dark grey")
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new(Color)
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new(Color)
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
	
	
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

--Example: Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)


function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Damagefunc=function(Part,hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        local h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        local c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                local Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                local  blocked=false
                local  block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
                else
                h.Health=h.Health-(Damage/2)
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright blue").Color)
                end
                if Type=="Knockdown" then
                local hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
local rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                local vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,60,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                local rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                local bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
	            local Targetting = false
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                local TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                local  targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                local targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                local dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
                end
                        local debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
        end
end


function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = part("Custom",workspace,"SmoothPlastic",0,1,BrickColor.new(Color),"Effect",vt(0,0,0))
	EffectPart.Anchored = true
	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Size = UDim2.new(3, 0, 3, 0)
	BillboardGui.Adornee = EffectPart
	local TextLabel = Instance.new("TextLabel")
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Text = Text
	TextLabel.TextColor3 = Color
	TextLabel.TextScaled = true
	TextLabel.Font = Enum.Font.ArialBold
	TextLabel.Parent = BillboardGui
	BillboardGui.Parent = EffectPart
	game.Debris:AddItem(EffectPart, (Time + 0.1))
	EffectPart.Parent = game:GetService("Workspace")
	Delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end

HandleA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Mid gray","HandleA",Vector3.new(1, 0.400000155, 1.00999999))
HandleAweld=weld(m,Character["Right Arm"],HandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0164518356, 0.00421309471, -0.0148162842, 5.15770964e-008, 1.96895758e-006, -1, 9.63642469e-006, -0.999999881, -1.96895735e-006, -1, -9.63642469e-006, -5.1596075e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Medium stone grey","Part",Vector3.new(0.999999821, 0.810000002, 1))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00934314728, 0.909656525, 0.200021029, 0.99999994, 3.21264488e-005, -1.37204424e-007, 1.34436931e-007, 4.68630387e-005, 0.999998927, 3.18748207e-005, -0.999999523, 4.64304903e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.400000155, 1.00999999))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.400030136, 0.599991322, -0.000213623047, 0.999999881, 2.39058409e-006, 3.46028912e-008, -1.21625908e-006, 0.999999523, 4.10883877e-006, -4.06064622e-008, -2.09040309e-006, 0.999994993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.400000155, 0.810000002))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.419909477, -0.599978447, 0.099822998, 0.99999994, 7.54928487e-006, 1.76214101e-008, -7.29764179e-006, 0.999999046, 1.29754881e-005, -1.88143972e-008, -1.25429769e-005, 0.999998927))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999857, 0.200000003, 0.600000024))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.24012661, -2.51009035, 0.804786682, 1, 2.18087189e-006, 4.50439437e-008, -2.18087166e-006, 0.999999762, 3.74836827e-006, -4.50357653e-008, -3.74837009e-006, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.600000024, 0.600000143, 0.600000024))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00945472717, -1.29999971, 0.804782867, 0.99999994, 1.8873352e-006, 3.71787934e-008, -1.7195739e-006, 0.999999523, 3.24379926e-006, -3.80317147e-008, -2.95545533e-006, 0.999999285))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.600000024, 0.600000024, 0.600000024))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.804782867, -1.2998786, 0.611018181, -2.1469468e-008, 2.95687141e-006, -0.999999285, -1.68529607e-006, 0.999999523, 3.24521534e-006, 0.99999994, 1.8530576e-006, -2.23224497e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(1.01999998, 0.400000155, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00987052917, 0.599969149, -0.405174255, 0.999991298, 3.5646633e-006, 5.82853446e-008, -3.64854418e-006, 0.999993682, 1.23275922e-005, -2.84389419e-008, -1.24717717e-005, 0.999994874))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.600000024, 0.600000024, 0.600000024))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.804782867, -1.29987872, 0.588165283, -2.31810962e-008, -2.95748578e-006, 0.999999285, -1.69982729e-006, 0.999999523, 3.2458297e-006, -0.99999994, -1.86758859e-006, -2.23281198e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.400000155, 0.810000002))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.419827461, 0.599992752, 0.0997886658, 0.999999762, 2.43251839e-006, 3.43970825e-008, -1.17431364e-006, 0.999999523, 4.18092532e-006, -4.08298391e-008, -2.01831517e-006, 0.999994636))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(1.01999998, 0.400000155, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00995731354, -0.599978447, -0.40517807, 0.999999702, 8.59777992e-006, 1.22682096e-008, -6.24913537e-006, 0.999998569, 1.47776454e-005, -2.41907241e-008, -1.07407013e-005, 0.999989986))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.999999821, 0.210000008, 0.800000012))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0093460083, 1.00976944, 0.199998856, 0.999999404, 2.3486723e-006, 4.91613505e-009, -1.04903428e-008, -2.16248964e-006, 0.999995112, 1.25822874e-006, -0.999999523, -4.03675222e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.999999821, 0.800000131, 0.600000024))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00878238678, -0.600002289, 0.804782867, 0.99999994, 1.88724323e-006, 3.71787934e-008, -1.71948193e-006, 0.999999523, 3.24379926e-006, -3.80317182e-008, -2.95545533e-006, 0.999999285))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.400000155, 1.00999999))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399893761, -0.599973679, -0.00016784668, 0.99999994, 5.4103275e-006, 2.85357231e-008, -5.15868305e-006, 0.999999046, 9.29907037e-006, -2.97754301e-008, -8.86655653e-006, 0.999998927))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.599999845, 1.60000038, 0.600000024))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.190833092, -1.80008459, 0.804786682, 0.99999994, 1.88724869e-006, 3.71787934e-008, -1.71948739e-006, 0.999999523, 3.24379926e-006, -3.80317182e-008, -2.95545533e-006, 0.999999285))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00928020477, 0.199999332, 1.1047821, -1, -5.1769365e-007, 2.49673747e-007, 5.17688477e-007, -0.999999762, -1.79347444e-005, 2.49683012e-007, -1.79347426e-005, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=47260990 ",Vector3.new(0, 0, 0),Vector3.new(0.786000013, 0.828000009, 1.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.599999845, 1.60000038, 0.600000024))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.208971024, -1.80008447, 0.804786682, 0.99999994, 1.8872571e-006, 3.71787934e-008, -1.7194958e-006, 0.999999523, 3.24379926e-006, -3.80317182e-008, -2.95545533e-006, 0.999999285))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999857, 0.200000003, 0.600000024))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.199191093, -2.51008964, 0.804786682, 1, 2.3486466e-006, 4.41860522e-008, -2.3486466e-006, 0.999999762, 4.03671083e-006, -4.41765664e-008, -4.03671311e-006, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.600000024, 0.800000131, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.804782867, -0.599880934, 0.59105587, -2.2917293e-008, -3.02957324e-006, 0.999999642, -1.74180502e-006, 0.999999523, 3.1737427e-006, -0.99999994, -1.82568601e-006, -2.24935697e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.600000024, 0.800000131, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.804779053, -0.599861383, 0.608938217, 6.80476333e-008, 2.88217461e-006, -0.999998927, -1.64423193e-006, 0.999999523, 3.31469255e-006, 0.99999994, 1.89587342e-006, 6.67653168e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(1.39999986, 1.00000012, 0.600000024))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00850009918, 0.299923658, 0.804782867, 1, 1.8033528e-006, 3.76067852e-008, -1.80335189e-006, 0.999999523, 3.0996257e-006, -3.76011862e-008, -3.09963116e-006, 1))
BarrelA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","BarrelA",Vector3.new(0.799999833, 0.200000003, 0.600000024))
BarrelAweld=weld(m,HandleA,BarrelA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00080871582, -2.51008987, 0.804786682, 1, 2.3486466e-006, 4.41860522e-008, -2.3486466e-006, 0.999999762, 4.03671083e-006, -4.41765664e-008, -4.03671311e-006, 1))
mesh("CylinderMesh",BarrelA,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

HandleB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Mid gray","Handle",Vector3.new(1, 0.400000155, 1.00999999))
handleweld=weld(m,Character["Left Arm"],HandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00640583038, 0.00421285629, -0.014667511, 1.58720503e-008, 1.9694528e-006, 0.999999642, -9.65550043e-006, -0.999999881, 1.96945234e-006, 0.999999642, -9.65550225e-006, -1.58504996e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Medium stone grey","Part",Vector3.new(0.999999821, 0.810000002, 1))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00934314728, 0.909656525, 0.200021029, 0.999999225, 3.21264451e-005, -1.37201809e-007, 1.34439375e-007, 4.6863046e-005, 0.999998212, 3.18748025e-005, -0.999999523, 4.64304467e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.400000155, 1.00999999))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.400030136, 0.599991083, -0.000217437744, 0.999999166, 2.39058249e-006, 3.46053923e-008, -1.21625988e-006, 0.999999523, 4.10884059e-006, -4.06039042e-008, -2.09039763e-006, 0.999994278))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.400000155, 0.810000002))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.419908524, -0.599978447, 0.0998191833, 0.99999851, 7.54928033e-006, 1.76264301e-008, -7.2976386e-006, 0.999999046, 1.29754835e-005, -1.88093008e-008, -1.25429642e-005, 0.999997497))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999857, 0.200000003, 0.600000024))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.240127563, -2.51008964, 0.804779053, 0.999999285, 2.1808703e-006, 4.37561702e-008, -2.18087166e-006, 0.999999762, 3.748371e-006, -4.37442083e-008, -3.74836372e-006, 0.999999285))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.600000024, 0.600000143, 0.600000024))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00945472717, -1.29999995, 0.804779053, 0.999999225, 1.88733361e-006, 3.71812945e-008, -1.71957424e-006, 0.999999523, 3.24380198e-006, -3.80291532e-008, -2.95545078e-006, 0.999998569))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.600000024, 0.600000024, 0.600000024))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.804771423, -1.2998786, 0.611018181, -2.14719833e-008, 2.95686687e-006, -0.999998569, -1.68529652e-006, 0.999999523, 3.24521807e-006, 0.999999225, 1.85305612e-006, -2.23199095e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(1.01999998, 0.400000155, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00987434387, 0.599969625, -0.405162811, 0.99999094, 3.56466239e-006, -9.33802369e-010, -3.64854304e-006, 0.999993682, 1.23275886e-005, 1.05284457e-007, -1.24717662e-005, 0.999994278))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.600000024, 0.600000024, 0.600000024))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.804779053, -1.29987884, 0.588165283, -2.31785435e-008, -2.95748123e-006, 0.999998569, -1.69982752e-006, 0.999999523, 3.24583243e-006, -0.999999225, -1.86758712e-006, -2.23306316e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.400000155, 0.810000002))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.419827461, 0.599992752, 0.0997886658, 0.999999046, 2.43251679e-006, 3.43995836e-008, -1.17431432e-006, 0.999999523, 4.18092714e-006, -4.0827274e-008, -2.01830971e-006, 0.99999392))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(1.01999998, 0.400000155, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00995731354, -0.599978209, -0.405181885, 0.999997556, 8.59777447e-006, 1.22757626e-008, -6.24913037e-006, 0.999998569, 1.47776336e-005, -2.41830644e-008, -1.0740685e-005, 0.999987841))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.999999821, 0.210000008, 0.800000012))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0093460083, 1.00976181, 0.199999094, 0.999998689, 2.34867071e-006, 4.91866103e-009, -1.0487808e-008, -2.16248418e-006, 0.999994397, 1.25822942e-006, -0.999999523, -4.03675404e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.999999821, 0.800000131, 0.600000024))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00878238678, -0.600002289, 0.804779053, 0.999999225, 1.88724164e-006, 3.71812945e-008, -1.71948216e-006, 0.999999523, 3.24380198e-006, -3.80291567e-008, -2.95545078e-006, 0.999998569))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.400000155, 1.00999999))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399893761, -0.599973917, -0.000171661377, 0.99999851, 5.41032341e-006, 2.85407094e-008, -5.15868396e-006, 0.999999046, 9.29906673e-006, -2.97703142e-008, -8.86654379e-006, 0.999997497))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.599999845, 1.60000038, 0.600000024))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.190833092, -1.80008471, 0.804779053, 0.999999225, 1.88724709e-006, 3.71812945e-008, -1.71948773e-006, 0.999999523, 3.24380198e-006, -3.80291567e-008, -2.95545078e-006, 0.999998569))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00928020477, 0.199999094, 1.10477829, -0.999999225, -5.17692001e-007, 2.84085331e-007, 5.17688704e-007, -0.999999762, -1.79347389e-005, 2.84109177e-007, -1.79347371e-005, 0.999999225))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=47260990 ",Vector3.new(0, 0, 0),Vector3.new(0.786000013, 0.828000009, 1.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.599999845, 1.60000038, 0.600000024))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.208971024, -1.80008459, 0.804779053, 0.999999225, 1.88725551e-006, 3.71812945e-008, -1.71949614e-006, 0.999999523, 3.24380198e-006, -3.80291567e-008, -2.95545078e-006, 0.999998569))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999857, 0.200000003, 0.600000024))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.199184418, -2.5100894, 0.804786682, 0.999999285, 2.34864501e-006, 4.37577903e-008, -2.34864569e-006, 0.999999762, 4.03671356e-006, -4.37436398e-008, -4.03670674e-006, 0.999999285))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.600000024, 0.800000131, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.804779053, -0.599881411, 0.59105587, -2.29147439e-008, -3.02956778e-006, 0.999998927, -1.74180525e-006, 0.999999523, 3.17374543e-006, -0.999999225, -1.82568454e-006, -2.24960832e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.600000024, 0.800000131, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.804775238, -0.599861383, 0.608938217, 6.8045054e-008, 2.88216916e-006, -0.999998212, -1.64423227e-006, 0.999999523, 3.31469528e-006, 0.999999225, 1.89587183e-006, 6.67677966e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(1.39999986, 1.00000012, 0.600000024))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00850009918, 0.299923658, 0.804779053, 0.999999285, 1.80335121e-006, 3.76092864e-008, -1.80335212e-006, 0.999999523, 3.09962843e-006, -3.75986247e-008, -3.0996257e-006, 0.999999285))
BarrelB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","BarrelB",Vector3.new(0.799999833, 0.200000003, 0.600000024))
BarrelBweld=weld(m,HandleB,BarrelB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000818252563, -2.5100894, 0.804779053, 0.999999285, 2.34864501e-006, 4.37577903e-008, -2.34864569e-006, 0.999999762, 4.03671356e-006, -4.37436398e-008, -4.03670674e-006, 0.999999285))
mesh("CylinderMesh",BarrelB,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Mid gray","Handle",Vector3.new(1.02999997, 0.400000155, 0.200000003))
handleweld=weld(m,Character["Left Leg"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00482177734, 0.60084343, -0.0100822449, -1, -5.36894822e-006, -5.1169021e-008, 5.36895095e-006, -0.999999881, 1.86432862e-005, -5.12691187e-008, 1.86432844e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.620000005, 0.400000155, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00501251221, -0.19991076, 0.419974327, 1, -1.13095666e-009, -5.73407988e-012, 1.11867848e-009, 0.999999523, 3.83415433e-009, 5.75184345e-012, -3.82015308e-009, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.400000006, 0.200000033, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.300132751, -0.900682688, 0.714515686, -5.12854363e-008, 1.86433699e-005, 1, 5.42855059e-006, 0.999999464, -1.86432771e-005, -0.999999881, 5.38385166e-006, -5.12693887e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.306000054, 0.363999993, 0.298000067))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.230000004, 0.400000155, 0.819999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.400024414, -0.199884892, 0.110021591, 1, -3.18856428e-006, 1.63091372e-008, 3.18855382e-006, 0.999999523, -5.47489981e-006, -1.62916685e-008, 5.47491254e-006, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(1.02999997, 0.400000155, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -0.19998908, -0.400001526, 1, -1.97815098e-010, -9.73443548e-013, 1.85536919e-010, 0.999999523, 6.65474897e-010, 9.87654403e-013, -6.51473486e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.400000155, 0.819999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.414840698, -0.19992125, 0.110017776, 1, -3.18842308e-006, 1.63098086e-008, 3.18841262e-006, 0.999999523, -5.47535274e-006, -1.62923364e-008, 5.47536456e-006, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.400000006, 0.200000033, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299860954, -0.900682688, 0.714515686, -5.12854363e-008, 1.86433699e-005, 1, 5.42855059e-006, 0.999999464, -1.86432771e-005, -0.999999881, 5.38385166e-006, -5.12693887e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.306000054, 0.363999993, 0.298000067))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.400000006, 0.800000012, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.714614868, -0.200629354, -0.299841881, 1, -3.18785192e-006, 1.63125939e-008, 3.18784146e-006, 0.999999523, -5.47723175e-006, -1.62951217e-008, 5.47724358e-006, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.420000017, 0.400000006, 0.420000017))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.724590302, -0.200787902, -0.299805641, 1, -3.18777597e-006, 1.63129918e-008, 3.18776574e-006, 0.999999523, -5.47749551e-006, -1.62955196e-008, 5.47750733e-006, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.420000017, 0.400000006, 0.420000017))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.72461319, -0.200729728, 0.300173759, 1, -3.18789807e-006, 1.63124518e-008, 3.18788466e-006, 0.999999523, -5.4771408e-006, -1.62949796e-008, 5.47715263e-006, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.400000006, 0.800000012, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.714599609, -0.200613737, 0.300151825, 1, -3.18753905e-006, 1.63145231e-008, 3.18753473e-006, 0.999999762, -5.47841591e-006, -1.62970544e-008, 5.47842228e-006, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

BackHandle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","BackHandle",Vector3.new(1.19999981, 1.4000001, 0.600000024))
BackHandleweld=weld(m,Character["Torso"],BackHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0196533203, 0.400322199, 0.810890198, 0.99999994, -0.000393598049, 9.99395779e-005, -0.000393594615, -1, -3.4742352e-005, 9.99532422e-005, 3.47030109e-005, -1))
JointConnectorA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Institutional white","JointConnector1A",Vector3.new(0.800000012, 0.200000003, 0.600000024))
JointConnectorAweld=weld(m,BackHandle,JointConnectorA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.500391722, -1.09958172, 0.000106811523, -0.000134849091, 1.00000036, 0.000244120281, 1.00000012, 0.00013480286, 0.0001889009, 0.000188868027, 0.000244145835, -1))
mesh("CylinderMesh",JointConnectorA,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
JointConnectorB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Institutional white","JointConnector2A",Vector3.new(0.800000012, 0.200000003, 0.600000024))
JointConnectorBweld=weld(m,BackHandle,JointConnectorB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.499224424, 1.10042953, 0.000389099121, -0.000142050441, 1.00000048, 0.00024563272, 1, 0.000142004006, 0.000189126484, 0.000189091646, 0.00024565967, -1))
mesh("CylinderMesh",JointConnectorB,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Medium stone grey","Part",Vector3.new(0.999999821, 0.810000002, 1))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000204086304, -0.114334106, 0.11003828, 0.99999994, -0.000434145943, 0.000135086244, 0.000135075781, -2.41484304e-005, -1, 0.000434149173, 1, -2.40897843e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.699985504, 0.299962997, 0.000106811523, 1, 2.8545157e-005, 2.01498915e-006, -2.85451333e-005, 1.00000048, -1.65976708e-005, -2.01549119e-006, 1.65976235e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.800000012, 0.200000003, 0.600000024))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.70017767, 0.900276184, 2.28881836e-005, 7.87207955e-006, 1.0000006, 0.000218146262, 1, -7.91228922e-006, 0.000184381133, 0.000184382894, 0.000218144967, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.800000012, 0.200000003, 0.600000024))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700681448, -0.899713516, -0.000160217285, -4.77653066e-006, 1.00000036, 0.000233566359, 1.00000012, 4.73343016e-006, 0.000184065444, 0.000184064382, 0.000233567349, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.800000012, 0.200000003, 0.600000024))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699317455, -0.900104523, -0.000503540039, -2.19041112e-006, 1.00000048, 0.000229374593, 1, 2.14808301e-006, 0.000184186967, 0.000184186516, 0.000229375117, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.600000024, 0.600000083, 0.600000024))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000160217285, -0.999997377, 0.299993515, 3.70928319e-008, -2.55422492e-008, 0.999995828, 5.12266354e-007, 1.00000048, -4.77502908e-007, -0.999994159, -3.52497096e-007, -7.4505806e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.600000024, 0.600000083, 0.600000024))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.15527344e-005, -1.00000215, 0.300003052, 1.37202733e-007, -1.36241215e-006, -0.99999845, 2.17364732e-006, 1.00000036, -1.53008295e-006, 0.999997973, -1.88537808e-006, 1.7232378e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.700035095, -0.299979925, -3.05175781e-005, 1, 2.56532749e-005, 1.77198672e-006, -2.56533112e-005, 1.00000048, -1.4922125e-005, -1.772416e-006, 1.49220887e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 1.39999998, 0.600000024))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.899816513, 8.86917114e-005, -8.39233398e-005, 1.00000012, -6.77646894e-005, 1.9375002e-006, 6.77645876e-005, 1.00000036, -1.50834312e-005, -1.93650339e-006, 1.50835713e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.800000012, 0.200000003, 0.600000024))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699826002, 0.899929047, -0.000267028809, 5.00179112e-006, 1.00000036, 0.000227865909, 1, -5.04371428e-006, 0.00018396313, 0.000183964323, 0.000227865065, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.699979782, -0.300032854, 8.39233398e-005, 1, 2.33540086e-005, 1.59936462e-006, -2.33540104e-005, 1.00000036, -1.3580393e-005, -1.59972114e-006, 1.35803584e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.999999821, 0.210000008, 0.800000012))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000158309937, 0.204177856, -0.100054502, 0.99999994, -0.000365686341, -1.8454848e-005, 1.84939854e-005, 0.000107020081, 1, -0.000365684333, -1, 0.000107026826))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 1.39999998, 0.600000024))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.899957657, -5.14984131e-005, 1.52587891e-005, 1, 4.35386755e-005, 1.46304228e-006, -4.3538701e-005, 1.00000048, -2.5323272e-005, -1.46418461e-006, 2.53232211e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000169754028, -0.110027075, -0.289321899, 0.99999994, -0.000429946143, -6.52186136e-005, -0.000429945881, -1, 3.28611713e-006, -6.52200033e-005, -3.25807923e-006, -1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=47260990 ",Vector3.new(0, 0, 0),Vector3.new(0.786000013, 0.828000009, 1.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.700004578, 0.300017357, -7.62939453e-006, 1.00000012, 1.98868911e-005, 1.39452459e-006, -1.98869839e-005, 1.00000036, -1.15688927e-005, -1.39477197e-006, 1.15688727e-005, 1))

JointHandleA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","JointHandleA",Vector3.new(0.800000012, 0.200000003, 0.600000024))
JointHandleAweld=weld(m,JointConnectorA,JointHandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.83582306e-005, 1.71661377e-005, 4.57763672e-005, 1.00002372, 9.22270647e-006, -2.51305755e-006, -9.21489027e-006, 1.00000823, 7.3468982e-007, 2.52091559e-006, -7.32572516e-007, 1.00000691))
mesh("CylinderMesh",JointHandleA,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
GunConnectorA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Institutional white","GunConnectorA",Vector3.new(0.600000024, 0.200000003, 0.600000024))
GunConnectorAweld=weld(m,JointHandleA,GunConnectorA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700202465, -0.199803352, 0.000106811523, 1.00002193, 0.000155094516, 5.12073166e-006, -0.000155089874, 1.00000751, 3.48285539e-006, -5.11290273e-006, -3.48169851e-006, 1.00000632))
mesh("CylinderMesh",GunConnectorA,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.800000012, 0.200000003, 0.600000024))
Partweld=weld(m,JointHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.800303221, 0.000170707703, -0.000518798828, 1.00002372, 0.000125587932, -9.87216481e-006, -0.000125582214, 1.00000823, 4.54029941e-006, 9.88075044e-006, -4.53696703e-006, 1.00000691))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.799999952, 0.600000024))
Partweld=weld(m,JointHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000982284546, 0.400094986, 0.000297546387, -0.000799572212, 1.00000811, 0.000185435987, 1.00002396, 0.000799589267, -0.000116516225, -0.00011667455, 0.000185340876, -1.00000703))

JointHandleB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","JointHandleB",Vector3.new(0.800000012, 0.200000003, 0.600000024))
JointHandleBweld=weld(m,JointConnectorB,JointHandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00079536438, -1.71661377e-005, -0.000114440918, 1.00001121, 4.23926722e-005, 1.41100318e-005, -4.24169266e-005, 1.00001359, 5.81741915e-007, -1.41142809e-005, -5.79668267e-007, 1.00001562))
mesh("CylinderMesh",JointHandleB,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
GunConnectorB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Institutional white","GunConnectorB",Vector3.new(0.600000024, 0.200000003, 0.600000024))
GunConnectorBweld=weld(m,JointHandleB,GunConnectorB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.699269533, 0.20022583, 0.00025177002, 1.00001144, 9.48040179e-005, -7.13363988e-006, -9.48246816e-005, 1.00001168, 3.8729122e-006, 7.1307586e-006, -3.8698272e-006, 1.00001419))
mesh("CylinderMesh",GunConnectorB,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.800000012, 0.200000003, 0.600000024))
Partweld=weld(m,JointHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.799968004, 0.000133514404, -9.91821289e-005, 1.00001144, 5.51939411e-005, -3.30700714e-005, -5.5215256e-005, 1.00001216, 4.67001519e-006, 3.30667535e-005, -4.66570054e-006, 1.00001454))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.600000024, 0.200000003, 0.600000024))
Partweld=weld(m,JointHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.699347496, 0.000215530396, 0.000228881836, 1.00001144, 5.07884397e-005, -3.28006863e-005, -5.08106859e-005, 1.00001264, 3.4170007e-006, 3.27970192e-005, -3.41280975e-006, 1.0000149))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.799999952, 0.600000024))
Partweld=weld(m,JointHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000913619995, 0.399995565, 0, -0.000859739492, 1.00001156, 0.000185929675, 1.00001097, 0.000859755091, -0.000195633038, -0.000195788627, 0.000185758545, -1.00001454))

GunHandleA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","GunHandleA",Vector3.new(0.600000024, 0.200000003, 0.600000024))
GunHandleAweld=weld(m,GunConnectorA,GunHandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.81333923e-005, -2.38418579e-005, 0.000122070313, 1.000018, 4.40606818e-005, 1.71461434e-005, -4.40589392e-005, 1.00000608, 1.96720066e-007, -1.71404681e-005, -1.95868779e-007, 1.00000525))
mesh("CylinderMesh",GunHandleA,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Barrel1A=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"White","Barrel1A",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Barrel1Aweld=weld(m,GunHandleA,Barrel1A,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.301003456, -3.01091766, -0.120499134, -0.000310220959, 1.00001049, 9.32219409e-005, 0.000273376325, 9.33043921e-005, -1.00000513, -1.00002241, -0.000310193369, -0.000273406797))
Barrel2A=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"White","Barrel2A",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Barrel2Aweld=weld(m,GunHandleA,Barrel2A,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.301006317, -3.0109787, 0.0795035362, -0.000310228672, 1.00001585, 9.32240582e-005, 0.000273379992, 9.33051051e-005, -1.00001037, -1.0000397, -0.000310198491, -0.000273412472))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.399999857, 1.60000038, 0.400000036))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.300701141, 2.10153961, 0.0998549461, 0.000387485576, -1.00000918, -0.000205141594, -0.000205789169, -0.000205219141, 1.00000775, -1.00002742, -0.0003874377, -0.000205873075))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.400000006, 0.200000003, 0.200000033))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.300693512, -0.201332092, 0.400040627, 9.76964366e-005, -1.00000644, -0.000465032994, 4.45076148e-006, 0.000465032208, -1.00000525, 1.00001907, 9.7693628e-005, 4.50210064e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.439999849, 0.80000037, 0.420000046))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.300717354, 2.10094452, -0.100504875, 0.00039939204, -1.00000322, -0.000207646197, -0.000303345674, -0.000207766599, 1.00000262, -1.00000942, -0.000399326789, -0.000303429551))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999857, 0.210000008, 0.200000003))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.300693512, 2.8059845, -0.120531559, 0.000406712177, -1.00001085, -0.000207314544, -0.000303088542, -0.000207436562, 1.00000262, -1.00001705, -0.000406647741, -0.000303172885))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.439999849, 0.80000037, 0.420000046))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.300697327, 2.10094452, 0.0994949341, 0.00039939204, -1.00000322, -0.000207646197, -0.000303345674, -0.000207766599, 1.00000262, -1.00000942, -0.000399326789, -0.000303429551))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.400000036, 0.599999964, 0.200000003))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300806046, -0.000413894653, -1.20135498, -0.000731348409, 1.0000062, 0.000186127727, 1.00001884, 0.000731338456, 7.23669655e-006, 7.09466985e-006, 0.000186131423, -1.00000536))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000036, 0.599999964, 0.600000024))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300823212, -0.000389099121, -0.801322937, -0.000736263755, 1.0000062, 0.000186091289, 1.00001884, 0.000736255257, -1.30245462e-006, -1.44549995e-006, 0.000186088728, -1.00000536))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.399999857, 1.60000038, 0.400000036))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.300709724, 2.1015625, -0.100152969, 0.000389917404, -1.00000632, -0.000204981858, -0.000204947049, -0.000205060263, 1.00000525, -1.00001884, -0.000389870926, -0.000205030199))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 0.210000008, 0.600000024))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000589847565, 0.605097771, -0.000411987305, -1.00001907, -7.11746543e-005, -1.00177131e-005, 7.11750472e-005, -1.00000632, -7.65992445e-006, -1.00113102e-005, -7.65892764e-006, 1.00000536))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.400000036, 0.599999964, 0.799999893))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300902367, -0.000275611877, -0.101234436, -0.000714223599, 1.00000596, 0.000186143894, 1.0000186, 0.000714214111, 5.40760811e-006, 5.26869553e-006, 0.000186146179, -1.00000536))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.600000024, 0.200000003, 0.600000024))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000121593475, -0.600021362, -0.000122070313, 1.00001884, 1.95363464e-005, -1.17676973e-005, -1.95360717e-005, 1.00000632, 8.09086487e-008, 1.17738964e-005, -7.8965968e-008, 1.00000536))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.400000036, 0.200000003, 0.400000036))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.301052094, -0.398658752, 0.0996770859, 0.000168173574, -1.0000062, -0.000469181949, 0.000192342239, -0.000469148305, 1.00000525, -1.00001884, -0.000168262224, 0.000192254665))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999857, 0.210000008, 0.200000003))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.300667763, 2.80599976, 0.129474163, 0.000401809055, -1.00000453, -0.000207350764, -0.000300242304, -0.000207470555, 1.00000262, -1.00001073, -0.000401744619, -0.000300326414))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.30081749, 0.198722839, 0.500051975, 9.52785049e-005, -1.00000632, -0.000465142744, 2.44280091e-006, 0.000465141784, -1.00000525, 1.00001884, 9.5276635e-005, 2.49309232e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.400000036, 0.200000003, 0.200000033))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.301048279, -0.398727417, 0.200325489, -0.000165666483, 1.0000062, 0.000465443503, 0.000190699473, -0.000465410732, 1.00000525, 1.00001884, 0.000165753692, -0.000190613733))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

GunHandleB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","GunHandleB",Vector3.new(0.600000024, 0.200000003, 0.600000024))
GunHandleBweld=weld(m,GunConnectorB,GunHandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000673770905, -8.39233398e-005, -1.52587891e-005, 1.00000942, 5.44717441e-005, 1.94212189e-005, -5.44843424e-005, 1.00000739, 1.13752321e-007, -1.94224704e-005, -1.13155693e-007, 1.00000906))
mesh("CylinderMesh",GunHandleB,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Barrel1B=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"White","Barrel1B",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Barrel1Bweld=weld(m,GunHandleB,Barrel1B,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.299085617, -3.01102448, -0.119781017, -0.000329221628, 1.00001323, 9.33345873e-005, 0.000268255244, 9.34198906e-005, -1.00001228, -1.00001538, -0.000329178496, -0.000268283795))
Barrel2B=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"White","Barrel2B",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Barrel2Bweld=weld(m,GunHandleB,Barrel2B,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.299085617, -3.01103973, 0.0802307129, -0.00032922221, 1.00001645, 9.33356132e-005, 0.000268258213, 9.34203417e-005, -1.0000124, -1.00001836, -0.000329179165, -0.000268286414))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999857, 0.210000008, 0.200000003))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299430847, 2.80601501, 0.130136967, 0.000420811819, -1.00000989, -0.00020746683, -0.000295129896, -0.000207588339, 1.00001204, -1.00001252, -0.000420732453, -0.000295215374))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999857, 0.210000008, 0.200000003))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299409866, 2.80599976, -0.119864464, 0.000420814817, -1.00001657, -0.000207468634, -0.000295128761, -0.000207589677, 1.00001252, -1.00001824, -0.000420735218, -0.000295213307))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.439999849, 0.80000037, 0.420000046))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299398422, 2.10095215, 0.100156307, 0.000418395415, -1.00000989, -0.000207762394, -0.000298228057, -0.000207884499, 1.00001204, -1.00001252, -0.000418315292, -0.000298313156))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.439999849, 0.80000037, 0.420000046))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299377441, 2.10095215, -0.099843502, 0.000418395415, -1.00000989, -0.000207762394, -0.000298228057, -0.000207884499, 1.00001204, -1.00001252, -0.000418315292, -0.000298313156))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.400000036, 0.599999964, 0.200000003))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.299085617, -0.000154495239, -1.20111847, -0.000798207242, 1.00001216, 0.000186916441, 1.0000155, 0.000798188092, -2.47909629e-005, -2.49380828e-005, 0.000186893303, -1.00001514))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000036, 0.599999964, 0.600000024))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.299261093, -0.000652313232, -0.801330566, -0.000765027537, 1.00000477, 0.000186326899, 1.00000608, 0.000765017117, 4.95283166e-006, 4.81112511e-006, 0.000186329329, -1.00000596))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.399999857, 1.60000038, 0.400000036))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299259186, 2.10105133, 0.100150585, 0.000449428364, -1.00000989, -0.000205993856, -0.000232496488, -0.000206095719, 1.00001204, -1.00001252, -0.00044936224, -0.000232587248))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.399999857, 1.60000038, 0.400000036))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.29924202, 2.10101318, -0.099852562, 0.000439619296, -1.00000465, -0.00020606746, -0.000235352476, -0.0002061696, 1.00000608, -1.00000608, -0.000439561845, -0.000235442218))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.400000006, 0.200000003, 0.200000033))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300058365, -0.200164795, 0.39960289, 0.00014546531, -1.00000942, -0.000465339806, 2.72641191e-005, 0.000465340447, -1.00001204, 1.0000124, 0.000145435566, 2.73301266e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299087524, 0.198875427, 0.499901295, 0.000138242394, -1.00001395, -0.000465639692, 2.61189853e-005, 0.000465638208, -1.00001812, 1.0000186, 0.000138204938, 2.61808163e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 0.210000008, 0.600000024))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000405311584, 0.604974747, -0.000221252441, 1.00001872, 0.000124336628, 3.06558795e-005, -0.000124361904, 1.00001407, 2.04929529e-006, -3.06582078e-005, -2.04989192e-006, 1.00001824))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.400000036, 0.599999964, 0.799999893))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.29914093, -0.000112533569, -0.101150513, -0.000767017948, 1.00001383, 0.000186496531, 1.00001836, 0.000766996061, -3.24900029e-005, -3.26305162e-005, 0.000186467601, -1.00001824))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.600000024, 0.200000003, 0.600000024))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000385761261, 0.599992752, -4.57763672e-005, 1.00001872, 8.64388567e-005, 3.8362341e-006, -8.64641042e-005, 1.00001431, 1.160377e-006, -3.83867882e-006, -1.15746661e-006, 1.00001824))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.400000036, 0.200000003, 0.400000036))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299236298, -0.398200989, 0.100030422, 0.00025981167, -1.00001419, -0.000468346872, 0.000176015252, -0.000468296057, 1.00001812, -1.0000186, -0.00025986816, 0.000175895984))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.400000036, 0.200000003, 0.200000033))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.299167633, -0.3984375, 0.199965, -0.000250084035, 1.00001419, 0.000464713085, 0.000173949171, -0.000464664481, 1.00001812, 1.0000186, 0.000250138983, -0.000173835404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"Head","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function LaserBarrage(Prt,Parent)
attack=true
--so("BeamLockon",Prt,1,1) 
local efprt=part(3,Parent,"SmoothPlastic",0,0.5,BrickColor.new("Cyan"),"Effect",vt(0.2,0.2,0.2))
efprt.Anchored=true
local efmsh=mesh("CylinderMesh",efprt,"","",vt(0,0,0),vt(1,1,1))
local spread=vt((math.random(-1,0)+math.random())*7,(math.random(-1,0)+math.random())*7,(math.random(-1,0)+math.random())*7)*(Prt.Position-Mouse.Hit.p).magnitude/100
--spread=vt(0,0,0)
coroutine.resume(coroutine.create(function(Part,Mesh,Spreaded) 
game:GetService("Debris"):AddItem(Part,6)
local TheHit=Mouse.Hit.p
local MouseLook=cf((Prt.Position+TheHit)/2,TheHit+Spreaded)
local hit,pos = rayCast(Prt.Position,MouseLook.lookVector,1000,Parent)
so("Elec",Prt,0.2,1) 
local tefprt=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Black"),"Effect",vt(0.2,0.2,0.2))
tefprt.CFrame=cf(pos)
MagicCircle(BrickColor.new("Cyan"),cf(pos),0.5,0.5,0.5,0.5,0.5,0.5,0.04)
so("Elec",tefprt,0.3,1) 
game:GetService("Debris"):AddItem(tefprt,3)
Part.CFrame=CFrame.new((Prt.Position+pos)/2,pos)*angles(1.57,0,0) 
if(hit.Parent:findFirstChild("Humanoid")~= nil)then 
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then 
hit.Parent.Humanoid:TakeDamage(15)
MagniDamage(efprt,hit,1,1,1,1,"Normal")
end 
end 
local mag=(Prt.Position-pos).magnitude 
MagicCylinder(BrickColor.new("Cyan"),Part.CFrame,1,mag*5,1,0.5,0,0.5,0.05)
Part.Parent=nil
end),efprt,efmsh,spread)
end

function attackone()
attack=true
for i=0,1,0.1 do
		swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(40)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(40)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(-20), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(00)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(00)),.3)
end
so("http://www.roblox.com/asset/?id=169445602",BarrelA,1,.8)
so("http://www.roblox.com/asset/?id=138083993",BarrelA,1,1)
for i = 1,20 do
LaserBarrage(BarrelA,m)
end
for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(40)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(130), math.rad(50), math.rad(40)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(-20), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(00)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(00)),.3)
end
attack=false
end

function attacktwo()
attack=true
for i=0,1,0.1 do
		swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(40)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-40)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(-20), math.rad(30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(00)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(00)),.3)
end
so("http://www.roblox.com/asset/?id=169445602",BarrelB,1,.8)
so("http://www.roblox.com/asset/?id=138083993",BarrelB,1,1)
for i = 1,20 do
LaserBarrage(BarrelB,m)
end
for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(40)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(130), math.rad(-50), math.rad(-40)), 0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(-20), math.rad(30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(00)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(00)),.3)
end
attack=false
end

function MMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
local pmsh = Instance.new('SpecialMesh')
pmsh.MeshType = 'FileMesh'
pmsh.Scale = Vector3.new(5,5,5)
pmsh.MeshId = 'http://www.roblox.com/Asset/?id=9756362'
local S=Instance.new("Part")
S.Material = "SmoothPlastic"
S.Name="Effect"
S.formFactor=0
S.Size=Vector3.new(5,5,5)
S.BrickColor=color
S.Reflectance = 0
S.TopSurface=0
S.BottomSurface=0
S.Transparency=0
S.Anchored=true
S.CanCollide=false
S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
S.Parent=workspace
pmsh.Parent = S
coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function MagniDamage(Hit,Part,magni,mindam,maxdam,knock,Type)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
Damagefunc(Hit,head,mindam,maxdam,knock,Type,RootPart,.2,1,3)
end
end
end
end
end

function MagicRing(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
	local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",Vector3.new(0.5,0.5,0.5))
	prt.Anchored=true
	prt.CFrame=cframe
	prt.Touched:connect(function(hit) end)
	local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",Vector3.new(0,0,0),Vector3.new(x1,y1,z1))
	coroutine.resume(coroutine.create(function(Part,Mesh) 
		for i=0,1,0.03 do
			wait()
			Part.CFrame=Part.CFrame
			Part.Transparency=i
			Mesh.Scale=Mesh.Scale+Vector3.new(x3,y3,z3)
		end
		Part.Parent=nil
	end),prt,msh)
end

function Test()
attack = true
for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(15),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(-40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(80), math.rad(20), math.rad(-20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(100), math.rad(-20), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(-20)),.3)
end
local vel = Instance.new("BodyVelocity")
vel.Parent = Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = RootPart.CFrame.lookVector*50
so("http://roblox.com/asset/?id=200632370",LeftArm,1,1) 
so("http://roblox.com/asset/?id=203691699",LeftArm,1,1) 
for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(15),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(80), math.rad(20), math.rad(-20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(100), math.rad(00), math.rad(-40)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(-20)),.3)
end
vel.Parent = nil
local vel2 = Instance.new("BodyVelocity")
vel2.Parent = Torso
vel2.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel2.velocity = RootPart.CFrame.lookVector*-90
Humanoid.Jump = true
local prt = Instance.new("Part",workspace)
prt.Position = BarrelB.Position
prt.BrickColor = BrickColor.new("Cyan")
prt.Anchored = true
prt.Size = Vector3.new(5,5,5)
prt.CanCollide = false
prt.Transparency = 1
MagniDamage(prt,prt,10,15,30,1,"Normal")
MMMAGIC(BarrelB,5,5,5,0,-1,0,BrickColor.new("Cyan")) 
MMMAGIC(BarrelB,5,5,5,0,-1,0,BrickColor.new("Cyan")) 
MMMAGIC(BarrelB,5,5,5,0,-1,0,BrickColor.new("Cyan")) 
MMMAGIC(BarrelB,5,5,5,0,-1,0,BrickColor.new("Cyan")) 
MagicRing(BrickColor.new("Cyan"),BarrelB.CFrame*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,0.1,1,1,1)
MagicRing(BrickColor.new("Cyan"),BarrelB.CFrame*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,0.1,1,1,1)
so("http://roblox.com/asset/?id=203691837",BarrelB,1,1)
so("http://roblox.com/asset/?id=203691653",BarrelB,1,1)
for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(80), math.rad(20), math.rad(-20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(150), math.rad(-60), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(-20)),.3)
end
attack = false
vel2.Parent = nil
prt.Parent = nil
end

local Effects={}
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Block1",delay,x3,y3,z3}) --part, type, delay
end

function MagicCylinder2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,Character,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
--table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3})
Effects[#Effects+1]={prt,"Cylinder",delay,x3,y3,z3} --part, type, delay
--[[coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)]]
end

RocketTarget = RootPart
function ShootCannon(asd)
so("rbxassetid://263623156",asd,.5,1) 
so("rbxassetid://263610152",asd,.5,1) 
so("rbxassetid://263623139",asd,.5,1) 
local MainPos=asd.Position
local MainPos2=Mouse.Hit.p
local MouseLook=cf((MainPos+MainPos2)/2,MainPos2)
--[[local mag=(MainPos-pos).magnitude 
MagicCylinder(BrickColor.new("Bright blue"),CFrame.new((MainPos+pos)/2,pos)*angles(1.57,0,0),1,mag*5,1,0.5,0,0.5,0.05)]]
num=30
coroutine.resume(coroutine.create(function() 
repeat
wait()
local hit,pos = rayCast(MainPos,MouseLook.lookVector,10,RocketTarget.Parent)
local mag=(MainPos-pos).magnitude 
MagicCylinder2(BrickColor.new("Cyan"),CFrame.new((MainPos+pos)/2,pos)*angles(1.57,0,0),3,mag*5,3,1.5,0,1.5,0.1)
MainPos=MainPos+(MouseLook.lookVector*10)
num=num-1
if hit~=nil then
num=0
local ref=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Cyan"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
MagniDamage(ref,hit,1,30,50,1,"Normal")
so("rbxassetid://263610039",ref,1,1) 
so("rbxassetid://263610111",ref,1,1) 
MagicBlock(BrickColor.new("Cyan"),cf(pos),20,20,20,5,5,5,0.05)
game:GetService("Debris"):AddItem(ref,1)
MagniDamage(ref,ref,15,10,20,0,"Knockdown")
end
until num<=0
end))
end

function QuadShot()
attack = true
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(00)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
JointHandleAweld.C0=clerp(JointHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(0)),.3)
JointHandleBweld.C0=clerp(JointHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(0)),.3)
GunHandleAweld.C0=clerp(GunHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-30),math.rad(0)),.3)
GunHandleBweld.C0=clerp(GunHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-30),math.rad(0)),.3)
end
ShootCannon(Barrel1A)
ShootCannon(Barrel2A)
ShootCannon(Barrel1B)
ShootCannon(Barrel2B)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-10),math.rad(0),math.rad(00)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
JointHandleAweld.C0=clerp(JointHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
JointHandleBweld.C0=clerp(JointHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
GunHandleAweld.C0=clerp(GunHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(20),math.rad(0)),.3)
GunHandleBweld.C0=clerp(GunHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(20),math.rad(0)),.3)
end
attack = false
end

Mouse.Button1Down:connect(function()
	if attack==false then
		if attacktype==1 then
			attack=true
			attacktype=2
			attackone()
		elseif attacktype==2 then
			attack=true
			attacktype=1
			attacktwo()
		end
	end
end)

Mouse.KeyDown:connect(function(k)
k=k:lower()
if attack == false and k == 'q' then
Test()
elseif attack == false and k == 'e' then
QuadShot()
end
end)


local sine = 0
local change = 1
local val = 0

while true do
swait()
sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(20),math.rad(90),math.rad(-20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-20),math.rad(-90),math.rad(20)),.3)
JointHandleAweld.C0=clerp(JointHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(0)),.3)
JointHandleBweld.C0=clerp(JointHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(0)),.3)
GunHandleAweld.C0=clerp(GunHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(0)),.3)
GunHandleBweld.C0=clerp(GunHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(50)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(10),math.rad(90),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-10),math.rad(-90),math.rad(-20)),.3)
JointHandleAweld.C0=clerp(JointHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(0)),.3)
JointHandleBweld.C0=clerp(JointHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(0)),.3)
GunHandleAweld.C0=clerp(GunHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(0)),.3)
GunHandleBweld.C0=clerp(GunHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(15),math.rad(0),math.rad(-10)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(10)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(80), math.rad(20), math.rad(-20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(100), math.rad(-20), math.rad(30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(-20)),.3)
JointHandleAweld.C0=clerp(JointHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(0)),.3)
JointHandleBweld.C0=clerp(JointHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(0)),.3)
GunHandleAweld.C0=clerp(GunHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(0)),.3)
GunHandleBweld.C0=clerp(GunHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(0)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(00)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-10)),.3)
JointHandleAweld.C0=clerp(JointHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(0)),.3)
JointHandleBweld.C0=clerp(JointHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(0)),.3)
GunHandleAweld.C0=clerp(GunHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(0)),.3)
GunHandleBweld.C0=clerp(GunHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(0)),.3)
end
end
end
if #Effects>0 then
--table.insert(Effects,{prt,"Block1",delay})
for e=1,#Effects do
if Effects[e]~=nil then
--for j=1,#Effects[e] do
local Thing=Effects[e]
if Thing~=nil then
local Part=Thing[1]
local Mode=Thing[2]
local Delay=Thing[3]
local IncX=Thing[4]
local IncY=Thing[5]
local IncZ=Thing[6]
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
--local TheCF=Thing[1].CFrame
--Thing[1].CFrame=TheCF
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
--Thing[3]=Thing[3]+Delay
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
--print(Thing[1].Transparency)
 
--[[local prt=part(3,workspace,0,0,BrickColor.new("White"),"Part",vt(1,1,1))
prt.Anchored=true
game:GetService("Debris"):AddItem(prt,2)
xval=math.random()
yval=math.random()
zval=math.random()
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(xval,yval,zval))
Effects[#Effects+1]={prt,"Elec",0.05,x,y,z,xval,yval,zval}]]
--[[coroutine.resume(coroutine.create(function(Part,Mesh,Frame,xvaal,yvaal,zvaal)
Part.CFrame=cf(Frame)*cf(math.random(-x,x),math.random(-y,y),math.random(-z,z))
for i=0,1,0.05 do
swait()
xvaal=xvaal-0.1
yvaal=yvaal-0.1
zvaal=zvaal-0.1
Mesh.Scale=vt(xvaal,yvaal,zvaal)
Part.Transparency=i
end
Part.Parent=nil
end),prt,msh,cff,xval,yval,zval)]]
end
else
Part.Parent=nil
table.remove(Effects,e)
end
end
--end
end
end
end
end