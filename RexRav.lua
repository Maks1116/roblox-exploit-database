local p = game:GetService("Players").LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local stanceToggle = "Normal"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
hum.DisplayDistanceType = "None"
math.randomseed(os.time())
for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end
for i,v in pairs (hed:GetChildren()) do
	if v:IsA("Sound") then
		v:Destroy()
	end
end
----------------------------------------------------
Debounces = {
CanAttack = true;
CanJoke = true;
NoIdl = false;
Slashing = false;
Slashed = false;
Slapping = false;
Slapped = false;
ks = false;
}
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
----------------------------------------------------
GroundWave3 = function()
	local HandCF = CFrame.new(root.Position - Vector3.new(0,0,0)) * CFrame.Angles(0,0,0)
		local wave1 = Instance.new("Part", torso)
		wave1.BrickColor = BrickColor.new("Really black")
		wave1.Anchored = true
		wave1.CanCollide = false
		wave1.Locked = true
		wave1.Material = "Neon"
		wave1.Size = Vector3.new(1, 1, 1)
		wave1.TopSurface = "Smooth"
		wave1.BottomSurface = "Smooth"
		wave1.Transparency = 0.35
		wave1.CFrame = HandCF
		wm = Instance.new("SpecialMesh", wave1)
		wm.Scale = Vector3.new(.1,.1,.1)
		wm.MeshType = "Sphere"
		coroutine.wrap(function()
		for i = 1, 20, 1 do
		wm.Scale = Vector3.new(2 + i*2, 2 + i*2, 2 + i*2)
		--wave1.Size = wm.Scale
		wave1.CFrame = HandCF
		wave1.Transparency = i/20
		wait()
		end
		wait()
		wave1:Destroy()
	end)()
end
local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local wave = Instance.new("Part", torso)
        wave.BrickColor = BrickColor.new("New Yeller")
        wave.Anchored = true
        wave.CanCollide = false
        wave.Locked = true
        wave.Size = Vector3.new(1, 1, 1)
        wave.TopSurface = "Smooth"
        wave.BottomSurface = "Smooth"
        wave.Transparency = 0.8
        wave.CFrame = HandCF
        wm = Instance.new("SpecialMesh", wave)
        wm.MeshId = "rbxassetid://3270017"
        coroutine.wrap(function()
        for i = 1, 14, 1 do
        wm.Scale = Vector3.new(1 + i*1.1, 1 + i*1.1, 1)
        wave.Size = wm.Scale
        wave.CFrame = HandCF
        wave.Transparency = i/14
        wait()
        end
        wait()
        wave:Destroy()
end)()
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
	if not (t < 0 or t == 0 or t > 0) then 	-- Failsafe
		return CFrame.new()
	end
	return CFrame.new(
	v0.x, v0.y, v0.z,
	v1.x, v1.y, v1.z,
	v2.x, v2.y, v2.z,
	v3.x, v3.y, v3.z)
end
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
local AddInstance = function(Object, ...)
local Obj = Instance.new(Object)
for i,v in next,(...) do
Obj[i] = v
end
return Obj
end
----------------------------------------------------
larm.Size = larm.Size * 4.5
rarm.Size = rarm.Size * 4.5
lleg.Size = lleg.Size * 4.5
rleg.Size = rleg.Size * 4.5
torso.Size = torso.Size * 4.5
hed.Size = hed.Size * 4.5
root.Size = root.Size * 4.5
----------------------------------------------------
newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(5.2,0.5,0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(-5.2, 0.5, 0)
newWeld(torso, hed, 0, 6.8, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(1.7, 8, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(-1.7, 8, 0)
newWeld(root, torso, 0, 0, 0)
torso.Weld.C1 = CFrame.new(0, 0, 0)
----------------------------------------------------
--local SIDz = {"167985102"}, 167161785, 148274436
z = Instance.new("Sound",char)
z.SoundId = "rbxassetid://238510574"--..SIDz[math.random(1,#SIDz)]
z.Looped = true
z.Volume = math.huge
z.Pitch = .72
wait(1)
z:Play()
hum.WalkSpeed = 16
----------------------------------------------------
		local Eye1 = AddInstance("Part",{
			Name = "Eye1",
			Parent = hed,
			CFrame = hed.CFrame,
			Color = Color3.new(255,0,0),
			Material = "Neon",
			formFactor = "Symmetric",
			Size = Vector3.new(1, 1, 1),
			CanCollide = false,
			Shape = "Ball",
			TopSurface = "Smooth",
			BottomSurface = "Smooth",
			Locked = true,
		})
		local Weld = AddInstance("Weld",{
			Parent = Eye1,
			Part0 = hed,
			C0 = CFrame.new(-0.7, 0.6, -3.8)*CFrame.Angles(0, 0, 0),
			Part1 = Eye1,
		})
		local Eye2 = AddInstance("Part",{
			Name = "Eye2",
			Parent = hed,
			CFrame = hed.CFrame,
			Color = Color3.new(255,0,0),
			Material = "Neon",
			formFactor = "Symmetric",
			Size = Vector3.new(1, 1, 1),
			CanCollide = false,
			Shape = "Ball",
			TopSurface = "Smooth",
			BottomSurface = "Smooth",
			Locked = true,
		})
		local Weld = AddInstance("Weld",{
			Parent = Eye2,
			Part0 = hed,
			C0 = CFrame.new(0.7, 0.6, -3.8)*CFrame.Angles(0, 0, 0),
			Part1 = Eye2,
		})
		local Reaper = AddInstance("Part",{
			Parent = hed,
			CFrame = hed.CFrame,
			formFactor = "Symmetric",
			Size = Vector3.new(1, 1, 1),
			CanCollide = false,
			TopSurface = "Smooth",
			BottomSurface = "Smooth",
			Locked = true,
		})
		local Weld = AddInstance("Weld",{
			Parent = Reaper,
			Part0 = hed,
			C0 = CFrame.new(0, 1, 0)*CFrame.Angles(0, 0, 0),
			Part1 = Reaper,
		})
		local Mesh = AddInstance("SpecialMesh",{
			Parent = Reaper,
			MeshId = "rbxassetid://16150814",
			TextureId = "rbxassetid://16150799",
			Scale = Vector3.new(5.181, 5.181, 5.181),
			VertexColor = Vector3.new(0.3, 0.3, 0.3),
		})
----------------------------------------------------
		local o1 = AddInstance("Model",{
		Name = "Genkadda",
		Parent = char,
		})
		local o2 = AddInstance("Part",{
		Name = "Handle",
		Parent = o1,
		Material = Enum.Material.Granite,
		BrickColor = BrickColor.new("Black"),
		CanCollide = false,
		Size = Vector3.new(0.54285717, 4.96428585, 1.02857149),
		BackSurface = Enum.SurfaceType.SmoothNoOutlines,
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines,
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines,
		RightSurface = Enum.SurfaceType.SmoothNoOutlines,
		TopSurface = Enum.SurfaceType.SmoothNoOutlines,
		Color = Color3.new(0.105882, 0.164706, 0.207843),
		Locked = true,
		})
		local o3 = AddInstance("Part",{
		Parent = o1,
		Material = Enum.Material.Granite,
		BrickColor = BrickColor.new("Really black"),
		CanCollide = false,
		Size = Vector3.new(0.521428645, 0.200000003, 4.92857265),
		BackSurface = Enum.SurfaceType.SmoothNoOutlines,
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines,
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines,
		RightSurface = Enum.SurfaceType.SmoothNoOutlines,
		TopSurface = Enum.SurfaceType.SmoothNoOutlines,
		Color = Color3.new(0.0666667, 0.0666667, 0.0666667),
		Locked = true,
		})
		local Weld = AddInstance("Weld",{
			Parent = o3,
			Part0 = o2,
			C0 = CFrame.new(7.12578773, -0.113092422, -56.9015541, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),
			Part1 = o3,
			C1 = CFrame.new(7.12578583, -2.70594311, -56.9015656, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),		
		})
		local o6 = AddInstance("Part",{
		Name = "8",
		Parent = o1,
		Material = Enum.Material.Neon,
		BrickColor = BrickColor.new("New Yeller"),
		CanCollide = false,
		Size = Vector3.new(0.864285767, 0.221428677, 5.65714407),
		BackSurface = Enum.SurfaceType.SmoothNoOutlines,
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines,
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines,
		RightSurface = Enum.SurfaceType.SmoothNoOutlines,
		TopSurface = Enum.SurfaceType.SmoothNoOutlines,
		Color = Color3.new(0.972549, 0.972549, 0.972549),
		Locked = true,
		})
		local Weld = AddInstance("Weld",{
			Parent = o6,
			Part0 = o2,
			C0 = CFrame.new(7.12578773, -0.113092422, -56.9015541, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),
			Part1 = o6,
			C1 = CFrame.new(7.12578583, -2.68451595, -56.9015579, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),		
		})
		local o8 = AddInstance("Part",{
		Name = "20",
		Parent = o1,
		Material = Enum.Material.Neon,
		BrickColor = BrickColor.new("New Yeller"),
		CanCollide = false,
		Size = Vector3.new(0.54285717, 0.657142878, 1.02857149),
		BackSurface = Enum.SurfaceType.SmoothNoOutlines,
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines,
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines,
		RightSurface = Enum.SurfaceType.SmoothNoOutlines,
		TopSurface = Enum.SurfaceType.SmoothNoOutlines,
		Color = Color3.new(0.972549, 0.972549, 0.972549),
		Locked = true,
		})
		local Weld = AddInstance("Weld",{
			Parent = o8,
			Part0 = o2,
			C0 = CFrame.new(7.12578773, -0.113092422, -56.9015541, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),
			Part1 = o8,
			C1 = CFrame.new(7.12578964, 2.69762135, -56.9015579, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),
		})
		local o10 = AddInstance("Part",{
		Name = "15",
		Parent = o1,
		Material = Enum.Material.Neon,
		BrickColor = BrickColor.new("New Yeller"),
		CanCollide = false,
		Size = Vector3.new(0.54285717, 0.657142937, 2.02857161),
		BackSurface = Enum.SurfaceType.SmoothNoOutlines,
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines,
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines,
		RightSurface = Enum.SurfaceType.SmoothNoOutlines,
		TopSurface = Enum.SurfaceType.SmoothNoOutlines,
		Color = Color3.new(0.972549, 0.972549, 0.972549),
		Locked = true,
		})
		local Weld = AddInstance("Weld",{
			Parent = o10,
			Part0 = o2,
			C0 = CFrame.new(7.12578773, -0.113092422, -56.9015541, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),
			Part1 = o10,
			C1 = CFrame.new(7.12578773, 2.69762325, -55.3730087, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),
		})
		local o11 = AddInstance("SpecialMesh",{
		Parent = o10,
		MeshType = Enum.MeshType.Wedge,
		})
		o12 = AddInstance("Part",{
		Name = "10",
		Parent = o1,
		Material = Enum.Material.Neon,
		BrickColor = BrickColor.new("New Yeller"),
		CanCollide = false,
		Size = Vector3.new(0.54285717, 0.657142878, 2.02857161),
		BackSurface = Enum.SurfaceType.SmoothNoOutlines,
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines,
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines,
		RightSurface = Enum.SurfaceType.SmoothNoOutlines,
		TopSurface = Enum.SurfaceType.SmoothNoOutlines,
		Color = Color3.new(0.972549, 0.972549, 0.972549),
		Locked = true,
		})
		local Weld = AddInstance("Weld",{
			Parent = o12,
			Part0 = o2,
			C0 = CFrame.new(7.12578773, -0.113092422, -56.9015541, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),
			Part1 = o12,
			C1 = CFrame.new(-7.12579155, 2.69761753, 58.4300995, 0.999990702, -0.00427576201, 0.000560929009, 0.00055484724, -0.00142344052, -0.999998868, 0.0042765555, 0.999989867, -0.00142105494),
		})
		local o13 = AddInstance("SpecialMesh",{
		Parent = o12,
		MeshType = Enum.MeshType.Wedge,
		})
		local o14 = AddInstance("Part",{
		Name = "9",
		Parent = o1,
		Material = Enum.Material.Neon,
		BrickColor = BrickColor.new("New Yeller"),
		CanCollide = false,
		Size = Vector3.new(0.54285717, 1.11428583, 0.371428579),
		BackSurface = Enum.SurfaceType.SmoothNoOutlines,
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines,
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines,
		RightSurface = Enum.SurfaceType.SmoothNoOutlines,
		TopSurface = Enum.SurfaceType.SmoothNoOutlines,
		Color = Color3.new(0.972549, 0.972549, 0.972549),
		Locked = true,
		})
		local Weld = AddInstance("Weld",{
			Parent = o14,
			Part0 = o2,
			C0 = CFrame.new(7.12578773, -0.113092422, -56.9015541, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),
			Part1 = o14,
			C1 = CFrame.new(7.12578201, 2.12619781, -56.2015648, -0.999990702, 0.00427558692, -0.000560841348, 0.00055476022, -0.00142335275, -0.999998868, -0.00427637994, -0.999989867, 0.00142096763),		
		})
		local o15 = AddInstance("SpecialMesh",{
		Parent = o14,
		MeshType = Enum.MeshType.Wedge,
		})
		o16 = AddInstance("Part",{
		Name = "6",
		Parent = o1,
		Material = Enum.Material.Neon,
		BrickColor = BrickColor.new("New Yeller"),
		CanCollide = false,
		Size = Vector3.new(0.54285717, 1.11428583, 0.371428579),
		BackSurface = Enum.SurfaceType.SmoothNoOutlines,
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines,
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines,
		RightSurface = Enum.SurfaceType.SmoothNoOutlines,
		TopSurface = Enum.SurfaceType.SmoothNoOutlines,
		Color = Color3.new(0.972549, 0.972549, 0.972549),
		Locked = true,
		})
		local Weld = AddInstance("Weld",{
			Parent = o16,
			Part0 = o2,
			C0 = CFrame.new(7.12578773, -0.113092422, -56.9015541, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),
			Part1 = o16,
			C1 = CFrame.new(-7.12579536, 2.12619114, 57.6015701, 0.999990702, -0.00427576201, 0.000560841581, 0.000554759463, -0.0014235276, -0.999998868, 0.0042765555, 0.999989867, -0.00142114237),		
		})
		local o17 = AddInstance("SpecialMesh",{
		Parent = o16,
		MeshType = Enum.MeshType.Wedge,
		})
		o18 = AddInstance("Part",{
		Name = "21",
		Parent = o1,
		Material = Enum.Material.Neon,
		BrickColor = BrickColor.new("New Yeller"),
		CanCollide = false,
		Size = Vector3.new(0.564285755, 0.257142901, 0.514285743),
		BackSurface = Enum.SurfaceType.SmoothNoOutlines,
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines,
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines,
		RightSurface = Enum.SurfaceType.SmoothNoOutlines,
		TopSurface = Enum.SurfaceType.SmoothNoOutlines,
		Color = Color3.new(0.972549, 0.972549, 0.972549),
		Locked = true,
		})
		local Weld = AddInstance("Weld",{
			Parent = o18,
			Part0 = o2,
			C0 = CFrame.new(7.12578773, -0.113092422, -56.9015541, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),
			Part1 = o18,
			C1 = CFrame.new(-7.12578964, 2.24047565, 57.1586876, 0.999990702, -0.00427576201, 0.000560841581, 0.000554759463, -0.0014235276, -0.999998868, 0.0042765555, 0.999989867, -0.00142114237),
		})
		local o19 = AddInstance("SpecialMesh",{
		Parent = o18,
		MeshType = Enum.MeshType.Wedge,
		})
		o20 = AddInstance("Part",{
		Name = "13",
		Parent = o1,
		Material = Enum.Material.Neon,
		BrickColor = BrickColor.new("New Yeller"),
		CanCollide = false,
		Size = Vector3.new(0.564285755, 0.257142901, 0.514285743),
		BackSurface = Enum.SurfaceType.SmoothNoOutlines,
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines,
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines,
		RightSurface = Enum.SurfaceType.SmoothNoOutlines,
		TopSurface = Enum.SurfaceType.SmoothNoOutlines,
		Color = Color3.new(0.972549, 0.972549, 0.972549),
		Locked = true,
		})
		local Weld = AddInstance("Weld",{
			Parent = o20,
			Part0 = o2,
			C0 = CFrame.new(7.12578773, -0.113092422, -56.9015541, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),
			Part1 = o20,
			C1 = CFrame.new(7.1258049, 2.24045849, -56.6443939, -0.999990702, 0.00427594269, -0.000560964399, 0.000554880884, -0.00142379443, -0.999998868, -0.00427673617, -0.999989867, 0.00142140849),
		})
		local o21 = AddInstance("SpecialMesh",{
		Parent = o20,
		MeshType = Enum.MeshType.Wedge,
		})
		o22 = AddInstance("Part",{
		Name = "16",
		Parent = o1,
		Material = Enum.Material.Neon,
		BrickColor = BrickColor.new("New Yeller"),
		CanCollide = false,
		Size = Vector3.new(0.564285755, 1.73571444, 0.200000003),
		BackSurface = Enum.SurfaceType.SmoothNoOutlines,
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines,
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines,
		RightSurface = Enum.SurfaceType.SmoothNoOutlines,
		TopSurface = Enum.SurfaceType.SmoothNoOutlines,
		Color = Color3.new(0.972549, 0.972549, 0.972549),
		Locked = true,
		})
		local Weld = AddInstance("Weld",{
			Parent = o22,
			Part0 = o2,
			C0 = CFrame.new(7.12578773, -0.113092422, -56.9015541, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),
			Part1 = o22,
			C1 = CFrame.new(7.1258049, 1.38688946, -56.830143, -0.999990702, 0.00427594269, -0.000560964399, 0.000554880884, -0.00142379443, -0.999998868, -0.00427673617, -0.999989867, 0.00142140849),
		})
		local o23 = AddInstance("SpecialMesh",{
		Parent = o22,
		Scale = Vector3.new(1, 1, 0.714285672),
		MeshType = Enum.MeshType.Wedge,
		})
		o24 = AddInstance("Part",{
		Name = "14",
		Parent = o1,
		Material = Enum.Material.Neon,
		BrickColor = BrickColor.new("New Yeller"),
		CanCollide = false,
		Size = Vector3.new(0.564285755, 1.73571444, 0.200000003),
		BackSurface = Enum.SurfaceType.SmoothNoOutlines,
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines,
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines,
		RightSurface = Enum.SurfaceType.SmoothNoOutlines,
		TopSurface = Enum.SurfaceType.SmoothNoOutlines,
		Color = Color3.new(0.972549, 0.972549, 0.972549),
		Locked = true,
		})
		local Weld = AddInstance("Weld",{
			Parent = o24,
			Part0 = o2,
			C0 = CFrame.new(7.12578773, -0.113092422, -56.9015541, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),
			Part1 = o24,
			C1 = CFrame.new(-7.12580872, 1.38689709, 56.9729919, 0.999990702, -0.0042760619, 0.000560866669, 0.000554783503, -0.00142366707, -0.999998868, 0.00427685538, 0.999989867, -0.00142128149),
		})
		local o25 = AddInstance("SpecialMesh",{
		Parent = o24,
		Scale = Vector3.new(1, 1, 0.714285672),
		MeshType = Enum.MeshType.Wedge,
		})
		o26 = AddInstance("Part",{
		Name = "4",
		Parent = o1,
		Material = Enum.Material.Neon,
		BrickColor = BrickColor.new("New Yeller"),
		CanCollide = false,
		Size = Vector3.new(0.54285717, 0.657142878, 1.02857149),
		BackSurface = Enum.SurfaceType.SmoothNoOutlines,
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines,
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines,
		RightSurface = Enum.SurfaceType.SmoothNoOutlines,
		TopSurface = Enum.SurfaceType.SmoothNoOutlines,
		Color = Color3.new(0.972549, 0.972549, 0.972549),
		Locked = true,
		})
		local Weld = AddInstance("Weld",{
			Parent = o26,
			Part0 = o2,
			C0 = CFrame.new(7.12578773, -0.113092422, -56.9015541, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),
			Part1 = o26,
			C1 = CFrame.new(-7.12579346, 2.69762135, 57.9301262, 0.999990702, -0.00427576201, 0.000560929009, 0.00055484724, -0.00142344052, -0.999998868, 0.0042765555, 0.999989867, -0.00142105494),		
		})
		local o27 = AddInstance("SpecialMesh",{
		Parent = o26,
		MeshType = Enum.MeshType.Wedge,
		})
		o28 = AddInstance("Part",{
		Name = "11",
		Parent = o1,
		Material = Enum.Material.Neon,
		BrickColor = BrickColor.new("New Yeller"),
		CanCollide = false,
		Size = Vector3.new(0.864285767, 0.657142937, 1.02857149),
		BackSurface = Enum.SurfaceType.SmoothNoOutlines,
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines,
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines,
		RightSurface = Enum.SurfaceType.SmoothNoOutlines,
		TopSurface = Enum.SurfaceType.SmoothNoOutlines,
		Color = Color3.new(0.972549, 0.972549, 0.972549),
		Locked = true,
		})
		local Weld = AddInstance("Weld",{
			Parent = o28,
			Part0 = o2,
			C0 = CFrame.new(7.12578773, -0.113092422, -56.9015541, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),
			Part1 = o28,
			C1 = CFrame.new(7.12579346, 59.387291, -2.07380676, -0.999990702, 0.00427573128, -0.000560924469, 0.00427652476, 0.999989867, -0.00142105541, 0.000554842758, -0.00142344099, -0.999998868),
		})
		local o29 = AddInstance("SpecialMesh",{
		Parent = o28,
		MeshType = Enum.MeshType.Wedge,
		})
		o30 = AddInstance("Part",{
		Name = "17",
		Parent = o1,
		Material = Enum.Material.Granite,
		BrickColor = BrickColor.new("Really black"),
		CanCollide = false,
		Size = Vector3.new(0.542999983, 20, 3.02900004),
		BackSurface = Enum.SurfaceType.SmoothNoOutlines,
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines,
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines,
		RightSurface = Enum.SurfaceType.SmoothNoOutlines,
		TopSurface = Enum.SurfaceType.SmoothNoOutlines,
		Color = Color3.new(0.0666667, 0.0666667, 0.0666667),
		Locked = true,
		})
		local Weld = AddInstance("Weld",{
			Parent = o30,
			Part0 = o2,
			C0 = CFrame.new(7.12578773, -0.113092422, -56.9015541, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),
			Part1 = o30,
			C1 = CFrame.new(7.1257782, -12.6132841, -56.901535, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),
		})
		local o32 = AddInstance("Part",{
		Name = "3",
		Parent = o1,
		Material = Enum.Material.Neon,
		BrickColor = BrickColor.new("New Yeller"),
		CanCollide = false,
		Size = Vector3.new(0.864285767, 0.657142937, 1.02857149),
		BackSurface = Enum.SurfaceType.SmoothNoOutlines,
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines,
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines,
		RightSurface = Enum.SurfaceType.SmoothNoOutlines,
		TopSurface = Enum.SurfaceType.SmoothNoOutlines,
		Color = Color3.new(0.972549, 0.972549, 0.972549),
		Locked = true,
		})
		local Weld = AddInstance("Weld",{
			Parent = o32,
			Part0 = o2,
			C0 = CFrame.new(7.12578773, -0.113092422, -56.9015541, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),
			Part1 = o32,
			C1 = CFrame.new(-7.12579155, -54.4158592, -2.07380486, 0.999990702, -0.00427573407, 0.000560930872, -0.00427652756, -0.999989867, 0.00142105471, 0.000554849161, -0.00142344029, -0.999998868),
		})
		local o33 = AddInstance("SpecialMesh",{
		Parent = o32,
		MeshType = Enum.MeshType.Wedge,
		})
		o34 = AddInstance("Part",{
		Name = "18",
		Parent = o1,
		Material = Enum.Material.Neon,
		BrickColor = BrickColor.new("New Yeller"),
		CanCollide = false,
		Size = Vector3.new(0.400000006, 6.11428595, 5.03142834),
		BackSurface = Enum.SurfaceType.SmoothNoOutlines,
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines,
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines,
		RightSurface = Enum.SurfaceType.SmoothNoOutlines,
		TopSurface = Enum.SurfaceType.SmoothNoOutlines,
		Color = Color3.new(0.972549, 0.972549, 0.972549),
		Locked = true,
		})
		local Weld = AddInstance("Weld",{
			Parent = o34,
			Part0 = o2,
			C0 = CFrame.new(7.12578773, -0.113092422, -56.9015541, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),
			Part1 = o34,
			C1 = CFrame.new(-7.12446594, -25.670372, 56.9022903, 0.999990761, -0.00427558692, 0.000561015506, 0.000554933562, -0.00142352702, -0.999998868, 0.00427638087, 0.999989927, -0.00142114121),
		})
		local o35 = AddInstance("SpecialMesh",{
		Parent = o34,
		MeshType = Enum.MeshType.Wedge,
		})
		o36 = AddInstance("Part",{
		Name = "7",
		Parent = o1,
		Material = Enum.Material.Granite,
		BrickColor = BrickColor.new("Really black"),
		CanCollide = false,
		Size = Vector3.new(0.542999983, 4.11428595, 3.03142834),
		BackSurface = Enum.SurfaceType.SmoothNoOutlines,
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines,
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines,
		RightSurface = Enum.SurfaceType.SmoothNoOutlines,
		TopSurface = Enum.SurfaceType.SmoothNoOutlines,
		Color = Color3.new(0.0666667, 0.0666667, 0.0666667),
		Locked = true,
		})
		local Weld = AddInstance("Weld",{
			Parent = o36,
			Part0 = o2,
			C0 = CFrame.new(7.12578773, -0.113092422, -56.9015541, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),
			Part1 = o36,
			C1 = CFrame.new(-7.12448502, -24.6703815, 56.9065475, 0.999990761, -0.00427558692, 0.000561015506, 0.000554933562, -0.00142352702, -0.999998868, 0.00427638087, 0.999989927, -0.00142114121),		
		})
		local o37 = AddInstance("SpecialMesh",{
		Parent = o36,
		MeshType = Enum.MeshType.Wedge,
		})
		local o38 = AddInstance("Part",{
		Name = "19",
		Parent = o1,
		Material = Enum.Material.Neon,
		BrickColor = BrickColor.new("New Yeller"),
		CanCollide = false,
		Size = Vector3.new(4.54285717, 5.01428556, 1.02857161),
		BackSurface = Enum.SurfaceType.SmoothNoOutlines,
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines,
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines,
		RightSurface = Enum.SurfaceType.SmoothNoOutlines,
		TopSurface = Enum.SurfaceType.SmoothNoOutlines,
		Color = Color3.new(0.972549, 0.972549, 0.972549),
		Locked = true,
		})
		local Weld = AddInstance("Weld",{
			Parent = o38,
			Part0 = o2,
			C0 = CFrame.new(7.12578773, -0.113092422, -56.9015541, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),
			Part1 = o38,
			C1 = CFrame.new(2.95587444, -56.843811, -7.12423134, -0.000554800034, 0.00142350839, 0.999998927, -0.00427680276, -0.999989867, 0.0014211227, 0.999990702, -0.00427600928, 0.000560882385),
		})
		local o39 = AddInstance("SpecialMesh",{
		Parent = o38,
		MeshId = "http://www.roblox.com/asset?id=156292343",
		Scale = Vector3.new(7, 7, 15),
		MeshType = Enum.MeshType.FileMesh,
		})
		local o40 = AddInstance("Part",{
		Name = "12",
		Parent = o1,
		Material = Enum.Material.Neon,
		BrickColor = BrickColor.new("New Yeller"),
		CanCollide = false,
		Size = Vector3.new(4.54285717, 5.01428556, 1.02857161),
		BackSurface = Enum.SurfaceType.SmoothNoOutlines,
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines,
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines,
		RightSurface = Enum.SurfaceType.SmoothNoOutlines,
		TopSurface = Enum.SurfaceType.SmoothNoOutlines,
		Color = Color3.new(0.972549, 0.972549, 0.972549),
		Locked = true,
		})
		local Weld = AddInstance("Weld",{
			Parent = o40,
			Part0 = o2,
			C0 = CFrame.new(7.12578773, -0.113092422, -56.9015541, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),
			Part1 = o40,
			C1 = CFrame.new(-12.5559368, 56.88451, -7.11906242, 0.000555172679, -0.00142338919, -0.999998868, 0.00427656481, 0.999989867, -0.00142100221, 0.999990702, -0.00427577086, 0.000561254215),
		})
		local o41 = AddInstance("SpecialMesh",{
		Parent = o40,
		MeshId = "rbxassetid://430139732",
		Scale = Vector3.new(0.100000001, 0.100000001, 0.100000001),
		MeshType = Enum.MeshType.FileMesh,
		})
		local o42 = AddInstance("Part",{
		Name = "2",
		Parent = o1,
		Material = Enum.Material.Neon,
		BrickColor = BrickColor.new("New Yeller"),
		CanCollide = false,
		Size = Vector3.new(0.400000006, 20, 5.02900028),
		BackSurface = Enum.SurfaceType.SmoothNoOutlines,
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines,
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines,
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines,
		RightSurface = Enum.SurfaceType.SmoothNoOutlines,
		TopSurface = Enum.SurfaceType.SmoothNoOutlines,
		Color = Color3.new(0.972549, 0.972549, 0.972549),
		Locked = true,
		})
		local Weld = AddInstance("Weld",{
			Parent = o42,
			Part0 = o2,
			C0 = CFrame.new(7.12578773, -0.113092422, -56.9015541, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),
			Part1 = o42,
			C1 = CFrame.new(7.1257782, -12.6132774, -56.9015694, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),
		})
----------------------------------------------------
		local cor = AddInstance("Part",{
		Parent = char.Genkadda,
		Name = "Thingy",
		Locked = true,
		BottomSurface = 0,
		CanCollide = false,
		Size = Vector3.new(5.5, 5.5, 5.5),
		Transparency = 1,
		TopSurface = 0,
		})
		local corw = AddInstance("Weld",{
		Parent = cor,
		Part0 = rarm,
		Part1 = cor,
		C0 = CFrame.new(0, -3, 0) * CFrame.Angles(0,0,0),
		C1 = CFrame.new(0, 0, 0) * CFrame.Angles(0,0,0),
		})
		local weld1 = AddInstance("Weld",{
		Parent = char.Genkadda,
		Part0 = cor,
		Part1 = o2,
		C0 = CFrame.new(-7, 57, 0),
		C1 = CFrame.new(7.12578773, -0.113092422, -56.9015541, -0.999990702, 0.00427567447, -0.000560928893, 0.00055484724, -0.00142344052, -0.999998868, -0.00427646795, -0.999989867, 0.00142105494),
		})
----------------------------------------------------
function Vanish()
	for i = 1, 10 do wait()
		for i,v in pairs(char.Genkadda:GetChildren()) do
			if v:IsA("Part") or v:IsA("WedgePart") then
				if v.Name ~= "HitBox" or v.Name ~= "Thingy" then
					v.Transparency = v.Transparency + 0.1
					
				end
			end
		end
	end
end
----------------------------------------------------
function Appear()
	for i = 1, 10 do wait()
		for i,v in pairs(char.Genkadda:GetChildren()) do
			if v:IsA("Part") or v:IsA("WedgePart") then
				if v.Name ~= "HitBox" or v.Name ~= "Thingy" then
					v.Transparency = v.Transparency - 0.1
				end
			end
		end
	end
end
----------------------------------------------------
local player = game:GetService("Players").LocalPlayer
local pchar = player.Character
local mouse = player:GetMouse()
local cam = workspace.CurrentCamera

local keysDown = {}
local flySpeed = 0
local MAX_FLY_SPEED = 80

local canFly = false
local flyToggled = false

local forward, side = 0, 0
local lastForward, lastSide = 0, 0

local floatBP = Instance.new("BodyPosition")
floatBP.maxForce = Vector3.new(0, math.huge, 0)
local flyBV = Instance.new("BodyVelocity")
flyBV.maxForce = Vector3.new(9e9, 9e9, 9e9)
local turnBG = Instance.new("BodyGyro")
turnBG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

mouse.KeyDown:connect(function(key)
	keysDown[key] = true
	
	if key == "f" then
		flyToggled = not flyToggled
		
	if not flyToggled then
		stanceToggle = "Normal"
		floatBP.Parent = nil
		flyBV.Parent = nil
		turnBG.Parent = nil
		root.Velocity = Vector3.new()
		pchar.Humanoid.PlatformStand = false
	end
end
	
end)
mouse.KeyUp:connect(function(key)
	keysDown[key] = nil
end)

local function updateFly()

	if not flyToggled then return end
	
	lastForward = forward
	lastSide = side
	
	forward = 0
	side = 0
	
	if keysDown.w then
		forward = forward + 1
	end
	if keysDown.s then
		forward = forward - 1
	end
	if keysDown.a then
		side = side - 1
	end
	if keysDown.d then
		side = side + 1
	end
	
	canFly = (forward ~= 0 or side ~= 0)
	
	if canFly then
		stanceToggle = "Floating"
		turnBG.Parent = root
		floatBP.Parent = nil
		flyBV.Parent = root
		
		flySpeed = flySpeed + 1 + (flySpeed / MAX_FLY_SPEED)
		if flySpeed > MAX_FLY_SPEED then flySpeed = MAX_FLY_SPEED end
	else
		floatBP.position = root.Position
		floatBP.Parent = root
		
		flySpeed = flySpeed - 1
		if flySpeed < 0 then flySpeed = 0 end
	end
	
	local camCF = cam.CoordinateFrame
	local in_forward = canFly and forward or lastForward
	local in_side = canFly and side or lastSide
	
	flyBV.velocity = ((camCF.lookVector * in_forward) + (camCF * CFrame.new(in_side, 
in_forward * 0.2, 0).p) - camCF.p) * flySpeed
	
	turnBG.cframe = camCF * CFrame.Angles(-math.rad(forward * (flySpeed / MAX_FLY_SPEED)), 0, 
0)
end

game:service'RunService'.RenderStepped:connect(function()
	if flyToggled then
		pchar.Humanoid.PlatformStand = true
	end
	updateFly()
end)
----------------------------------------------------
o42.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.Slashing == true and Debounces.Slashed == false then
                            Debounces.Slashed = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.huge)
                            wait(.3)
                            Debounces.Slashed = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.Slashing == true and Debounces.Slashed == false then
                            Debounces.Slashed = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.huge)
                            wait(.3)
                Debounces.Slashed = false
				end
            end
        end
    end    
end)
----------------------------------------------------
ptz = {0.7, 0.8, 0.9, 1}
idz = {"161006212", "161006195"}
mouse.KeyDown:connect(function(key)
    if key == "q" then
        if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
			for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(5,0.65,-6)*CFrame.Angles(math.rad(60),math.rad(70),math.rad(70)), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,-1,2.2) *CFrame.Angles(math.rad(-20),math.rad(0),math.rad  (-40)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,6.8,0)*CFrame.Angles(math.rad(0),math.rad(-50), math.rad(0)),   0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(-.4, -1, 0) * CFrame.Angles(math.rad(0), math.rad(70),   math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.1, -1, 0) * CFrame.Angles (math.rad(-10), 0, math.rad(-10)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.1, -1, 0) * CFrame.Angles (math.rad(10), 0, math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait(2)
			end
				z = Instance.new("Sound", hed)
				z.SoundId = "rbxassetid://"..idz[math.random(1,#idz)]
				z.Pitch = ptz[math.random(1,#ptz)]
				z.Volume = math.huge
				wait(.01)
				z:Play()
				Debounces.Slashing = true
			for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2, -2, 3) * CFrame.Angles(math.rad(-40),math.rad(-20),math.rad(40)), 0.3)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1, 0.65, -.3) * CFrame.Angles(math.rad(65),math.rad(-20),math.rad(30)), 0.3)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 6.8, 0) * CFrame.Angles(math.rad(-9),math.rad(35), math.rad(0)), 0.3)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 1) * CFrame.Angles(math.rad(0), math.rad(-65), math.rad(0)), 0.3)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.1, -1, 0) * CFrame.Angles(math.rad(10), 0, math.rad(-10)), 0.3)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.1, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(10)), 0.3)
			if Debounces.on == false then break end
			rs:wait(2)
			end
				Debounces.Slashing = false
			z:Destroy()
			cor.Weld.C1 = CFrame.Angles(0,0,0)
		if Debounces.CanAttack == false then
			Debounces.CanAttack = true
			Debounces.NoIdl = false
			Debounces.on = false
			end
		end
	end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "r" then
        if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
				for i = 1, 20 do
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.1, 0.6, -.4) * CFrame.Angles(math.rad(130), 0, math.rad(40)), 0.3)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.1, 0.6, -.4) * CFrame.Angles(math.rad(130), 0, math.rad(-40)), 0.3)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), 0, 0), 0.3)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 6.8, 0) * CFrame.Angles(math.rad(50), 0, 0), 0.3)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, 0), 0.3)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.2, -.5) * CFrame.Angles(math.rad(-10), 0, 0), 0.3)
					cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 2, 0) * CFrame.Angles (math.rad(40), math.rad(0), math.rad(0)), 0.35)
					if Debounces.on==false then break end
					rs:wait(2)
				end
				Debounces.Slashing = true
				z = Instance.new("Sound",hed)
				z.SoundId = "rbxassetid://206083107"
				z.Pitch = .75
				z.Volume = .65
				wait(0.1)
				z:Play()
				z1 = Instance.new("Sound", hed)
				z1.SoundId = "rbxassetid://"..idz[math.random(1,#idz)]
				z1.Pitch = ptz[math.random(1,#ptz)]
				z1.Volume = math.huge
				wait(.01)
				z1:Play()
				for i = 1, 20 do
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.1, 0.6, -.4) * CFrame.Angles(math.rad(50), 0, math.rad(40)), 0.3)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.1, 0.6, -.4) * CFrame.Angles(math.rad(50), 0, math.rad(-40)), 0.3)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2, 0) * CFrame.Angles(math.rad(-30), 0, 0), 0.3)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 6.8, 0) * CFrame.Angles(math.rad(10), 0, 0), 0.3)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -.7) * CFrame.Angles(math.rad(20), 0, 0), 0.3)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.1) * CFrame.Angles(math.rad(-40), 0, 0), 0.3)
					cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 2, 0) * CFrame.Angles (math.rad(40), math.rad(20), math.rad(20)), 0.35)
					if Debounces.on==false then break end
					rs:wait(2)
				end
				Debounces.Slashing = false
				cor.Weld.C1 = CFrame.Angles(0,0,0)
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
			end
		end
	end
end)
-------------------------------
mouse.KeyDown:connect(function(key)
    if key == "g" then
        if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
			Debounces.Slashing = true
				for i = 1, 8 do
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-8.2, -2.9, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-90)), 0.8)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(8.2, -2.9, 0) * CFrame.Angles(math.rad(0), 0, math.rad(90)), 0.8)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, 0), 0.8)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 6.8, 0) * CFrame.Angles(0, 0, 0), 0.8)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.8)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.8)
					cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 2, 0) * CFrame.Angles (math.rad(80), math.rad(0), math.rad(0)), 0.35)
					if Debounces.on==false then break end
					rs:wait(2)
				end
				for i = 1, 1440, 48 do
            		torso.Weld.C1 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(i), math.rad(0))
					rs:wait(4)
				end
				torso.Weld.C1 = CFrame.new(0, -1, 0)
				cor.Weld.C1 = CFrame.Angles(0,0,0)
				Debounces.Slashing = false
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
			end
		end
	end
end)
----------------------------------------------------
pt = {6.6, 6.8, 7, 7.2, 7.4}
mouse.KeyDown:connect(function(key)
    if key == "h" then
        if Debounces.CanJoke == true then
            Debounces.CanJoke = false
            u = Instance.new("Sound",char)
            u.SoundId = "http://www.roblox.com/asset/?id=261303790"
            u.Pitch = pt[math.random(1,#pt)]
            u.Volume = math.huge
            u2 = Instance.new("Sound",char)
            u2.SoundId = "http://www.roblox.com/asset/?id=261303790"
            u2.Pitch = u.Pitch
            u2.Volume = math.huge
            u3 = Instance.new("Sound",char)
            u3.SoundId = "http://www.roblox.com/asset/?id=261303790"
            u3.Pitch = u.Pitch
            u3.Volume = math.huge
            wait(.01)
            u:Play()
            u2:Play()
            u3:Play()
            wait(1.5)
            u:Destroy()
            u2:Destroy()
            u3:Destroy()
            if Debounces.CanJoke == false then
                Debounces.CanJoke = true
            end
        end
    end
end)
----------------------------------------------------
Melee = false
mouse.KeyDown:connect(function(key)
    if key == "m" then
        if Melee == false then
            Melee = true
			Vanish()
        stanceToggle = "Melee"
    elseif Melee == true then
        Melee = false
		Appear()
        stanceToggle = "Normal"
        end
    end
end)
-------------------------------
mouse.KeyDown:connect(function(key)
    if string.byte(key) == 48 then
    	if Debounces.CanAttack == true then
			if stanceToggle ~= "Floating" then
				char.Humanoid.WalkSpeed = 80
				elseif Debounces.CanAttack == false then
					elseif stanceToggle == "Floating" then
				wait()
			end
        end
    end
end)
mouse.KeyUp:connect(function(key)
    if string.byte(key) == 48 then
        char.Humanoid.WalkSpeed = 16
    end
end)
-------------------------------
local animpose = "Idle"
local lastanimpose = "Idle"
local sine = 0
local change = 1
local val = 0
local ffing = false
-------------------------------
--[[if stanceToggle == "Sitting" then
	if wait(math.random(1,2)) == 1 then
		stanceToggle = "Sitting2"
		wait(8)
		stanceToggle = "Sitting"
	end
end]]--
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
if stanceToggle == "Normal" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,-2.2,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(40)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,-0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-20)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,6.8,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(0, -1.2, -0.5) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0, -1.2, -0.5) * CFrame.Angles(math.rad(0), math.rad(-15), math.rad(20)), 0.2)
cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
end
elseif stanceToggle == "Floating" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,-0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,-0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,6.8,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1-0.4*math.cos(sine/14), 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.1, -1, 0) * CFrame.Angles(0, 0, math.rad(-8-2*math.cos(sine/14))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.1, -1, 0) * CFrame.Angles(0, 0, math.rad(8+2*math.cos(sine/14))), 0.4)
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
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,-2.2+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(40+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,-0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-20-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,6.8,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/14)),math.rad(50),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(0, -1.2, -0.5) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0, -1.2, -0.5) * CFrame.Angles(math.rad(0), math.rad(-15), math.rad(20)), 0.2)
elseif stanceToggle == "Melee" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,-0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(20+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,-0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,6.8,-.2)*CFrame.Angles(math.rad(-20+1*math.cos(sine/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
elseif stanceToggle == "Floating" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,-0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,-0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,6.8,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1-0.4*math.cos(sine/14), 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.1, -1, 0) * CFrame.Angles(0, 0, math.rad(-8-2*math.cos(sine/14))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.1, -1, 0) * CFrame.Angles(0, 0, math.rad(8+2*math.cos(sine/14))), 0.4)
end
elseif animpose == "Walking" then
if stanceToggle == "Normal" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,-2.2, 0)*CFrame.Angles(math.rad(-20), math.rad(-20),math.rad(40)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0, -math.sin(sine/8)/2.8)*CFrame.Angles(math.sin(sine/8)/4, -math.sin(sine/8)/2, math.rad(-10)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,6.8,0)*CFrame.Angles(math.rad(-8+2*math.cos(sine/4)), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.1*math.cos(sine/4), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/4)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1-0.14*math.cos(sine/8)/2.8, -0.05 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + -math.sin(sine/8)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1+0.14*math.cos(sine/8)/2.8, -0.05 + -math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + math.sin(sine/8)/2.3, 0, 0), .4)
elseif stanceToggle == "Melee" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0-.05*math.cos(sine/4), math.sin(sine/8)/4) * CFrame.Angles(-math.sin(sine/8)/2.8, -math.sin(sine/8)/3, math.rad(10+2*math.cos(sine/4))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0+.05*math.cos(sine/4), -math.sin(sine/8)/4)*CFrame.Angles(math.sin(sine/8)/2.8, -math.sin(sine/8)/3, math.rad(-10-2*math.cos(sine/4))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,6.8,0)*CFrame.Angles(math.rad(-8+2*math.cos(sine/4)), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.07*math.cos(sine/4), 0) * CFrame.Angles(math.rad(-4+1*math.cos(sine/4)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.1, -1-0.14*math.cos(sine/8)/2.8, -0.05 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + -math.sin(sine/8)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.1, -1+0.14*math.cos(sine/8)/2.8, -0.05 + -math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + math.sin(sine/8)/2.3, 0, 0), .4)
elseif stanceToggle == "Floating" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,-0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,-0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 6.8, -.2) * CFrame.Angles(math.rad(-14-4*math.cos(sine/14)),0,0), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.1, -1, 0) * CFrame.Angles(math.rad(0-8*math.cos(sine/14)), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.1, -1, 0) * CFrame.Angles(math.rad(1-9*math.cos(sine/13)), 0, math.rad(8)), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1-0.2*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
end
elseif animpose == "Running" then
if stanceToggle == "Normal" then
change = 1
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 6.8, 0) * CFrame.Angles  (math.rad(44), math.rad (0), math.rad(0)), 0.15)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 1-0.1*math.cos(sine/14), -1) * CFrame.Angles(math.rad(-  80),  math.rad(0), 0), 0.15)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-4, -0.5, 0) * CFrame.Angles(math.rad  (0), math.rad(50),  math.rad(-40)), 0.15)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(4, -0.5, 0) * CFrame.Angles(math.rad(0),   math.rad(-50),  math.rad(40)), 0.15)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.1, -1, 0) * CFrame.Angles(math.rad(8),   math.rad(0), math.rad(- 10)), .15)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.1, -1, 0) * CFrame.Angles(math.rad(8),   math.rad(0), math.rad(10)),  .15)
elseif stanceToggle == "Floating" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,-0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,-0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = CFrame.new(0,6.8,0)*CFrame.Angles(math.rad(-14-4*math.cos(sine/14)),0,0)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.1, -1, 0) * CFrame.Angles(math.rad(-10-12*math.cos(sine/16)), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.1, -1, 0) * CFrame.Angles(math.rad(-10-12*math.cos(sine/16)), 0, math.rad(8)), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1-0.4*math.cos(sine/14), -.2) * CFrame.Angles(math.rad(-15),0, math.rad(0)), 0.05)
end
end
end
end)

Spawn(function()
	while wait() do
		updateFly()
	end
end)

Spawn(function()
	while wait(5) do
		GroundWave3()
	end
end)
Spawn(function()
	while wait(0) do
		hum.MaxHealth = 1.79769e+308
		hum.Health = 1.79769e+308
	end
end)
function Lightning(Part0,Part1,Times,Offset,Color,Thickness,Trans) -- Lightning module
    --[[Part0 = Vector3 (Start pos)
		Part1 = Vector3 (End pos)
		Times = number (Amount of lightning parts)
		Offset = number (Offset)
		Color = color (brickcolor value)
		Thickness = number (thickness)
		Trans = number (transparency)
    ]]--
    local magz = (Part0 - Part1).magnitude
    local curpos = Part0
    local trz = {-Offset,Offset}
    for i=1,Times do
        local li = Instance.new("Part", torso)
		li.Name = "Lightning"
		li.TopSurface =0
		li.Material = "Neon"
		li.BottomSurface = 0
		li.Anchored = true
		li.Locked = true
		li.Transparency = Trans or 0.4
		li.BrickColor = BrickColor.new(Color)
		li.formFactor = "Custom"
		li.CanCollide = false
		li.Size = Vector3.new(Thickness,Thickness,magz/Times)
        local Offzet = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)])
        local trolpos = CFrame.new(curpos,Part1)*CFrame.new(0,0,magz/Times).p+Offzet
        if Times == i then
        local magz2 = (curpos - Part1).magnitude
        li.Size = Vector3.new(Thickness,Thickness,magz2)
        li.CFrame = CFrame.new(curpos,Part1)*CFrame.new(0,0,-magz2/2)
        else
        li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
        end
        curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p
        game.Debris:AddItem(li,.1)
    end
end

BodyParts = {} -- Parts to emit lightning effects from
for _, v in pairs(char:GetChildren()) do
    if v:IsA("Part") then
        table.insert(BodyParts, v)
    end
end

Bounding = {} -- Calculate the bounding boxes
for _, v in pairs(BodyParts) do
	local temp = {X=nil, Y=nil, Z=nil}
	temp.X = v.Size.X/2 * 35
	temp.Y = v.Size.Y/2 * 35
	temp.Z = v.Size.Z/2 * 35
	Bounding[v.Name] = temp
	--table.insert(Bounding, v.Name, temp)
end

while wait(0) do -- Emit the Lightning effects randomly
	local Body1 = BodyParts[math.random(#BodyParts)]
	local Body2 = BodyParts[math.random(#BodyParts)]
	local Pos1 = Vector3.new(
		math.random(-Bounding[Body1.Name].X, Bounding[Body1.Name].X)/35,
		math.random(-Bounding[Body1.Name].Y, Bounding[Body1.Name].Y)/35,
		math.random(-Bounding[Body1.Name].Z, Bounding[Body1.Name].Z)/35
)
	local Pos2 = Vector3.new(
		math.random(-Bounding[Body2.Name].X, Bounding[Body2.Name].X)/35,
		math.random(-Bounding[Body2.Name].Y, Bounding[Body2.Name].Y)/35,
		math.random(-Bounding[Body2.Name].Z, Bounding[Body2.Name].Z)/35
)
	local SPos1 = Body1.Position + Pos1
	local SPos2 = Body2.Position + Pos2
	Lightning(SPos1, SPos2, 4, 3, "New Yeller", .3, .56)
end