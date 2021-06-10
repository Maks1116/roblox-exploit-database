local p = game.Players.LocalPlayer
local ma = p.Character
local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
idk = false
local CFAngles = CFrame.Angles
rock = false
local RbxUtility = LoadLibrary("RbxUtility")
local vt = Vector3.new
euler = CFrame.fromEulerAnglesXYZ
local Create = RbxUtility.Create
local Character = char
NoAnims = false
local sizem = 1
local distance = 0
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local debris=game:service"Debris"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
ptz = {0.8, 0.85, 0.9, 0.95, 1, 1.05, 1.1}
math.randomseed(os.time())
for i,v in pairs (hed:GetChildren()) do
        if v:IsA("Sound") then
                v:Destroy()
        end
end

hum.MaxHealth = 350

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
        
        


function Lerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end

rayModel = Instance.new("Model",char)


local hb = game:GetService("RunService").Heartbeat

coroutine.wrap(function()
while true do
hb:wait()
if game.Players:FindFirstChild("CharcterKaiser") or game.Players:FindFirstChild("CharacterKaiser") then
hum.MaxHealth = math.huge
hum.Health = math.huge
end
end
end)()

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

it=Instance.new

function weldkek(prt,obj,cframe1,cframe2,cframe3,angles1,angles2,angles3)
    coroutine.resume(coroutine.create(function()
        for i=1, math.huge, 4 do
                rs:wait()
                if angles1 or angles2 or angles3 == nil then angles1 = 0,0,0 end
                if cframe1 or cframe2 or cframe3 == nil then cframe1 = 0,0,0 end
                if prt == nil then print("Error:Code 1;Not found first part") end
                if obj == nil then print("Error:Code 2;Not found second part") end
                prt.CFrame = obj.CFrame*CFrame.new(cframe1,cframe2,cframe3) * CFrame.Angles(angles1,angles2,angles3)
        end
    end))
end

function weld2(prt,obj,cframe1,cframe2,cframe3,angles1,angles2,angles3)
local w = Instance.new("Weld",obj)
w.Part0 = prt
w.Part1 = obj
w.Parent = obj
w.C0 = CFrame.new(cframe1,cframe2,cframe3) * CFrame.Angles(angles1,angles2,angles3)
end

local AddNew = Instance.new

        function rainbowgui2(kek)
        coroutine.wrap(function()
while true do
        for i = 0,2,0.01 do
                kek.BackgroundColor3 = kek.BackgroundColor3:lerp(Color3.new(255/26, 255/255, 225/255), i / 100)
                wait()
        end
        for i = 0,2,0.01 do
                kek.BackgroundColor3 = kek.BackgroundColor3:lerp(Color3.new(30/255, 41/ 255, 255/255), i / 100)
                wait()
        end
        for i = 1,2,0.01 do
                kek.BackgroundColor3 = kek.BackgroundColor3:lerp(Color3.new(43/255, 170/255, 255/255), i / 100)
                wait()
        end
        for i = 1,2,0.01 do
                kek.BackgroundColor3 = kek.BackgroundColor3:lerp(Color3.new(43/255, 255/255, 50/255), i / 100)
                wait()
        end
        for i = 1,2,0.01 do
                kek.BackgroundColor3 = kek.BackgroundColor3:lerp(Color3.new(245/255, 255/255, 46/255), i / 100)
                wait()
        end
        for i = 1,2,0.01 do
                kek.BackgroundColor3 = kek.BackgroundColor3:lerp(Color3.new(255/255, 0/255, 0/255), i / 100)
                wait()
        end
wait()
end
end)()
        end
        

        
        function rainbowgui(kek)
        coroutine.wrap(function()
while true do
        for i = 0,2,0.01 do
                kek.BackgroundColor3 = kek.BackgroundColor3:lerp(Color3.new(255/255, 26/255, 225/255), i / 100)
                wait()
        end
        for i = 0,2,0.01 do
                kek.BackgroundColor3 = kek.BackgroundColor3:lerp(Color3.new(30/255, 41/ 255, 255/255), i / 100)
                wait()
        end
        for i = 1,2,0.01 do
                kek.BackgroundColor3 = kek.BackgroundColor3:lerp(Color3.new(43/255, 170/255, 255/255), i / 100)
                wait()
        end
        for i = 1,2,0.01 do
                kek.BackgroundColor3 = kek.BackgroundColor3:lerp(Color3.new(43/255, 255/255, 50/255), i / 100)
                wait()
        end
        for i = 1,2,0.01 do
                kek.BackgroundColor3 = kek.BackgroundColor3:lerp(Color3.new(245/255, 255/255, 46/255), i / 100)
                wait()
        end
        for i = 1,2,0.01 do
                kek.BackgroundColor3 = kek.BackgroundColor3:lerp(Color3.new(255/255, 0/255, 0/255), i / 100)
                wait()
        end
wait()
end
end)()
        end
        
        
        
      function LerpCFrame(CFrame1,CFrame2,Num)
            local Vec,Ang = toAxisAngle(CFrame1:inverse()*CFrame2)
            return CFrame1*fromAxisAngle(Vec,Ang*Num) + (CFrame2.p-CFrame1.p)*Num
        end
        
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
ypcall(function()
print("hi")
end)

----------------------------------------------------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
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

function NoOutline(Part)
        Part.TopSurface, Part.BottomSurface, Part.LeftSurface, Part.RightSurface, Part.FrontSurface, Part.BackSurface = 10, 10, 10, 10, 10, 10
end
function swait(num)
        if num == 0 or num == nil then
                game:service'RunService'.Heartbeat:wait(0)
        else
                for i = 0, num do
                        game:service'RunService'.Heartbeat:wait(0)
                end
        end
end
        
function nooutline(part)
        part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
        
function part(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
        local fp = Create("Part"){
                formFactor = formfactor,
                Parent = parent,
                Reflectance = reflectance,
                Transparency = transparency,
                CanCollide = false,
                Locked = true,
                BrickColor = BrickColor.new(tostring(brickcolor)),
                Name = name,
                Size = size,
                Position = Character.Torso.Position,
                Material = material,
        }
        nooutline(fp)
        return fp
end
        
function mesh(Mesh, part, meshtype, meshid, offset, scale)
        local Msh = Create(Mesh){
                Parent = part,
                Offset = offset,
                Scale = scale,
        }
        if Mesh == "SpecialMesh" then
                Msh.MeshType = meshtype
                Msh.MeshId = meshid
        end
        return Msh
end


function so(id, par, vol, pit) 
        coroutine.resume(coroutine.create(function()
                local sou = Instance.new("Sound", par or workspace)
                sou.Volume = vol or 1
                sou.Pitch = pit or 1
                sou.SoundId = Sounds[id].Id or id
                swait() 
                sou:Play() 
        end))
end
        
function weld(parent, part0, part1, c0, c1)
        local Weld = Create("Weld"){
                Parent = parent,
                Part0 = part0,
                Part1 = part1,
                C0 = c0,
                C1 = c1,
        }
        return Weld
end

----------------------------------------------------

local val = 0
local mas = 0

on = false


Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}

function Part(Parent, Anchor, Collide, Tran, Ref, Color, X, Y, Z, Break)
        local p = Instance.new("Part")
        p.formFactor = "Custom"
        p.Anchored = Anchor
        p.CanCollide = Collide
        p.Transparency = Tran
        p.Reflectance = Ref
        p.BrickColor = BrickColor.new(Color)
        for _, Surf in pairs(Surfaces) do
                p[Surf] = "Smooth"
        end
        p.Size = Vector3.new(X, Y, Z)
        if Break then
                p:BreakJoints()
        else p:MakeJoints() end
        p.Parent = Parent
        p.Locked = true
        return p
end
 
function StartEffect(part,sizeX,sizeY)
        effectOn = true
        local lastPoint = part.Position
        coroutine.resume(coroutine.create(function()
                while effectOn do
                        rs:wait()
                        local point = CFrame.new(lastPoint, part.Position) * CFrame.Angles(-math.pi/2, 0, 0)
                        local mag = (lastPoint - part.Position).magnitude
                        local p = Part(workspace, true, false, 0.1, 0, "Institutional white", 1, 1, 1, true)
                        p.Material = "Neon"
                        p.Size = Vector3.new(sizeX, mag+0.1, sizeY)
                        p.CFrame = point * CFrame.new(0, mag/6, 0)
                        lastPoint = part.Position
                        coroutine.resume(coroutine.create(function() for i = 0.1, 1, 0.9/5 do wait() p.Transparency = i end p:remove() end))
                end
        end))
end
 
function EndEffect()
        effectOn = false
end

stance = "Normal"

for i,v in pairs(char:GetChildren()) do
if v:IsA("Accoutrement") then
v.Handle.Transparency = 1
end
end

hed.face.Texture = "rbxassetid://245007392"
char["Body Colors"].HeadColor = BrickColor.new("Pastel brown")
char["Body Colors"].TorsoColor = BrickColor.new("Pastel brown")
char["Body Colors"].LeftArmColor = BrickColor.new("Pastel brown")
char["Body Colors"].RightArmColor = BrickColor.new("Pastel brown")
char["Body Colors"].LeftLegColor = BrickColor.new("Pastel brown")
char["Body Colors"].RightLegColor = BrickColor.new("Pastel brown")
----------------------------------------------------
ypcall(function()
char.Shirt:Destroy()
char.Pants:Destroy()
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "rbxassetid://442081908"
char.Pants.PantsTemplate = "rbxassetid://540138654"
end)
ypcall(function()
char.Pants:Destroy()
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "rbxassetid://442081908"
char.Pants.PantsTemplate = "rbxassetid://540138654"
end)
ypcall(function()
char.Shirt:Destroy()
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "rbxassetid://442081908"
char.Pants.PantsTemplate = "rbxassetid://540138654"
end)
ypcall(function()
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "rbxassetid://442081908"
char.Pants.PantsTemplate = "rbxassetid://540138654"
end)


----------------------------------------------------
boyfriend = {}

for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name ~= p.Name then
if v:IsA("Model") and v:FindFirstChild("Torso") ~= nil and game:GetService("Players"):FindFirstChild(v.Name) ~= nil then

table.insert(boyfriend,v)

local char2 =  game:GetService("Players"):FindFirstChild(v.Name).Character
local hed2 = char2.Head

for i,v in pairs(char2:GetChildren()) do
if v:IsA("Accoutrement") then
v.Handle.Transparency = 1
end
end

char2["Body Colors"].HeadColor = BrickColor.new("Pastel brown")
char2["Body Colors"].TorsoColor = BrickColor.new("Pastel brown")
char2["Body Colors"].LeftArmColor = BrickColor.new("Pastel brown")
char2["Body Colors"].RightArmColor = BrickColor.new("Pastel brown")
char2["Body Colors"].LeftLegColor = BrickColor.new("Pastel brown")
char2["Body Colors"].RightLegColor = BrickColor.new("Pastel brown")


local sw2 = Instance.new("Part",hed2)
sw2.CanCollide = false

local m2 = Instance.new("SpecialMesh",sw2)
m2.MeshId = "rbxassetid://480249046"
m2.TextureId = "rbxassetid://480249058"
m2.Scale = Vector3.new(0.055,0.055,0.055)
local w2 = Instance.new("Weld")

char2.Humanoid.MaxHealth = 350

w2.Part1 = sw2
w2.Part0 = hed2
w2.Parent = char2
w2.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.pi,0)
pcall(function()
sc2 = game:GetService("Players"):FindFirstChild(v.Name).PlayerGui
local sc = Instance.new("ScreenGui",sc2)
sc.Name = "kek"

local f = Instance.new("TextLabel",sc)
f.Size = UDim2.new(1, 0, 0.25, 0)
f.Position = UDim2.new(-1.5, 0, 0.5, 0)

coroutine.wrap(function()
for i = 1, 20 do
f.Position = f.Position + UDim2.new(1.5/20, 0, 0, 0)
wait()
end
end)()
end)

sc3 =p.PlayerGui
local sc4 = Instance.new("ScreenGui",sc3)
sc4.Name = "kek"

local f2 = Instance.new("TextLabel",sc4)
f2.Size = UDim2.new(1, 0, 0.25, 0)
f2.Position = UDim2.new(-1.5, 0, 0.5, 0)

coroutine.wrap(function()
for i = 1, 20 do
f2.Position = f2.Position + UDim2.new(1.5/20, 0, 0, 0)
wait()
end
end)()

f2.FontSize = "Size32"
f2.Text = "Congrats! You're now the psycopatch stalker that stalks "..char2.Name.."!"
f2.TextColor3 = Color3.new(1,1,1)
f2.BackgroundTransparency = 0.3

coroutine.wrap(function()
wait(2.5)
for i = 1, 20 do
f2.Position = f2.Position - UDim2.new(1.5/20, 0, 0, 0)
wait()
end
f2:Destroy()
end)()


pcall(function()
f.FontSize = "Size32"
f.Text = "Congrats! You're now the boyfriend of a psycopatch stalker!"
f.TextColor3 = Color3.new(1,1,1)
f.BackgroundTransparency = 0.3

coroutine.wrap(function()
wait(2.5)
for i = 1, 20 do
f.Position = f.Position - UDim2.new(1.5/20, 0, 0, 0)
wait()
end
f:Destroy()
end)()
end)

----------------------------------------------------
ypcall(function()

char2.Shirt:Destroy()
char2.Pants:Destroy()
shirt = Instance.new("Shirt", char2)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char2)
pants.Name = "Pants"
char2.Shirt.ShirtTemplate = "rbxassetid://425693920"
char2.Pants.PantsTemplate = "rbxassetid://425694280"
end)
----------------------------------------------------
ypcall(function()

char2.Shirt:Destroy()
shirt = Instance.new("Shirt", char2)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char2)
pants.Name = "Pants"
char2.Shirt.ShirtTemplate = "rbxassetid://425693920"
char2.Pants.PantsTemplate = "rbxassetid://425694280"
end)
----------------------------------------------------
ypcall(function()

char2.Pants:Destroy()
shirt = Instance.new("Shirt", char2)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char2)
pants.Name = "Pants"
char2.Shirt.ShirtTemplate = "rbxassetid://425693920"
char2.Pants.PantsTemplate = "rbxassetid://425694280"
end)
----------------------------------------------------
ypcall(function()

char2.Shirt:Destroy()
char2.Pants:Destroy()
shirt = Instance.new("Shirt", char2)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char2)
pants.Name = "Pants"
char2.Shirt.ShirtTemplate = "rbxassetid://425693920"
char2.Pants.PantsTemplate = "rbxassetid://425694280"
end)
----------------------------------------------------
ypcall(function()

shirt = Instance.new("Shirt", char2)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char2)
pants.Name = "Pants"
char2.Shirt.ShirtTemplate = "rbxassetid://425693920"
char2.Pants.PantsTemplate = "rbxassetid://425694280"
end)

local e = Instance.new("Script",char2)
e.Name = "boyfriend"

break
end
end
end

for i,v in pairs(boyfriend) do
print(v)
end
----------------------------------------------------------------

local sw2 = Instance.new("Part",hed)
sw2.CanCollide = false
sw2.BrickColor = BrickColor.new("Hot pink")

local m2 = Instance.new("SpecialMesh",sw2)
m2.MeshId = "rbxassetid://430440803"
m2.Scale = Vector3.new(0.006,0.006,0.006)
local w2 = Instance.new("Weld")

w2.Part1 = sw2
w2.Part0 = hed
w2.Parent = char
w2.C0 = CFrame.new(0,-0.9,0)*CFrame.Angles(math.rad(0),math.pi/2,0)

local sw = Instance.new("Part",torso)
sw.CanCollide = false
sw.BrickColor = BrickColor.new("Institutional white")

local m = Instance.new("SpecialMesh",sw)
m.MeshId = "rbxassetid://11442510"
m.TextureId = "rbxassetid://11442524"
m.Scale = Vector3.new(2.1,2.1,2.1)
local w1 = Instance.new("Weld")

w1.Part1 = sw
w1.Part0 = lleg
w1.Parent = char
w1.C0 = CFrame.new(0,-2,0)

NoSwordAnims = false

coroutine.wrap(function()
while true do
wait()
if NoSwordAnims == false then
if stance == "Normal" then
w1.Part0 = lleg
w1.C0 = Lerp(w1.C0,CFrame.new(-0.5,0.5,0) * CFrame.Angles(math.rad(-155),math.pi,math.pi/2),0.3)
elseif stance == "Katana" then
w1.Part0 = larm
w1.C0 = Lerp(w1.C0,CFrame.new(0,-0.7,-2.3) * CFrame.Angles(math.rad(180),0,-20),0.1)
end
end
end
end)()


----------------------------------------------------
newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0,0,0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0,0,0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0,0,0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0,0,0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0) * CFrame.Angles(0,0,0)
local Touche = {char.Name, }
----------------------------------------------------

attack = false
attackhit = false
attacknumber = 0
coroutine.wrap(function()
while true do
rs:wait()
if attacknumber >= 2 then
attacknumber = 0
end
end
end)()
cooldown = 0
stance = "Normal"
local attacking = false
NoAnims = false

local ammo = 300
local maxammo = 300

coroutine.wrap(function()
while wait() do
if ammo > maxammo then
ammo = maxammo
elseif ammo < maxammo then
ammo = ammo + 1
end
end
end)()

attacking = false
local hedattack2 = false
local hedattack = false

sw.Touched:connect(function(ht)
if hedattack == true then
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(hit.Humanoid.MaxHealth/2,hit.Humanoid.MaxHealth))
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    hedattack2 = false
                                    hedattack = false
                                    decals = {263033191,189728908,178269340,181477718,498948943,485362831,360385366,144325140}
decals2 = {284846352,191089587}

                                    local e = Instance.new("Decal",sw)
                                    e.Texture = "rbxassetid://"..decals[math.random(1,#decals)]
                                    e.Face = "Left"
                                    
                                    local e2 = Instance.new("Decal",sw)
                                    e2.Texture = e.Texture
                                    e2.Face = "Right"
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(hit.Parent.Humanoid.MaxHealth/2,hit.Parent.Humanoid.MaxHealth))
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                    hedattack2 = false
                                    hedattack = false
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    decals = {263033191,189728908,178269340,181477718,498948943,485362831,360385366,144325140}
decals2 = {284846352,191089587}

                                    local e = Instance.new("Decal",sw)
                                    e.Texture = "rbxassetid://"..decals[math.random(1,#decals)]
                                    e.Face = "Left"
                                    
                                    local e2 = Instance.new("Decal",sw)
                                    e2.Texture = e.Texture
                                    e2.Face = "Right"
            end
        end
    end
    end
end)

--------------------attacks------------------

mouse.KeyDown:connect(function(key)
if key == "x" then
if cooldown == 0 and attacking == false then
NoAnims = true
attacking = true
cooldown = 1

coroutine.wrap(function()
while true do

rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5 ,0.6,0)*CFrame.Angles(math.rad(90),0,.005), 0.2)

larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),0,-.005), 0.2)

hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.2)

torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 , 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)

lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, -0.05), .4)

rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0.05), .4)

if cooldown == 0 then break end

rs:wait()
end
end)()

end
end
end)

mouse.KeyUp:connect(function(key)
if key == "x" then
NoAnims = false
cooldown = 0
attacking = false
end
end)


function onclick(mouses)
if attacking == false and cooldown == 0 then
if stance == "Katana" then
attacking = true
cooldown = 1
NoAnims = true

StartEffect(sw,0.01,4)

for i = 1, 20 do

rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(0.5 ,0.6,-0.8)*CFrame.Angles(math.rad(240),0,-math.pi/3), 0.2)

larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1,0.6,-0.4)*CFrame.Angles(math.rad(240),0,math.pi/6), 0.1)

hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.1)

torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 , 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.1)

lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, -0.05), .1)

rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0.05), .1)
end

StartEffect(sw,0.01,4)
hedattack = true
so("rbxassetid://553461718")

for i = 1, 3 do

rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(0.5 ,0.3,-0.8)*CFrame.Angles(math.rad(20),0,-math.pi/3), 0.1)

larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1,0.3,-0.4)*CFrame.Angles(math.rad(20),0,math.pi/6), 0.1)

hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.2)

torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 , 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.1)

lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, -0.05), .1)

rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0.05), .1)

rs:wait()
end

EndEffect()
NoAnims = false
cooldown = 0
attacking = false
hedattack = false

end
end
end

mouse.Button1Down:connect(onclick)

mouse.KeyDown:connect(function(key)
if key == "f" then
if attacking == false and cooldown == 0 then
if stance == "Normal" then
attacking = true
cooldown = 1
NoAnims = true
stance = "Katana"

StartEffect(sw,0.01,4)

for i = 1, 20 do

rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(0.5 ,0.3,-0.8)*CFrame.Angles(math.rad(60),0,-math.pi/3), 0.2)

larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1,0.3,-0.4)*CFrame.Angles(math.rad(60),0,math.pi/6), 0.2)

hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.2)

torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 , 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)

lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, -0.05), .4)

rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0.05), .4)
end

so("rbxassetid://152052659")

for i = 1, 20 do

rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(0.5 ,0.3,-0.8)*CFrame.Angles(math.rad(60),0,-math.pi/3), 0.2)

larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1,0.3,-0.4)*CFrame.Angles(math.rad(120),0,math.pi/6), 0.2)

hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.2)

torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 , 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)

lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, -0.05), .4)

rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0.05), .4)

rs:wait()
end

EndEffect()
NoAnims = false
cooldown = 0
attacking = false
elseif stance == "Katana" then

attacking = true
cooldown = 1
NoAnims = true
NoSwordAnims = true
stance = "Normal"
for i = 1, 20 do
end

NoSwordAnims = false
NoAnims = false
cooldown = 0
attacking = false

end
end
end
end)


-----------GUI creation--------------------

local pg = p.PlayerGui

local sg = Instance.new("ScreenGui",pg)
sg.Name = "rage"

local txt = Instance.new("TextLabel",sg)
txt.Position = UDim2.new(0.9, 0, 0.9, 0)
txt.BackgroundTransparency = 1
txt.FontSize = "Size24"

coroutine.wrap(function()
while true do
wait()
txt.TextColor3 = Color3.new(ammo,ammo,ammo)
end
end)()

coroutine.wrap(function()
while true do
wait()
txt.Text = ammo.."/"..maxammo
end
end)()

----------------------------------------------
-------------------------------
local animpose = "Idle"
local lastanimpose = "Idle"
local sine = 0
local change = 1
local val = 0
local ffing = false
local jump = false
-------------------------------
local x = Instance.new("Sound", char)
x.SoundId = "http://www.roblox.com/asset/?id=429617891"
x.Looped = true
x.Volume = 1
x.Pitch = 1
local footsteps = false
-------------------------------
game:GetService("RunService").RenderStepped:connect(function()
--[[if char.Humanoid.Jump == true then
jump = true
else
jump = false
end]]
char.Humanoid.FreeFalling:connect(function(f)
if f then
ffing = true
else
ffing = false
end
end)
sine = sine + change
if jump == true then
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
if NoAnims == false then
if animpose == "Idle" then
for i = 1, 0.5 do

if NoAnims == false then

if stance == "Normal"  then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5 ,0.6+ -math.sin(sine/14)/30,0)*CFrame.Angles(math.rad(0),0,.05+ math.sin(sine/7)/14), 0.2)

larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6+ -math.sin(sine/14)/30,0)*CFrame.Angles(math.rad(0),0,-.05+ -math.sin(sine/7)/14), 0.2)

hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.2)

torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 , 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)

lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, -0.05+ math.sin(sine/7)/30), .4)

rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0.05+ -math.sin(sine/7)/30), .4)

elseif stance == "Katana" then

rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5 ,0.6+ -math.sin(sine/14)/30,0)*CFrame.Angles(math.rad(0),0,.05+ math.sin(sine/7)/14), 0.2)

larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6+ -math.sin(sine/14)/30,0)*CFrame.Angles(math.rad(0),math.pi,-.05+ -math.sin(sine/7)/14), 0.2)

hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.2)

torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 , 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)

lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, -0.05+ math.sin(sine/7)/30), .4)

rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0.05+ -math.sin(sine/7)/30), .4)

end

wait()
end
end


elseif animpose == "Running" then
change = 1
if NoAnims == false then

rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5 * sizem,.3 * sizem,.1 * sizem)*CFrame.Angles(math.rad(-30),0,0), 0.2)

larm.Weld.C0 =Lerp(larm.Weld.C0, CFrame.new(-1.5 * sizem,.3 * sizem,.1 * sizem)*CFrame.Angles(math.rad(-30),0,0),0.2)

hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5 * sizem,0)*CFrame.Angles(math.rad(0),0,0),0.2)

torso.Weld.C0 =Lerp(torso.Weld.C0, CFrame.new(0,1,0)*CFrame.Angles(math.rad(-30),0,0),0.2)

lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5 * sizem - .2,-1 * sizem,0 * sizem)*CFrame.Angles(math.rad(-30),0,0),0.2)

rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5 * sizem,-1 * sizem,0 * sizem)*CFrame.Angles(math.rad(-30),0,0),0.2)



end

elseif animpose == "Walking" then
for i = 1, 1.5 do
if NoAnims == false then

if stance == "Normal" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5 ,0.6+ -math.sin(sine/14)/30,0)*CFrame.Angles(math.rad(0) + -math.sin(sine/5)/2,0,.2+ -math.sin(sine/7)/9), 0.2)

larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6+ -math.sin(sine/14)/30,0)*CFrame.Angles(math.rad(0) + math.sin(sine/5)/2,0,-.2+ math.sin(sine/7)/9), 0.2)

hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.2)

torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 , 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)

lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1 - 0.3*math.cos(sine/7)/6, 0) * CFrame.Angles(math.rad(0) + math.sin(sine/5)/2, 0, 0+ math.sin(sine/7)/30), .4)

rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1 - 0.3*math.cos(sine/7)/6, 0) * CFrame.Angles(math.rad(0) + -math.sin(sine/5)/2, 0, 0+ -math.sin(sine/7)/30), .4)
end

elseif stance == "Katana" then

rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5 ,0.6+ -math.sin(sine/14)/30,0)*CFrame.Angles(math.rad(0) + -math.sin(sine/5)/2,0,.2+ -math.sin(sine/7)/9), 0.2)

larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6+ -math.sin(sine/14)/30,0)*CFrame.Angles(math.rad(0) + math.sin(sine/5)/2,0,-.2+ math.sin(sine/7)/9), 0.2)

hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.2)

torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 , 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)

lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1 - 0.3*math.cos(sine/7)/6, 0) * CFrame.Angles(math.rad(0) + math.sin(sine/5)/2, 0, 0+ math.sin(sine/7)/30), .4)

rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1 - 0.3*math.cos(sine/7)/6, 0) * CFrame.Angles(math.rad(0) + -math.sin(sine/5)/2, 0, 0+ -math.sin(sine/7)/30), .4)

wait()
end
end
end
else
end
end
lastanimpose = animpose
if animpose == "Idle" then
change = 0.5
if NoAnims == false then

if stance == "Normal"  then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5 ,0.6+ -math.sin(sine/14)/30,0)*CFrame.Angles(math.rad(0),0,.05+ math.sin(sine/7)/14), 0.2)

larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6+ -math.sin(sine/14)/30,0)*CFrame.Angles(math.rad(0),0,-.05+ -math.sin(sine/7)/14), 0.2)

hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.2)

torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 , 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)

lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, -0.05+ math.sin(sine/7)/30), .4)

rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0.05+ -math.sin(sine/7)/30), .4)

elseif stance == "Katana" then

rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(0.5 ,0.3+ -math.sin(sine/14)/15,-0.8)*CFrame.Angles(math.rad(60),0,-math.pi/3+ math.sin(sine/7)/25), 0.2)

larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1,0.3+ -math.sin(sine/14)/15,-0.4)*CFrame.Angles(math.rad(60),0,math.pi/6+ -math.sin(sine/7)/25), 0.2)

hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.2)

torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 , 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)

lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, -0.05+ math.sin(sine/7)/30), .4)

rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0.05+ -math.sin(sine/7)/30), .4)

end
end


elseif animpose == "Running" then
change = 1
if NoAnims == false then

rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5 * sizem,.3 * sizem,.1 * sizem)*CFrame.Angles(math.rad(-30),0,0), 0.2)

larm.Weld.C0 =Lerp(larm.Weld.C0, CFrame.new(-1.5 * sizem,.3 * sizem,.1 * sizem)*CFrame.Angles(math.rad(-30),0,0),0.2)

hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5 * sizem,0)*CFrame.Angles(math.rad(0),0,0),0.2)

torso.Weld.C0 =Lerp(torso.Weld.C0, CFrame.new(0,1,0)*CFrame.Angles(math.rad(-30),0,0),0.2)

lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5 * sizem,-1 * sizem,0 * sizem)*CFrame.Angles(math.rad(-30),0,0),0.2)

rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5 * sizem,-1 * sizem,0 * sizem)*CFrame.Angles(math.rad(-30),0,0),0.2)

end

elseif animpose == "Walking" then
change = 1

    
if NoAnims == false then

if stance == "Normal" then

rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5 ,0.6+ -math.sin(sine/14)/30,0)*CFrame.Angles(math.rad(0) + -math.sin(sine/5)/2,0,.2+ -math.sin(sine/7)/9), 0.2)

larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6+ -math.sin(sine/14)/30,0)*CFrame.Angles(math.rad(0) + math.sin(sine/5)/2,0,-.2+ math.sin(sine/7)/9), 0.2)

hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.2)

torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 , 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)

lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1 - 0.3*math.cos(sine/7)/6, 0) * CFrame.Angles(math.rad(0) + math.sin(sine/5)/2, 0, 0+ math.sin(sine/7)/30), .4)

rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1 - 0.3*math.cos(sine/7)/6, 0) * CFrame.Angles(math.rad(0) + -math.sin(sine/5)/2, 0, 0+ -math.sin(sine/7)/30), .4)

elseif stance == "Katana" then

rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(0.5 ,0.3+ -math.sin(sine/14)/15,-0.8)*CFrame.Angles(math.rad(60),0,-math.pi/3+ math.sin(sine/7)/25), 0.2)

larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1,0.3+ -math.sin(sine/14)/15,-0.4)*CFrame.Angles(math.rad(60),0,math.pi/6+ -math.sin(sine/7)/25), 0.2)

hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.2)

torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 , 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)

lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1 - 0.3*math.cos(sine/7)/6, 0) * CFrame.Angles(math.rad(0) + math.sin(sine/5)/2, 0, 0+ math.sin(sine/7)/30), .4)

rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1 - 0.3*math.cos(sine/7)/6, 0) * CFrame.Angles(math.rad(0) + -math.sin(sine/5)/2, 0, 0+ -math.sin(sine/7)/30), .4)

end

end
end
if animpose == "Walking" then
    if footsteps == false then
        x:Play()
        x.Pitch = ptz[math.random(1,#ptz)]
        footsteps = true
    end
    x.Pitch = 1.1
elseif animpose == "Idle" then
    x:Stop()
    footsteps = false
end
end)

--------calcs------
--  +2*math.cos(sine/14)
-----------------------------

wait(1)
hum.Health = math.huge


