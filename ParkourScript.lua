
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local Mouse = Player:GetMouse()
local Camera = game:GetService("Workspace").CurrentCamera
local Humanoid = Character:findFirstChild("Humanoid")
local Torso = Character.Torso
local PlayerGui = Player.PlayerGui
local Torso = Character:findFirstChild("Torso")
local Head = Character:findFirstChild("Head")
local RootPart = Character:findFirstChild("HumanoidRootPart")
local Root = RootPart.RootJoint
local Sides = {"Left","Right"}
local Arms = {Character["Left Arm"],Character["Right Arm"]}
local Legs = {Character["Left Leg"],Character["Right Leg"]}

local Bits = {}
local Disposables = {}
local Discs = {}

local DiscSpin = 0
local Spread = 1.25
local RateTop = 1
local RateBot = 1
local Distance = 0.5
local ExtendTop = 1
local ExtendBot = 1 
local CurrentFrame = 1
local Lift = 0
local Accel = 1
local TurnAngle = 0
local rofTop = 1
local rofBot = 1
local Flutter = 0

local Front = false
local Back = false
local Left = false
local Right = false
local AddSub = false
local ChargeHeld = false
local BoostHeld = false
local BeamHeld = false
local AbsDefHeld = false
local ExtendGrowthTop = false
local ExtendGrowthBot = false
local UpdateAnim = true


local CurrentAnimation = "Idle"
local LastAnimation = "Idle"
local MobilityType = "Float"
local ColorGlobe = "White"
local ColorBlades = "Black"
local xmove,zmove

local LastBeam = tick()

if Torso then
    for _,v in pairs(Torso:children()) do
        if v:IsA("BodyGyro") or v:IsA("BodyVelocity") then
            v:Destroy();
        end
    end
end

local Energy = {}
local TotalEnergy = 1000
local CurrentEnergy = 1000

pcall(function()
	PlayerGui.EnergyMeter:Destroy()
end)
if Player.Name == "modFrost" then
	ColorGlobe = "Bright orange"
end

local FlapSound = Instance.new("Sound", Torso)
FlapSound.Name = "Flap"
FlapSound.SoundId = "http://www.roblox.com/asset/?id=257002377"
FlapSound.Volume = 1

local EnergyMeter = Instance.new("ScreenGui", PlayerGui)
EnergyMeter.Name = "EnergyMeter"
local Bar = Instance.new("Frame", EnergyMeter)
Bar.Size = UDim2.new(0,200,0,10)
Bar.Position = UDim2.new(1,-205,1,-15)
Bar.BorderSizePixel = 0
Bar.BackgroundColor = BrickColor.new("Really black")
Bar.BackgroundTransparency = 0.5
local Text = Instance.new("TextLabel", Bar)
Text.Text = "Energy"
Text.TextColor = BrickColor.new("White")
Text.BackgroundTransparency = 1
Text.Size = UDim2.new(1,0,1,0)
Text.Position = UDim2.new(0,0,-1,-10)
Text.TextXAlignment = "Left"
Text.FontSize = "Size12"
local EnergyFill = Instance.new("Frame", Bar)
EnergyFill.Size = UDim2.new(0,0,1,-5)
EnergyFill.Position = UDim2.new(0,2.5,0,2.5)
EnergyFill.BorderSizePixel = 0
EnergyFill.BackgroundColor = BrickColor.new(ColorGlobe)
EnergyFill.BackgroundTransparency = 0.25

local ChargeMeter = Instance.new("ScreenGui", PlayerGui)
ChargeMeter.Name = "EnergyMeter"
local ChargeBar = Instance.new("Frame", ChargeMeter)
ChargeBar.Size = UDim2.new(0,200,0,10)
ChargeBar.Position = UDim2.new(0.5,-102.5,0.8,-5)
ChargeBar.BorderSizePixel = 0
ChargeBar.BackgroundColor = BrickColor.new("Really black")
ChargeBar.BackgroundTransparency = 0.5
local ChargeFill = Instance.new("Frame", ChargeBar)
ChargeFill.Size = UDim2.new(0,0,1,-5)
ChargeFill.Position = UDim2.new(0,2.5,0,2.5)
ChargeFill.BorderSizePixel = 0
ChargeFill.BackgroundColor = BrickColor.new("Bright blue")
ChargeFill.BackgroundTransparency = 0.25
ChargeBar.Visible = false

local function _Part(Parent,canc,anc,tr,ref,mat,color,size, meshtype, scale)
	local part = Instance.new("Part", Parent)
	part.Transparency = tr
	part.Anchored = anc
	part.TopSurface = 10
	part.BottomSurface = 10
	part.LeftSurface = 10
	part.RightSurface = 10
	part.FrontSurface = 10
	part.BackSurface = 10
	part.Locked = true
	part.formFactor = 3
	part.Reflectance = ref
	part.Material = mat
	part.CanCollide = canc
	part.Size = Vector3.new(size[1],size[2],size[3])
	part.BrickColor = BrickColor.new(color)
	local mesh
	if meshtype == "BlockMesh" then
		mesh = Instance.new("BlockMesh", part)
	elseif meshtype == "CylinderMesh" then
		mesh = Instance.new("CylinderMesh", part)
	else
		mesh = Instance.new("SpecialMesh", part)
		mesh.MeshType = meshtype
	end
	mesh.Name = "Mesh"
	mesh.Scale = Vector3.new(scale[1],scale[2],scale[3])
	return part
end

local function _Weld(Parent, p0, c1, c0)
	local weld = Instance.new("Motor", Parent)
	weld.Part1 = Parent
	weld.Part0 = p0
	weld.C1 = c1
	weld.C0 = c0
	weld.Name = "Weld"
	return weld
end

local Main = Character:findFirstChild("Main") or Instance.new("Model", Character)
Main.Name = "Main"
Main:ClearAllChildren()

pcall(function() Character["Head"]["face"]:Destroy() end)

for _,Hat in pairs(Character:GetChildren()) do
	if Hat:IsA("Accoutrement") then
		Hat:Destroy()
	end
end

for _,Part in pairs(Character:GetChildren()) do
	if Part:IsA("BasePart") then
		Part.Transparency = 1
	end
end

local function GenF(Part, Cframe, Color)
	local A = _Part(Main,false,false,0,0,"SmoothPlastic",Color,{0.05,0.5,0.05},"BlockMesh",{1,1,0.5})
	_Weld(A, Part, CFrame.new(), Cframe)
	local B = _Part(Main,false,false,0,0,"SmoothPlastic",Color,{0.2,0.2,0.3},"BlockMesh",{1,0.5,1})
	_Weld(B, A, CFrame.new(), CFrame.new(0,-0.2,0.2))
	local C = _Part(Main,false,false,0,0,"SmoothPlastic",Color,{0.2,0.2,0.2},"BlockMesh",{1,0.5,1})
	_Weld(C, A, CFrame.new(), CFrame.new(0,-0.025,0.15))
end

local Down = _Part(Main,false,false,1,1,"SmoothPlastic","Black",{1,1,1},"Brick",{1,1,1})
_Weld(Down, Torso, CFrame.Angles(math.rad(90),0,0), CFrame.new())

local AnchorPart = _Part(Main,false,false,0.1,0,"Neon",ColorGlobe,{0.8,0.8,0.8},"Sphere",{1,1,1})
_Weld(AnchorPart, Character["Right Arm"], CFrame.new(0,1.5,0), CFrame.new())

local AnchorPart2 = _Part(Main,false,false,0.1,0,"Neon",ColorGlobe,{0.8,0.8,0.8},"Sphere",{1,1,1})
_Weld(AnchorPart2, Character["Left Arm"], CFrame.new(0,1.5,0), CFrame.new())

local AnchorPart3 = _Part(Main,false,false,0.1,0,"Neon",ColorGlobe,{0.8,0.8,0.8},"Sphere",{1,1,1})
_Weld(AnchorPart3, Character["Right Leg"], CFrame.new(0,1.5,0), CFrame.new())

local AnchorPart4 = _Part(Main,false,false,0.1,0,"Neon",ColorGlobe,{0.8,0.8,0.8},"Sphere",{1,1,1})
_Weld(AnchorPart4, Character["Left Leg"], CFrame.new(0,1.5,0), CFrame.new())

--Back

local AnchorPart5 = _Part(Main,false,false,0.1,0,"Neon",ColorGlobe,{0.6,0.6,0.6},"Sphere",{1,1,1})
_Weld(AnchorPart5, Character.Torso, CFrame.new(0.75,-0.5,-1), CFrame.new())

local AnchorPart6 = _Part(Main,false,false,0.1,0,"Neon",ColorGlobe,{0.6,0.6,0.6},"Sphere",{1,1,1})
_Weld(AnchorPart6, Character.Torso, CFrame.new(-0.75,-0.5,-1), CFrame.new())

local AnchorPart7 = _Part(Main,false,false,0.1,0,"Neon",ColorGlobe,{0.4,0.4,0.4},"Sphere",{1,1,1})
_Weld(AnchorPart7, Character.Torso, CFrame.new(0.5,0.25,-0.8), CFrame.new())

local AnchorPart8 = _Part(Main,false,false,0.1,0,"Neon",ColorGlobe,{0.4,0.4,0.4},"Sphere",{1,1,1})
_Weld(AnchorPart8, Character.Torso, CFrame.new(-0.5,0.25,-0.8), CFrame.new())

local WingLeft = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{0.2,2,1},"Wedge",{1,1,1})
local WingLeftMain = _Weld(WingLeft, AnchorPart5, CFrame.new(), CFrame.new())
local WingLeftP1 = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{0.2,2,1},"Wedge",{1,1,1})
_Weld(WingLeftP1, WingLeft, CFrame.new(0,-2,0) * CFrame.Angles(math.rad(180),0,0), CFrame.new())
local WingLeftD = _Part(Main,false,false,0,0,"SmoothPlastic",ColorGlobe,{1,1,1},"FileMesh",{0.25,1.8*2,0.45*2})
WingLeftD.Mesh.MeshId = "rbxassetid://9756362"
_Weld(WingLeftD, WingLeft, CFrame.new(0,1,-0.25) * CFrame.Angles(math.rad(-15),0,0), CFrame.new())
table.insert(Bits, {Side = true; Weld = WingLeftMain; Series = 0;Type = "Wing"})

local WingRight = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{0.2,2,1},"Wedge",{1,1,1})
local WingRightMain = _Weld(WingRight, AnchorPart6, CFrame.new(), CFrame.new())
local WingRightP1 = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{0.2,2,1},"Wedge",{1,1,1})
_Weld(WingRightP1, WingRight, CFrame.new(0,-2,0) * CFrame.Angles(math.rad(180),0,0), CFrame.new())
local WingRightD = _Part(Main,false,false,0,0,"SmoothPlastic",ColorGlobe,{1,1,1},"FileMesh",{0.25,1.8*2,0.45*2})
WingRightD.Mesh.MeshId = "rbxassetid://9756362"
_Weld(WingRightD, WingRight, CFrame.new(0,1,-0.25) * CFrame.Angles(math.rad(-15),0,0), CFrame.new())
table.insert(Bits, {Side = false; Weld = WingRightMain; Series = 0;Type = "Wing"})

local WingLeftLower = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{0.2,1.5,0.5},"Wedge",{1,1,1})
local WingLeftLowerMain = _Weld(WingLeftLower, AnchorPart7, CFrame.new(), CFrame.new())
local WingLeftLowerP1 = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{0.2,1.5,0.5},"Wedge",{1,1,1})
_Weld(WingLeftLowerP1, WingLeftLower, CFrame.new(0,-1.5,0) * CFrame.Angles(math.rad(180),0,0), CFrame.new())
local WingLeftLowerD = _Part(Main,false,false,0,0,"SmoothPlastic",ColorGlobe,{1,1,1},"FileMesh",{0.25,2.8,0.45})
WingLeftLowerD.Mesh.MeshId = "rbxassetid://9756362"
_Weld(WingLeftLowerD, WingLeftLower, CFrame.new(0,0.75,-0.15) * CFrame.Angles(math.rad(-10),0,0), CFrame.new())
table.insert(Bits, {Side = true; Weld = WingLeftLowerMain; Series = 0;Type = "WingLow"})

local WingRightLower = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{0.2,1.5,0.5},"Wedge",{1,1,1})
local WingRightLowerMain = _Weld(WingRightLower, AnchorPart8, CFrame.new(), CFrame.new())
local WingRightLowerP1 = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{0.2,1.5,0.5},"Wedge",{1,1,1})
_Weld(WingRightLowerP1, WingRightLower, CFrame.new(0,-1.5,0) * CFrame.Angles(math.rad(180),0,0), CFrame.new())
local WingRightLowerD = _Part(Main,false,false,0,0,"SmoothPlastic",ColorGlobe,{1,1,1},"FileMesh",{0.25,2.8,0.45})
WingRightLowerD.Mesh.MeshId = "rbxassetid://9756362"
_Weld(WingRightLowerD, WingRightLower, CFrame.new(0,0.75,-0.15) * CFrame.Angles(math.rad(-10),0,0), CFrame.new())
table.insert(Bits, {Side = false; Weld = WingRightLowerMain; Series = 0;Type = "WingLow"})

for i = 1, 6, 1 do
	local TriP1 = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{0.2,1,0.5},"Wedge",{1,1,1})
	local Main = _Weld(TriP1, AnchorPart, CFrame.new(), CFrame.new())
	local TriP2 = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{0.2,1,0.5},"Wedge",{1,1,1})
	_Weld(TriP2, TriP1, CFrame.new(0,-1,0) * CFrame.Angles(math.rad(180),0,0), CFrame.new())
	local DiamondB = _Part(Main,false,false,0,0,"SmoothPlastic",ColorGlobe,{1,1,1},"FileMesh",{0.25,1.8,0.45})
	DiamondB.Mesh.MeshId = "rbxassetid://9756362"
	_Weld(DiamondB, TriP1, CFrame.new(0,0.5,-0.125) * CFrame.Angles(math.rad(-15),0,0),CFrame.new())
	table.insert(Bits, {Side = false; Weld = Main; Series = i;Type = "Top"})
end

for i = 1, 6, 1 do
	local TriP1 = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{0.2,1,0.5},"Wedge",{1,1,1})
	local Main = _Weld(TriP1, AnchorPart2, CFrame.new(), CFrame.new())
	local TriP2 = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{0.2,1,0.5},"Wedge",{1,1,1})
	_Weld(TriP2, TriP1, CFrame.new(0,-1,0) * CFrame.Angles(math.rad(180),0,0), CFrame.new())
	local DiamondB = _Part(Main,false,false,0,0,"SmoothPlastic",ColorGlobe,{1,1,1},"FileMesh",{0.25,1.8,0.45})
	DiamondB.Mesh.MeshId = "rbxassetid://9756362"
	_Weld(DiamondB, TriP1, CFrame.new(0,0.5,-0.125) * CFrame.Angles(math.rad(-15),0,0),CFrame.new())
	table.insert(Bits, {Side = true; Weld = Main; Series = i;Type = "Top"})
end

for i = 1, 6, 1 do
	local TriP1 = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{0.2,1,0.5},"Wedge",{1,1,1})
	local Main = _Weld(TriP1, AnchorPart3, CFrame.new(), CFrame.new())
	local TriP2 = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{0.2,1,0.5},"Wedge",{1,1,1})
	_Weld(TriP2, TriP1, CFrame.new(0,-1,0) * CFrame.Angles(math.rad(180),0,0), CFrame.new())
	local DiamondB = _Part(Main,false,false,0,0,"SmoothPlastic",ColorGlobe,{1,1,1},"FileMesh",{0.25,1.8,0.45})
	DiamondB.Mesh.MeshId = "rbxassetid://9756362"
	_Weld(DiamondB, TriP1, CFrame.new(0,0.5,-0.125) * CFrame.Angles(math.rad(-15),0,0),CFrame.new())
	table.insert(Bits, {Side = false; Weld = Main; Series = i;Type = "Bot"})
end

for i = 1, 6, 1 do
	local TriP1 = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{0.2,1,0.5},"Wedge",{1,1,1})
	local Main = _Weld(TriP1, AnchorPart4, CFrame.new(), CFrame.new())
	local TriP2 = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{0.2,1,0.5},"Wedge",{1,1,1})
	_Weld(TriP2, TriP1, CFrame.new(0,-1,0) * CFrame.Angles(math.rad(180),0,0), CFrame.new())
	local DiamondB = _Part(Main,false,false,0,0,"SmoothPlastic",ColorGlobe,{1,1,1},"FileMesh",{0.25,1.8,0.45})
	DiamondB.Mesh.MeshId = "rbxassetid://9756362"
	_Weld(DiamondB, TriP1, CFrame.new(0,0.5,-0.125) * CFrame.Angles(math.rad(-15),0,0),CFrame.new())
	table.insert(Bits, {Side = true; Weld = Main; Series = i;Type = "Bot"})
end

--[[local WingAnchor = _Part(Main,false,false,1,0,"SmoothPlastic",ColorBlades,{1,1,1},"BlockMesh",{1,1,1})
_Weld(WingAnchor, Character.Torso, CFrame.new(0.5,-0.5,-1), CFrame.new())
local LengthWing1 = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{0.3,1.5,0.3},"BlockMesh",{1,1,1})
_Weld(LengthWing1, WingAnchor, CFrame.new(0.5,-0.55,0.35) * CFrame.Angles(math.rad(290),math.rad(45),0), CFrame.new())
local WingAnchor2 = _Part(Main,false,false,1,0,"SmoothPlastic",ColorBlades,{1,1,1},"BlockMesh",{1,1,1})
_Weld(WingAnchor2, LengthWing1, CFrame.new(0,-0.75,0), CFrame.new())
local LengthWing2 = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{0.3,1.5,0.3},"BlockMesh",{1,1,1})
_Weld(LengthWing2, WingAnchor2, CFrame.new(0,-0.6,0) * CFrame.Angles(math.rad(350),0,0), CFrame.new())
local WingAnchor3 = _Part(Main,false,false,1,0,"SmoothPlastic",ColorBlades,{1,1,1},"BlockMesh",{1,1,1})
_Weld(WingAnchor3, LengthWing2, CFrame.new(0,-0.75,0), CFrame.new())
local LengthWing3 = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{0.3,1.5,0.3},"BlockMesh",{1,1,1})
_Weld(LengthWing3, WingAnchor3, CFrame.new(0,-0.6,0) * CFrame.Angles(math.rad(-10),0,0), CFrame.new())
local WingAnchor4 = _Part(Main,false,false,1,0,"SmoothPlastic",ColorBlades,{1,1,1},"BlockMesh",{1,1,1})
_Weld(WingAnchor4, LengthWing3, CFrame.new(0,-0.75,0), CFrame.new())
local LengthWing4 = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{0.3,1.5,0.3},"BlockMesh",{1,1,1})
_Weld(LengthWing4, WingAnchor4, CFrame.new(0,-0.6,0) * CFrame.Angles(math.rad(-15),0,0), CFrame.new())
]]-- Scrapped for now...

--[[Body]]--

local BHead = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{1,1,1},"Head",{1.25,1.25,1.25})
_Weld(BHead,Head,CFrame.new(),CFrame.new())
local BHelm = _Part(Main,false,false,0,0,"SmoothPlastic",ColorGlobe,{1,1,1},"FileMesh",{1,1,1})
BHelm.Mesh.MeshId = "rbxassetid://17438747"
_Weld(BHelm,BHead,CFrame.new(0,-0.2,0),CFrame.new())
local BHelm2 = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{1,1,1},"FileMesh",{0.95,0.97,0.95})
BHelm2.Mesh.MeshId = "rbxassetid://17438747"
_Weld(BHelm2,BHelm,CFrame.new(0,0,-0.02),CFrame.new())
local EyeL = _Part(Main,false,false,0,0,"Neon",ColorGlobe,{1,1,1},"Sphere",{0.25,0.075,0.075})
_Weld(EyeL,Head,CFrame.new(0.2,0.25,0.55)*CFrame.Angles(0,math.rad(40),0),CFrame.new())
local EyeR = _Part(Main,false,false,0,0,"Neon",ColorGlobe,{1,1,1},"Sphere",{0.25,0.075,0.075})
_Weld(EyeR,Head,CFrame.new(-0.2,0.25,0.55)*CFrame.Angles(0,math.rad(-40),0),CFrame.new())
local Mouth = _Part(Main,false,false,0,0,"Neon",ColorGlobe,{1,1,1},"Sphere",{0.25,0.075,0.075})
_Weld(Mouth,Head,CFrame.new(0,0.45,0.53),CFrame.new())
local BTorso = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{1,1,1},"FileMesh",{1,0.4,1})
BTorso.Mesh.MeshId = "rbxasset://fonts\\torso.mesh"
_Weld(BTorso,Torso,CFrame.new(0,-0.45,0),CFrame.new())
local BTorso2 = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{1,1,1},"FileMesh",{0.85,0.6,0.85})
BTorso2.Mesh.MeshId = "rbxasset://fonts\\torso.mesh"
_Weld(BTorso2,BTorso,CFrame.new(0,0.8,0),CFrame.new())
local BTorsoCore = _Part(Main,false,false,0,0,"Neon",ColorGlobe,{1,1,1},"Sphere",{0.5,0.5,0.5})
_Weld(BTorsoCore, Torso, CFrame.new(0,-0.5,0.4),CFrame.new())
local BTorsoCoreDisc = _Part(Main,false,false,0,0,"SmoothPlastic","Medium stone grey",{1,1,1},"FileMesh",{0.525,0.525,0.2})
BTorsoCoreDisc.Mesh.MeshId = "rbxassetid://3270017"
_Weld(BTorsoCoreDisc, BTorsoCore, CFrame.new(0,0,0.1),CFrame.new())
local BNeck = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{1,1,1},"Head",{0.8,1,0.8})
_Weld(BNeck,Head,CFrame.new(0,0.8,0),CFrame.new())

for i=1,3 do
	local BTorsoAb = _Part(Main,false,false,0,0,"SmoothPlastic","Medium stone grey",{1,1,1},"FileMesh",{0.2,0.075,0.2})
	BTorsoAb.Mesh.MeshId = "rbxasset://fonts\\torso.mesh"
	_Weld(BTorsoAb, Torso, CFrame.new(-0.5,-0.3 + 0.3*i,0.35)*CFrame.Angles(0,0,math.rad(15)),CFrame.new())
end
for i=1,3 do
	local BTorsoAb = _Part(Main,false,false,0,0,"SmoothPlastic","Medium stone grey",{1,1,1},"FileMesh",{0.2,0.075,0.2})
	BTorsoAb.Mesh.MeshId = "rbxasset://fonts\\torso.mesh"
	_Weld(BTorsoAb, Torso, CFrame.new(0.5,-0.3 + 0.3*i,0.35)*CFrame.Angles(0,0,math.rad(-15)),CFrame.new())
end

local function Arm(bool)
	local Limb, Offset
	if bool then
		Limb = Character["Left Arm"]
		Offset = 0.52
	else
		Limb = Character["Right Arm"]
		Offset = -0.52
	end

	local ShldrL = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{1,1,1},"FileMesh",{1,0.35,1})
	ShldrL.Mesh.MeshId = "rbxasset://fonts\\rightarm.mesh"
	_Weld(ShldrL,Limb,CFrame.new(0,-0.6,0),CFrame.new())
	local ShldrL2 = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{1,1,1},"FileMesh",{0.85,0.5,0.85})
	ShldrL2.Mesh.MeshId = "rbxasset://fonts\\rightarm.mesh"
	_Weld(ShldrL2,Limb,CFrame.new(0,0.2,0),CFrame.new())
	local ShldrL3 = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{1,1,1},"FileMesh",{0.75,0.2,0.75})
	ShldrL3.Mesh.MeshId = "rbxasset://fonts\\rightarm.mesh"
	_Weld(ShldrL3,Limb,CFrame.new(0,0.85,0),CFrame.new())
	local ShldrL4 = _Part(Main,false,false,0,0,"SmoothPlastic","Really black",{1,1,1},"FileMesh",{0.5,0.05,0.5})
	ShldrL4.Mesh.MeshId = "rbxasset://fonts\\rightarm.mesh"
	_Weld(ShldrL4,ShldrL3,CFrame.new(0,0.16,0),CFrame.new())
	--X Pat--
	local ShldrLD = _Part(Main,false,false,0,0,"SmoothPlastic",ColorGlobe,{1,1,1},"FileMesh",{1.1,0.03,1.35})
	ShldrLD.Mesh.MeshId = "rbxasset://fonts\\rightarm.mesh"
	_Weld(ShldrLD,Limb,CFrame.new(0,0,0),CFrame.Angles(math.rad(45),0,0))
	local ShldrLD2 = _Part(Main,false,false,0,0,"SmoothPlastic",ColorGlobe,{1,1,1},"FileMesh",{1.1,0.03,1.35})
	ShldrLD2.Mesh.MeshId = "rbxasset://fonts\\rightarm.mesh"
	_Weld(ShldrLD2,Limb,CFrame.new(0,0,0),CFrame.Angles(math.rad(-45),0,0))
	local ShldrLDB = _Part(Main,false,false,0,0,"SmoothPlastic",ColorGlobe,{1,1,1},"FileMesh",{1.35,0.03,1.1})
	ShldrLDB.Mesh.MeshId = "rbxasset://fonts\\rightarm.mesh"
	_Weld(ShldrLDB,Limb,CFrame.new(0,0,0),CFrame.Angles(0,0,math.rad(45)))
	local ShldrLD2B = _Part(Main,false,false,0,0,"SmoothPlastic",ColorGlobe,{1,1,1},"FileMesh",{1.35,0.03,1.1})
	ShldrLD2B.Mesh.MeshId = "rbxasset://fonts\\rightarm.mesh"
	_Weld(ShldrLD2B,Limb,CFrame.new(0,0,0),CFrame.Angles(0,0,math.rad(-45)))

	local Disc = _Part(Main,false,false,0,0,"SmoothPlastic",ColorGlobe,{1,1,1},"FileMesh",{0.55,0.55,0.55})
	Disc.Mesh.MeshId = "rbxassetid://47260990"
	_Weld(Disc, ShldrL, CFrame.new(0,0,Offset),CFrame.Angles(0,math.rad(90),0))
	--3270017
	local DiscC = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{1,1,1},"FileMesh",{0.55,0.55,0.1})
	DiscC.Mesh.MeshId = "rbxassetid://3270017"
	_Weld(DiscC, Disc, CFrame.new(),CFrame.new())

	table.insert(Discs, Disc)
end

local function Leg(bool)
	local Limb, Offset
	if bool then
		Limb = Character["Left Leg"]
		Offset = 0.5
	else
		Limb = Character["Right Leg"]
		Offset = -0.5
	end
	local LegL = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{1,1,1},"FileMesh",{0.95,0.35,0.95})
	LegL.Mesh.MeshId = "rbxasset://fonts\\leftleg.mesh"
	_Weld(LegL,Limb,CFrame.new(0,-0.7,0),CFrame.new())
	local LegL2 = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{1,1,1},"FileMesh",{0.85,0.5,0.85})
	LegL2.Mesh.MeshId = "rbxasset://fonts\\leftleg.mesh"
	_Weld(LegL2,Limb,CFrame.new(0,0.15,0),CFrame.new())
	local LegL3 = _Part(Main,false,false,0,0,"SmoothPlastic",ColorBlades,{1,1,1},"FileMesh",{0.75,0.2,0.75})
	LegL3.Mesh.MeshId = "rbxasset://fonts\\leftleg.mesh"
	_Weld(LegL3,Limb,CFrame.new(0,0.85,0),CFrame.new())
	local LegL4 = _Part(Main,false,false,0,0,"SmoothPlastic","Really black",{1,1,1},"FileMesh",{0.5,0.05,0.5})
	LegL4.Mesh.MeshId = "rbxasset://fonts\\leftleg.mesh"
	_Weld(LegL4,LegL3,CFrame.new(0,0.16,0),CFrame.new())
	local LegL5 = _Part(Main,false,false,0,0,"SmoothPlastic","Medium stone grey",{1,1,1},"FileMesh",{0.9,0.2,0.9})
	LegL5.Mesh.MeshId = "rbxasset://fonts\\leftleg.mesh"
	_Weld(LegL5,LegL2,CFrame.new(0,0,0),CFrame.new())

	local MiniRocket = _Part(Main,false,false,0,0,"SmoothPlastic","Medium stone grey",{1,1,1},"FileMesh",{0.2,0.2,0.2})
	MiniRocket.Mesh.MeshId = "rbxasset://fonts\\leftleg.mesh"
	_Weld(MiniRocket,LegL5,CFrame.new(Offset,0,0),CFrame.new())
	local MiniRocket2 = _Part(Main,false,false,0,0,"SmoothPlastic","Really black",{1,1,1},"BlockMesh",{0.125,0.1,0.125})
	_Weld(MiniRocket2,LegL5,CFrame.new(Offset,0.16,0),CFrame.new())
end

Arm(true)
Arm(false)
Leg(true)
Leg(false)

--Spin Disc 22768172
--[[Done]]--

local Welds = {
	ArmW = {
		Left = Instance.new("Weld",Character);
		Right = Instance.new("Weld",Main);
	};
	LegW = {
		Left = Instance.new("Weld",Main);
		Right = Instance.new("Weld",Main);
	};
	HeadW = {
		Middle = Instance.new("Weld",Main);
	};
}
local RWelds = {
	ArmW = {
		Left = Torso["Left Shoulder"];
		Right = Torso["Right Shoulder"];
	};
	LegW = {
		Left = Torso["Left Hip"];
		Right = Torso["Right Hip"];
	};
	HeadW = {
		Middle = Torso["Neck"];
	};
}

local LA,RA = Welds.ArmW.Left,Welds.ArmW.Right
local LL,LR = Welds.LegW.Left,Welds.LegW.Right
local HD = Welds.HeadW.Middle
local LAD = CFrame.new(-1.5,0.5,0)
local RAD = CFrame.new(1.5,0.5,0)
local HDD = CFrame.new(0,-1.5,0)
local LLD = CFrame.new(0.5,2,0)
local RLD = CFrame.new(-0.5,2,0)
local RootD = CFrame.Angles(-1.57,0,-3.15)
Welds.ArmW.Left.C1,Welds.ArmW.Left.C0,Welds.ArmW.Left.Part0 = CFrame.new(0, 0.5, 0),CFrame.new(-1.5, 0.5, 0),Torso
Welds.ArmW.Right.C1,Welds.ArmW.Right.C0,Welds.ArmW.Right.Part0 = CFrame.new(0, 0.5, 0),CFrame.new(1.5, 0.5, 0),Torso
Welds.LegW.Left.C1,Welds.LegW.Left.Part0 = LLD,Torso
Welds.LegW.Right.C1,Welds.LegW.Right.Part0 = RLD,Torso 
Welds.HeadW.Middle.C1,Welds.HeadW.Middle.Part0 = HDD,Torso

local CurrentLeftArm = LAD
local CurrentRightArm = RAD
local CurrentLeftLeg = LLD
local CurrentRightLeg = RLD

local function lerp(a, b, c)
    return a+(b-a)*c
end

local function AnimLerp(c1, c2, al)
    local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
    local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
    for i,v in pairs(com1) do 
    	com1[i] = lerp(v,com2[i],al) 
   	end
    return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end

local _Arm = function(side,tf)
	local Arm = nil
	local Weld = nil
	local RWeld = nil
	for _,S in pairs(Sides) do
		if side:lower() == S:lower() then
			for _,A in pairs(Arms) do
				if A.Name:lower():find(side:lower()) then
					Arm = A
					Weld = Welds.ArmW[S]
					RWeld = RWelds.ArmW[S]
				end
			end
		end
	end
	if Arm and Weld and RWeld then
		if tf then
			Weld.Part1 = Arm
			RWeld.Part1 = nil
		elseif not tf then
			Weld.Part1 = nil
			RWeld.Part1 = Arm
		else
			print("Error")
		end
	end
end

local _Leg = function(side,tf)
	local Leg = nil
	local Weld = nil
	local RWeld = nil
	for _,S in pairs(Sides) do
		if side:lower() == S:lower() then
			for _,A in pairs(Legs) do
				if A.Name:lower():find(side:lower()) then
					Leg = A
					Weld = Welds.LegW[S]
					RWeld = RWelds.LegW[S]
				end
			end
		end
	end
	if Leg and Weld and RWeld then
		if tf then
			Weld.Part1 = Leg
			RWeld.Part1 = nil
		elseif not tf then
			Weld.Part1 = nil
			RWeld.Part1 = Leg
		else
			print("Error")
		end
	end
end

local _Head = function(tf)
	local Head = nil
	local Weld = nil
	local RWeld = nil
	Head = Character["Head"]
	Weld = Welds.HeadW.Middle
	RWeld = RWelds.HeadW.Middle
	if Head and Weld and RWeld then
		if tf then
			Weld.Part1 = Head
			RWeld.Part1 = nil
		elseif not tf then
			Weld.Part1 = nil
			RWeld.Part1 = Head
		else
			print("Error")
		end
	end 
end

pcall(function()
    Character.Animate.Disabled = true
end)
if Humanoid then
    Humanoid.PlatformStand = true
end
pcall(function()
    Torso.Velocity = Variables.Momentum
end)

local Rotate = Instance.new("BodyGyro",Torso)
Rotate.P = 10^6
Rotate.maxTorque = Vector3.new(Rotate.P,Rotate.P,Rotate.P)
Rotate.cframe = Torso.CFrame

local Move = Instance.new("BodyPosition",Torso)
Move.maxForce = Vector3.new(1,1,1)*(10^6)
Move.position = Torso.CFrame.p

local function LaserBeam()
	UpdateAnim = false
	CurrentAnimation = "DisableHandAnim"
	rofTop = 6
	for i=0,1,0.1 do
		RA.C0 = AnimLerp(CurrentRightArm, RAD * CFrame.Angles(math.rad(75),0,math.rad(-20)), i)
	    LA.C0 = AnimLerp(CurrentLeftArm, LAD * CFrame.Angles(math.rad(75),0,math.rad(20)), i)
	    wait()
	end

	ChargeBar.Visible = true;

	local Charge = 0
	local Downt = _Part(Main,false,true,0,0,"Neon",ColorGlobe,{1,1,1},"Sphere",{1,1,1})
	local Effect = Instance.new("ParticleEmitter", Downt)
	Effect.Texture = "rbxassetid://283631720"
	Effect.VelocitySpread = 0
	Effect.Acceleration = Vector3.new(0,0,0)
	Effect.Color = ColorSequence.new(Downt.BrickColor.Color,Downt.BrickColor.Color)
	Effect.Speed = NumberRange.new(0)
	Effect.Lifetime = NumberRange.new(1,1)
	Effect.Rate = 60
	Effect.Transparency = NumberSequence.new(0.5,0.8)
	Effect.Rotation = NumberRange.new(1,2)

	while BeamHeld do
		Charge = Charge + 1
		CurrentEnergy = CurrentEnergy - 1.5
		Downt.Mesh.Scale = Downt.Mesh.Scale + Vector3.new(0.02,0.02,0.02)
		Downt.CFrame = RootPart.CFrame + (RootPart.CFrame.lookVector * 4)
		Effect.Size = NumberSequence.new(Downt.Mesh.Scale.X)
		ChargeFill.Size = UDim2.new(Charge/100,-5,1,-5)
		wait()
		if Charge >= 100 or CurrentEnergy <= 0 then
			CurrentEnergy = CurrentEnergy <= 0 and 0 or CurrentEnergy
			break
		end
	end

	Downt.Anchored = false
	Downt.Size = Downt.Mesh.Scale
	Downt.Mesh.Scale = Vector3.new(1,1,1)

	local Velocity = Instance.new("BodyVelocity", Downt)
	Velocity.maxForce = Vector3.new(1e7,1e7,1e7)
	Velocity.P = 1e7
	Velocity.Velocity = (Mouse.Hit.p - Downt.CFrame.p)
--[[
	--CurrentEnergy = CurrentEnergy <= 0 and 0 or CurrentEnergy - (1.5*Charge)
	local Face = Torso.CFrame.lookVector
	local Ray = Ray.new(Downt.CFrame.p, (Mouse.Hit.p - Downt.CFrame.p).unit*750)
	local Object,Pos = game:GetService("Workspace"):findPartOnRay(Ray, Character)
	local Distance = (Pos - Downt.CFrame.p).magnitude
	local DrawRay = _Part(Main,false,true,0,0,"Neon",ColorGlobe,{1,1,1},"Cylinder",{Distance,Downt.Mesh.Scale.X,Downt.Mesh.Scale.X})
	DrawRay.CFrame = CFrame.new(Pos, Downt.CFrame.p) * CFrame.new(0,0,-Distance/2) * CFrame.Angles(0,math.rad(270),0)

	local ExplodePart = _Part(Main,false,true,0,0,"Neon",ColorGlobe,{1,1,1},"Sphere",{1,1,1})
	ExplodePart.CFrame = CFrame.new(Pos.X,Pos.Y,Pos.Z)

	local Ignore = {}

	ExplodePart.Touched:connect(function(Object)
		if Object.Parent and Object.Parent:IsA("Model") then
			local Model = Object.Parent
			if Model:findFirstChild("Humanoid") and not Ignore[Model.Name] and Model.Name ~= Character.Name then
				Ignore[Model.Name] = true;
				local Humanoid = Model:findFirstChild("Humanoid")
				Humanoid:TakeDamage(0.75*Charge)
			end
		end
	end)

	for i=0,1,0.1 do
		wait()
		DrawRay.Transparency = i
		Downt.Transparency = i
		ExplodePart.Size = ExplodePart.Size + Vector3.new(0.04*Charge,0.04*Charge,0.04*Charge)
		ExplodePart.CFrame = CFrame.new(Pos.X,Pos.Y,Pos.Z)
		ExplodePart.Transparency = i
	end
	Effect:Destroy()
	game:GetService("Debris"):AddItem(DrawRay, 1)
	game:GetService("Debris"):AddItem(ExplodePart, 1)]]
	game:GetService("Debris"):AddItem(Downt, 10)
	UpdateAnim = true
	ChargeBar.Visible = false
	LastBeam = tick()
end

local function AbsoluteDefence()
	UpdateAnim = false

	while AbsDefHeld do

		wait()
	end


	UpdateAnim = true
end

local function ThrowBlades()
	--[[local Thrown = {}
	for i,Bit in pairs(Bits) do
		if Bit.Type == "Top" then
			table.insert(Thrown, {Side = Bit.Side; Weld = Bit.Weld; Series = Bit.Series; Type = Bit.Type})
			table.remove(Bits, i)
		end
	end
	]]-- *Construction*
end

Mouse.KeyDown:connect(function(Key)
	if Key == "w" then
		Front = true
	end
    if Key == "a" then
    	Left = true
    end
    if Key == "s" then
    	Back = true
    end
    if Key == "q" then
    	BoostHeld = not BoostHeld
    	if BoostHeld then
    		Accel = 3
    	else
    		Accel = 1
    	end
    end
    if Key == "d" then
    	Right = true
    end
    if Key:byte() == 50 then
    	if MobilityType == "Float" then
    		MobilityType = "Fly"
    	elseif MobilityType == "Fly" then
    		MobilityType = "Ground"
    	elseif MobilityType == "Ground" then
    		MobilityType = "Float"
    	end
    end
    if Key == "h" then
    	if CurrentEnergy <= 0 then
    		return
    	end
    	AbsDefHeld = true
    	AbsoluteDefence()
    end
    if Key == "f" then
    	if CurrentEnergy <= 0 or tick()-LastBeam <= 1 then
			return
		end
    	BeamHeld = true
    	LaserBeam()
    end
    if Key == "q" then
    	ThrowBlades()
    end
	while BoostHeld do
		wait()
		CurrentEnergy = CurrentEnergy <= 0 and 0 or CurrentEnergy - 0.5
		if CurrentEnergy <= 0 then
			break
		end
	end
    if Key == "g" then
    	ChargeHeld = true
		UpdateAnim = false
		CurrentAnimation = "DisableHandAnim"
		rofTop = 15
		for i=0,1,0.1 do
			wait()
			AnchorPart.Weld.C1 = AnimLerp(AnchorPart.Weld.C1, CFrame.new(0,3,0), i)
			AnchorPart2.Weld.C1 = AnimLerp(AnchorPart2.Weld.C1, CFrame.new(0,3,0), i)
			RA.C0 = AnimLerp(RA.C0, RAD * CFrame.Angles(math.rad(160),0,math.rad(10)), i)
			LA.C0 = AnimLerp(LA.C0, LAD * CFrame.Angles(math.rad(160),0,math.rad(-10)), i)
		end

    	while ChargeHeld do
    		wait()
    		local NRG = _Part(Main,false,true,0,0,"SmoothPlastic",ColorGlobe,{0.2,0.2,0.2},"Sphere",{1,1,1})
    		NRG.CFrame = AnchorPart.CFrame * CFrame.new(math.random(-2.5,2.5),math.random(-2.5,2.5),math.random(-2.5,2.5))
    		local NRGB = _Part(Main,false,true,0,0,"SmoothPlastic",ColorGlobe,{0.2,0.2,0.2},"Sphere",{1,1,1})
    		NRGB.CFrame = AnchorPart2.CFrame * CFrame.new(math.random(-2.5,2.5),math.random(-2.5,2.5),math.random(-2.5,2.5))
    		table.insert(Energy, NRG)
    		table.insert(Energy, NRGB)
    		for i,nrg in pairs(Energy) do
    			nrg.Transparency = nrg.Transparency + 0.05
    			nrg.Mesh.Scale = nrg.Mesh.Scale + Vector3.new(0.1,0.1,0.1)
    			nrg.CFrame = CFrame.new(nrg.CFrame.p, AnchorPart.CFrame.p) * CFrame.Angles(0,0,-math.pi/2)
    			if nrg.Transparency >= 1 then
    				table.remove(Energy, i)
    				nrg:Destroy()
    			end
    		end
    		CurrentEnergy = CurrentEnergy >= TotalEnergy and TotalEnergy or CurrentEnergy + 10
    	end

		for i=0,1,0.1 do
			wait()
			AnchorPart.Weld.C1 = AnimLerp(AnchorPart.Weld.C1, CFrame.new(0,1.5,0), i)
			AnchorPart2.Weld.C1 = AnimLerp(AnchorPart2.Weld.C1, CFrame.new(0,1.5,0), i)
			for x,nrg in pairs(Energy) do
    			nrg.Transparency = nrg.Transparency + 0.15
    			nrg.Mesh.Scale = nrg.Mesh.Scale + Vector3.new(0.2,0.2,0.2)
    			nrg.CFrame = CFrame.new(nrg.CFrame.p, AnchorPart.CFrame.p) * CFrame.Angles(0,0,-math.pi/2)
    			if nrg.Transparency >= 1 then
    				table.remove(Energy, x)
    				nrg:Destroy()
    			end
    		end
		end
		UpdateAnim = true
    end
end)

Mouse.KeyUp:connect(function(Key)
	if Key == "w" then
		Front = false
	end
    if Key == "a" then
    	Left = false
    end
    if Key == "s" then
    	Back = false
    end
    if Key == "d" then
    	Right = false
    end
    if Key == "f" then
    	BeamHeld = false
    end
    if Key == "h" then
    	AbsDefHeld = false
    end
    if Key == "g" then
    	ChargeHeld = false
    end
    if Key == "0" then
    	BoostHeld = false
    end
end)

_Arm("Left", true)
_Arm("Right", true)
_Leg("Left", true)
_Leg("Right", true)
_Head(true)

game:GetService("RunService").Stepped:connect(function()
	EnergyFill.Size = UDim2.new(CurrentEnergy/TotalEnergy,-5,1,-5)
	RateTop = RateTop + rofTop
	if RateTop >= 360 then
		RateTop = 1
	end

	RateBot = RateBot + rofBot
	if RateBot >= 360 then
		RateBot = 1
	end


	if AddSub == false then
		CurrentFrame = CurrentFrame + 0.01
		if CurrentFrame >= 1 then
			AddSub = true
		end
	elseif AddSub == true then
		CurrentFrame = CurrentFrame - 0.01
		if CurrentFrame <= 0 then
			AddSub = false
		end
	end

	DiscSpin = DiscSpin + 0.1
	for _,Disc in pairs(Discs) do
		Disc.Weld.C0 = CFrame.Angles(0,math.rad(90),DiscSpin)
	end

	if ExtendGrowthTop == false and CurrentAnimation == "Idle" then
		ExtendTop = ExtendTop + 1/2
		if ExtendTop >= 25 then
			ExtendGrowthTop = true
		end
	elseif ExtendGrowthTop == true and CurrentAnimation == "Idle" then
		ExtendTop = ExtendTop - 1/2
		if ExtendTop <= -10 then
			ExtendGrowthTop = false
		end
	elseif CurrentAnimation == "Forward" or CurrentAnimation == "Backward" or CurrentAnimation == "SwivelRight" or CurrentAnimation == "SwivelLeft" then
		ExtendTop = ExtendTop >= 40 and 40 or ExtendTop + 2
	elseif CurrentAnimation == "DisableHandAnim" then
		ExtendTop = ExtendTop >= 50 and 50 or ExtendTop + 2
	end

	if ExtendGrowthBot == false and (CurrentAnimation == "Idle" or CurrentAnimation == "DisableHandAnim") then
		ExtendBot = ExtendBot + 1/2
		if ExtendBot >= 25 then
			ExtendGrowthBot = true
		end
	elseif ExtendGrowthBot == true and (CurrentAnimation == "Idle" or CurrentAnimation == "DisableHandAnim") then
		ExtendBot = ExtendBot - 1/2
		if ExtendBot <= -10 then
			ExtendGrowthBot = false
		end
	elseif CurrentAnimation == "Forward" or CurrentAnimation == "Backward" or CurrentAnimation == "SwivelRight" or CurrentAnimation == "SwivelLeft" then
		ExtendBot = ExtendBot >= 40 and 40 or ExtendBot + 2
	end

	if Front and not Back then
		xmove = 3
		if UpdateAnim then
			CurrentAnimation = "Forward"
		end
	elseif Back and not Front then
		xmove = -3
		if UpdateAnim then
			CurrentAnimation = "Backward"
		end
	else
		xmove = 0
		if UpdateAnim then
			CurrentAnimation = "Idle"
		end
	end

	if Left and not Right then
		if xmove == 0 and UpdateAnim then
			CurrentAnimation = "SwivelLeft"
		end
		ymove = 3
	elseif Right and not Left then
		if xmove == 0 and UpdateAnim then
			CurrentAnimation = "SwivelRight"
		end
		ymove = -3
	else
		ymove = 0
		if xmove == 0 and UpdateAnim then
			CurrentAnimation = "Idle"
		end
	end

	if LastAnimation ~= CurrentAnimation then
		CurrentFrame = 0
		AddSub = false
	end

	for _,Info in pairs(Bits) do
		local Side = Info.Side
		local Series = Info.Series
		local Weld = Info.Weld
		local Type = Info.Type
		local Extend = 1
		local MyRate = 1

		if Type == "Top" then
			Extend = ExtendTop
			MyRate = RateTop + 30
		elseif Type == "Bot" then
			Extend = ExtendBot
			MyRate = RateBot
		else

		end

		if CurrentAnimation == "Idle" or CurrentAnimation == "DisableHandAnim" then
			if Type == "Wing" or Type == "WingLow" then
				if Type == "WingLow" then
					Weld.C1 = AnimLerp(Weld.C1, CFrame.new(Side == true and -0.5 or 0.5,1.65,0.5) * CFrame.Angles(math.rad(65 + Lift*3),math.rad((Side == true and 30 + Lift*2 or -30 - Lift*2)),0), CurrentFrame)
				else
					Weld.C1 = AnimLerp(Weld.C1, CFrame.new(0,1.8,0.5) * CFrame.Angles(math.rad(65 + Lift*3),math.rad((Side == true and 30 + Lift*2 or -30 - Lift*2)),0), CurrentFrame)
				end
			else
				Weld.C1 = CFrame.new(0,0,Spread) * CFrame.Angles(math.rad(-Extend),math.rad(60*Series + (Side == true and -MyRate or MyRate)),0) * CFrame.new(0,Distance,0)
			end
		elseif CurrentAnimation == "Forward" or CurrentAnimation == "Backward" then
			if Type == "Wing" or Type == "WingLow" then
				if Type == "WingLow" then
					Weld.C1 = AnimLerp(Weld.C1, CFrame.new(Side == true and -0.5 or 0.5,1.65,0.5) * CFrame.Angles(math.rad(65 + Lift*10),math.rad((Side == true and 30 + Lift*2 or -30 - Lift*2)),0), CurrentFrame)
				else
					Weld.C1 = AnimLerp(Weld.C1, CFrame.new(0,1.8,0.5) * CFrame.Angles(math.rad(65 + Lift*10),math.rad((Side == true and 30 + Lift*2 or -30 - Lift*2)),0), CurrentFrame)
				end
			else
				Weld.C1 = CFrame.new(0,0,Spread) * CFrame.Angles(math.rad(-Extend),math.rad(60*Series + (Side == true and -MyRate or MyRate)),0) * CFrame.new(0,Distance,0)
			end
		elseif CurrentAnimation == "SwivelLeft" then
			if Type == "Wing" or Type == "WingLow" then
				if Type == "WingLow" then
					Weld.C1 = AnimLerp(Weld.C1, CFrame.new(Side == true and -0.5 or 0.5,1.65,0.5) * CFrame.Angles(math.rad(65 + Lift*3),math.rad((Side == true and 50 or -10)),0), CurrentFrame)
				else
					Weld.C1 = AnimLerp(Weld.C1, CFrame.new(0,1.8,0.5) * CFrame.Angles(math.rad(65 + Lift*3),math.rad((Side == true and 50 or -10)),0), CurrentFrame)
				end
			else
				Weld.C1 = CFrame.new(0,0,Spread) * CFrame.Angles(math.rad(-Extend),math.rad(60*Series + (Side == true and -MyRate or MyRate)),0) * CFrame.new(0,Distance,0)
			end
		elseif CurrentAnimation == "SwivelRight" then
			if Type == "Wing" or Type == "WingLow" then
				if Type == "WingLow" then
					Weld.C1 = AnimLerp(Weld.C1, CFrame.new(Side == true and -0.5 or 0.5,1.65,0.5) * CFrame.Angles(math.rad(65 + Lift*3),math.rad((Side == true and 10 or -50)),0), CurrentFrame)
				else
					Weld.C1 = AnimLerp(Weld.C1, CFrame.new(0,1.8,0.5) * CFrame.Angles(math.rad(65 + Lift*3),math.rad((Side == true and 10 or -50)),0), CurrentFrame)
				end
			else
				Weld.C1 = CFrame.new(0,0,Spread) * CFrame.Angles(math.rad(-Extend),math.rad(60*Series + (Side == true and -MyRate or MyRate)),0) * CFrame.new(0,Distance,0)
			end
		else
			Weld.C1 = CFrame.new(0,0,Spread) * CFrame.Angles(math.rad(-Extend),math.rad(60*Series + (Side == true and -MyRate or MyRate)),0) * CFrame.new(0,Distance,0)
		end
	end

	TurnAngle = TurnAngle + ymove

	Rotate.cframe = CFrame.new()*CFrame.Angles(0,math.rad(TurnAngle),0)

	local Ray = Ray.new(Torso.CFrame.p,Down.CFrame.lookVector*15)
	local Part,Pos = game:GetService("Workspace"):findPartOnRay(Ray,Character)
	local Distance = (Pos - Torso.CFrame.p).magnitude
	local Face = Torso.CFrame.lookVector

	if Part and Pos then
		local sides = Enum.NormalId:GetEnumItems();
		local default = Vector3.new(0,1,0)
		for i,v in pairs(sides) do
			sides[i] = Vector3.FromNormalId(v)
		end
		if Part:IsA("Part") then
			if Part.Shape.Name == "Ball" then
				sides = {}
				default = Part.CFrame:vectorToObjectSpace(Pos-Part.Position).unit
			elseif Part.Shape.Name == "Cylinder" then
				sides = {Vector3.new(1,0,0),Vector3.new(-1,0,0)}
				default = (Part.CFrame:vectorToObjectSpace(Pos-Part.Position)*Vector3.new(0,1,1)).unit
			end
		elseif Part:IsA("WedgePart") then
			sides = {Vector3.new(1,0,0),Vector3.new(-1,0,0),Vector3.new(0,-1,0),Vector3.new(0,0,-1)}
			default = Vector3.new(0,1,-Part.Size.Y/Part.Size.Z).unit
		end
		local obs,siz,sidevector = Part.CFrame:pointToObjectSpace(Pos),Part.Size/2
		for i,v in pairs(sides) do
			if (obs*v/(siz*v+Vector3.new(1,1,1)*1e-7)):isClose(v,.01) then
				sidevector = v
				break
			end
		end
		if not sidevector then sidevector = default end
		if sidevector then
			local cf = CFrame.new(Pos,Pos+Part.CFrame:vectorToWorldSpace(sidevector)) * CFrame.Angles(-math.pi/2,0,0)
			Move.position = Vector3.new(cf.X,cf.Y + 6 + Lift,cf.Z) + Vector3.new(Face.X,0,Face.Z)*Accel*xmove
			Move.maxForce = Vector3.new(1e7,1e7,1e7)
		end
	else
		Move.maxForce = Vector3.new(1e7,0,1e7)
		Move.position = Vector3.new(Torso.CFrame.X,Torso.CFrame.Y,Torso.CFrame.Z) + Vector3.new(Face.X,0,Face.Z)*Accel*xmove
	end

    CurrentLeftArm = LA.C0
    CurrentRightArm = RA.C0 
    CurrentRightLeg = LR.C1
    CurrentLeftLeg = LL.C1

    if math.floor(Lift+0.5) == 3 then
    	--FlapSound:Play()
    end

	if CurrentAnimation == "Idle" then
		rofTop = 1
		rofBot = 1
	    RA.C0 = AnimLerp(CurrentRightArm, RAD * CFrame.Angles(math.rad(0),0,math.rad(25 + Lift*2)), CurrentFrame)
	    LA.C0 = AnimLerp(CurrentLeftArm, LAD * CFrame.Angles(math.rad(0),0,math.rad(-25 - Lift*2)), CurrentFrame)
	    LR.C1 = AnimLerp(CurrentRightLeg, RLD * CFrame.Angles(0,0,math.rad(-7.5 + Lift)), CurrentFrame)
	    LL.C1 = AnimLerp(CurrentLeftLeg, LLD * CFrame.Angles(0,0,math.rad(7.5 - Lift)), CurrentFrame)
	elseif CurrentAnimation == "Forward" then
		rofTop = 6
		rofBot = 6
	    RA.C0 = AnimLerp(CurrentRightArm, RAD * CFrame.Angles(math.rad(-15),0,math.rad(30)), CurrentFrame)
	    LA.C0 = AnimLerp(CurrentLeftArm, LAD * CFrame.Angles(math.rad(-15),0,math.rad(-30)), CurrentFrame)
	    LR.C1 = AnimLerp(CurrentRightLeg, RLD * CFrame.Angles(math.rad(15),0,math.rad(-7.5)), CurrentFrame)
	    LL.C1 = AnimLerp(CurrentLeftLeg, LLD * CFrame.Angles(math.rad(15),0,math.rad(7.5)), CurrentFrame)
	elseif CurrentAnimation == "Backward" then
		rotTop = -6
		rofBot = -6
	    RA.C0 = AnimLerp(CurrentRightArm, RAD * CFrame.Angles(math.rad(15),0,math.rad(20)), CurrentFrame)
	    LA.C0 = AnimLerp(CurrentLeftArm, LAD * CFrame.Angles(math.rad(15),0,math.rad(-20)), CurrentFrame)
	    LR.C1 = AnimLerp(CurrentRightLeg, RLD * CFrame.Angles(math.rad(-15),0,math.rad(-7.5)), CurrentFrame)
	    LL.C1 = AnimLerp(CurrentLeftLeg, LLD * CFrame.Angles(math.rad(-15),0,math.rad(7.5)), CurrentFrame)
	elseif CurrentAnimation == "SwivelLeft" then
		rofTop = 3
		rofBot = 3
	    RA.C0 = AnimLerp(CurrentRightArm, RAD * CFrame.Angles(math.rad(15),0,math.rad(25)), CurrentFrame)
	    LA.C0 = AnimLerp(CurrentLeftArm, LAD * CFrame.Angles(math.rad(-15),0,math.rad(-25)), CurrentFrame)
	    LR.C1 = AnimLerp(CurrentRightLeg, RLD * CFrame.Angles(math.rad(-10),0,math.rad(-7.5)), CurrentFrame)
	    LL.C1 = AnimLerp(CurrentLeftLeg, LLD * CFrame.Angles(math.rad(10),0,math.rad(7.5)), CurrentFrame)
	elseif CurrentAnimation == "SwivelRight" then
		rofTop = -3
		rofBot = -3
	    RA.C0 = AnimLerp(CurrentRightArm, RAD * CFrame.Angles(math.rad(-15),0,math.rad(25)), CurrentFrame)
	    LA.C0 = AnimLerp(CurrentLeftArm, LAD * CFrame.Angles(math.rad(15),0,math.rad(-25)), CurrentFrame)
	    LR.C1 = AnimLerp(CurrentRightLeg, RLD * CFrame.Angles(math.rad(10),0,math.rad(-7.5)), CurrentFrame)
	    LL.C1 = AnimLerp(CurrentLeftLeg, LLD * CFrame.Angles(math.rad(-10),0,math.rad(7.5)), CurrentFrame)
	elseif CurrentAnimation == "DisableHandAnim" then
		rofBot = 1
		LR.C1 = AnimLerp(CurrentRightLeg, RLD * CFrame.Angles(0,0,math.rad(-7.5)), CurrentFrame)
	    LL.C1 = AnimLerp(CurrentLeftLeg, LLD * CFrame.Angles(0,0,math.rad(7.5)), CurrentFrame)
	end

	LastAnimation = CurrentAnimation
end)

while true do
	for i = 0,10,0.1 do
		Lift = Lift + (math.sin(math.pi*2/10*i)*0.1)
		wait(0.02)
	end
end