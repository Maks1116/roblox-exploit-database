local Me = game.Players.LocalPlayer
bin = Instance.new("HopperBin")
bin.Name = "Fap (Q and E)"
bin.Parent = Me.Backpack

local SIZE = 1
local DISTANCE = 1
local RAISE = 0.03
local INCLINE = 0.001
local ChaneOfEnjoyment = 10
local Auto = false
local AutoAmout = 1

local char = Me.Character
local Torsoz = char:findFirstChild("Torso")
local RA = char:findFirstChild("Right Arm")
local LA = char:findFirstChild("Left Arm")
local H = char:findFirstChild("Head")
local RS = Torsoz:findFirstChild("Right Shoulder")
local LS = Torsoz:findFirstChild("Left Shoulder")
local N = Torsoz:findFirstChild("Neck")
local Joint1
local Joint2
local Fap = 1
local FapCount = Instance.new("Part")
local FapCountM = Instance.new("Model")
local Points = 0
local Dks = {}
local InTenPoints = 0
local RaiseOrg = RAISE
local Tickup = false

Me:ClearCharacterAppearance()
wait(0.1)
Me.Character.Head.BrickColor = BrickColor.new("Cool yellow")
Me.Character.Torso.BrickColor = BrickColor.new("Cool yellow")
Me.Character["Right Arm"].BrickColor = BrickColor.new("Cool yellow")
Me.Character["Right Leg"].BrickColor = BrickColor.new("Cool yellow")
Me.Character["Left Leg"].BrickColor = BrickColor.new("Cool yellow")
Me.Character["Left Arm"].BrickColor = BrickColor.new("Cool yellow")
pcall(function() Me.Character.Torso.roblox:Destroy() end)

local P = Instance.new("Part")
P.Anchored = false
P.CanCollide = false
P.Name = "Part"
P.formFactor = "Custom"
P.Size = Vector3.new(0.5,0.5,0.5)
P.Locked = true
P.TopSurface = 0
P.BottomSurface = 0

local Model = Instance.new("Model", char)
Model.Name = "Troll"

local B1 = Instance.new("Part", Model)
B1.Name = "Di-ck"
B1.Size = Vector3.new(1,1,1)
B1.TopSurface = "Smooth"
B1.BottomSurface = "Smooth"
B1.Position = Vector3.new(0,10,0)
B1.BrickColor = BrickColor.new("Cool yellow")
B1.CanCollide = true
B1.Locked = true
local Mesh1 = Instance.new("SpecialMesh", B1)
Mesh1.MeshType = "Sphere"
Mesh1.Scale = Vector3.new(SIZE+0.3,SIZE+0.3,SIZE+0.3)
local Weld1 = Instance.new("Weld", B1)
Weld1.Part0 = Torsoz
Weld1.Part1 = B1
Weld1.C0 = CFrame.new(-0.2,-1,-0.6)

local B2 = Instance.new("Part", Model)
B2.Name = "Di-ck"
B2.Size = Vector3.new(1,1,1)
B2.TopSurface = "Smooth"
B2.BottomSurface = "Smooth"
B2.Position = Vector3.new(0,10,0)
B2.BrickColor = BrickColor.new("Cool yellow")
B2.CanCollide = true
B2.Locked = true
local Mesh2 = Instance.new("SpecialMesh", B2)
Mesh2.MeshType = "Sphere"
Mesh2.Scale = Vector3.new(SIZE+0.3,SIZE+0.3,SIZE+0.3)
local Weld2 = Instance.new("Weld", B2)
Weld2.Part0 = Torsoz
Weld2.Part1 = B2
Weld2.C0 = CFrame.new(0.2,-1,-0.6)

function FapPos()
        Joint1.C0 = CFrame.new(0.8,-0.1,-0.3) * CFrame.Angles(0.3,0,-math.pi/4.4)
        Joint2.C0 = CFrame.new(-0.8,-0.1,-0.3) * CFrame.Angles(0.3,0,math.pi/4.4)
end
function DoTheFap(Motherload)
        FapPos()
        Points = Points + 1
        local Dk = Instance.new("Part", Model)
        Dk.Name = "Di-ck"
        Dk.Size = Vector3.new(1,1,1)
        Dk.TopSurface = "Smooth"
        Dk.BottomSurface = "Smooth"
        Dk.Position = Vector3.new(0,10,0)
        Dk.BrickColor = BrickColor.new("Pink")
        Dk.CanCollide = true
        Dk.Locked = true
        local Mesh = Instance.new("SpecialMesh", Dk)
        Mesh.MeshType = "Sphere"
        Mesh.Scale = Vector3.new(SIZE,SIZE,SIZE)
        local Weld = Instance.new("Weld", Dk)
        Weld.Part0 = Torsoz
        Weld.Part1 = Dk
        Weld.C0 = CFrame.new(0,-0.9 * (((#Dks+1)*(RAISE * -1))+1),-0.7 * ((#Dks+1)*(DISTANCE)))
        if RAISE < 0.25 and TickUp == false then
                RAISE = RAISE + INCLINE
        else
                TickUp = true
                RAISE = (RAISE + INCLINE)-0.0005
        end
        table.insert(Dks, Dk)
        if math.random(1,ChaneOfEnjoyment) == 1 or Motherload == true then
                local Sound = Instance.new("Sound", H)
                Sound.Name = "Uhhhh yah"
                Sound.Volume = 5
                Sound.Pitch = math.random(85,105)/100
                Sound.SoundId = "rbxasset://sounds/uuhhh.wav"
                local Num = 1
                if Motherload == false then
                        Num = math.random(3,15)
                else
                        Num = math.random(15,70)
                end
                for i = 0,Num do
                        coroutine.wrap(function()
                                local Cm = Instance.new("Part", Model)
                                Cm.Name = "Cu-m"
                                Cm.Size = Vector3.new(1,1,1)
                                Cm.TopSurface = "Smooth"
                                Cm.BottomSurface = "Smooth"
                                Cm.Position = Dks[#Dks].Position + Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
                                Cm.BrickColor = BrickColor.new("White")
                                Cm.Shape = "Ball"
                                Cm.Locked = true
                                local Mesh = Instance.new("SpecialMesh", Cm)
                                Mesh.MeshType = "Sphere"
                                Mesh.Scale = Vector3.new(0.45,0.45,0.45)
                                wait(math.random(10,60))
                                Cm:Destroy()
                        end)()
                end
                wait()
                Sound:Play()
                wait()
                Sound:remove()
                wait()
        end
end

function UnFap()
        Joint1.C0 = CFrame.new(0.8,-0.1,-0.5) * CFrame.Angles(0.7,0,-math.pi/4.4)
        Joint2.C0 = CFrame.new(-0.8,-0.1,-0.5) * CFrame.Angles(0.7,0,math.pi/4.4)
end

function onKeyDown(key, mouse)
        if key ~= nil then
                key:lower()
                if Auto == false then
                        if key == "e" then
                                if Fap == 1 then
                                        UnFap()
                                        Fap = 0
                                end
                        elseif key == "q" then
                                if Fap == 0 then
                                        Fap = 1
                                        if Points == 100 then
                                                DoTheFap(true)
                                        else
                                                DoTheFap(false)
                                        end
                                end
                        elseif key == "m" then
                                if Fap == 1 then
                                        UnFap()
                                        Fap = 0
                                end
                        elseif key == "n" then
                                if Fap == 0 then
                                        if #Dks > 1 then
                                                Fap = 1
                                                FapPos()
                                                Points = Points - 1
                                                for Num,Dk in pairs(Dks) do
                                                        if Num == #Dks then
                                                                table.remove(Dks, Num)
                                                                Dk:Destroy()
                                                        end
                                                end
                                        end
                                end
                        end
                end
        end
end

function Equip()
        local joint = Instance.new("Motor", Torsoz)
        joint.Part0 = Torsoz
        joint.Part1 = RA
        joint.C0 = CFrame.new(0.8,-0.1,-0.3) * CFrame.Angles(0.3,0,-math.pi/4.4)
        Joint1 = joint
        local joint = Instance.new("Motor", Torsoz)
        joint.Part0 = Torsoz
        joint.Part1 = LA
        joint.C0 = CFrame.new(-0.8,-0.1,-0.3) * CFrame.Angles(0.3,0,math.pi/4.4)
        Joint2 = joint

        local m = Instance.new("Model", char)
        m.Name = "Fap Points: "..Points
        FapCountM = m
        local p = P:Clone()
        p.Parent = m
        p.Name = "Head"
        p.Anchored = true
        p.CFrame = H.CFrame + Vector3.new(0,2,0)
        FapCount = p
        local h = Instance.new("Humanoid", m)
        h.MaxHealth = 0
        h.Name = "Durr"
end

function Unequip()
        for i, v in pairs(Torsoz:children()) do
                if v.className == "Motor" then
                        v:remove()
                end
        end
        RS.Parent = Torsoz
        RS.Part0 = Torsoz
        RS.Part1 = RA
        LS.Parent = Torsoz
        LS.Part0 = Torsoz
        LS.Part1 = LA
        for i, v in pairs(char:children()) do
                if v.className == "Model" and string.find(v.Name, "Fap") then
                        v:remove()
                end
        end
end

bin.Selected:connect(function(mouse)
        mouse.Icon = "rbxasset://textures\\GunCursor.png"
        mouse.Button1Down:connect(function() onButton1Down(mouse) end)
        mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
        Equip()
end)

bin.Deselected:connect(function()
        Unequip()
end)

if Auto == true then
        coroutine.wrap(function()
                Equip()
                wait(0.1)
                while true do
                        if Points == 100 then
                                DoTheFap(true)
                        else
                                DoTheFap(false)
                        end
                        wait()
                        UnFap()
                        wait()
                end
        end)()
end

if AutoAmout ~= 0 then
        coroutine.wrap(function()
                Equip()
                wait(0.1)
                for i = 1,AutoAmout do
                        if Points == 100 then
                                DoTheFap(true)
                        else
                                DoTheFap(false)
                        end
                        wait()
                        UnFap()
                        wait()
                end
        end)()
end


coroutine.wrap(function()
        while true do
                FapCount.CFrame = H.CFrame + Vector3.new(0,2,0)
                FapCountM.Name = "Fap Points: "..Points
                if #Dks ~= 0 then
                        for Num,Get in pairs(Dks) do
                                pcall(function()
                                        if Num == #Dks then
                                                Get.BrickColor = BrickColor.new("Pink")
                                        else
                                                Get.BrickColor = BrickColor.new("Cool yellow")
                                        end
                                end)
                        end
                end
                wait(0.03)
        end
end)()