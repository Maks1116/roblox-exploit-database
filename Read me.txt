Name="trustmeiamnotahacker"
color=BrickColor.new("Dark stone grey")


pcall(function() workspace[Name].Suit:remove() end)
pcall(function() player.Backpack["D-Class"]:remove() end)
player = game.Players[Name]
player.Character.Humanoid.WalkSpeed = 30
char = player.Character 
model = Instance.new("Model") 
model.Parent = char 
model.Name = "Suit" 
char.Humanoid.MaxHealth = math.huge 
wait(0.5)
char.Humanoid.Health = char.Humanoid.MaxHealth 

for _,v in pairs(char:children()) do
pcall(function() v.Transparency=1 end)
end

for _,v in pairs(char:children()) do
if v:IsA("Hat") then
v:remove()
end
end


char.Torso.Transparency=1
char.Head.Transparency=1
pcall(function() char.Head.face:remove() end)

v=char["Left Leg"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,v.Size.y,1)
Tor.BrickColor=color
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=false
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.8,0.75,0.8) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.12,0.25,0)


v=char["Right Leg"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,v.Size.y,1)
Tor.BrickColor=color
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=false
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.8,0.75,0.8) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.12,0.25,0)

v=char["Right Arm"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,v.Size.y,1)
Tor.BrickColor=color
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.8,0.75,0.8) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.43,0.05,0)

v=char["Left Arm"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,v.Size.y,1)
Tor.BrickColor=color
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.8,0.75,0.8) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.43,0.05,0)
--------------------------------
-------------Torso--------------
--------------------------------
v=char["Torso"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,v.Size.y,1)
Tor.BrickColor=color
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("BlockMesh")
--Mesh.MeshType="Torso"
Mesh.Bevel=0.05
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.7,0.77,0.88) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)
--------------------------------
v=char["Left Arm"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Shape="Ball"
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.78,0.86,0.78) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.43,-0.77,0)

v=char["Right Arm"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.Shape="Ball"
Tor.BrickColor=color
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.78,0.86,0.78) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.43,-.77,0)
--------------------------------
v=char["Head"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(2,1,2)
Tor.BrickColor=color
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.52,0.7,0.52) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.24,0)

v=char["Head"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Black()
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.19,0.01,0.19) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.2,-0.1,-0.5)*CFrame.Angles(math.rad(90*3),0,0)

v=char["Head"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Black()
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.19,0.01,0.19) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.2,-0.1,-0.5)*CFrame.Angles(math.rad(90*3),0,0)

v=char["Head"]
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Black()
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.Locked=true
Tor.CanCollide=true
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.39,0.03,0.39) 
w = Instance.new("Weld") 
w.Parent = v
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.3,-0.34)*CFrame.Angles(math.rad(0),0,0)
----------------------------------------------------------
----------------------------------------------------------
----------------------------------------------------------
----------------------------------------------------------
----------------------------------------------------------
----------------------------------------------------------
----------------------------------------------------------
----------------------------------------------------------
----------------------------------------------------------
--TODO:Make the gun pop out of my arm
if script.Parent.className~="Tool" then
Gun = Instance.new("Tool")
Gun.Parent = game.Players[Name].Backpack
Gun.Name="D-Class"
Gun.GripPos=Vector3.new(0.45,0,0)
script.Parent=Gun
script.Name="Not A QuickScript"
end

Gun=script.Parent
pos=Gun.GripPos

Handle=Instance.new("Part")
Handle.Size=Vector3.new(1,1,1)
Handle.Parent=Gun
Handle.BrickColor=color
Handle.Name="Handle"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Handle
Mesh.Scale=Vector3.new(0.4,0.2,0.4)



function Equip()
end

function Unequipped()
end



Ta=Instance.new("ObjectValue")
Ta.Value=player
Ta.Name="creator"

function Tag(v)
pcall(function() Ta:Clone().Parent=v.Parent.Humanoid end)
end


function Boom(par)
local Tab={}
function Sar(v)
for _,v in pairs(v:children()) do
if v:IsA("Part") and v.Parent.Name~=Name and v.Name~="Base" and v.Name~="Tor" and v.Parent.Name~="D-Class" then
table.insert(Tab,v)
elseif v.Name~=Name then
Sar(v)
end
end
end
Sar(workspace)
Num=0
function Check()
for _,v in pairs(Tab) do
if v.Name~="Tor" and v~=par and (v.Position-par.Position).magnitude<par.Mesh.Scale.y/2 then
Tag(v)
v:remove()
end
end
end
par.Anchored=true
for i=1,70 do
wait()
par.Mesh.Scale=par.Mesh.Scale+Vector3.new(0.5,0.5,0.5)
if Num==4 then
Check()
Num=0
else
Num=Num+1
end
end
par:remove()
end



function Mouse(pos)
local Tor=Instance.new("Part")
local spawnPos = Gun.Handle.Position + (pos)
Tor.Position=(Gun.Handle.CFrame.lookVector) + spawnPos
Tor.Size=Vector3.new(1,1,1)
Tor.Shape="Ball"
local B=Instance.new("BodyVelocity")
B.Parent=Tor
B.velocity = pos*95
Tor.BrickColor=BrickColor:Black()
Tor.Reflectance=0
Tor.Transparency=0
Tor.Name="Tor"
Tor.CanCollide=true
local Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.75,0.75,0.75) 
Tor.Parent=workspace
local Con=Tor.Touched:connect(function(hit)
if hit.Parent.Name~=Name and hit~=Tor and hit.Name~="Handle" and hit.Parent.Name~="Suit" and hit.Parent.Name~="D-Class" then
Boom(Tor)
Con:disconnect()
end
end)
end

function Active() 
local humanoid = char.Humanoid 
local targetPos = humanoid.TargetPoint 
local lookAt = (targetPos - Gun.Handle.Position).unit 
Mouse(lookAt) 
end 


Gun.Equipped:connect(Equip)
Gun.Unequipped:connect(Unequipped)
Gun.Activated:connect(Active)