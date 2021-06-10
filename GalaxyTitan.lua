local p = game.Players.localPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local l = game.Lighting
local stanceToggle = "Assertive"
local CanAttack = true
local Daytime = true
local animpose = "Idle"
local lastanimpose = "Idle"
local nosword=false
RootPart=char.HumanoidRootPart
local Effects={}
local attack=false
idle=0
Anim='Idle'
equipped=true
char.Humanoid.WalkSpeed=100
colorscheme=BrickColor.new('Black')
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
m=Instance.new('Model',char)
stance='god'
--game:service'Lighting'.TimeOfDay=24
z = Instance.new("Sound")
z.SoundId = "http://www.roblox.com/asset/?id=142360845"--..SIDs[math.random(1,#SIDs)]--159496201
--248000653
z.Parent = char
z.Looped = true
z.Pitch = 1
z.Volume = 1
wait(.01)
--z:Play()

it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles


function swait(num)
        if num==0 or num==nil then
                game:service'RunService'.Heartbeat:wait(0)
        else
                for i=0,num do
                        game:service'RunService'.Heartbeat:wait(0)
                end
        end
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
-----------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
        wld = Instance.new("Weld", wp1)
        wld.Part0 = wp0
        wld.Part1 = wp1
        wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
        return wld
end

larm.Size = larm.Size * 5
rarm.Size = rarm.Size * 5
lleg.Size = lleg.Size * 5
rleg.Size = rleg.Size * 5
torso.Size = torso.Size * 5
hed.Size = hed.Size * 5
root.Size = root.Size * 5
----------------------------------------------------
newWeld(torso, larm, -3, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 3, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
hed.Weld.C1 = CFrame.new(0, -1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(.5, 3, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(-.5, 3, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)

Player=game:GetService('Players').LocalPlayer
Character=Player.Character
Mouse=Player:GetMouse()
m=Instance.new('Model',Character)

local function weldBetween(a, b)
    local weldd = Instance.new("ManualWeld")
    weldd.Part0 = a
    weldd.Part1 = b
    weldd.C0 = CFrame.new()
    weldd.C1 = b.CFrame:inverse() * a.CFrame
    weldd.Parent = a
    return weldd
end

it=Instance.new

function nooutline(part)
        part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
end

function paart(formfactor,parent,reflectance,transparency,brickcolor,name,size)
        local fp=it("Part")
        fp.formFactor=formfactor 
        fp.Parent=parent
        fp.Reflectance=reflectance
        fp.Transparency=transparency
        fp.CanCollide=false 
        fp.Locked=true
        fp.BrickColor=brickcolor
        fp.Name=name
        fp.Size=size
        fp.Position=torso.Position 
        nooutline(fp)
        fp.Material="SmoothPlastic"
        fp:BreakJoints()
        return fp 
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

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
        return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
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

Face=hed.face

function Cloak()
--so("http://roblox.com/asset/?id=2767090",Torso,1,1.1) 
Face.Parent=nil
cloaked=true
for _,v in pairs(torso.Parent:children()) do
if v.className=="Part" and v.Name~="HumanoidRootPart" then
coroutine.resume(coroutine.create(function() 
for i=0,1,0.2 do
wait()
v.Transparency=i
end
v.Transparency=1
end))
end
if v.className=="Hat" then
hatp=v.Handle
coroutine.resume(coroutine.create(function(derp) 
for i=0,1,0.2 do
wait()
derp.Transparency=i
end
derp.Transparency=1
end),hatp)
end
end
for _,v in pairs(m:children()) do
if v.className=="Part" then
coroutine.resume(coroutine.create(function() 
for i=0,1,0.2 do
wait()
v.Transparency=i
end
v.Transparency=1
end))
end
end
end
magix=true
function UnCloak()
        --so("http://roblox.com/asset/?id=2767090",Torso,1,1.1) 
        Face.Parent=hed 
        cloaked=false
        for _,v in pairs(torso.Parent:children()) do
                if v.className=="Part" and v.Name~="HumanoidRootPart" then
                        coroutine.resume(coroutine.create(function() 
                                for i=0,1,0.1 do
                                        wait()
                                        v.Transparency=v.Transparency-0.1
                                end
                                v.Transparency=0
                        end))
                end
                --[[if v.className~="Hat" then
                        hatp=v.Handle
                        coroutine.resume(coroutine.create(function(derp) 
                                for i=0,1,0.1 do
                                        wait()
                                        derp.Transparency=derp.Transparency-0.1
                                end
                                derp.Transparency=0
                        end),hatp)
                end]]
        end
        if magix==false then
        for _,v in pairs(m:children()) do
                if v.className=="Part" and v.Name~="hitbox" and v.Name~='tip' and v.Name~='hat' then
                        coroutine.resume(coroutine.create(function() 
                                for i=0,1,0.1 do
                                        wait()
                                        v.Transparency=v.Transparency-0.1
                                end
                                v.Transparency=0
                        end))
                        v.Transparency=0
                end
        end
else
                for _,v in pairs(m:children()) do
                if v.className=="Part" and v.ClassName~='Weld' and v.Name~="hitbox" and v.Name~='tip' and v.Name~='hat'then
                        coroutine.resume(coroutine.create(function() 
                                for i=0,1,0.1 do
                                        wait()
                                        v.Transparency=v.Transparency-0.1
                                end
                                v.Transparency=0
                        end))
                        v.Transparency=0
                end
        end
end
end

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
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
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
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
                showDamage(hit.Parent,Damage,.5,BrickColor.new("Dark stone grey"))
                else
                h.Health=h.Health-(Damage/2)
                showDamage(hit.Parent,Damage/2,.5,BrickColor.new("Bright blue"))
                end
                if Type=="Knockdown" then
                hum=hit.Parent.Humanoid
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
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                vp=Instance.new("BodyVelocity")
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
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
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
                        debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
end
 
showDamage=function(Char,Dealt,du,Color)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.BrickColor=Color
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
        if CRIT==true then
                ms.Scale=Vector3.new(1,1.25,1)
        end
        ms.Parent=c
        c.Reflectance=0
        Instance.new("BodyGyro").Parent=c
        c.Parent=m
        if Char:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        elseif Char.Parent:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
        end
        f=Instance.new("BodyPosition")
        f.P=2000
        f.D=100
        f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
        f.position=c.Position+Vector3.new(0,3,0)
        f.Parent=c
        game:GetService("Debris"):AddItem(m,.5+du)
        c.CanCollide=false
        m.Parent=workspace
        c.CanCollide=false
end

handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Deep orange","Handle",Vector3.new(0.599999905, 4, 0.400000036))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.01841354, -0.0695610046, 0.049372673, -6.61965621e-012, -0.999999523, -1.12313298e-010, 0.00563658308, 1.10681131e-010, -0.999983788, 0.999983311, -8.65419195e-012, 0.00563658029))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.799999833, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.30133295, -4.59958267, 8.10623169e-006, 0.999997258, -4.70680717e-011, -3.91951055e-012, 5.03742811e-011, 1, -1.05605516e-011, 6.73187634e-012, 1.17550084e-011, 0.999997258))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.599999905, 4.4000001, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.30089998, -5.9995594, -1.09672546e-005, 0.999996305, -3.48216178e-011, -1.62637629e-011, 3.83456322e-011, 1, -4.63629656e-012, 1.90928835e-011, 5.8306901e-012, 0.999996305))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000036, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.19480896e-005, -5.09960365, 1.30145025, 1.05312156e-005, 8.7171511e-006, -0.99998951, 1.7453418e-005, 1.00000608, 8.67240487e-006, 0.999999523, -1.97484223e-005, 1.04995552e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 1.20000005, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.70081615, -7.59955597, -3.81469727e-006, 0.999984145, -2.66020192e-011, -1.43523457e-011, 3.47976994e-011, 0.999999881, -4.03995587e-012, 2.00987699e-011, 6.42852438e-012, 0.999984264))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.71661377e-005, 3.69953728, 1.5010314, -8.34466391e-006, -8.76185368e-006, 0.99998939, -3.13209239e-005, -1.00000584, -8.67240215e-006, 0.999999523, -3.36160047e-005, 8.31290799e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.600000381, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.30089188, -3.49957085, -2.86102295e-006, 0.999989867, -3.57171584e-011, -1.50535487e-011, 4.31028546e-011, 1, -4.03874503e-012, 2.07377258e-011, 6.42744365e-012, 0.999989867))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09908223, -3.49954987, -9.01222229e-005, 0.999987006, -1.91744329e-011, -1.37810397e-011, 3.06906514e-011, 1, -4.03930535e-012, 1.97828975e-011, 6.42799182e-012, 0.999987006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1, 0.599999726, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.70132542, -8.4995842, 5.24520874e-006, 0.999993086, -4.43888051e-011, -2.43437388e-012, 4.98436153e-011, 1, -9.96337388e-012, 6.69102967e-012, 1.1754959e-011, 0.999993086))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1.39999998, 0.399999917, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100895882, -2.19955063, 9.53674316e-007, 0.999992609, -3.44739653e-011, -1.49579567e-011, 4.15219734e-011, 1, -4.03871207e-012, 2.06161754e-011, 6.42749222e-012, 0.999992609))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.599999905, 0.599999905, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0997242928, -1.50003433, 4.76837158e-007, 0.999986172, 2.41444642e-011, 2.85323978e-012, -1.32283698e-011, 1, -1.71489559e-013, 5.65950715e-012, 3.75693227e-012, 0.999986172))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.599999905, 0.200000003, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0999045372, -1.90000916, 9.53674316e-007, 0.999992609, -1.09000656e-011, -1.43775027e-011, 1.79482471e-011, 1, -1.47436403e-012, 2.00357196e-011, 3.8631251e-012, 0.999992609))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000036, 0.600000024, 0.799999952))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.7220459e-005, 7.89964485, 1.80142498, -8.7530334e-006, -8.68735151e-006, 0.999989688, -5.80388769e-006, -1.00000608, -8.74690795e-006, 0.999999523, -8.09880021e-006, 8.72149394e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.600000024, 0.600000024, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.04904175e-005, -2.89971924, 1.70256662, 6.8837162e-006, 8.72622059e-006, -0.999989986, -6.28802127e-006, 1.00000644, 8.69458381e-006, 0.999999523, 3.99320834e-006, 6.85229907e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.599999905, 0.200000003, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0997610092, -1.10003662, 4.76837158e-007, 0.999986172, 2.3436475e-011, 3.80554746e-012, -1.25203806e-011, 1, -6.22770932e-013, 4.70720034e-012, 4.20822058e-012, 0.999986172))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09909248, -3.89955139, -8.39233398e-005, 0.999991059, -2.07311043e-011, -1.39008249e-011, 2.9134084e-011, 1, -4.03928453e-012, 1.96632485e-011, 6.42804039e-012, 0.999991059))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.600000024, 0.600000024, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43051147e-005, -2.89971542, 1.4974215, -6.88429463e-006, 8.7262697e-006, 0.999989986, 6.28824864e-006, 1.00000644, -8.6946302e-006, -0.999999404, 3.99342571e-006, -6.80979338e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000036, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.38690186e-005, -6.49961472, 1.30147791, 1.05312156e-005, 8.7171511e-006, -0.99998951, 1.7453418e-005, 1.00000608, 8.67240487e-006, 0.999999523, -1.97484223e-005, 1.04995552e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000036, 0.400000036, 1.60000002))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.91549683e-005, -9.39964676, 0.401554585, 1.08461672e-005, 8.73205954e-006, -0.99998945, 1.98187317e-005, 1.00000608, 8.67240396e-006, 0.999999523, -2.21137525e-005, 1.08144795e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.799999833, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.30132532, -5.99957848, 8.10623169e-006, 0.999991179, -4.51590224e-011, -2.4936303e-012, 5.22830321e-011, 1, -9.96334352e-012, 8.15769154e-012, 1.23521532e-011, 0.999991179))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000036, 0.600000024, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.7179718e-005, 2.89961815, 0.698666811, 8.67242125e-006, 5.76516186e-006, -0.99998945, 4.75738125e-006, -1.00000608, -5.82467419e-006, -0.999999285, -2.46256491e-006, -8.73203044e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000036, 0.400000036, 0.99999994))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.48498535e-005, -8.99962234, 1.70155716, 1.08461672e-005, 8.73205954e-006, -0.99998945, 1.98187317e-005, 1.00000608, 8.67240396e-006, 0.999999523, -2.21137525e-005, 1.08144795e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000036, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.95910645e-005, 6.89964104, 1.30140543, -8.7530334e-006, -8.68735151e-006, 0.999989688, -5.80388769e-006, -1.00000608, -8.74690795e-006, 0.999999523, -8.09880021e-006, 8.72149394e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.600000024, 0.600000024, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.28746033e-005, 2.29969978, 1.49744749, 4.58953173e-006, -8.76190825e-006, -0.999989688, 3.95497409e-006, -1.00000656, 8.64263984e-006, -0.999999523, -6.24984796e-006, -4.64914001e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.599999964, 0.599999905, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.101387024, 2.29981613, 9.53674316e-007, 0.999986172, -2.03466965e-011, -3.78346451e-011, 3.12565737e-011, 1, 9.68086201e-012, 4.63478943e-011, -6.09796068e-012, 0.999986172))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.399999917, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.01292133, 2.36062241, -0.199992657, 0.965919137, -0.258819193, 9.68770486e-009, 0.258817405, 0.965925813, -7.3579848e-008, 9.69177893e-009, 7.35824557e-008, 0.999993086))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000036, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.86238098e-005, 5.4995842, 1.30153465, -8.34466391e-006, -8.76185368e-006, 0.99998939, -3.13209239e-005, -1.00000584, -8.67240215e-006, 0.999999523, -3.36160047e-005, 8.31290799e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.600000024, 0.600000024, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.00135803e-005, 2.29969788, 1.70259237, -4.63829838e-006, -8.76185914e-006, 0.999989808, -3.95520055e-006, -1.00000656, -8.64259528e-006, 0.999999523, -6.25006533e-006, 4.60681576e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.599999905, 0.799999893, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0998063087, -0.600069046, 4.76837158e-007, 0.999986172, 2.84053614e-011, 8.71606606e-012, -1.74948181e-011, 1, 8.56011442e-013, -2.0281346e-013, 2.72700959e-012, 0.999986172))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.599999905, 0.200000003, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100811958, 1.89962769, -9.53674316e-007, 0.999986172, 2.43582932e-013, -2.16690259e-011, 1.06665718e-011, 1, 8.84393427e-012, 3.01822768e-011, -5.26102599e-012, 0.999986172))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 1.19999981, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.30133152, -7.59958649, 4.29153442e-006, 0.999991536, -4.51809631e-011, -2.49531992e-012, 5.22611329e-011, 1, -9.96334352e-012, 8.15601059e-012, 1.23521523e-011, 0.999991536))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000036, 0.600000024, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.71661377e-005, 2.89961624, 1.00137615, -8.7530334e-006, -8.68735151e-006, 0.999989688, -5.80388769e-006, -1.00000608, -8.74690795e-006, 0.999999523, -8.09880021e-006, 8.72149394e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.399999976, 6, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.00134325, -6.19958878, -6.67572021e-006, 0.999990463, -4.44280446e-011, -2.43740444e-012, 5.16362716e-011, 1, -9.96334352e-012, 8.1079362e-012, 1.23521419e-011, 0.999990463))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.599999905, 0.400000036, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0998740196, -6.10351563e-005, 4.76837158e-007, 0.999986172, 3.25150462e-011, 1.47778543e-011, -2.16044196e-011, 1, 1.79467205e-012, -6.26460082e-012, 1.78833684e-012, 0.999986172))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.599999905, 0.599999905, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.100226402, -1.49966812, -4.76837158e-007, -0.999986172, -5.96395537e-008, -9.93794487e-008, 5.96278227e-008, -1, 3.80804792e-008, -9.93709364e-008, 3.8084579e-008, 0.999986172))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.399999917, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.01291943, 2.36062241, -0.200006008, -0.965919256, 0.258818418, 5.95878689e-008, 0.25881663, 0.965926111, -5.57539693e-007, -1.63906265e-007, -5.51367407e-007, -0.999992788))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.599999905, 0.200000003, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.10008812, 1.09988785, 0, 0.999986172, 3.17495474e-011, 2.19618039e-011, -2.08440973e-011, 1, 1.6464434e-012, -1.34490544e-011, 1.93546047e-012, 0.999986172))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.599999905, 0.799999893, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0999064445, -0.599903107, 4.76837158e-007, -0.999986172, -5.964894e-008, -9.93747662e-008, 5.96372018e-008, -1, 3.80745568e-008, -9.93662539e-008, 3.80786567e-008, 0.999986172))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.399999917, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.19833279, 2.3109436, -0.200005054, -0.965918899, -0.258819193, -1.34113861e-007, -0.258817405, 0.965925813, 7.44806314e-008, -5.95990883e-008, 7.35335561e-008, -0.999992788))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.399999917, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.19833183, 2.3109417, -0.19999361, 0.965919197, 0.258818418, -1.63907302e-007, -0.25881657, 0.965926111, 5.66216784e-007, 1.63906265e-007, -5.51318522e-007, 0.99999249))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.14440918e-005, -3.29951477, 1.50105858, 9.89090768e-006, 8.76185186e-006, -0.999989271, 4.36100818e-005, 1.0000056, 8.61280023e-006, 0.999999523, -4.59052462e-005, 9.8590308e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.9038372, -1.75626755, -0.199999332, 0.866019428, 0.5, 2.20907594e-008, -0.499996543, 0.866025388, 6.89347033e-008, 1.53416728e-008, -7.07429137e-008, 0.999993086))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.200000003, 0.200000033))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.76837158e-005, 6.89955902, 1.70114231, -8.34466391e-006, -8.76185368e-006, 0.99998939, -3.13209239e-005, -1.00000584, -8.67240215e-006, 0.999999523, -3.36160047e-005, 8.31290799e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.600000024, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.38825989e-005, 7.89956093, 2.00117016, -8.34466391e-006, -8.76185368e-006, 0.99998939, -3.13209239e-005, -1.00000584, -8.67240215e-006, 0.999999523, -3.36160047e-005, 8.31290799e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000036, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.67028809e-005, 4.09958076, 1.30148745, -8.34466391e-006, -8.76185368e-006, 0.99998939, -3.13209239e-005, -1.00000584, -8.67240215e-006, 0.999999523, -3.36160047e-005, 8.31290799e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.12790108, 1.62690544, 0.20000124, -0.866019249, 0.499999821, -1.69992358e-008, -0.499996364, -0.866025209, -2.86735276e-008, -2.9053e-008, -1.6330004e-008, 0.999993086))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09910226, -5.09955788, -8.01086426e-005, 0.999987483, -2.38258649e-011, -1.41388229e-011, 3.50124374e-011, 1, -4.03923769e-012, 2.01153399e-011, 6.42793284e-012, 0.999987483))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.400000006, 1.19999897, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.04989433, -5.45730114, -0.000123023987, 0.707099319, 0.707106709, -8.23653536e-008, -0.707099319, 0.70710665, -2.31702231e-007, -1.05590843e-007, 2.22084282e-007, 0.99998951))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.400000006, 1.19999897, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.48420525, -4.89161015, -0.00012254715, 0.707099319, 0.707106709, -8.23653536e-008, -0.707099319, 0.70710665, -2.31702231e-007, -1.05590843e-007, 2.22084282e-007, 0.99998951))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.200000003, 0.200000033))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.19888306e-005, 5.09964371, -1.49892831, -8.34466391e-006, -8.76185368e-006, 0.99998939, -3.13209239e-005, -1.00000584, -8.67240215e-006, 0.999999523, -3.36160047e-005, 8.31290799e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000036, 0.600000024, 0.599999905))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.87052917e-005, -8.89964485, 1.89849019, -5.72201225e-006, -9.39299207e-006, 0.999992847, 1.73207645e-005, 1, 9.39303209e-006, -0.999992847, 1.73209264e-005, -5.72201634e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000036, 2, 0.599999905))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.91549683e-005, 6.39963531, 1.89852977, 5.86456508e-006, 9.387707e-006, -0.999992728, -1.7509652e-005, -0.99999994, -9.41744565e-006, -0.999992847, 1.75098194e-005, -5.86456827e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 1.79999936, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.499084, -6.09956169, -9.48905945e-005, 0.999993086, 1.35347566e-011, -1.1265381e-011, -6.65070082e-012, 1, -4.03978587e-012, 1.69109015e-011, 6.42856775e-012, 0.999993086))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.400000036, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.23977661e-005, -10.9995041, -2.09947681, 3.68056726e-006, 3.36381646e-007, -0.999992192, -3.51401286e-005, 0.999999642, 3.36363996e-007, 0.999992669, 3.51403614e-005, 3.30804482e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.400000036, 1.59999931, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.79906392, -6.19955444, -9.96589661e-005, 0.999991298, 2.46519472e-011, -1.04103436e-011, -1.63584216e-011, 1, -4.03994893e-012, 1.61643164e-011, 6.42870653e-012, 0.999991298))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.400000036, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.00135803e-005, -10.9994926, 2.39945531, -3.53155679e-006, 2.44306165e-007, 0.999992251, -3.32144991e-005, 0.999999642, -2.44311622e-007, -0.999992728, -3.3214721e-005, -3.35274808e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.400000036, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.09912157, -4.79956436, -0.000121116638, 0.999993086, 1.26183786e-010, -2.60250935e-012, -1.1929896e-010, 1, -4.04142345e-012, 8.24803073e-012, 6.43021227e-012, 0.999993086))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.600000024, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-006, -10.4996262, -1.6987474, 3.60606191e-006, 2.44256199e-007, -0.99999249, 3.3214732e-005, 0.999999642, 2.44265465e-007, 0.999992967, -3.32149393e-005, 3.47195646e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.96046448e-005, 4.7996521, -1.89894223, -8.34466391e-006, -8.76185368e-006, 0.99998939, -3.13209239e-005, -1.00000584, -8.67240215e-006, 0.999999523, -3.36160047e-005, 8.31290799e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.400000006, 1.19999897, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.91851616, -4.32592297, -0.00012254715, 0.707099319, 0.707106709, -8.23653536e-008, -0.707099319, 0.70710665, -2.31702231e-007, -1.05590843e-007, 2.22084282e-007, 0.99998951))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.399999946, 1.19999993, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.4025631, -2.59968758, 9.53674316e-007, 0.999993086, -9.9128844e-011, -1.20540383e-012, 1.06011581e-010, 1, -1.68229337e-011, 6.85092521e-012, 1.9211811e-011, 0.999993086))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.9038372, -1.75626755, 0.200001717, 0.866019428, 0.5, 2.20907594e-008, -0.499996543, 0.866025388, 6.89347033e-008, 1.53416728e-008, -7.07429137e-008, 0.999993086))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.399999946, 1.19999993, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.1974349, -2.59968758, 4.29153442e-006, 0.999993086, -9.9128844e-011, -1.20540383e-012, 1.06011581e-010, 1, -1.68229337e-011, 6.85092521e-012, 1.9211811e-011, 0.999993086))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1.39999998, 6.80000019, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.101338387, -5.79958153, 9.53674316e-007, 0.999993086, -4.38584238e-011, -2.39358793e-012, 5.07595632e-011, 1, -9.96334352e-012, 8.04051704e-012, 1.23521731e-011, 0.999993086))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.12790108, 1.62690544, -0.199999809, -0.866019249, 0.499999821, -1.69992358e-008, -0.499996364, -0.866025209, -2.86735276e-008, -2.9053e-008, -1.6330004e-008, 0.999993086))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.600000024, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.29908991, -5.29955864, -9.48905945e-005, 0.999992967, -1.50723739e-011, -1.34655958e-011, 2.20103449e-011, 1, -4.03936953e-012, 1.91153447e-011, 6.42815662e-012, 0.999992967))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.600000024, 2.19999957, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.69905233, -8.09956741, -0.000144004822, 0.999984145, 7.53328372e-011, -6.51274347e-012, -6.14701554e-011, 1, -4.04064282e-012, 1.26948833e-011, 6.42926684e-012, 0.999984145))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.600000024, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.89917946, -5.19956207, -0.000117778778, 0.999993086, 7.67240438e-011, -6.40572491e-012, -6.98395716e-011, 1, -4.0407018e-012, 1.20512472e-011, 6.42949062e-012, 0.999993086))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09908175, -4.69955444, -8.48770142e-005, 0.99998343, -2.22875329e-011, -1.40204497e-011, 3.65506583e-011, 1, -4.03926025e-012, 2.02335718e-011, 6.42788253e-012, 0.99998343))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 5.99999952, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.698655128, -6.19958878, 9.53674316e-007, 0.999992967, -4.52522048e-011, -2.50079731e-012, 5.21899399e-011, 1, -9.96334352e-012, 8.15054448e-012, 1.23521748e-011, 0.999992967))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.800000012, 1.9999994, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.19864798, -6.39957619, -2.86102295e-006, 0.999991298, -4.45745801e-011, -2.44867581e-012, 5.28674882e-011, 1, -9.96334439e-012, 8.20264776e-012, 1.23521532e-011, 0.999991298))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000006, 0.400000036, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.96318054e-005, -9.39966965, 0.998550892, -1.08777776e-005, -7.21227707e-006, 0.999989271, 9.29348153e-006, 1.00000608, 7.15253782e-006, -0.999999166, 1.15884122e-005, -1.07585738e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.599999964, 1.19999933, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.0990684, -7.9995575, -7.05718994e-005, 0.999991298, -2.50895554e-011, -1.42360785e-011, 3.33826369e-011, 1, -4.03921861e-012, 1.99900495e-011, 6.42797447e-012, 0.999991298))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000006, 0.200000003, 0.800000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.33650208e-005, 5.29961014, 1.19855571, 1.23440404e-005, 2.14574197e-006, -0.999993086, -1.86938523e-005, -1, -2.1457347e-006, -0.999993086, 1.86940015e-005, -1.2344005e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09672546e-005, 5.19964027, 2.39893103, 3.17393119e-006, -1.63585497e-007, -0.999993086, -3.0609368e-005, -1, 1.6348109e-007, -0.999993086, 3.06095644e-005, -3.17393528e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.600000024, 0.999999404, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.69905472, -9.69956017, -0.000102043152, 0.999984622, 2.09521081e-011, -1.06948044e-011, -7.5663989e-012, 1, -4.03988301e-012, 1.68403312e-011, 6.42852958e-012, 0.999984622))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.800000012, 0.599999428, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.19864798, -8.89958382, -6.67572021e-006, 0.999991298, -3.65172059e-011, -1.82889121e-012, 4.48101695e-011, 1, -9.96338515e-012, 7.58286576e-012, 1.23521896e-011, 0.999991298))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000006, 0.200000003, 0.800000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.38961792e-005, -7.49964714, 1.19857502, -1.08777776e-005, -7.21227707e-006, 0.999989271, 9.29348153e-006, 1.00000608, 7.15253782e-006, -0.999999166, 1.15884122e-005, -1.07585738e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.600000024, 5.39999914, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.29888916, -8.09955788, -0.000128746033, 0.999993086, 6.4361072e-011, -7.35652685e-012, -5.74766831e-011, 1, -4.04054221e-012, 1.30020491e-011, 6.42933103e-012, 0.999993086))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09908271, -4.29955292, -8.4400177e-005, 0.99998343, -2.23058447e-011, -1.40218583e-011, 3.65323466e-011, 1, -4.03926025e-012, 2.02321632e-011, 6.42788253e-012, 0.99998343))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 2.19999933, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.899097919, -4.29956627, -7.58171082e-005, 0.999991298, -2.52726728e-011, -1.42501609e-011, 3.35657405e-011, 1, -4.03921688e-012, 2.00041355e-011, 6.42797794e-012, 0.999991298))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.400000006, 1.19999897, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.35282898, -3.76023579, -0.00012254715, 0.707099319, 0.707106709, -8.23653536e-008, -0.707099319, 0.70710665, -2.31702231e-007, -1.05590843e-007, 2.22084282e-007, 0.99998951))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1.39999998, 6.80000019, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.101338387, -5.79958153, 9.53674316e-007, 0.999993086, -4.38584238e-011, -2.39358793e-012, 5.07595632e-011, 1, -9.96334352e-012, 8.04051704e-012, 1.23521731e-011, 0.999993086))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Medium stone grey","Hitbox",Vector3.new(5.4000001, 9.20000076, 0.400000036))
Hitboxweld=weld(m,handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.298654079, -6.99958229, 9.53674316e-007, 0.999993086, -4.38584238e-011, -2.39358793e-012, 5.07595632e-011, 1, -9.96334352e-012, 8.04051704e-012, 1.23521731e-011, 0.999993086))
HatHandle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","HatHandle",Vector3.new(0.800000012, 1.39999998, 2.4000001))
HatHandleweld=weld(m,Character["Head"],HatHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -0.0999984741, -1.90734863e-005, 0.999991894, 5.70663635e-024, 5.40628298e-006, -5.7065484e-024, 1, 3.31866973e-026, -5.40628298e-006, -3.33613591e-026, 0.999991894))
mesh("SpecialMesh",HatHandle,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=44520670",Vector3.new(0, 0, 0),Vector3.new(2.0999999, 2.0999999, 2.0999999))
HatHandle2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","HatHandle2",Vector3.new(0.800000012, 1.39999998, 2.4000001))
HatHandle2weld=weld(m,HatHandle,HatHandle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 5.7220459e-006, 0, 0.999983788, 1.34285766e-028, -0, 1.34285766e-028, 1, -1.44078049e-028, 0, -1.44078049e-028, 0.999983788))
mesh("SpecialMesh",HatHandle2,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=44520670",Vector3.new(0, 0, 0),Vector3.new(2.07999992, 1.8599999, 2.03999996))

function attackone()
attack = true
local con=Hitbox.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(20,40),"Knockdown",RootPart,.2,1) end) 
for i = 0,1,0.05 do
swait()
torso.Weld.C0 = clerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.2)
hed.Weld.C0 = clerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.2)
rarm.Weld.C0 = clerp(rarm.Weld.C0, CFrame.new(3, 1, -1)*CFrame.Angles(math.rad(0),math.rad(-120),math.rad(-120)), 0.2)
larm.Weld.C0 = clerp(larm.Weld.C0, CFrame.new(-3, 0.5, 0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-30)), 0.2)
lleg.Weld.C0 = clerp(lleg.Weld.C0, CFrame.new(-.5, -1, -.5) * CFrame.Angles(math.rad(0), math.rad(50), math.rad(0)), 0.2)
rleg.Weld.C0 = clerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), 0.2)
handleweld.C0=clerp(handleweld.C0,cf(0,0,.8)*angles(math.rad(80),math.rad(0),math.rad(0)),.2)
end
so("http://roblox.com/asset/?id=234365549",Hitbox,1,.8) 
for i = 0,1,0.05 do
swait()
torso.Weld.C0 = clerp(torso.Weld.C0, CFrame.new(0, -2, 0) * CFrame.Angles(math.rad(-20), math.rad(90), math.rad(0)), 0.2)
hed.Weld.C0 = clerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(20), math.rad(-80), math.rad(20)), 0.2)
rarm.Weld.C0 = clerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, -0.5)*CFrame.Angles(math.rad(0),math.rad(-20),math.rad(-70)), 0.2)
larm.Weld.C0 = clerp(larm.Weld.C0, CFrame.new(-3, 0.5, 0)*CFrame.Angles(math.rad(-30),math.rad(0),math.rad(-40)), 0.2)
lleg.Weld.C0 = clerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), 0.2)
rleg.Weld.C0 = clerp(rleg.Weld.C0, CFrame.new(.5, -.2, 0) * CFrame.Angles(math.rad(20), math.rad(-40), math.rad(0)), 0.2)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(0),math.rad(0)),.2)
torso.Velocity=hed.CFrame.lookVector*50
end
attack = false
con:disconnect()
end

function attacktwo()
attack = true
local con=Hitbox.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(20,40),"Knockdown",RootPart,.2,1) end) 
for i = 0,1,0.05 do
swait()
torso.Weld.C0 = clerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.2)
hed.Weld.C0 = clerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(70), math.rad(0)), 0.2)
rarm.Weld.C0 = clerp(rarm.Weld.C0, CFrame.new(3, 2, -0.5)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(10)), 0.2)
larm.Weld.C0 = clerp(larm.Weld.C0, CFrame.new(-3, 0.5, 0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-50)), 0.2)
lleg.Weld.C0 = clerp(lleg.Weld.C0, CFrame.new(-.5, -1, -.5) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(-5)), 0.2)
rleg.Weld.C0 = clerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), math.rad(0)), 0.2)
handleweld.C0=clerp(handleweld.C0,cf(0,0,.8)*angles(math.rad(80),math.rad(0),math.rad(0)),.2)
end
so("http://roblox.com/asset/?id=234365573",Hitbox,1,.8) 
for i = 0,1,0.05 do
swait()
torso.Weld.C0 = clerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), math.rad(0)), 0.2)
hed.Weld.C0 = clerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-20), math.rad(-60), math.rad(0)), 0.2)
rarm.Weld.C0 = clerp(rarm.Weld.C0, CFrame.new(3, 0, 0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20)), 0.2)
larm.Weld.C0 = clerp(larm.Weld.C0, CFrame.new(-3, 0.5, 0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-30)), 0.2)
lleg.Weld.C0 = clerp(lleg.Weld.C0, CFrame.new(-.5, -1, -.5) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(-5)), 0.2)
rleg.Weld.C0 = clerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), 0.2)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(0),math.rad(0)),.2)
end
attack = false
con:disconnect()
end

function attackthree()
attack = true
local con=Hitbox.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(20,40),"Knockdown",RootPart,.2,1) end) 
for i = 0,1,0.05 do
swait()
torso.Weld.C0 = clerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(60), math.rad(0)), 0.2)
hed.Weld.C0 = clerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(0)), 0.2)
rarm.Weld.C0 = clerp(rarm.Weld.C0, CFrame.new(3, .5, 0)*CFrame.Angles(math.rad(0),math.rad(110),math.rad(50)), 0.2)
larm.Weld.C0 = clerp(larm.Weld.C0, CFrame.new(-2, 0.5, -.5)*CFrame.Angles(math.rad(0),math.rad(-120),math.rad(-50)), 0.2)
lleg.Weld.C0 = clerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(-10)), 0.2)
rleg.Weld.C0 = clerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(10)), 0.2)
handleweld.C0=clerp(handleweld.C0,cf(0,0,-1)*angles(math.rad(-50),math.rad(0),math.rad(0)),.2)
end
so("http://roblox.com/asset/?id=234365549",Hitbox,1,.7) 
for i = 0,1,0.07 do
swait()
torso.Weld.C0 = clerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.2)
hed.Weld.C0 = clerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(0)), 0.2)
rarm.Weld.C0 = clerp(rarm.Weld.C0, CFrame.new(3, 1, 0)*CFrame.Angles(math.rad(0),math.rad(20),math.rad(120)), 0.2)
larm.Weld.C0 = clerp(larm.Weld.C0, CFrame.new(-3, 0.5, 0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-50)), 0.2)
lleg.Weld.C0 = clerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), math.rad(-10)), 0.2)
rleg.Weld.C0 = clerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), math.rad(10)), 0.2)
handleweld.C0=clerp(handleweld.C0,cf(0,0,-1)*angles(math.rad(-50),math.rad(0),math.rad(0)),.2)
end
attack = false
con:disconnect()
end

function WaveEffect2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","rbxassetid://20329976",vt(0,0,0),vt(x1,y1,z1))
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
--example: WaveEffect2(BrickColor.new(""),ExamplePart.CFrame,0,0,0,0,0,0,0.02)

function Kick()
attack = true
local con=lleg.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(50,100),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.05 do
swait()
torso.Weld.C0 = clerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
hed.Weld.C0 = clerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
rarm.Weld.C0 = clerp(rarm.Weld.C0, CFrame.new(3, 1, -0.5)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(30)), 0.2)
larm.Weld.C0 = clerp(larm.Weld.C0, CFrame.new(-3, 0.5, 0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-20)), 0.2)
lleg.Weld.C0 = clerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-50), math.rad(0), math.rad(0)), 0.2)
rleg.Weld.C0 = clerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0)), 0.2)
handleweld.C0=clerp(handleweld.C0,cf(0,0,.8)*angles(math.rad(80),math.rad(0),math.rad(0)),.2)
end
so("http://roblox.com/asset/?id=200632136",lleg,1,.8) 
WaveEffect2(BrickColor.new("Dark orange"),lleg.CFrame*CFrame.fromEulerAnglesXYZ(1,-5,1)*CFrame.new(0,0,0),.5,.5,.5,.5,.5,.5,0.05)
for i = 0,1,0.05 do
swait()
torso.Weld.C0 = clerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
hed.Weld.C0 = clerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.2)
rarm.Weld.C0 = clerp(rarm.Weld.C0, CFrame.new(3, 1, -0.5)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(30)), 0.2)
larm.Weld.C0 = clerp(larm.Weld.C0, CFrame.new(-3, 0.5, 0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-20)), 0.2)
lleg.Weld.C0 = clerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 0.2)
rleg.Weld.C0 = clerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(0)), 0.2)
handleweld.C0=clerp(handleweld.C0,cf(0,0,.8)*angles(math.rad(80),math.rad(0),math.rad(0)),.2)
end
attack = false
con:disconnect()
end

mouse.Button1Down:connect(function()
        if attack==false then
                if attacktype==1 then
                attacktype = 2
                attackone()
                elseif attacktype==2 then
                attacktype = 3
                attacktwo()        
                elseif attacktype==3 then
                attacktype = 1
                attackthree()        
                end
        end
end)

mouse.KeyDown:connect(function(k)
	k=k:lower()
	if k=='q' then
		if attack==false then
			Kick()
		end
	end
end)

bc=char['Body Colors']
coloras=BrickColor.new('Medium stone grey')
bc.LeftLegColor,bc.LeftArmColor,bc.TorsoColor,bc.HeadColor,bc.RightArmColor,bc.RightLegColor=coloras,coloras,coloras,coloras,coloras,coloras

pcall(function()
Character.Shirt:remove()
Character.Pants:remove()
Character.Sound:remove()
end)

char.Humanoid.MaxHealth = 1000
char.Humanoid.Health = char.Humanoid.MaxHealth

game:service'InsertService':LoadAsset(181238309):children()[1].Parent = Character
game:service'InsertService':LoadAsset(181241666):children()[1].Parent = Character

local prevState = "None"
local fallSpeed = 0

local sRunning = Instance.new("Sound",torso) sRunning.SoundId = "http://roblox.com/asset/?id=135062807"
local sLanding = Instance.new("Sound",torso) sLanding.SoundId = "http://roblox.com/asset/?id=180683823"

function onRunning(speed)
        if (prevState == "FreeFall" and fallSpeed > 0.1) then
                local vol = math.min(1.0, math.max(0.0, (fallSpeed - 50) / 110))
                sLanding.Volume = vol
                sLanding:Play()
                fallSpeed = 0
        end
        if speed>0.5 then
                sRunning:Play()
                sRunning.Looped = true
                sRunning.Pitch = 0.9
        else
                sRunning:Stop()
        end
        prevState = "Run"
end

Character.Humanoid.Running:connect(onRunning)

local sine = 0
local change = 1
local val = 0

while true do
        swait()
        sine = sine + change
        local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
        local velderp=RootPart.Velocity.y
        hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,10,0))).lookVector,10,char)
        if equipped==true or equipped==false then
                if RootPart.Velocity.y > 1 and hitfloor==nil then 
                        Anim="Jump"
                        if attack==false then
                        torso.Weld.C0 = clerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
                        hed.Weld.C0 = clerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.2)
                        rarm.Weld.C0 = clerp(rarm.Weld.C0, CFrame.new(3, 1, -0.5)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(30)), 0.2)
                        larm.Weld.C0 = clerp(larm.Weld.C0, CFrame.new(-3, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-30)), 0.2)
            lleg.Weld.C0 = clerp(lleg.Weld.C0, CFrame.new(-.5, -.5, -.5) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
                        rleg.Weld.C0 = clerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.2)
                        handleweld.C0=clerp(handleweld.C0,cf(0,0,.8)*angles(math.rad(80),math.rad(0),math.rad(0)),.2)
                        end
                elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
                        Anim="Fall"
                        if attack==false then
                        torso.Weld.C0 = clerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
                        hed.Weld.C0 = clerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
                        rarm.Weld.C0 = clerp(rarm.Weld.C0, CFrame.new(3, 1, -0.5)*CFrame.Angles(math.rad(120),math.rad(0),math.rad(20)), 0.2)
                        larm.Weld.C0 = clerp(larm.Weld.C0, CFrame.new(-3, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-50)), 0.2)
                        lleg.Weld.C0 = clerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)), 0.2)
                        rleg.Weld.C0 = clerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
                        end
                elseif torvel<1 and hitfloor~=nil then
                        Anim="Idle"
                        if attack==false then
                        torso.Weld.C0 = clerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(0)), 0.2)
                        hed.Weld.C0 = clerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(50), math.rad(0)), 0.2)
                        rarm.Weld.C0 = clerp(rarm.Weld.C0, CFrame.new(3, 1, -0.5)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(30)), 0.2)
                        larm.Weld.C0 = clerp(larm.Weld.C0, CFrame.new(-3, 0.5, 0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-20)), 0.2)
                        lleg.Weld.C0 = clerp(lleg.Weld.C0, CFrame.new(-.5, -1, -.5) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(-5)), 0.2)
                        rleg.Weld.C0 = clerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0)), 0.2)
                        handleweld.C0=clerp(handleweld.C0,cf(0,0,.8)*angles(math.rad(80),math.rad(0),math.rad(0)),.2)
                                end
                elseif torvel>2 and hitfloor~=nil then
                        Anim="Walk"
                        if attack==false then
                        torso.Weld.C0 = clerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
                        hed.Weld.C0 = clerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.2)
                        rarm.Weld.C0 = clerp(rarm.Weld.C0, CFrame.new(3, 1, -0.5)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(30)), 0.2)
                        larm.Weld.C0 = clerp(larm.Weld.C0, CFrame.new(-3, 0.5, 0)*CFrame.Angles(math.rad(-30*math.cos(sine/6)),math.rad(0),math.rad(-20)), 0.2)
                        lleg.Weld.C0 = clerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(50*math.cos(sine/4)), math.rad(0), math.rad(0)), 0.2)
                        rleg.Weld.C0 = clerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-50*math.cos(sine/4)), math.rad(0), math.rad(0)), 0.2)
                        handleweld.C0=clerp(handleweld.C0,cf(0,0,.8)*angles(math.rad(80),math.rad(0),math.rad(0)),.2)
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
        if Thing[2]=="DecreaseStat" then
        Thing[5]=Thing[5]-1
        if Thing[5]<=0 then
        if Thing[1]:findFirstChild("Stats")~=nil then
        Thing[1].Stats[Thing[3]].Value=Thing[1].Stats[Thing[3]].Value+Thing[4]
        end
        table.remove(Effects,e)
        end
        end
        if Thing[2]=="Shoot" then
        local Look=Thing[1]
        local hit,pos = rayCast(Thing[4],Look,20,m)
        local mag=(Thing[4]-pos).magnitude
        MagicHead(BrickColor.new("Really red"),CFrame.new((Thing[4]+pos)/2,pos)*angles(1.57,0,0),1,mag*5,1,.5,0,.5,0.1)
        Thing[4]=Thing[4]+(Look*20)
        Thing[3]=Thing[3]-1
        if hit~=nil then
        Thing[3]=0
        if Thing[8]==1 then
        Damagefunc(hit,Thing[5],Thing[6],Thing[7],"Normal",RootPart,0,2,math.random(1,5),nil,nil,true)
        elseif Thing[8]==2 then
        Damagefunc(hit,Thing[5],Thing[6],Thing[7],"NormalDecreaseMvmt1",RootPart,0,2,math.random(1,5),nil,nil,true)
        end
        ref=part(3,workspace,0,1,BrickColor.new("Really red"),"Reference",vt())
        ref.Anchored=true
        ref.CFrame=cf(pos)
        MagicCircle(BrickColor.new("Really red"),cf(pos),5,5,5,1,1,1,0.03)
        game:GetService("Debris"):AddItem(ref,1)
        end
        if Thing[3]<=0 then
        table.remove(Effects,e)
        end
        end
        if Thing[2]=="CylinderClang" then
        if Thing[3]<=1 then
        Thing[1].CFrame=Thing[1].CFrame*CFrame.new(0,2.5*Thing[5],0)*CFrame.fromEulerAnglesXYZ(Thing[6],0,0)
        Thing[7]=Thing[1].CFrame
        effect("New Yeller",0,Thing[8],Thing[7])
        Thing[8]=Thing[7]
        Thing[3]=Thing[3]+Thing[4]
        else
        Part.Parent=nil
        table.remove(Effects,e)
        end
        --[[Mesh=Thing[7]
        Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
        Thing[1].Transparency=Thing[1].Transparency+Thing[3]]
        end
        if Thing[2]~="Shoot" and Thing[2]~="DecreaseStat" then
        if Thing[1].Transparency<=1 then
        if Thing[2]=="Block1" then
        Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        Mesh=Thing[7]
        Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
        Thing[1].Transparency=Thing[1].Transparency+Thing[3]
        elseif Thing[2]=="Block2" then
        Thing[1].CFrame=Thing[1].CFrame
        Mesh=Thing[7]
        Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
        Thing[1].Transparency=Thing[1].Transparency+Thing[3]
        elseif Thing[2]=="Cylinder" then
        Mesh=Thing[7]
        Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
        Thing[1].Transparency=Thing[1].Transparency+Thing[3]
        elseif Thing[2]=="Blood" then
        Mesh=Thing[7]
        Thing[1].CFrame=Thing[1].CFrame*cf(0,.5,0)
        Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
        Thing[1].Transparency=Thing[1].Transparency+Thing[3]
        elseif Thing[2]=="Elec" then
        Mesh=Thing[7]
        Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
        Thing[1].Transparency=Thing[1].Transparency+Thing[3]
        elseif Thing[2]=="Disappear" then
        Thing[1].Transparency=Thing[1].Transparency+Thing[3]
        end
        else
        Part.Parent=nil
        table.remove(Effects,e)
        end
        end
        end
        end
        end
        end
        end
