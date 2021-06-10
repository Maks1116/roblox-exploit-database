--[[ 










 ________  ___       ________     ___    ___ ___    ___ ___    ___ 
|\   __  \|\  \     |\   __  \   |\  \  /  /|\  \  /  /|\  \  /  /|
\ \  \|\ /\ \  \    \ \  \|\  \  \ \  \/  / | \  \/  / | \  \/  / /
 \ \   __  \ \  \    \ \  \\\  \  \ \    / / \ \    / / \ \    / / 
  \ \  \|\  \ \  \____\ \  \\\  \  /     \/   /     \/   \/  /  /  
   \ \_______\ \_______\ \_______\/  /\   \  /  /\   \ __/  / /    
    \|_______|\|_______|\|_______/__/ /\ __\/__/ /\ __\\___/ /     
                                 |__|/ \|__||__|/ \|__\|___|/      
                                                                   
                                                                   







 _____ ______   ________  ________  _______           ________      ___    ___      ___       ________  ________  ___  ________      
|\   _ \  _   \|\   __  \|\   ___ \|\  ___ \         |\   __  \    |\  \  /  /|    |\  \     |\   __  \|\   __  \|\  \|\   ____\     
\ \  \\\__\ \  \ \  \|\  \ \  \_|\ \ \   __/|        \ \  \|\ /_   \ \  \/  / /    \ \  \    \ \  \|\  \ \  \|\  \ \  \ \  \___|_    
 \ \  \\|__| \  \ \   __  \ \  \ \\ \ \  \_|/__       \ \   __  \   \ \    / /      \ \  \    \ \   __  \ \   ____\ \  \ \_____  \   
  \ \  \    \ \  \ \  \ \  \ \  \_\\ \ \  \_|\ \       \ \  \|\  \   \/  /  /        \ \  \____\ \  \ \  \ \  \___|\ \  \|____|\  \  
   \ \__\    \ \__\ \__\ \__\ \_______\ \_______\       \ \_______\__/  / /           \ \_______\ \__\ \__\ \__\    \ \__\____\_\  \ 
    \|__|     \|__|\|__|\|__|\|_______|\|_______|        \|_______|\___/ /             \|_______|\|__|\|__|\|__|     \|__|\_________\
                                                                  \|___|/                                                \|_________|
                                                                                                                                     
                                                                                                                                     



 ___       __   ___  ___  ___  _________  _______   ___       ___  ________  _________  _______   ________          ________      ___    ___      ________  ________  ________  ________  ________  _______   ________  ________      
|\  \     |\  \|\  \|\  \|\  \|\___   ___\\  ___ \ |\  \     |\  \|\   ____\|\___   ___\\  ___ \ |\   ___ \        |\   __  \    |\  \  /  /|    |\   __  \|\   __  \|\   __  \|\_____  \|\_____  \|\  ___ \ |\   __  \|\   ____\     
\ \  \    \ \  \ \  \\\  \ \  \|___ \  \_\ \   __/|\ \  \    \ \  \ \  \___|\|___ \  \_\ \   __/|\ \  \_|\ \       \ \  \|\ /_   \ \  \/  / /    \ \  \|\ /\ \  \|\  \ \  \|\  \\|___/  /|\|___/  /\ \   __/|\ \  \|\  \ \  \___|_    
 \ \  \  __\ \  \ \   __  \ \  \   \ \  \ \ \  \_|/_\ \  \    \ \  \ \_____  \   \ \  \ \ \  \_|/_\ \  \ \\ \       \ \   __  \   \ \    / /      \ \   __  \ \   _  _\ \   __  \   /  / /    /  / /\ \  \_|/_\ \   _  _\ \_____  \   
  \ \  \|\__\_\  \ \  \ \  \ \  \   \ \  \ \ \  \_|\ \ \  \____\ \  \|____|\  \   \ \  \ \ \  \_|\ \ \  \_\\ \       \ \  \|\  \   \/  /  /        \ \  \|\  \ \  \\  \\ \  \ \  \ /  /_/__  /  /_/__\ \  \_|\ \ \  \\  \\|____|\  \  
   \ \____________\ \__\ \__\ \__\   \ \__\ \ \_______\ \_______\ \__\____\_\  \   \ \__\ \ \_______\ \_______\       \ \_______\__/  / /           \ \_______\ \__\\ _\\ \__\ \__\\________\\________\ \_______\ \__\\ _\ ____\_\  \ 
    \|____________|\|__|\|__|\|__|    \|__|  \|_______|\|_______|\|__|\_________\   \|__|  \|_______|\|_______|        \|_______|\___/ /             \|_______|\|__|\|__|\|__|\|__|\|_______|\|_______|\|_______|\|__|\|__|\_________\
                                                                     \|_________|                                               \|___|/                                                                                   \|_________|
                                                                                                                                                                                                                                      
                                                                                                                                                                                                                                      



]]




local p = game.Players.LocalPlayer
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
it = Instance.new
local debris=game:service"Debris"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
ptz = {0.8, 0.85, 0.9, 0.95, 1, 1.05, 1.1}
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
local myVars = { }
myVars[1] = "none"
local Neonsc = {BrickColor.new("Bright red"), BrickColor.new("Bright orange"), BrickColor.new("Bright yellow"), BrickColor.new("Bright green"), BrickColor.new("Bright blue"), BrickColor.new("Royal purple"), BrickColor.new("Bright violet")}
local colc = math.random(1,7)

local rainbowssl = false

local newMode = false

local swordPowerUp = false

local sword2 = false
-------------------------------------INITIATE

local d0arm = { }

myVars[9] = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)

function startBloxxy()
local eff3 = Instance.new("Part", char)
eff3.Size = Vector3.new(20, 20, 20)
eff3.Transparency = 0
eff3.Material = "Neon"
eff3.Anchored = true
eff3.CanCollide = false
eff3.Shape = "Ball"
eff3.CFrame = char.Torso.CFrame
for i = 1, 40 do
    eff3.Size = eff3.Size - Vector3.new(0.5, 0.5, 0.5)
    eff3.CFrame = char.Torso.CFrame * CFrame.Angles(math.random(), math.random(), math.random())
    eff3.BrickColor = BrickColor.Random()
    wait()
end
eff3:Remove()

end
newMode = true
---------------------------------------


local verlet = {}
verlet.step_time = 1 / 50
verlet.gravity = Vector3.new(0, -10, 0)

local char = game.Players.LocalPlayer.Character
local torso = char:WaitForChild("Torso")
local parts = {}
local render = game:GetService("RunService").RenderStepped

wait(2)

local point = {}
local link = {}
local rope = {}

local function ccw(A,B,C)
    return (C.y-A.y) * (B.x-A.x) > (B.y-A.y) * (C.x-A.x)
end

local function intersect(A,B,C,D)
    return ccw(A,C,D) ~= ccw(B,C,D) and ccw(A,B,C) ~= ccw(A,B,D)
end

local function vec2(v)
	return Vector2.new(v.x, v.z)
end

function point:step()
	if not self.fixed then
		local derivative = (self.position - self.last_position) * 0.95
		self.last_position = self.position
		self.position = self.position + derivative + (self.velocity * verlet.step_time ^ 2)
		--[[local torsoP = torso.CFrame * CFrame.new(-1, 0, 0.5)
		local torsoE = torso.CFrame * CFrame.new(1, 0, 0.5)
		local pointE = self.position + torso.CFrame.lookVector * 100
		local doIntersect = intersect(vec2(torsoP.p), vec2(torsoE.p), vec2(self.position), vec2(pointE))
		if not doIntersect then
			self.postition = self.position - torso.CFrame.lookVector * 10
		end]]
	end
end

function link:step()
	for i = 1, 1 do
		local distance = self.point1.position - self.point2.position
		local magnitude = distance.magnitude
		local differance = (self.length - magnitude) / magnitude
		local translation = ((self.point1.fixed or self.point2.fixed) and 1 or 0.6) * distance * differance
		if not self.point1.fixed then
			self.point1.position = self.point1.position + translation
		end
		if not self.point2.fixed then
			self.point2.position = self.point2.position - translation
		end
	end
end

function verlet.new(class, a, b, c)
	if class == "Point" then
		local new = {}
		setmetatable(new, {__index = point})
		new.class = class
		new.position = a or Vector3.new()
		new.last_position = new.position
		new.velocity = verlet.gravity
		new.fixed = false
		return new
	elseif class == "Link" then
		local new = {}
		setmetatable(new, {__index = link})
		new.class = class
		new.point1 = a
		new.point2 = b
		new.length = c or (a.position - b.position).magnitude
		return new
	elseif class == "Rope" then
		local new = {}
		setmetatable(new, {__index = link})
		new.class = class
		new.start_point = a
		new.finish_point = b
		new.points = {}
		new.links = {}
		local inc = (b - a) / 10
		for i = 0, 10 do
			table.insert(new.points, verlet.new("Point", a + (i * inc)))
		end
		for i = 2, #new.points do
			table.insert(new.links, verlet.new("Link", new.points[i - 1], new.points[i]))
		end
		return new
	end
end

local tris = {}
local triParts = {}

local function GetDiscoColor(hue)
 local section = hue % 1 * 3
 local secondary = 0.5 * math.pi * (section % 1)
 if section < 1 then
  return Color3.new(1, 1 - math.cos(secondary), 1 - math.sin(secondary))
 elseif section < 2 then
  return Color3.new(1 - math.sin(secondary), 1, 1 - math.cos(secondary))
 else
  return Color3.new(1 - math.cos(secondary), 1 - math.sin(secondary), 1)
 end
end

local function setupPart(part)
	part.Anchored = true
	part.FormFactor = 3
	part.CanCollide = false
	part.TopSurface = 10
	part.BottomSurface = 10
	part.LeftSurface = 10
	part.RightSurface = 10
	part.FrontSurface = 10
	part.BackSurface = 10
	part.Material = "Neon"
	local m = Instance.new("SpecialMesh", part)
	m.MeshType = "Wedge"
	m.Scale = Vector3.new(0.2, 1, 1)
	return part
end

local function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x,  right.y, top.y, back.y, right.z, top.z, back.z)
end

local function drawTri(parent, a, b, c)
	local this = {}
	local mPart1 = table.remove(triParts, 1) or setupPart(Instance.new("Part"))
	local mPart2 = table.remove(triParts, 1) or setupPart(Instance.new("Part"))
	function this:Set(a, b, c)
		local ab, bc, ca = b-a, c-b, a-c
		local abm, bcm, cam = ab.magnitude, bc.magnitude, ca.magnitude
		local edg1 = math.abs(0.5 + ca:Dot(ab)/(abm*abm))
		local edg2 = math.abs(0.5 + ab:Dot(bc)/(bcm*bcm))
		local edg3 = math.abs(0.5 + bc:Dot(ca)/(cam*cam))
		if edg1 < edg2 then
			if edg1 >= edg3 then		
				a, b, c = c, a, b
				ab, bc, ca = ca, ab, bc
				abm = cam
			end
		else
			if edg2 < edg3 then
				a, b, c = b, c, a
				ab, bc, ca = bc, ca, ab
				abm = bcm
			else
				a, b, c = c, a, b
				ab, bc, ca = ca, ab, bc
				abm = cam
			end
		end
	 
		local len1 = -ca:Dot(ab)/abm
		local len2 = abm - len1
		local width = (ca + ab.unit*len1).magnitude
	 
		local maincf = CFrameFromTopBack(a, ab:Cross(bc).unit, -ab.unit)
	 
		if len1 > 0.2 then
			mPart1.Parent = parent
			mPart1.Size = Vector3.new(0.2, width, len1)
			mPart1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
		else
			mPart1.Parent = nil
		end
		
		if len2 > 0.2 then
			mPart2.Parent = parent
			mPart2.Size = Vector3.new(0.2, width, len2)
			mPart2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
		else
			mPart2.Parent = nil
		end	
	end
	function this:SetProperty(prop, value)
		mPart1[prop] = value
		mPart2[prop] = value
	end
	this:Set(a, b, c)
	function this:Destroy()
		mPart1:Destroy()
		mPart2:Destroy()
	end
	this.p1 = mPart1
	this.p2 = mPart2
	this.p1.BrickColor = BrickColor.new(GetDiscoColor(math.noise(0.5, 0.5, this.p1.CFrame.Y * 0.5 + time())))
	this.p2.BrickColor = BrickColor.new(GetDiscoColor(math.noise(0.5, 0.5, this.p2.CFrame.Y * 0.5 + time())))
	return this
end

function verlet.draw(object, id)
	if object.class == "Point" then
		local part = parts[id]
		part.BrickColor = BrickColor.new(1, 1, 1)
		part.Transparency = 0
		part.formFactor = 3
		part.Anchored = true
		part.CanCollide = false
		part.TopSurface = 0
		part.BottomSurface = 0
		part.Size = Vector3.new(0.35, 0.35, 0.35)
		part.Material = "Neon"
		part.CFrame = CFrame.new(object.position)
		part.Parent = torso
		return part
	elseif object.class == "Link" then
		local part = parts[id]
		local dist = (object.point1.position - object.point2.position).magnitude
		part.Size = Vector3.new(0.2, 0.2, dist)
		part.CFrame = CFrame.new(object.point1.position, object.point2.position) * CFrame.new(0, 0, dist * -0.5)
		part.Parent = torso
		return part
	end
end

function verlet.clear()
	for _, v in pairs(workspace:GetChildren()) do
		if v.Name == "Part" then
			v:Destroy()
		end
	end
end

local points = {}
local links = {}

for x = 0, 2 do
	points[x] = {}
	for y = 0, 3 do
		points[x][y] = verlet.new("Point", torso.Position + Vector3.new(x * 0.8 - 2, 2 - y * 0.8, 5 + y * 0.4))
		points[x][y].fixed = y == 0
	end
end

for x = 1, 2 do
	for y = 0, 3 do
		links[#links + 1] = verlet.new("Link", points[x][y], points[x - 1][y], 1 + y * 0.08)
	end
end

for x = 0, 2 do
	for y = 1, 3 do
		links[#links + 1] = verlet.new("Link", points[x][y], points[x][y - 1], 1.2 + y * 0.03)
	end
end

render:connect(function()
	for x = 0, 2 do
		for y = 0, 3 do
			if y == 0 then
				points[x][y].position = (torso.CFrame * CFrame.new(x * 1 - 1, 1, 0.5)).p
			else
				points[x][y]:step()
			end
		end
	end
	for i = 1, #links do
		links[i]:step()
	end
	for i = 1, #tris do
		triParts[#triParts + 1] = tris[i].p1
		triParts[#triParts + 1] = tris[i].p2
	end
	tris = {}
	for x = 1, 2 do
		for y = 1, 3 do
			tris[#tris + 1] = drawTri(torso, points[x - 1][y - 1].position, points[x - 1][y].position, points[x][y - 1].position)
			tris[#tris + 1] = drawTri(torso, points[x][y].position, points[x - 1][y].position, points[x][y - 1].position)
		end
	end
end)
----------------------------------------------------
local myDictionary = { }
function getDiscoMan(hummus)
for key, value in pairs(myDictionary) do
    if key.Name == hummus.Parent.Name then break end
end
Parts={}

local function GetDiscoColor(hue)
    local section = hue % 1 * 3
    local secondary = 0.5 * math.pi * (section % 1)
    if section < 1 then
        return Vector3.new(1, 1 - math.cos(secondary), 1 - math.sin(secondary))
    elseif section < 2 then
        return Vector3.new(1 - math.sin(secondary), 1, 1 - math.cos(secondary))
    else
        return Vector3.new(1 - math.cos(secondary), 1 - math.sin(secondary), 1)
    end
end
local Part = function(x,y,z,color,tr,cc,an,parent)
    local p = Instance.new('Part',parent or Weapon)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(x,y,z)
    p.BrickColor = BrickColor.new(color)
    p.CanCollide = cc
    p.Transparency = tr
    p.Anchored = an
    p.TopSurface,p.BottomSurface = 0,0
    p:BreakJoints''
    table.insert(Parts,p)
    return p
end
local Weld = function(p0,p1)
    local w = Instance.new('Motor',p0)
    w.Part0 = p0
    w.Part1 = p1
    return w 
end
local Mesh = function(par,num,x,y,z)
    local msh = 0
    if num == 1 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshId='rbxasset://fonts/torso.mesh'
        msh.TextureId='rbxasset://25701026'
    end
    if num == 2 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshId='rbxasset://fonts/head.mesh'
        msh.TextureId='rbxassetid://25701026'
    end
    msh.Scale = Vector3.new(x,y,z)
    return msh
end
local char=hummus.Parent
myDictionary[char] = "disco"

for key, value in pairs(myDictionary) do
for _,v in pairs(key:GetChildren()) do
    if v.ClassName=="Part" then
        v.Transparency=1
    elseif v.ClassName=="Hat" then
        v.Handle.Mesh.TextureId='rbxassetid://25701026'
        table.insert(Parts,v.Handle)
    end
end
t=Part(1,1,1,'',0,false,false,key)
Mesh(t,1,1,1,1)
Weld(key.Torso,t)
a=Part(1,1,1,'',0,false,false,key)
Mesh(a,1,.5,1,1)
Weld(key['Right Arm'],a)
a=Part(1,1,1,'',0,false,false,key)
Mesh(a,1,.5,1,1)
Weld(key['Left Arm'],a)
l=Part(1,1,1,'',0,false,false,key)
Mesh(l,1,.5,1,1)
Weld(key['Right Leg'],l)
l=Part(1,1,1,'',0,false,false,key)
Mesh(l,1,.5,1,1)
Weld(key['Left Leg'],l)
h=Part(1,1,1,'',0,false,false,key)
Mesh(h,2,1,1,1)
Weld(key.Head,h)
Spawn(function()
    while(coroutine.yield())do
        for i=1,#Parts do
            Parts[i].Mesh.VertexColor=GetDiscoColor(tick()*.5)--vertex 4 lyfe
        end
    end;
end);
key.Humanoid.MaxHealth = 999999
wait(0.5)
key.Humanoid.Health = 999999
end
end

local myFrozen = { }
function getFreeze(hummus)
local char = hummus.Parent
Coat = Instance.new("Part",char)
Coat.TopSurface = "Smooth"
Coat.BottomSurface = "Smooth"
Coat.Material = "Neon"
Coat.Size = Vector3.new(1.05, 1.05, 1.05)
Coat.CanCollide = false
Coat.Transparency = 0
Coat.BrickColor = Neonsc[colc]
CoatMesh = Instance.new("SpecialMesh", Coat)
CoatMesh.MeshType = "Brick"
CoatMesh.Scale = Vector3.new(2,1.8,1.1)
CoatWeld = Instance.new("Weld",char)
CoatWeld.Part0 = char.Torso
CoatWeld.Part1 = Coat
CoatWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

CoatRA = Instance.new("Part",char)
CoatRA.TopSurface = "Smooth"
CoatRA.BottomSurface = "Smooth"
CoatRA.Size = Vector3.new(1, 1, 1)
CoatRA.CanCollide = false
CoatRA.Transparency = 0
CoatRA.Material = "Neon"
CoatRA.BrickColor = Neonsc[colc]
CoatRAMesh = Instance.new("SpecialMesh", CoatRA)
CoatRAMesh.MeshType = "Brick"
CoatRAMesh.Scale = Vector3.new(1.1,1.8,1.1)
CoatRAWeld = Instance.new("Weld",char)
CoatRAWeld.Part0 = char["Right Arm"]
CoatRAWeld.Part1 = CoatRA
CoatRAWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

CoatLA = Instance.new("Part",char)
CoatLA.TopSurface = "Smooth"
CoatLA.BottomSurface = "Smooth"
CoatLA.Size = Vector3.new(1, 1, 1)
CoatLA.CanCollide = false
CoatLA.Transparency = 0
CoatLA.Material = "Neon"
CoatLA.BrickColor = Neonsc[colc]
CoatLAMesh = Instance.new("SpecialMesh", CoatLA)
CoatLAMesh.MeshType = "Brick"
CoatLAMesh.Scale = Vector3.new(1.1,1.8,1.1)
CoatLAWeld = Instance.new("Weld",char)
CoatLAWeld.Part0 = char["Left Arm"]
CoatLAWeld.Part1 = CoatLA
CoatLAWeld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

CoatRL = Instance.new("Part",char)
CoatRL.TopSurface = "Smooth"
CoatRL.BottomSurface = "Smooth"
CoatRL.Size = Vector3.new(1, 1, 1)
CoatRL.CanCollide = false
CoatRL.Transparency = 0
CoatRL.Material = "Neon"
CoatRL.BrickColor = Neonsc[colc]
CoatRLMesh = Instance.new("SpecialMesh", CoatRL)
CoatRLMesh.MeshType = "Brick"
CoatRLMesh.Scale = Vector3.new(1.1,0.5,1.1)
CoatRLWeld = Instance.new("Weld",char)
CoatRLWeld.Part0 = char["Right Leg"]
CoatRLWeld.Part1 = CoatRL
CoatRLWeld.C1 = CFrame.new(0, -0.7, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

CoatLL = Instance.new("Part",char)
CoatLL.TopSurface = "Smooth"
CoatLL.BottomSurface = "Smooth"
CoatLL.Size = Vector3.new(1, 1, 1)
CoatLL.CanCollide = false
CoatLL.Transparency = 0
CoatLL.Material = "Neon"
CoatLL.BrickColor = Neonsc[colc]
CoatLLMesh = Instance.new("SpecialMesh", CoatLL)
CoatLLMesh.MeshType = "Brick"
CoatLLMesh.Scale = Vector3.new(1.1,0.5,1.1)
CoatLLWeld = Instance.new("Weld",char)
CoatLLWeld.Part0 = char["Left Leg"]
CoatLLWeld.Part1 = CoatLL
CoatLLWeld.C1 = CFrame.new(0, -0.7, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

CoatRightDesign = Instance.new("Part",char)
CoatRightDesign.TopSurface = "Smooth"
CoatRightDesign.BottomSurface = "Smooth"
CoatRightDesign.Size = Vector3.new(1, 1, 1)
CoatRightDesign.CanCollide = false
CoatRightDesign.Material = "Neon"
CoatRightDesign.Transparency = 0
CoatRightDesign.BrickColor = Neonsc[colc]
CoatRightDesignMesh = Instance.new("SpecialMesh", CoatRightDesign)
CoatRightDesignMesh.MeshType = "Wedge"
CoatRightDesignMesh.Scale = Vector3.new(1.1,0.8,1.1)
CoatRightDesignWeld = Instance.new("Weld",char)
CoatRightDesignWeld.Part0 = char["Right Leg"]
CoatRightDesignWeld.Part1 = CoatRightDesign
CoatRightDesignWeld.C1 = CFrame.new(0, 0.1, 0)*CFrame.fromEulerAnglesXYZ(1.6, -1.6, 0)

CoatLeftDesign = Instance.new("Part",char)
CoatLeftDesign.TopSurface = "Smooth"
CoatLeftDesign.BottomSurface = "Smooth"
CoatLeftDesign.Size = Vector3.new(1, 1, 1)
CoatLeftDesign.CanCollide = false
CoatLeftDesign.Material = "Neon"
CoatLeftDesign.Transparency = 0
CoatLeftDesign.BrickColor = Neonsc[colc]
CoatLeftDesignMesh = Instance.new("SpecialMesh", CoatLeftDesign)
CoatLeftDesignMesh.MeshType = "Wedge"
CoatLeftDesignMesh.Scale = Vector3.new(1.1,0.8,1.1)
CoatLeftDesignWeld = Instance.new("Weld",char)
CoatLeftDesignWeld.Part0 = char["Left Leg"]
CoatLeftDesignWeld.Part1 = CoatLeftDesign
CoatLeftDesignWeld.C1 = CFrame.new(0, 0.1, 0)*CFrame.fromEulerAnglesXYZ(1.6, 1.6, 0)
nooutline(CoatLeftDesign)

coroutine.resume(coroutine.create(function()
while wait() do 
	
UpdatePart(hat,Rainbow(math.noise(0.5, 0.5, 0.5 + (time()/0.5))))
UpdatePart(Coat,Rainbow(math.noise(0.5, 0.5, 0.5 + (time()/0.5))))
UpdatePart(CoatRA,Rainbow(math.noise(0.5, 0.5, 0.5 + (time()/0.5))))
UpdatePart(CoatLA,Rainbow(math.noise(0.5, 0.5, 0.5 + (time()/0.5))))
UpdatePart(CoatLL,Rainbow(math.noise(0.5, 0.5, 0.5 + (time()/0.5))))
UpdatePart(CoatRL,Rainbow(math.noise(0.5, 0.5, 0.5 + (time()/0.5))))
UpdatePart(CoatRightDesign,Rainbow(math.noise(0.5, 0.5, 0.5 + (time()/0.5))))
UpdatePart(CoatLeftDesign,Rainbow(math.noise(0.5, 0.5, 0.5 + (time()/0.5))))

end
end)) 

hummus.WalkSpeed = 0
wait(3)

explosion = Instance.new("Explosion", game.Workspace)
explosion.BlastRadius = 1
explosion.Position = char.Parent.Torso.Position
explosion.BlastPressure = 10000
explosion.DestroyJointRadiusPercent = 1 -- neck welds won't be destroyed
explosion.ExplosionType = "CratersAndDebris"

end
----------------------------------------------------
Debounces = {
CanAttack = true;
NoIdl = false;
Slashing = false;
Slashed = false;
Slapping = false;
Slapped = false;
RPunch = false;
RPunched = false;
LPunch = false;
LPunched = false;
}
local Touche = {char.Name, }
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
        if not (t < 0 or t == 0 or t > 0) then         -- Failsafe
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
function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end
----------------------------------------------------
newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)
----------------------------------------------------
Blast = function()
	local Colors = {"Really red", "Really black"}
		local wave = Instance.new("Part", torso)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = rarm.CFrame
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshType = "Sphere"
		wm.Scale = Vector3.new(1,1,1)
		z = Instance.new("Sound",wave)
		z.SoundId = "rbxassetid://237035051"
		z.Volume = 1
		z.Pitch = .9
		z:Play()
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wave.Size = Vector3.new(1 + i*4, 1 + i*4, 1 + i*4)
		--wave.Size = wm.Scale
		wave.CFrame = rarm.CFrame
		wave.Transparency = (1/14)
		rs:wait()
		end
		rs:wait()
		wave:Destroy()
		z:Destroy()
	end)()
end
----------------------------------------------------
rarm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(1000)
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                            Debounces.RPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(1000)
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.RPunched = false
                                end
            end
        end
    end
end)
larm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(1000)
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                        Debounces.LPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4,8))
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.LPunched = false
                                end
            end
        end
    end
end)
----------------------------------------------------

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

function Punch()
    part=Instance.new('Part',mod4)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,1.5,-2.4)*CFrame.Angles(math.rad(0),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Really black')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=3270017'
    mesh.Scale=Vector3.new(3,3,3)
    part2=Instance.new('Part',mod4)
    part2.Anchored=true
    part2.CanCollide=false
    part2.FormFactor='Custom'
    part2.Size=Vector3.new(.2,.2,.2)
    part2.CFrame=root.CFrame*CFrame.new(0,1.5,-2.4)*CFrame.Angles(math.rad(90),0,0)
    part2.Transparency=.7
    part2.BrickColor=BrickColor.new('Really red')
    mesh2=Instance.new('SpecialMesh',part2)
    mesh2.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh2.Scale=Vector3.new(3,1.5,3)
    for i,v in pairs(FindNearestTorso(torso.CFrame.p,4))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(2,6))
        end
    end
    coroutine.resume(coroutine.create(function()
        for i=0,0.62,0.4 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(0.4,0.4,0.4)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(0.4,0.2,0.4)
            end
        part.Parent=nil
        part2.Parent=nil
    end))
end
----------------------------------------------------
rarm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(1000)
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                            Debounces.RPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(1000)
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.RPunched = false
				end
            end
        end
    end
end)
larm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(1000)
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                            Debounces.LPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(1000)
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.LPunched = false
				end
            end
        end
    end
end)
----------------------------------------------------
function newRay(start,face,range,wat)
        local rey=Ray.new(start.p,(face.p-start.p).Unit*range)
        hit,pos=Workspace:FindPartOnRayWithIgnoreList(rey,wat)
        return rey,hit,pos
end
----------------------------------------------------
function HasntTouched(plrname)
local ret = true
for _, v in pairs(Touche) do
if v == plrname then
ret = false
end
end
return ret
end
----------------------------------------------------
mod=Instance.new('Model',char)

function Burst()
    part=Instance.new('Part',mod)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,1,0)*CFrame.Angles(math.rad(90),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Really black')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh.Scale=Vector3.new(10,5,10)
    part2=part:clone()
    part2.Parent=mod
    part2.BrickColor=BrickColor.new('Bright red')
    mesh2=mesh:clone()
    mesh2.Parent=part2
    mesh2.Scale=Vector3.new(5,2.5,5)
    coroutine.resume(coroutine.create(function() 
        for i=0,1,0.1 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(1,1,1)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(1,1,1)
            end
        part.Parent=nil
        part2.Parent=nil
    end))
end
----------------------------------------------------

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

function Slam()
    part=Instance.new('Part',mod4)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,-2.8,-1.4)*CFrame.Angles(math.rad(90),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Really black')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=3270017'
    mesh.Scale=Vector3.new(3,3,3)
    part2=Instance.new('Part',mod4)
    part2.Anchored=true
    part2.CanCollide=false
    part2.FormFactor='Custom'
    part2.Size=Vector3.new(.2,.2,.2)
    part2.CFrame=root.CFrame*CFrame.new(0,-2.4,-1.6)
    part2.Transparency=.7
    part2.BrickColor=BrickColor.new('Royal purple')
    mesh2=Instance.new('SpecialMesh',part2)
    mesh2.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh2.Scale=Vector3.new(3,1.5,3)
    x = Instance.new("Sound",char)
    x.SoundId = "http://www.roblox.com/asset/?id=142070127"
    x.Pitch = ptez[math.random(1,#ptez)]
    x.Volume = 1
    wait(.1)
    x1 = Instance.new("Sound",char)
    x1.SoundId = "http://www.roblox.com/asset/?id=206082327"
    x1.Pitch = ptez[math.random(1,#ptez)]
    x1.Volume = 1
    wait(.1)
	x:Play()
    x1:Play()
    for i,v in pairs(FindNearestTorso(torso.CFrame.p,4))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(30,45))
        end
    end
    coroutine.resume(coroutine.create(function() 
        for i=0,0.62,0.13 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(0.4,0.4,0.4)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(0.4,0.2,0.4)
            end
        part.Parent=nil
        part2.Parent=nil
        x:Destroy()
    end))
end
----------------------------------------------------

rsi = game:GetService'RunService'
plrs = game:GetService'Players'
lp = plrs.LocalPlayer
c = lp.Character
root = lp.Character.HumanoidRootPart
human = c.Humanoid
FPS = 0
inf = 0
opos1 = Vector3.new()
opos2 = Vector3.new()
opos3 = Vector3.new()
waves = Instance.new("Model", c)
res = Instance.new("Model", c)
local function a()
local t=tick();
local l=t%1*3;
local t=.5*math.pi*(l%1);
if l<1 then
return Color3.new(1,1-math.cos(t),1-math.sin(t));
elseif l<2 then
return Color3.new(1-math.sin(t),1,1-math.cos(t));
else
return Color3.new(1-math.cos(t),1-math.sin(t),1);
end;
end;                       
speedParts = function()

	for i = 1, 4 do
		local pos = Vector3.new(math.sin(math.rad(inf + 360 * i)) * 2, math.sin(math.rad(inf + 260 * i) + math.pi / 2) * 2, -c.HumanoidRootPart.Velocity / 5) * (math.sin(tick()) + 2)
		local CFramepos = root.CFrame:toWorldSpace(CFrame.new(pos)).p
		local opos
		if i == 1 then
			opos = opos1
		elseif i == 2 then
			opos = opos2
		else
			opos = opos3
		end
		if human.MoveDirection ~= Vector3.new(0, 0, 0)  then
			local e
			if #res:children() <= 3 then
				e = Instance.new("Part")
			else
				e = res:FindFirstChild("Trail")
			end
			e.Parent = waves
			e.Anchored = true
			e.CanCollide = false
			e.Transparency = 0
			e.Material = "Neon"
			e.Name = "Trail"
			e.Color = a();
			e.Size = Vector3.new(.2, (CFramepos - opos).magnitude, .2)
			e.CFrame = CFrame.new((CFramepos + opos) / 2, opos) * CFrame.Angles(math.pi / 2, 0, 0)
		end
		if i == 1 then
			opos1 = CFramepos
		elseif i == 2 then
			opos2 = CFramepos
		else
			opos3 = CFramepos
		end
	end
end
                                                

local player = game.Players.LocalPlayer
local pchar = player.Character
local mouse = player:GetMouse()
local cam = workspace.CurrentCamera

local rad = math.rad

local keysDown = {}
local flySpeed = 70
local MAX_FLY_SPEED = 350

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

        turnBG.cframe = camCF * CFrame.Angles(-rad(forward * (flySpeed / MAX_FLY_SPEED)), 0,
0)
end

game:service'RunService'.RenderStepped:connect(function()
        if flyToggled then
                pchar.Humanoid.PlatformStand = true
        end
        updateFly()
end)
rsi.RenderStepped:connect(function()
	if flyToggled then
	FPS = 1 / rsi.RenderStepped:wait()
	for i, v in pairs (waves:children()) do
		v.Transparency = v.Transparency + .05 / (FPS / 60)
		if v.Transparency >= .98 then
			v.Transparency = 1
			v.Parent = res
		end
	end
	inf = inf + (8 + root.Velocity.magnitude / 15) / (FPS / 60)
	speedParts()
end
end)
-------------------------------
pts = {4, 4.2, 4.4, 4.6, 4.8, 5, 5.2, 5.4}
local pancho = false
mouse.KeyDown:connect(function(key)
    if key == "x" then
	if rainbowHands == false then
	pancho = false
        if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
			Debounces.ks = true
	larm.Touched:connect(function(ht)
        hit = ht.Parent

        if ht and hit:IsA("Model") then
                if hit:FindFirstChild("Humanoid") then
                    if hit.Name ~= p.Name then
                        if Debounces.Slapping == true and Debounces.Slapped == false then
                                Debounces.Slapped = true
				hit:BreakJoints()
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                    z.Volume = 1
                                    z:Play()
                                    z1 = Instance.new("Sound",char)
                                    z1.SoundId = "rbxassetid://261010715"
									z1.Pitch = pts[math.random(1,#pts)]
                                    z1.Volume = 1
                                    z2 = Instance.new("Sound",char)
                                    z2.SoundId = "rbxassetid://261010715"
									z2.Pitch = z1.Pitch
                                    z2.Volume = 1
                                    z3 = Instance.new("Sound",char)
                                    z3.SoundId = "rbxassetid://261010715"
									z3.Pitch = z1.Pitch
                                    z3.Volume = 1
                                    z1:Play()
                                    z2:Play()
                                    z3:Play()
                                    Debounces.ks=false
                                    end
                                    hit:FindFirstChild("Humanoid"):TakeDamage(100)

									hit:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 90
                                wait(.5)
                                Debounces.Slapped = false
								z:Destroy()
								z1:Destroy()
								z2:Destroy()
								z3:Destroy()
                        end
                    end
                end
        elseif ht and hit:IsA("Hat") then
            if hit.Parent.Name ~= p.Name then
                if hit.Parent:FindFirstChild("Humanoid") then
                       if Debounces.Slapping == true and Debounces.Slapped == false then
                                Debounces.Slapped = true
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                    z.Volume = 1
                                    z:Play()
                                    z1 = Instance.new("Sound",char)
                                    z1.SoundId = "rbxassetid://261010715"
									z1.Pitch = pts[math.random(1,#pts)]
                                    z1.Volume = 1
                                    z2 = Instance.new("Sound",char)
                                    z2.SoundId = "rbxassetid://261010715"
									z2.Pitch = z1.Pitch
                                    z2.Volume = 1
                                    z3 = Instance.new("Sound",char)
                                    z3.SoundId = "rbxassetid://261010715"
									z3.Pitch = z1.Pitch
                                    z3.Volume = 1
                                    z1:Play()
                                    z2:Play()
                                    z3:Play()
                                    Debounces.ks=false
                                    end
                                hit.Parent:FindFirstChild("Humanoid"):TakeDamage(10)
                                hit:FindFirstChild("Torso"):BreakJoints()
                    wait(.5)
                    Debounces.Slapped = false
					z:Destroy()
					z1:Destroy()
					z2:Destroy()
					z3:Destroy()
					end
                end
            end
        end    
    end)
				for i = 1, 14 do
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3, 0.5, -.3) * CFrame.Angles(math.rad(50), 0, math.rad(40)), 0.5)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), 0, math.rad(40)), 0.5)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.5)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.5)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.5)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.5)
					if Debounces.on==false then break end
					rs:wait(2)
				end
				Debounces.Slapping = true
				for i = 1, 20 do
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3, 0.7, .3) * CFrame.Angles(math.rad(50), 0, math.rad(-110)), 0.6)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), 0, math.rad(40)), 0.6)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-70), math.rad(0)), 0.6)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(70), math.rad(0)), 0.6)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.6)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.6)
					if Debounces.on==false then break end
					rs:wait(2)
				end
				Debounces.Slapping = false
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
			end
		end
	end
	end
end)
-------------------------------
Charging = false
mouse.KeyDown:connect(function(key)
	if key == "r" then
		if Charging == false then
			Charging = true
			if Debounces.CanAttack == true then
				Debounces.CanAttack = false
				Debounces.NoIdl = true
				Debounces.on = true
				for i = 1,20 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.65,-.4)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(-40)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.65,-.4)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(40)), 0.2)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(0),0), 0.2)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, .4, -0.8) * CFrame.Angles(math.rad(-6), math.rad(0), math.rad(0)), 0.2)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, .4, -0.8) * CFrame.Angles(math.rad(-6), math.rad(0), math.rad(0)), 0.2)
					if Debounces.on == false then break end
					rs:wait()
				end
				--[[for i = 1,20 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(-20),math.rad(50)), 0.4)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(20),math.rad(-50)), 0.4)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,.1)*CFrame.Angles(math.rad(34),math.rad(0),0), 0.4)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.4)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(-10)), 0.4)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(10)), 0.4)
					if Debounces.on == false then break end
					rs:wait()
				end]]--
pt=Instance.new('Part',torso)
pt.Anchored=true
pt.CanCollide=false
pt.Locked = true
pt.FormFactor='Custom'
pt.Size=Vector3.new(1,1,1)
pt.CFrame=root.CFrame*CFrame.new(0,-1,0)
pt.Transparency=.6
pt.BrickColor=BrickColor.new('Really black')
msh=Instance.new('SpecialMesh',pt)
msh.MeshId='http://www.roblox.com/asset/?id=20329976'
msh.Scale=Vector3.new(8,4,8)
pt2=pt:clone()
pt2.Parent = torso
pt2.CFrame=root.CFrame*CFrame.new(0,-1,0)
pt2.BrickColor=BrickColor.new("Royal purple")
msh2=msh:clone()
msh2.Parent=pt2
msh2.Scale=Vector3.new(10,5,10)

custommath={25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,-25,-26,-27,-28,-29,-30,-31,-32,-33,-34,-35,-36,-37,-38,-39,-40,-41,-42,-43,-44,-45,-46,-47,-48,-49,-50,-51,-52,-53,-54,-55,-56,-57,-58,-59,-60,-61,-62,-63,-64,-65,-66,-67,-68,-69,-70,-71,-72,-73,-74,-75,-76,-77,-78,-79,-80,-81,-82,-83,-84,-85,-86,-87,-88,-89,-90,-91,-92,-93,-94,-95,-96,-97,-98,-99,-100}

bl = Instance.new("Part", char)
bl.Locked = true
bl.Name = "Shell"
bl.BrickColor = BrickColor.new("Really black")
bl.Anchored = true
bl.CanCollide = false
bl.Transparency = 0
bl.Reflectance = 0
bl.BottomSurface = 0
bl.TopSurface = 0
bl.Shape = 0
blm = Instance.new("SpecialMesh",bl)
blm.MeshType = "Sphere"
blm.Scale = Vector3.new(1,1,1)
blm.MeshId = "rbxassetid://9982590"

	coroutine.resume(coroutine.create(function()
        for i=1, math.huge, 4 do
			if Charging == true then
				rs:wait()
				bl.CFrame = root.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-i/10), math.rad(-i/10), math.rad(i/10))
				blm.Scale = blm.Scale + Vector3.new(0.1, 0.1, 0.1)
				bl.Transparency = bl.Transparency + 0.005
				pt.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(i*2),0)
				pt2.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(-i*2),0)
				msh.Scale = msh.Scale + Vector3.new(0.05,0,0.05)
				msh2.Scale = msh2.Scale + Vector3.new(0.05,0,0.05)
				elseif Charging == false then break
			end
		end
    end))

repeat
    local p = Instance.new('Part',torso)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(1,1,1)
    p.BrickColor = workspace.Base.BrickColor
    p.CanCollide = false
    p.Transparency = 0
    p.Anchored = true
    p.Locked=true
    p.Material = workspace.Base.Material
    s = math.random(1,40)/10
    local m = Instance.new("BlockMesh",p)
    m.Scale = Vector3.new(s,s,s)
    p.CFrame = torso.CFrame*CFrame.new(custommath[math.random(1,#custommath)]/10,-math.random(5,7),custommath[math.random(1,#custommath)]/10)*CFrame.Angles(math.random(),math.random(),math.random())
	--[[coroutine.wrap(function()
		wait(2)
		while Charging == true do
		wait(2)
		GroundWave1()
		wait(2)
		end
	end)()]]--
	Spawn(function()
		while rs:wait() do
			if Charging == true then
				rarm.Weld.C0 = CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(math.random(-36,-20)),math.rad(math.random(-30,-20)),math.rad(math.random(30,50)))
				larm.Weld.C0 = CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(math.random(-36,-20)),math.rad(math.random(20,30)),math.rad(math.random(-50,-30)))
				hed.Weld.C0 = CFrame.new(0,1.5,.1)*CFrame.Angles(math.rad(math.random(26,34)),math.rad(math.random(-5,5)),math.rad(0))
				torso.Weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(math.random(-4,4)), math.rad(0))
				lleg.Weld.C0 = CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(math.random(-10,-6)), math.rad(math.random(10,20)), math.rad(math.random(-20,-10)))
				rleg.Weld.C0 = CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(math.random(-10,-6)), math.rad(math.random(-20,-10)), math.rad(math.random(10,20)))
			elseif Charging == false then break
			end
		end
	end)
	Spawn(function()
        while rs:wait() do
            if p.Transparency >= 1 then p:Destroy() break end
            p.CFrame = p.CFrame*CFrame.Angles(math.rad(2),math.rad(2),math.rad(2))+Vector3.new(0,0.2,0)
            p.Transparency = p.Transparency+0.01
        end
    end)
    wait(.3)
until Charging == false
			end
		end
	end
end)
----------------------------------------------------
function spawnHair()
local m = Instance.new("Model")
m.Name = "Hair"
p1 = Instance.new("Part", m)
colc = math.random(1,7)
p1.BrickColor = Neonsc[colc] colc = math.random(1,7)
p1.FormFactor = Enum.FormFactor.Symmetric
p1.Size = Vector3.new(1, 1, 1)
p1.CFrame = CFrame.new(-2.49043155, 8.24595642, -3.40113306, -5.48362732e-006, -0.978699088, 0.205299795, 3.27825546e-007, -0.205299854, -0.978699148, 1, -5.28991222e-006, 1.48639083e-006)
p1.CanCollide = false
p1.Locked = true
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshId = "http://www.roblox.com/asset/?id=12212520"
b1.TextureId = ""
b1.MeshType = Enum.MeshType.FileMesh
b1.Name = "Mesh"
b1.VertexColor = Vector3.new(0, 0, 0)
b1.Scale = Vector3.new(1, 1.60000002, 1.29999995)
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Pastel brown")
p2.Transparency = 1
p2.Name = "Head"
p2.FormFactor = Enum.FormFactor.Symmetric
p2.Size = Vector3.new(2, 1, 1)
p2.CFrame = CFrame.new(-1.70008016, 8.14794922, -3.40013027, 4.24603923e-006, 7.4505806e-008, -1, -1.50268988e-007, 1, 1.49011612e-008, 1.00000012, 6.79109462e-008, 4.23316806e-006)
p2.CanCollide = false
p2.Locked = true
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Head
b2.Name = "Mesh"
b2.Scale = Vector3.new(1.25, 1.25, 1.25)
p3 = Instance.new("Part", m)
p3.BrickColor = Neonsc[colc] colc = math.random(1,7)
p3.FormFactor = Enum.FormFactor.Symmetric
p3.Size = Vector3.new(2, 2, 2)
p3.CFrame = CFrame.new(-1.70003617, 8.71796131, -3.4000442, 2.57710985e-006, 6.95607483e-008, -1.00000012, -1.20466638e-007, 1, 9.95640903e-009, 1.00000024, 3.81086345e-008, 2.56423846e-006)
p3.CanCollide = false
p3.Locked = true
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("SpecialMesh", p3)
b3.MeshId = "http://www.roblox.com/asset/?id=16627529"
b3.TextureId = ""
b3.MeshType = Enum.MeshType.FileMesh
b3.Name = "Mesh"
b3.VertexColor = Vector3.new(0, 0, 0)
b3.Scale = Vector3.new(1.04999995, 1.04999995, 1.04999995)
p4 = Instance.new("Part", m)
p4.BrickColor = Neonsc[colc] colc = math.random(1,7)
p4.FormFactor = Enum.FormFactor.Symmetric
p4.Size = Vector3.new(1, 1, 1)
p4.CFrame = CFrame.new(-1.77981007, 8.84795475, -3.40016508, 5.79576135e-006, 7.9450956e-008, -1.00000012, -1.80071311e-007, 1, 1.98458743e-008, 1.00000024, 9.77132402e-008, 5.78289018e-006)
p4.CanCollide = false
p4.Locked = true
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("SpecialMesh", p4)
b4.MeshId = "http://www.roblox.com/asset/?id=19326912"
b4.TextureId = ""
b4.MeshType = Enum.MeshType.FileMesh
b4.Name = "Mesh"
b4.VertexColor = Vector3.new(0, 0, 0)
p5 = Instance.new("Part", m)
p5.BrickColor = Neonsc[colc] colc = math.random(1,7)
p5.FormFactor = Enum.FormFactor.Symmetric
p5.Size = Vector3.new(1, 1, 1)
p5.CFrame = CFrame.new(-1.70003772, 8.46796131, -3.40004301, -3.43517968e-007, 2.98088111e-007, -1, -1.00421907e-007, 1, 2.38484063e-007, 1.00000012, 1.80640072e-008, -3.56389592e-007)
p5.CanCollide = false
p5.Locked = true
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("SpecialMesh", p5)
b5.MeshId = "http://www.roblox.com/asset/?id=45916884"
b5.TextureId = ""
b5.MeshType = Enum.MeshType.FileMesh
b5.Name = "Mesh"
b5.VertexColor = Vector3.new(0, 0, 0)
b5.Scale = Vector3.new(1, 0.899999976, 1)
p6 = Instance.new("Part", m)
p6.BrickColor = Neonsc[colc] colc = math.random(1,7)
p6.FormFactor = Enum.FormFactor.Symmetric
p6.Size = Vector3.new(1, 1, 1)
p6.CFrame = CFrame.new(-1.89967656, 8.58795834, -3.44990659, -5.81936433e-007, 5.36502284e-007, -0.99999994, -1.3998249e-007, 1, 4.76898265e-007, 1, 5.76247672e-008, -5.94808171e-007)
p6.CanCollide = false
p6.Locked = true
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p6)
b6.MeshId = "http://www.roblox.com/asset/?id=62246019"
b6.TextureId = ""
b6.MeshType = Enum.MeshType.FileMesh
b6.Name = "Mesh"
b6.VertexColor = Vector3.new(0, 0, 0)
p7 = Instance.new("Part", m)
p7.BrickColor = Neonsc[colc] colc = math.random(1,7)
p7.FormFactor = Enum.FormFactor.Symmetric
p7.Size = Vector3.new(1, 1, 1)
p7.CFrame = CFrame.new(-1.89918542, 8.31796837, -3.50097537, -4.62727087e-007, 5.36502228e-007, -0.999999881, -1.39982518e-007, 1, 4.76898208e-007, 0.99999994, 5.76247459e-008, -4.75598938e-007)
p7.CanCollide = false
p7.Locked = true
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p7)
b7.MeshId = "http://www.roblox.com/asset/?id=76056263"
b7.TextureId = ""
b7.MeshType = Enum.MeshType.FileMesh
b7.Name = "Mesh"
b7.VertexColor = Vector3.new(0, 0, 0)
p8 = Instance.new("Part", m)
p8.BrickColor = Neonsc[colc] colc = math.random(1,7)
p8.FormFactor = Enum.FormFactor.Symmetric
p8.Size = Vector3.new(1, 1, 1)
p8.CFrame = CFrame.new(-2.62433338, 7.66397905, -3.4010179, -1.17798254e-006, -0.805111349, 0.593123376, -2.5008859e-007, -0.593123615, -0.805111527, 0.999999881, -9.58229293e-007, 4.4941558e-007)
p8.CanCollide = false
p8.Locked = true
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p8)
b8.MeshId = "http://www.roblox.com/asset/?id=12212520"
b8.TextureId = ""
b8.MeshType = Enum.MeshType.FileMesh
b8.Name = "Mesh"
b8.VertexColor = Vector3.new(0, 0, 0)
b8.Scale = Vector3.new(1, 1.60000002, 1.29999995)
p9 = Instance.new("Part", m)
p9.BrickColor = Neonsc[colc] colc = math.random(1,7)
p9.FormFactor = Enum.FormFactor.Symmetric
p9.Size = Vector3.new(2, 1, 2)
p9.CFrame = CFrame.new(-1.76505995, 8.56096649, -3.40065479, -9.73168881e-007, -0.0995008349, -0.995037436, -1.70322267e-007, 0.995037675, -0.0995009243, 1, 1.13823972e-007, -6.80968242e-007)
p9.CanCollide = false
p9.Locked = true
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("SpecialMesh", p9)
b9.MeshId = "http://www.roblox.com/asset/?id=12259089"
b9.TextureId = ""
b9.MeshType = Enum.MeshType.FileMesh
b9.Name = "Mesh"
b9.VertexColor = Vector3.new(0, 0, 0)
b9.Scale = Vector3.new(1.01999998, 1.04999995, 1.04999995)
p10 = Instance.new("Part", m)
p10.BrickColor = Neonsc[colc] colc = math.random(1,7)
p10.FormFactor = Enum.FormFactor.Symmetric
p10.Size = Vector3.new(1, 1, 1)
p10.CFrame = CFrame.new(-2.0207715, 9.06097031, -3.39961624, -1.10652763e-006, -0.683569431, -0.729885519, -2.85231891e-007, 0.729885638, -0.68356967, 1.00000012, -3.22293062e-007, -8.40051371e-007)
p10.CanCollide = false
p10.Locked = true
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("SpecialMesh", p10)
b10.MeshId = "http://www.roblox.com/asset/?id=12212520"
b10.TextureId = ""
b10.MeshType = Enum.MeshType.FileMesh
b10.Name = "Mesh"
b10.VertexColor = Vector3.new(0, 0, 0)
b10.Scale = Vector3.new(1, 1.60000002, 1.29999995)
p11 = Instance.new("Part", m)
p11.BrickColor = Neonsc[colc] colc = math.random(1,7)
p11.FormFactor = Enum.FormFactor.Symmetric
p11.Size = Vector3.new(1, 1, 1)
p11.CFrame = CFrame.new(-2.16468835, 8.78595829, -3.40089417, -1.41617738e-006, -0.989475727, -0.144699216, -4.36450762e-007, 0.144699067, -0.989476085, 1.00000024, -9.47996682e-007, -7.38401468e-007)
p11.CanCollide = false
p11.Locked = true
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("SpecialMesh", p11)
b11.MeshId = "http://www.roblox.com/asset/?id=12212520"
b11.TextureId = ""
b11.MeshType = Enum.MeshType.FileMesh
b11.Name = "Mesh"
b11.VertexColor = Vector3.new(0, 0, 0)
b11.Scale = Vector3.new(1, 1.60000002, 1.29999995)
p12 = Instance.new("Part", m)
p12.BrickColor = Neonsc[colc] colc = math.random(1,7)
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(1, 3.5, 1)
p12.CFrame = CFrame.new(-3.74216318, 6.74288082, -3.40101933, -1.20476273e-006, -0.553697288, 0.832718134, -3.31002866e-007, -0.832718611, -0.553697169, 1.00000036, -8.7345768e-007, 3.69213154e-007)
p12.CanCollide = false
p12.Locked = true
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b12 = Instance.new("SpecialMesh", p12)
b12.MeshId = "http://www.roblox.com/asset/?id=12212520"
b12.TextureId = ""
b12.MeshType = Enum.MeshType.FileMesh
b12.Name = "Mesh"
b12.VertexColor = Vector3.new(0, 0, 0)
b12.Scale = Vector3.new(1, 3, 1.29999995)
p13 = Instance.new("Part", m)
p13.BrickColor = Neonsc[colc] colc = math.random(1,7)
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(1, 2, 1)
p13.CFrame = CFrame.new(-3.32689047, 6.86741829, -3.40101862, -9.81709945e-007, -0.319307148, 0.947651446, -5.6545997e-007, -0.947651923, -0.31930691, 1.00000048, -8.39551717e-007, 1.79318391e-007)
p13.CanCollide = false
p13.Locked = true
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b13 = Instance.new("SpecialMesh", p13)
b13.MeshId = "http://www.roblox.com/asset/?id=12212520"
b13.TextureId = ""
b13.MeshType = Enum.MeshType.FileMesh
b13.Name = "Mesh"
b13.VertexColor = Vector3.new(0, 0, 0)
b13.Scale = Vector3.new(1, 3, 1.29999995)
p14 = Instance.new("Part", m)
p14.BrickColor = Neonsc[colc] colc = math.random(1,7)
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(1, 2, 1)
p14.CFrame = CFrame.new(-3.02689028, 7.96740961, -3.40101862, -1.33478545e-006, -0.750354111, 0.661036491, -5.20037702e-008, -0.661037207, -0.750354171, 1.0000006, -6.31296757e-007, 2.01137496e-007)
p14.CanCollide = false
p14.Locked = true
p14.BottomSurface = Enum.SurfaceType.Smooth
p14.TopSurface = Enum.SurfaceType.Smooth
b14 = Instance.new("SpecialMesh", p14)
b14.MeshId = "http://www.roblox.com/asset/?id=12212520"
b14.TextureId = ""
b14.MeshType = Enum.MeshType.FileMesh
b14.Name = "Mesh"
b14.VertexColor = Vector3.new(0, 0, 0)
b14.Scale = Vector3.new(1, 3, 1.29999995)
p15 = Instance.new("Part", m)
p15.BrickColor = Neonsc[colc] colc = math.random(1,7)
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(1, 2.5, 1)
p15.CFrame = CFrame.new(-2.96531463, 7.75924349, -2.90101862, 0.342019022, -0.520305753, 0.782499552, -1.1920929e-007, -0.832718909, -0.553697407, 0.939693451, 0.189374983, -0.284806281)
p15.CanCollide = false
p15.Locked = true
p15.BottomSurface = Enum.SurfaceType.Smooth
p15.TopSurface = Enum.SurfaceType.Smooth
b15 = Instance.new("SpecialMesh", p15)
b15.MeshId = "http://www.roblox.com/asset/?id=12212520"
b15.TextureId = ""
b15.MeshType = Enum.MeshType.FileMesh
b15.Name = "Mesh"
b15.VertexColor = Vector3.new(0, 0, 0)
b15.Scale = Vector3.new(1, 3, 1.29999995)
p16 = Instance.new("Part", m)
p16.BrickColor = Neonsc[colc] colc = math.random(1,7)
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(1, 2.5, 1)
p16.CFrame = CFrame.new(-2.96531439, 7.75924349, -3.80101967, -0.258820295, -0.534830391, 0.804343879, -1.78813934e-007, -0.832718968, -0.553697228, 0.96592629, -0.143308073, 0.215523779)
p16.CanCollide = false
p16.Locked = true
p16.BottomSurface = Enum.SurfaceType.Smooth
p16.TopSurface = Enum.SurfaceType.Smooth
b16 = Instance.new("SpecialMesh", p16)
b16.MeshId = "http://www.roblox.com/asset/?id=12212520"
b16.TextureId = ""
b16.MeshType = Enum.MeshType.FileMesh
b16.Name = "Mesh"
b16.VertexColor = Vector3.new(0, 0, 0)
b16.Scale = Vector3.new(1, 3, 1.29999995)
p17 = Instance.new("Part", m)
p17.BrickColor = Neonsc[colc] colc = math.random(1,7)
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(1, 2.4000001, 1)
p17.CFrame = CFrame.new(-2.69075108, 7.07788849, -3.40101933, -1.13248825e-006, -0.319307148, 0.947651625, -1.1920929e-006, -0.947652161, -0.319306791, 1.0000006, -1.54972076e-006, 1.04308128e-007)
p17.CanCollide = false
p17.Locked = true
p17.BottomSurface = Enum.SurfaceType.Smooth
p17.TopSurface = Enum.SurfaceType.Smooth
b17 = Instance.new("SpecialMesh", p17)
b17.MeshId = "http://www.roblox.com/asset/?id=12212520"
b17.TextureId = ""
b17.MeshType = Enum.MeshType.FileMesh
b17.Name = "Mesh"
b17.VertexColor = Vector3.new(0, 0, 0)
b17.Scale = Vector3.new(1, 3, 1.29999995)
p18 = Instance.new("Part", m)
p18.BrickColor = Neonsc[colc] colc = math.random(1,7)
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(2, 2, 2)
p18.CFrame = CFrame.new(-1.70003319, 8.71796608, -3.40004444, -2.37434961e-006, 1.78813934e-007, 1.00000036, -2.35242567e-007, 1.00000072, 3.27825546e-007, -1.0000006, 7.95440158e-009, -2.91315405e-006)
p18.CanCollide = false
p18.Locked = true
p18.BottomSurface = Enum.SurfaceType.Smooth
p18.TopSurface = Enum.SurfaceType.Smooth
b18 = Instance.new("SpecialMesh", p18)
b18.MeshId = "http://www.roblox.com/asset/?id=16627529"
b18.TextureId = ""
b18.MeshType = Enum.MeshType.FileMesh
b18.Name = "Mesh"
b18.VertexColor = Vector3.new(0, 0, 0)
b18.Scale = Vector3.new(1.04999995, 1.04999995, 1.04999995)
w1 = Instance.new("Weld", p1)
w1.Name = "Head_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(3.40111661, -0.744508088, 8.58160019, -5.48362732e-006, 3.27825546e-007, 1, -0.978699088, -0.205299854, -5.30481339e-006, 0.205299824, -0.978699148, 1.49011612e-006)
w1.Part1 = p2
w1.C1 = CFrame.new(3.40013766, -8.14794827, -1.70006609, 4.23192978e-006, -1.08796726e-007, 1.00000012, 2.9664772e-008, 1, 1.08796598e-007, -1.00000012, 2.96642924e-008, 4.23192978e-006)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(3.40013766, -8.14794827, -1.70006609, 4.23192978e-006, -1.08796726e-007, 1.00000012, 2.9664772e-008, 1, 1.08796598e-007, -1.00000012, 2.96642924e-008, 4.23192978e-006)
w2.Part1 = p3
w2.C1 = CFrame.new(3.40004802, -8.71796036, -1.70002759, 2.56299973e-006, -7.89943471e-008, 1, 2.47196947e-008, 1, 7.89942831e-008, -1, 2.47194887e-008, 2.56299973e-006)
w3 = Instance.new("Weld", p3)
w3.Name = "Part_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(3.40004802, -8.71796036, -1.70002759, 2.56299973e-006, -7.89943471e-008, 1, 2.47196947e-008, 1, 7.89942831e-008, -1, 2.47194887e-008, 2.56299973e-006)
w3.Part1 = p4
w3.C1 = CFrame.new(3.40017533, -8.8479538, -1.77979064, 5.78165054e-006, -1.38599077e-007, 1, 3.46098972e-008, 1, 1.38598878e-007, -1, 3.46090907e-008, 5.78165054e-006)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(3.40017533, -8.8479538, -1.77979064, 5.78165054e-006, -1.38599077e-007, 1, 3.46098972e-008, 1, 1.38598878e-007, -1, 3.46090907e-008, 5.78165054e-006)
w4.Part1 = p5
w4.C1 = CFrame.new(3.40004182, -8.46796036, -1.70004117, -3.57627869e-007, -5.89495883e-008, 0.99999994, 2.53247009e-007, 1, 5.89496665e-008, -0.99999994, 2.53247009e-007, -3.57627869e-007)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(3.40004182, -8.46796036, -1.70004117, -3.57627869e-007, -5.89495883e-008, 0.99999994, 2.53247009e-007, 1, 5.89496665e-008, -0.99999994, 2.53247009e-007, -3.57627869e-007)
w5.Part1 = p6
w5.C1 = CFrame.new(3.44990563, -8.58795738, -1.89968324, -5.96046448e-007, -9.85101565e-008, 1, 4.91661183e-007, 1, 9.85104407e-008, -1, 4.9166124e-007, -5.96046448e-007)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(3.44990563, -8.58795738, -1.89968324, -5.96046448e-007, -9.85101565e-008, 1, 4.91661183e-007, 1, 9.85104407e-008, -1, 4.9166124e-007, -5.96046448e-007)
w6.Part1 = p7
w6.C1 = CFrame.new(3.50097466, -8.31796741, -1.89919162, -4.76837158e-007, -9.85101849e-008, 0.99999994, 4.91661126e-007, 1, 9.85104265e-008, -0.99999994, 4.91661183e-007, -4.76837158e-007)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(3.50097466, -8.31796741, -1.89919162, -4.76837158e-007, -9.85101849e-008, 0.99999994, 4.91661126e-007, 1, 9.85104265e-008, -0.99999994, 4.91661183e-007, -4.76837158e-007)
w7.Part1 = p8
w7.C1 = CFrame.new(3.40101647, 2.43280101, 7.72691393, -1.1920929e-006, -2.08616257e-007, 1, -0.805111527, -0.593123555, -9.83476639e-007, 0.593123496, -0.805111527, 4.17232513e-007)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(3.40101647, 2.43280101, 7.72691393, -1.1920929e-006, -2.08616257e-007, 1, -0.805111527, -0.593123555, -9.83476639e-007, 0.593123496, -0.805111527, 4.17232513e-007)
w8.Part1 = p9
w8.C1 = CFrame.new(3.40065455, -8.6941061, -0.904481649, -8.34465027e-007, -1.67638063e-007, 1.00000012, -0.0995008498, 0.995037496, 1.00582838e-007, -0.995037615, -0.0995008498, -8.34465027e-007)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(3.40065455, -8.6941061, -0.904481649, -8.34465027e-007, -1.67638063e-007, 1.00000012, -0.0995008498, 0.995037496, 1.00582838e-007, -0.995037615, -0.0995008498, -8.34465027e-007)
w9.Part1 = p10
w9.C1 = CFrame.new(3.39961672, -7.99480963, 4.71886492, -9.53674316e-007, -2.98023224e-007, 1, -0.683569372, 0.729885519, -4.47034836e-007, -0.729885459, -0.683569431, -9.53674316e-007)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(3.39961672, -7.99480963, 4.71886492, -9.53674316e-007, -2.98023224e-007, 1, -0.683569372, 0.729885519, -4.47034836e-007, -0.729885459, -0.683569431, -9.53674316e-007)
w10.Part1 = p11
w10.C1 = CFrame.new(3.40089583, -3.41323304, 8.38025856, -1.31130219e-006, -4.76837158e-007, 1.00000012, -0.989475787, 0.144699097, -1.07288361e-006, -0.144699246, -0.989475787, -7.15255737e-007)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(3.40089583, -3.41323304, 8.38025856, -1.31130219e-006, -4.76837158e-007, 1.00000012, -0.989475787, 0.144699097, -1.07288361e-006, -0.144699246, -0.989475787, -7.15255737e-007)
w11.Part1 = p12
w11.C1 = CFrame.new(3.40101814, 3.54288888, 6.84968376, -9.53674316e-007, -4.47034836e-007, 1, -0.553697109, -0.832718134, -9.23871994e-007, 0.832718134, -0.553697109, 6.55651093e-007)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(3.40101814, 3.54288888, 6.84968376, -9.53674316e-007, -4.47034836e-007, 1, -0.553697109, -0.832718134, -9.23871994e-007, 0.832718134, -0.553697109, 6.55651093e-007)
w12.Part1 = p13
w12.C1 = CFrame.new(3.40102005, 5.44561195, 5.34554911, -8.34465027e-007, -6.40749931e-007, 1.00000012, -0.319307029, -0.947651505, -8.19563866e-007, 0.947651386, -0.319307029, 3.57627869e-007)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(3.40102005, 5.44561195, 5.34554911, -8.34465027e-007, -6.40749931e-007, 1.00000012, -0.319307029, -0.947651505, -8.19563866e-007, 0.947651386, -0.319307029, 3.57627869e-007)
w13.Part1 = p14
w13.C1 = CFrame.new(3.40101624, 2.99550176, 7.97925997, -9.53674316e-007, -1.49011612e-007, 1, -0.750353813, -0.661036491, -8.64267349e-007, 0.661036491, -0.750353813, 5.36441803e-007)
w14 = Instance.new("Weld", p14)
w14.Name = "Part_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(3.40101624, 2.99550176, 7.97925997, -9.53674316e-007, -1.49011612e-007, 1, -0.750353813, -0.661036491, -8.64267349e-007, 0.661036491, -0.750353813, 5.36441803e-007)
w14.Part1 = p15
w14.C1 = CFrame.new(3.74026394, 5.46776819, 5.79039907, 0.34201923, -3.27825546e-007, 0.939692974, -0.520305395, -0.832718134, 0.189374775, 0.782499313, -0.553697109, -0.284805775)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(3.74026394, 5.46776819, 5.79039907, 0.34201923, -3.27825546e-007, 0.939692974, -0.520305395, -0.832718134, 0.189374775, 0.782499313, -0.553697109, -0.284805775)
w15.Part1 = p16
w15.C1 = CFrame.new(2.90401983, 4.33060169, 7.50061178, -0.258819938, -2.68220901e-007, 0.965925574, -0.534830093, -0.832718134, -0.143308043, 0.80434382, -0.55369705, 0.215523928)
w16 = Instance.new("Weld", p16)
w16.Name = "Part_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(2.90401983, 4.33060169, 7.50061178, -0.258819938, -2.68220901e-007, 0.965925574, -0.534830093, -0.832718134, -0.143308043, 0.80434382, -0.55369705, 0.215523928)
w16.Part1 = p17
w16.C1 = CFrame.new(3.4010253, 5.84818506, 4.80991411, -8.56413749e-007, -1.3483392e-006, 1, -0.31930685, -0.947651386, -1.55121427e-006, 0.947651386, -0.31930685, 3.81047698e-007)
w17 = Instance.new("Weld", p17)
w17.Name = "Part_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(3.4010253, 5.84818506, 4.80991411, -8.56413749e-007, -1.3483392e-006, 1, -0.31930685, -0.947651386, -1.55121427e-006, 0.947651386, -0.31930685, 3.81047698e-007)
w17.Part1 = p18
w17.C1 = CFrame.new(-3.40004683, -8.71796036, 1.70002675, -2.6504224e-006, -7.89943471e-008, -1, -2.47197018e-008, 1, -7.89942831e-008, 1, 2.47194887e-008, -2.6504224e-006)
m.Parent = char
m:MakeJoints()
----------------------------------------------------
local cor = Instance.new("Part", char.Hair)
cor.Name = "Link"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 9, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = hed
corw.Part1 = cor
corw.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld1 = Instance.new("Weld", char.Hair)
weld1.Part0 = cor
weld1.Part1 = char.Hair.Head
weld1.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
end
----------------------------------------------------
local rainbowHands = false
mouse.KeyDown:connect(function(key)
    if key == "t" then
		if Grab == false then
			if rainbowssl == true then
				if rainbowHands == true then
					if d0arm[3] ~= "true" then
						rainbowHands = false
						d0arm[3] = "true"
						do2()
					end
				elseif rainbowHands == false then
					if d0arm[3] ~= "false" then
						d0arm[3] = "false"
						d0arm[1].Enabled = false
						d0arm[2].Enabled = false
					end
				end
			end
		end
	end
end)
----------------------------------------------------

mouse.KeyDown:connect(function(key)
    if key == "c" then


	if rainbowHands == false then
		if d0arm[3] == "true" then
			d0arm[3] = "false"
			d0arm[1].Enabled = false
			d0arm[2].Enabled = false
		end
			if Debounces.CanAttack == true then
				Debounces.CanAttack = false
				Debounces.NoIdl = true
			end
		equipanim()
			Debounces.CanAttack = true
			Debounces.NoIdl = false
		rainbowHands = true
                z = Instance.new("Sound",hed)
                z.SoundId = "rbxassetid://169380525"
                z.Volume = 1
                z:Play()

	else
		rainbowHands = false
	end
	end
end)
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
LS = Torso["Left Shoulder"]
LH = Torso["Left Hip"]
RS = Torso["Right Shoulder"]
RH = Torso["Right Hip"]
Neck = Torso.Neck
it = Instance.new
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
mr = math.rad
mr2 = math.random
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
attack = false
attackdebounce = false
MMouse = Player:GetMouse()
combo = 0
local hitfloor, posfloor = nil, nil
local Effects = {}
local Weapon = {}
local Welds = {}
local Saber = {}
local Buster = {}
local decreaseatk = 0
local decreasedef = 0
local decreasemvmt = 0
local manainc = 16
local handle = nil
local floating = false
local testpart = it("Part")
testpart.Anchored = true
local Mode = "Normal"
local cbuster = false
local cshoot = false
local cdebounce = false
local sbreaker = false
local shockshoot = false
local shockdebounce = false
local TehM = nil
local sblazing = false
local starshoot = false
local stardebounce = false
local busterlaser = false
local sbreakerII = false
local galacblazing = false
local prising = false
local move1 = "(Z)\nChaos Buster"
local move2 = "(X)\nShocker Breaker"
local move3 = "(C)\nStar Blazing"
local move4 = "(V)\n"
player = nil
RSH = nil
LSH = nil

TorsoColor = Torso.BrickColor
NewCol = BrickColor.new("Ghost grey").Color
NewCol2 = BrickColor.new("Smoky grey").Color
NewCol3 = BrickColor.new("Pearl").Color


  local Neons = {BrickColor.new("Bright red"), BrickColor.new("Bright orange"), BrickColor.new("Bright yellow"), BrickColor.new("Bright green"), BrickColor.new("Bright blue"), BrickColor.new("Royal purple"), BrickColor.new("Bright violet")}


ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 40
tf = 0
allowframeloss = true
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
    tf = tf + s
    if tf >= frame then
        if allowframeloss then
            script.Heartbeat:Fire()
            lastframe = tick()
        else
            for i = 1, math.floor(tf / frame) do
                script.Heartbeat:Fire()
            end
            lastframe = tick()
        end
        if tossremainder then
            tf = 0
        else
            tf = tf - frame * math.floor(tf / frame)
        end
    end
end)

function swait(num)
    if num == 0 or num == nil then
        ArtificialHB.Event:wait()
    else
        for i = 0, num do
            ArtificialHB.Event:wait()
        end
    end
end




  local Stats = Instance.new("BoolValue")
  Stats.Name = "Stats"
  Stats.Parent = Character
  local Atk = Instance.new("NumberValue")
  Atk.Name = "Damage"
  Atk.Parent = Stats
  Atk.Value = 1
  local Def = Instance.new("NumberValue")
  Def.Name = "Defense"
  Def.Parent = Stats
  Def.Value = 1
  local Mvmt = Instance.new("NumberValue")
  Mvmt.Name = "Movement"
  Mvmt.Parent = Stats
  Mvmt.Value = 1
  local Block = Instance.new("BoolValue")
  Block.Name = "Block"
  Block.Parent = Stats
  Block.Value = false
  local Stun = Instance.new("NumberValue")
  Stun.Name = "Stun"
  Stun.Parent = Stats
  Stun.Value = 0
  local StunT = Instance.new("NumberValue")
  StunT.Name = "StunThreshold"
  StunT.Parent = Stats
  StunT.Value = 80
  local Rooted = Instance.new("BoolValue")
  Rooted.Name = "Rooted"
  Rooted.Parent = Stats
  Rooted.Value = false
  local Stunned = Instance.new("BoolValue")
  Stunned.Name = "Stunned"
  Stunned.Parent = Stats
  Stunned.Value = false
  local Stagger = Instance.new("BoolValue")
  Stagger.Name = "Stagger"
  Stagger.Parent = Stats
  Stagger.Value = false
  local StaggerHit = Instance.new("BoolValue")
  StaggerHit.Name = "StaggerHit"
  StaggerHit.Parent = Stats
  StaggerHit.Value = false
  local RecentEnemy = Instance.new("ObjectValue")
  RecentEnemy.Name = "RecentEnemy"
  RecentEnemy.Parent = Stats
  RecentEnemy.Value = nil
  local Decrease = Instance.new("BoolValue")
  Decrease.Name = "Decrease"
  Decrease.Parent = Stats
  Decrease.Value = false
  local mana = Instance.new("NumberValue")
  mana.Name = "Mana"
  mana.Parent = Stats
  mana.Value = 0
  local passive1 = Instance.new("NumberValue", Decrease)
  passive1.Name = "DecreaseMvmt"
  passive1.Value = -0.1
  local passive2 = Instance.new("NumberValue", Decrease)
  passive2.Name = "DecreaseDef"
  passive2.Value = 0
  NoOutline = function(Part)
  Part.TopSurface = 10
end

  part = function(formfactor, parent, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = brickcolor
  fp.Name = name
  fp.Size = size
  fp.Position = Torso.Position
  NoOutline(fp)
  fp.Material = "Neon"
  fp:BreakJoints()
  return fp
end

  mesh = function(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    if meshid ~= "nil" then
      mesh.MeshId = "http://www.roblox.com/asset/?id=" .. meshid
    end
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end

  weld = function(parent, part0, part1, c0)
  local weld = it("Motor")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  return weld
end



  AesthPart = function(model, wldpar, reflec, trans, col, name, neon, meshh, mshtype, mshtxt, x1, y1, z1, ceef)
  prt = part(3, model, reflec, trans, BrickColor.new(col), name, vt())
  prt.Material = neon
  msh = mesh(meshh, prt, mshtype, mshtxt, vt(0, 0, 0), vt(x1, y1, z1))
  wld = weld(handle, prt, wldpar, ceef)
  v = it("NumberValue", prt)
  v.Value = trans
  v.Name = "MainTransparency"
  return prt, msh, wld
end

  local nr = NumberRange.new
  local ns = NumberSequence.new
  local cs = ColorSequence.new
  local nsk = NumberSequenceKeypoint.new
  particle = function(parent, col1, col2, lightemis, size, texture, transparency, zoffset, accel, drag, ltp, velinher, emisdir, enabled, lifetime, rate, rotation, rotspeed, speed, velspread)
  local fp = it("ParticleEmitter")
  fp.Parent = parent
  fp.Color = cs(col1, col2)
  fp.LightEmission = lightemis
  fp.Size = size
  fp.Texture = texture
  fp.Transparency = transparency
  fp.ZOffset = zoffset
  fp.Acceleration = accel
  fp.Drag = drag
  fp.LockedToPart = ltp
  fp.VelocityInheritance = velinher
  fp.EmissionDirection = emisdir
  fp.Enabled = enabled
  fp.Lifetime = lifetime
  fp.Rate = rate
  fp.Rotation = rotation
  fp.RotSpeed = rotspeed
  fp.Speed = speed
  fp.VelocitySpread = velspread
  return fp
end
  local modelzorz = Instance.new("Model")
  modelzorz.Parent = Character
  modelzorz.Name = "Chaos Saber"
  RainbowVals = function(parent, sval, bval)
  d = it("NumberValue", parent)
  d.Name = "Size"
  d.Value = sval
  b = it("NumberValue", parent)
  b.Name = "Weld"
  b.Value = bval
  return d, b
end

  rmain1, rmrmsh1, rmwld1 = AesthPart(model3, handle4, 1, 0, NewCol, "RainbowMain", "Neon", "BlockMesh", "nil", "nil", 0, 0, 0, euler(0, 0, 0) * cf(0, 0, 0))
  rmain1a, rmrmsh1a, rmwld1a = AesthPart(model3, handle5, 1, 0, NewCol, "RainbowMaina", "Neon", "BlockMesh", "nil", "nil", 0, 0, 0, euler(0, 0, 0) * cf(0, 0, 0))
  rainbow1, rmsh1, rwld1 = AesthPart(model3, rmain1, 0, 0, Neons[7].Color, "Rainbow1", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 3, euler(0, mr(90), 0) * cf(-1.55, 0, 0.1))
  rainbow1a, rmsh1a, rwld1a = AesthPart(model3, rmain1a, 0, 0, Neons[7].Color, "Rainbow1a", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 3, euler(0, mr(90), 0) * cf(-1.55, 0, -0.1))
  rainbow2, rmsh2, rwld2 = AesthPart(model3, rmain1, 0, 0, Neons[6].Color, "Rainbow2", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 3.75, euler(0, mr(90), 0) * cf(-0.875, 0, 0.1))
  rainbow2a, rmsh2a, rwld2a = AesthPart(model3, rmain1a, 0, 0, Neons[6].Color, "Rainbow2a", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 3.75, euler(0, mr(90), 0) * cf(-0.875, 0, -0.1))
  rainbow3, rmsh3, rwld3 = AesthPart(model3, rmain1, 0, 0, Neons[5].Color, "Rainbow3", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 3.75, euler(0, mr(90), 0) * cf(-0.125, 0, 0.1))
  rainbow3a, rmsh3a, rwld3a = AesthPart(model3, rmain1a, 0, 0, Neons[5].Color, "Rainbow3a", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 3.75, euler(0, mr(90), 0) * cf(-0.125, 0, -0.1))
  rainbow4, rmsh4, rwld4 = AesthPart(model3, rmain1, 0, 0, Neons[4].Color, "Rainbow4", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 4, euler(0, mr(90), 0) * cf(0.65, 0, 0.1))
  rainbow4a, rmsh4a, rwld4a = AesthPart(model3, rmain1a, 0, 0, Neons[4].Color, "Rainbow4a", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 4, euler(0, mr(90), 0) * cf(0.65, 0, -0.1))
  rainbow5, rmsh5, rwld5 = AesthPart(model3, rmain1, 0, 0, Neons[3].Color, "Rainbow5", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 3.75, euler(0, mr(90), 0) * cf(1.425, 0, 0.1))
  rainbow5a, rmsh5a, rwld5a = AesthPart(model3, rmain1a, 0, 0, Neons[3].Color, "Rainbow5a", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 3.75, euler(0, mr(90), 0) * cf(1.425, 0, -0.1))
  rainbow6, rmsh6, rwld6 = AesthPart(model3, rmain1, 0, 0, Neons[2].Color, "Rainbow6", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 3.75, euler(0, mr(90), 0) * cf(2.175, 0, 0.1))
  rainbow6a, rmsh6a, rwld6a = AesthPart(model3, rmain1a, 0, 0, Neons[2].Color, "Rainbow6a", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 3.75, euler(0, mr(90), 0) * cf(2.175, 0, -0.1))
  rainbow7, rmsh7, rwld7 = AesthPart(model3, rmain1, 0, 0, Neons[1].Color, "Rainbow7", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 2.99, euler(0, mr(90), 0) * cf(2.85, 0, 0.1))
  rainbow7a, rmsh7a, rwld7a = AesthPart(model3, rmain1a, 0, 0, Neons[1].Color, "Rainbow7a", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 2.99, euler(0, mr(90), 0) * cf(2.85, 0, -0.1))
  local hitbox = part(3, nil, 0, 1, BrickColor.new("Black"), "Hitbox", vt())
  hitbox.Anchored = true
  local hitboxCF = cf(0, 0, 0)
  sizeseq = ns({nsk(0, 0.3), nsk(0.25, 1), nsk(0.6, 0.2), nsk(1, 0)})
  transseq = ns({nsk(0, 0), nsk(0.8, 0.5), nsk(1, 1)})
  local starsparti = particle(Torso, Color3.new(1, 0, 0), Color3.new(0.3921568627451, 0.3921568627451, 1), 0.5, sizeseq, "http://www.roblox.com/asset/?id=146120327", transseq, 0, vt(0, 0, 0), 0, false, 0, "Top", false, nr(1, 1), 40, nr(-360, 360), nr(-200, 200), nr(8), 180)
  starsparti.Parent = Torso
  sizeseq = ns({nsk(0, 1), nsk(0.7, 6), nsk(1, 7)})
  transseq = ns({nsk(0, 0), nsk(1, 1)})
  local lparti1 = particle(Torso, Color3.new(1, 0, 0), Color3.new(0.3921568627451, 0.3921568627451, 1), 1, sizeseq, "http://www.roblox.com/asset/?id=243098098", transseq, 0, vt(0, 0, 0), 0, false, 0, "Top", false, nr(0.2, 0.2), 500, nr(-360, 360), nr(0, 0), nr(0), 0)
  lparti1.Parent = Torso
  sizeseq = ns({nsk(0, 0.5), nsk(1, 0.5)})
  transseq = ns({nsk(0, 0), nsk(1, 1)})
  local sparti = particle(Torso, Color3.new(1, 0, 0), Color3.new(0.3921568627451, 0.3921568627451, 1), 1, sizeseq, "http://www.roblox.com/asset/?id=82057200", transseq, 0, vt(0, 0, 0), 0, false, 0, "Top", false, nr(1, 1), 50, nr(-360, 360), nr(400, 500), nr(5), 180)
  sparti.Parent = Torso
  local effects = it("Model", modelzorz)
  effects.Name = "Effects"
  hboxpos = Instance.new("BodyPosition", nil)
  hboxpos.P = 2000
  hboxpos.D = 100
  hboxpos.maxForce = Vector3.new(545000, 545000, 545000)

  local bodvel = Instance.new("BodyVelocity")
  local bg = Instance.new("BodyGyro")
  so = function(id, par, vol, pit)
  local sou = Instance.new("Sound", par or workspace)
  sou.Volume = vol
  sou.Pitch = pit or 1
  sou.SoundId = "http://www.roblox.com/asset/?id=" .. id
  coroutine.resume(coroutine.create(function(Sound)
    swait()
    Sound:play()
  end
), sou)
  game:GetService("Debris"):AddItem(sou, 6)
end




  rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end





  MagicBlock = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
  else
    if Type == 2 then
      table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
    else
      if Type == 3 then
        table.insert(Effects, {prt, "Block3", delay, x3, y3, z3, msh, prt.CFrame})
      else
        if Type == 4 then
          table.insert(Effects, {prt, "Block4", delay, x3, y3, z3, msh, 1})
        end
      end
    end
  end
end

  MagicBlock2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Material = "Neon"
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
  else
    if Type == 2 then
      table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
    else
      if Type == 3 then
        table.insert(Effects, {prt, "Block3", delay, x3, y3, z3, msh, prt.CFrame})
      end
    end
  end
end

  MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Material = "Neon"
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

  MagicCircle2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, push)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Blood", delay, x3, y3, z3, msh, push})
end

  MagicCylinder = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Material = "Neon"
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

  MagicHead = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Head", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

  ClangEffect = function(brickcolor, cframe, duration, decrease, size, power)
  local prt = part(3, effects, 0, 1, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(5, 5, 5))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "CylinderClang", duration, decrease, size, power, prt.CFrame, nil})
end

  MagicWave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "20329976", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

  MagicSpecial = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "24388358", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

  BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  game:GetService("Debris"):AddItem(prt, 10)
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  local num = math.random(10, 50) / 1000
  table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end

  MagicStar = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Material = "Neon"
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "45428961", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "p" then
		if myVars[5] == "ssl3" then
			print("Bash ran.")
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Bash()
			Debounces.CanAttack = true
			Debounces.NoIdl = false
		end
	end
end)
----------------------------------------------------
function makeSwordUpgrade()

end
makeSwordUpgrade()
----------------------------------------------------
Grab = false
local humanoidR = nil
mouse.KeyDown:connect(function(key)
    if key == "z" then
	humanoidR = nil
        Debounces.on = true
        Debounces.NoIdl = true
		Debounces.ks = true
        if Grab == false then
        gp = nil
        for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-80)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-70),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(70), 0), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(30), math.rad(-20)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-15), math.rad(20)), 0.2)
            if Debounces.on == false then break end
            rs:wait(2)
        end
        con1=larm.Touched:connect(function(hit) -- this is grab
            ht = hit.Parent
            hum1=ht:FindFirstChild('Humanoid')
            if hum1 ~= nil then
			    if Debounces.ks==true then
                z = Instance.new("Sound",hed)
                z.SoundId = "rbxassetid://169380525"
                z.Volume = 1
                z:Play()
                Debounces.ks=false
				end
		
	    	humanoidR = hum1
                hum1.PlatformStand=true
                gp = ht
                Grab = true
                asd=weld5(larm,ht:FindFirstChild("Torso"),CFrame.new(0,-1,1.5),CFrame.new(0,0,0))
                asd.Parent = larm
                asd.Name = "asd"
                asd.C0=asd.C0*CFrame.Angles(math.rad(-90),math.rad(180),0)
				stanceToggle = "Grabbed"

            end
        end)
        for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(20)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(30),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-30), 0), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.2)
            if Debounces.on == false then break end
            rs:wait(2)
        end
    con1:disconnect()
    Debounces.on = false
    Debounces.NoIdl = false

    elseif Grab == true then
        Grab = false
			for i = 1, 16 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20)), 0.3)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(140),math.rad(0),math.rad(-50)), 0.3)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(20),math.rad(-60),0), 0.3)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.3)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(-20)), 0.3)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.3)
			if Debounces.on == false then end
			rs:wait()
		end
		if gp ~= nil then
			for i,v in pairs(larm:GetChildren()) do
				if v.Name == "asd" and v:IsA("Weld") then
					v:Remove()
				end
			end
		for i = 1, 16 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20)), 0.3)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,-.4)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(20)), 0.3)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(20),0), 0.3)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-60), math.rad(-30), 0), 0.3)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(80), math.rad(30), math.rad(-20)), 0.3)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(70), math.rad(-15), math.rad(20)), 0.3)
			if Debounces.on == false then end
			rs:wait()
		end
		stanceToggle = "Normal"
        --[[bv = Instance.new("BodyVelocity",gp:FindFirstChild("Torso"))
        bv.maxForce = Vector3.new(400000, 400000, 400000)
        bv.P = 125000
        bv.velocity = char.Head.CFrame.lookVector * 200]]--
        ht=nil
        Debounces.on = false
        Debounces.NoIdl = false
        elseif ht == nil then wait()
        Grab = false
	humanoidR.PlatformStand = true
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end)
-------------------------------------------------
  givePower = function()
	humanoidR.Health = 0
end
-------------------------------------------------
myVars[4] = "Normal"
mouse.KeyDown:connect(function(key)
    if key == "v" then
	if myVars[4] == "Normal" then
        if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
		char.Humanoid.WalkSpeed = 0.1
		myVars[4] = "Sitting"
		sitting()
	end
	elseif myVars[4] == "Sitting" then
		print("STOPPED SITTING_")
		char.Humanoid.WalkSpeed = 16
		myVars[4] = "Normal"
		Debounces.CanAttack = true
		Debounces.NoIdl = false
		Debounces.on = false
        end
    end
end)
-------------------------------BEAMSTUFF

startBloxxy()


local Humanoid=char.Humanoid
local m=Instance.new('Model',char)
local it=Instance.new
local attacktype=1
local vt=Vector3.new
local cf=CFrame.new
local euler=CFrame.fromEulerAnglesXYZ
local angles=CFrame.Angles
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
local RootPart = char.HumanoidRootPart




local mouse=Player:GetMouse()

local player=p
local ch=char
local attack = false 
local attackdebounce = false 
player=nil 
local cam = workspace.CurrentCamera
local ZTarget = nil
local RocketTarget = nil
local Targetting = false


local Neoncol = {BrickColor.new("Bright red"), BrickColor.new("Bright orange"), BrickColor.new("Bright yellow"), BrickColor.new("Bright green"), BrickColor.new("Bright blue"), BrickColor.new("Royal purple"), BrickColor.new("Bright violet")}


	function swaito(num)
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
	
	function parto(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
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
	
	function mesho(Mesh,part,meshtype,meshid,offset,scale)
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
	
	function weldo(parent,part0,part1,c0,c1)
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

local TrailColor = ("Dark grey")

if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "Neon"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new(TrailColor)
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "Neon"
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
table.insert(fx,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "Neon"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new(TrailColor)
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "Neon"
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
table.insert(fx,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
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

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 


Damagefunco=function(Part,hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
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

Damagefunc2o=function(Part,hit,Damage,Knockback)
        if attackdebounce == false then 
--        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.1) 
        attackdebounce = false 
        end)) 
        if hit.Parent==nil then
                return
        end
        local blocked=false
        local h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent:FindFirstChild("Torso")~=nil then
                Damage=Damage
                        local c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
--[[                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*2
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end]]
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                blocked=false
                local block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print("herp")
                if block.Value>0 then
                blocked=true
                block.Value=block.Value-3
                print(block.Value)
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("New Yeller").Color)
                else
                h:TakeDamage(1)
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("New Yeller").Color)
                end
--if blocked==false then
local angle = (hit.Position-(Torso.Position+Vector3.new(0,0,0))).unit
print(angle)
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
                local rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
                rl.Parent=hit
coroutine.resume(coroutine.create(function(vel) 
wait(0.5) 
vel:Remove() 
end),rl) 
--end
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,0,0)
bodyVelocity.P=5000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=hit
coroutine.resume(coroutine.create(function(Vel) 
wait(0.2) 
Vel:Remove() 
end),bodyVelocity) 
                                c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
        end
        end 
end


function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = parto("Custom",workspace,"Neon",0,1,BrickColor.new(Color),"Effect",vt(0,0,0))
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


function MagniDamageo(Hit,Part,magni,mindam,maxdam,knock,Type)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=p.Name then 
Damagefunco(Hit,head,mindam,maxdam,knock,Type,RootPart,.2,1,3)
end
end
end
end
end


local fx={}
function MagicBlocko(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=parto(3,workspace,"Neon",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesho("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(fx,{prt,"Block1",delay,x3,y3,z3}) --part, type, delay
end

function MagicCylindero(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=parto(3,workspace,"Neon",0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
msh=mesho("SpecialMesh",prt,"Head","",vt(0,0,0),vt(x1,y1,z1))
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


function MagicCylinder2o(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=parto(3,Character,"Neon",0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
msh=mesho("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
--table.insert(fx,{prt,"Cylinder",delay,x3,y3,z3})
fx[#fx+1]={prt,"Cylinder",delay,x3,y3,z3} --part, type, delay
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


function MagicRingo(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=parto(3,workspace,"Neon",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesho("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh,num) 
for i=0,1,delay do
swaito()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,(math.random(0,1)+math.random())/5)
end

function MagicCircleo(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=parto(3,workspace,"Neon",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
prt.CanCollide = false
msh=mesho("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swaito()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function attackone()
attack = true
for i = 0,1,0.1 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
end
so("http://roblox.com/asset/?id=268192025",Barrel2A,1,1) 
so("http://roblox.com/asset/?id=268191996",Barrel2A,1,1) 
so("http://roblox.com/asset/?id=268191976",Barrel2A,1,1) 
ShootCannon()
ShootCannon()
ShootCannon()
for i = 0,1,0.1 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
end
attack = false
end

function attacktwo()
attack = true
for i = 0,1,0.1 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
end
so("http://roblox.com/asset/?id=268192025",Barrel2A,1,1) 
so("http://roblox.com/asset/?id=268191996",Barrel2A,1,1) 
so("http://roblox.com/asset/?id=268191976",Barrel2A,1,1) 
ShootCannon2()
ShootCannon2()
ShootCannon2()
for i = 0,1,0.1 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
end
attack = false
end

local cannonSh = false
RocketTarget = RootPart
function ShootCannon()
cannonSh = true
local colr = math.random(1,7)
so("rbxassetid://263623156",rarm,.5,1) 
so("rbxassetid://263610152",rarm,.5,1) 
so("rbxassetid://263623139",rarm,.5,1) 
local MainPos=rarm.CFrame.p
local MainPos2=mouse.Hit.p
local MouseLook=cf((MainPos+MainPos2)/2,MainPos2)
--[[local mag=(MainPos-pos).magnitude 
MagicCylindero(Neoncol[colr],CFrame.new((MainPos+pos)/2,pos)*angles(1.57,0,0),1,mag*5,1,0.5,0,0.5,0.05)]]
num=30
coroutine.resume(coroutine.create(function() 
repeat
wait()
local hit,pos = rayCast(MainPos,MouseLook.lookVector,10,RocketTarget.Parent)
local mag=(MainPos-pos).magnitude 
MagicCylinder2o(Neoncol[colr],CFrame.new((MainPos+pos)/2,pos)*angles(1.57,0,0),3,mag*5,3,1.5,0,1.5,0.1)
MainPos=MainPos+(MouseLook.lookVector*10)
num=num-1
if hit~=nil then
num=0
local ref=parto(3,workspace,"Neon",0,1,Neoncol[col],"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
MagniDamageo(ref,hit,1,30,50,1,"Normal")
so("rbxassetid://263610039",ref,1,1) 
so("rbxassetid://263610111",ref,1,1) 
MagicBlocko(Neoncol[colr],cf(pos),20,20,20,5,5,5,0.05)
game:GetService("Debris"):AddItem(ref,1)
MagniDamageo(ref,ref,15,1000,1000,10,"Normal")
explosion = Instance.new("Explosion", game.Workspace)
explosion.BlastRadius = 5
explosion.Position = ref.Position
explosion.BlastPressure = 100000
explosion.DestroyJointRadiusPercent = 10 -- neck welds won't be destroyed
explosion.ExplosionType = "CratersAndDebris"
end
until num<=0
end))
cannonSh = false
end


RocketTarget = RootPart
function ShootCannon2()
cannonSh = true
local colr = math.random(1,7)
so("rbxassetid://263623156",larm,.5,1) 
so("rbxassetid://263610152",larm,.5,1) 
so("rbxassetid://263623139",larm,.5,1) 
local MainPos=larm.CFrame.p
local MainPos2=mouse.Hit.p
local MouseLook=cf((MainPos+MainPos2)/2,MainPos2)
--[[local mag=(MainPos-pos).magnitude 
MagicCylindero(Neoncol[colr],CFrame.new((MainPos+pos)/2,pos)*angles(1.57,0,0),1,mag*5,1,0.5,0,0.5,0.05)]]
num=30
coroutine.resume(coroutine.create(function() 
repeat
wait()
local hit,pos = rayCast(MainPos,MouseLook.lookVector,10,RocketTarget.Parent)
local mag=(MainPos-pos).magnitude 
MagicCylinder2o(Neoncol[colr],CFrame.new((MainPos+pos)/2,pos)*angles(1.57,0,0),3,mag*5,3,1.5,0,1.5,0.1)
MainPos=MainPos+(MouseLook.lookVector*10)
num=num-1
if hit~=nil then
num=0
local ref=parto(3,workspace,"Neon",0,1,Neoncol[col],"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
MagniDamageo(ref,hit,1,30,50,1,"Normal")
so("rbxassetid://263610039",ref,1,1) 
so("rbxassetid://263610111",ref,1,1) 
MagicBlocko(Neoncol[colr],cf(pos),20,20,20,5,5,5,0.05)
game:GetService("Debris"):AddItem(ref,1)
MagniDamageo(ref,ref,15,1000,1000,10,"Normal")
explosion = Instance.new("Explosion", game.Workspace)
explosion.BlastRadius = 5
explosion.Position = ref.Position
explosion.BlastPressure = 100000
explosion.DestroyJointRadiusPercent = 10 -- neck welds won't be destroyed
explosion.ExplosionType = "CratersAndDebris"
end
until num<=0
end))
cannonSh = false
end


function BeamBlast()
if cannonSh == false then
local colr = math.random(1,7)
local n=2
for i = 0,1,0.05 do


rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)

end
local orb=parto(3,Character,"Neon",0,1,Neoncol[colr],"Orb",vt())
local omsh=mesho("SpecialMesh",orb,"Sphere","",vt(0,0,0),vt(15,15,15))
local owld=weldo(orb,orb,Torso,cf(0,-1.5,8),cf(0,0,0))
so("http://roblox.com/asset/?id=169445572",orb,1,0.9)
so("http://roblox.com/asset/?id=169380495",orb,1,0.6)  
so("http://roblox.com/asset/?id=203691346",orb,1,0.9)
for i=1,0.3,-0.01 do
colr = math.random(1,7)
wait()
orb.Transparency=i
omsh.Scale=omsh.Scale+vt(0.5,0.5,0.5)
MagicBlocko(BrickColor.new("Really black"),orb.CFrame,15,15,15,2,2,2,0.1)
local ef=parto(3,workspace,"Neon",0,0,Neoncol[colr],"Effect",vt())
ef.Anchored=true
local emsh=mesho("SpecialMesh",ef,"Sphere","",vt(0,0,0),vt(2,math.random(1000,1500)/100,2))
local ceef=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cf(0,math.random(10,20),0)
ef.CFrame=orb.CFrame*ceef
game:GetService("Debris"):AddItem(ef,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.Transparency=i
Part.CFrame=Part.CFrame*cf(0,-1,0)
end
Part.Parent=nil
end),ef,emsh)
end
local Pos=cf(orb.Position,Player:GetMouse().Hit.p).lookVector
wait(.5)
orb.Parent=nil
colr = math.random(1,7)
local hit,pos = rayCast(orb.Position,Pos,999,Character)
local mag=(orb.Position-pos).magnitude 
MagicCircleo(Neoncol[colr],cf(pos),15,15,15,8,8,8,0.02)
MagicBlocko(Neoncol[colr],cf(pos),15,15,15,8,8,8,0.02)
MagicCylindero(Neoncol[colr],CFrame.new((orb.Position+pos)/2,pos)*euler(1.57,0,0),10,mag*5,10,0.5,0,0.5,0.01)
for i=1,2 do
colr = math.random(1,7)
MagicRingo(Neoncol[colr],cf(pos)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),3,3,3,1,1,1,0.04)
end
for i=1,5 do
colr = math.random(1,7)
local tehcf=CFrame.new((orb.Position+pos)/2,pos)*euler(1.57,0,0)*cf(0,(mag/5)*(i/2),0)
MagicRingo(Neoncol[colr],tehcf*euler(1.57,0,0),1,1,1,0.5,0.5,0.5,0.01)
end
for i=0,5 do
colr = math.random(1,7)
local tehcf=CFrame.new((orb.Position+pos)/2,pos)*euler(1.57,0,0)*cf(0,(-mag/5)*(i/2),0)
MagicRingo(Neoncol[colr],tehcf*euler(1.57,0,0),1,1,1,0.5,0.5,0.5,0.01)
end
local ref=parto(3,workspace,"Neon",0,1,Neoncol[colr],"Effect",vt())
ref.CFrame=cf(pos)
so("http://roblox.com/asset/?id=203691378",Torso,1,0.7) 
so("http://roblox.com/asset/?id=169445602",Torso,1,0.7) 
so("http://www.roblox.com/Asset?ID=203691282",Torso,1,.8) 
coroutine.resume(coroutine.create(function(Part) 
Part.Parent=nil
end),ref)
if hit~=nil then
MagniDamage(Part,hit,30,1000,1000,0,"Normal")
end
explosion = Instance.new("Explosion", game.Workspace)
explosion.BlastRadius = 15
explosion.Position = ref.Position
explosion.BlastPressure = 100000
explosion.DestroyJointRadiusPercent = 30 -- neck welds won't be destroyed
explosion.ExplosionType = "CratersAndDebris"
local n=2
for i = 0,1,0.03 do

rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
end
end

					Debounces.CanAttack = true
					Debounces.NoIdl = false
end

mouse.Button1Down:connect(function()
if Melee == true then
if rainbowHands == true then
if attack == false and attacktype == 1 then
attacktype = 2
attackone()
elseif attack == false and attacktype == 2 then
attacktype = 1
attacktwo()
end
elseif d0arm[3] == "true" then
lBeam1()
end
else
if rainbowHands == true then
if attack == false then
attacktwo()
end
end
end
end)
local slashing = false
mouse.KeyUp:connect(function(key)
	if key == "q" then
			if Melee == true then
				if rainbowssl ~= true then
				if rainbowHands == true then
					Debounces.CanAttack = false
					Debounces.NoIdl = true
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
					BeamBlast()
				end
			elseif Melee == false then
			if sword2 ~= true then		
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			--Debounces.on = true
			slashing = true
			for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad  (60),math.rad(70),math.rad(70)), 0.2)
            		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0) *CFrame.Angles(math.rad(-20),math.rad(0),math.rad  (-40)), 0.2)
            		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-50), math.rad(0)),   0.2)
            		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(-.4, -1, 0) * CFrame.Angles(math.rad(0), math.rad(70),   math.rad(0)), 0.2)
            		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles (math.rad(-10), 0, math.rad(-10)), 0.2)
            		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles (math.rad(10), 0, math.rad(10)), 0.2)
			rs:wait(2)
			end
			for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.65, 0) * CFrame.Angles(math.rad(-40),math.rad(-20),math.rad(40)), 0.3)
            		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.65, -.3) * CFrame.Angles(math.rad(65),math.rad(-20),math.rad(30)), 0.3)
            		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-9),math.rad(35), math.rad(0)), 0.3)
           		 torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 1) * CFrame.Angles(math.rad(0), math.rad(-65), math.rad(0)), 0.3)
            		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), 0, math.rad(-10)), 0.3)
            		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(10)), 0.3)
			rs:wait(2)
			end
			for i = 1, 26 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad  (90),math.rad(-40),math.rad(80)), 0.35)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0) *CFrame.Angles(math.rad(0),math.rad(0),math.rad (- 70)), 0.35)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-90), math.rad(0)),   0.35)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, -1) * CFrame.Angles(math.rad(0), math.rad(90),   math.rad(0)), 0.35)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles (math.rad(-10), 0, math.rad(-10)), 0.35)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles (math.rad(10), 0, math.rad(10)), 0.35)
            --cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles (math.rad(0), math.rad(-30), math.rad(0)), 0.35)
			rs:wait(2)
			end
			--cor.Weld.C1 = CFrame.Angles(0,0,0)
			slashing = false
		if Debounces.CanAttack == false then
			Debounces.CanAttack = true
			Debounces.NoIdl = false
			--Debounces.on = false
			end
		else
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			--Debounces.on = true


		if Debounces.CanAttack == false then
			Debounces.CanAttack = true
			Debounces.NoIdl = false
			--Debounces.on = false
			end
			
		end
		else
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			sslAttack1()
			Debounces.CanAttack = true
			Debounces.NoIdl = false
		end
		end
		end
end
end)
-- Magic effects
local magic = {}
magic.grid = function(cff,x,y,z,col)
	local prt = part(3, workspace, 0, 0, col, "Part", vt(1, 1, 1))
	prt.Anchored = true
	local xval = math.random()
	local yval = math.random()
	local zval = math.random()
	local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(xval, yval, zval))
	coroutine.resume(coroutine.create(function(Part, Mesh, Frame, xvaal, yvaal, zvaal)
		Part.CFrame = Frame * cf(math.random(-x, x), math.random(-y, y), math.random(-z, z))
		for i = 1, 8 do
			wait()
			xvaal = xvaal - 0.1
			yvaal = yvaal - 0.1
			zvaal = zvaal - 0.1
			Mesh.Scale = vt(xvaal, yvaal, zvaal)
			Part.Transparency = Part.Transparency + 0.09
		end
		Part.Parent = nil
	end), prt, msh, cff, xval, yval, zval)
end
magic.stravant = function(brickcolor, cframe, x, y, z, x1, y1, z1, delay)
	local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * cf(x, y, z)
	local msh = mesh("SpecialMesh", prt, "FileMesh", "168892363", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	coroutine.resume(coroutine.create(function(Part, Mesh, ex, why, zee) 
		local num = random()
		local num2 = random(-3, 2) + random()
		local numm = 0
		for i = 0, 1, delay * 2 do
			wait()
			Part.CFrame = cframe * euler(0, numm * num * 10, 0) * cf(ex, why, zee) * cf(-i * 10, num2, 0)
			Part.Transparency = i
			numm = numm + 0.01
		end
		Part.Parent = nil
		Mesh.Parent = nil
	end), prt, msh, x, y, z)
end
magic.block = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type, parent)
	local prt = part(3, parent or workspace, 0, 0, brickcolor, "Effect", vt())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	if Type == 1 or Type == nil then
		block1(prt, delay, x3, y3, z3, msh)
	elseif Type == 2 then
		block2(prt, delay, x3, y3, z3, msh)
	end
end
-------------------------------



function attack1()
	--con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(5,10),"Normal",RootPart,.2,1) end) 
	slashing = true
	Debounces.CanAttack = false
	Debounces.NoIdl = true
	--[[for i=0,1,0.2 do
		swait()
		rarm.Weld.C0=clerp(rarm.Weld.C0,cf(1.5,0.5,0)*euler(2,0,1),.4)
		rarm.Weld.C1=clerp(larm.Weld.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		larm.Weld.C0=clerp(larm.Weld.C0,cf(-1.3,0.5,-.3)*euler(.4,0,.2)*euler(0,-.2,0),.4)
		larm.Weld.C1=clerp(larm.Weld.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		--rleg.Weld.C0=clerp(rleg.Weld.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.4)
		--lleg.Weld.C0=clerp(lleg.Weld.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.4)
	end
	for i=0,1,0.3 do
		swait()
		rarm.Weld.C0=clerp(rarm.Weld.C0,cf(1.2,0.5,-.3)*euler(.2,0,-.2)*euler(0,-.5,0),.4)
		rarm.Weld.C1=clerp(larm.Weld.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		larm.Weld.C0=clerp(larm.Weld.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.2),.4)
		larm.Weld.C1=clerp(larm.Weld.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		--rleg.Weld.C0=clerp(rleg.Weld.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.4)
		--lleg.Weld.C0=clerp(lleg.Weld.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.4)
	end
	for i=0,1,0.2 do
		swait()
		rarm.Weld.C0=clerp(rarm.Weld.C0,cf(1,0.5,-.5)*euler(.6,0,-1)*euler(0,-.7,0),.4)
		rarm.Weld.C1=clerp(larm.Weld.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		larm.Weld.C0=clerp(larm.Weld.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.2),.4)
		larm.Weld.C1=clerp(larm.Weld.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		--rleg.Weld.C0=clerp(rleg.Weld.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.4)
		--lleg.Weld.C0=clerp(lleg.Weld.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.4)
	end]]
        for i=0,1,0.2 do
                swait()
--[[
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end]]
                rarm.Weld.C0=clerp(rarm.Weld.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(-90),math.rad(-90))*angles(math.rad(90),0,math.rad(0)),.4)
        end
        for i=0,1,0.2 do
                swait()
--[[local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end]]
                rarm.Weld.C0=clerp(rarm.Weld.C0,cf(1,0.5,-.5)*angles(math.rad(0),math.rad(-90),math.rad(-100))*angles(math.rad(-75),0,math.rad(0)),.4)
                --handleweld.C0=clerp(handleweld.C0,cf(0,-1,-1)*angles(math.rad(-90),math.rad(0),math.rad(0)),.4)
        end
	slashing = false
	Debounces.CanAttack = true
	Debounces.NoIdl = false
end

function attack2()
	slashing = true
	Debounces.CanAttack = false
	Debounces.NoIdl = true
	for i=0,1,0.2 do
		swait()
		rarm.Weld.C0=clerp(rarm.Weld.C0,cf(1,0.5,-.5)*euler(1.57,0,-1)*euler(0,1.2,0),.4)
		rarm.Weld.C1=clerp(larm.Weld.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		larm.Weld.C0=clerp(larm.Weld.C0,cf(-1.5,0.5,0)*euler(-.8,0,-.4),.4)
		larm.Weld.C1=clerp(larm.Weld.C1,cf(0,0.5,0)*euler(0,0,0),.4)
	end
	for i=0,1,0.3 do
		swait()
		rarm.Weld.C0=clerp(rarm.Weld.C0,cf(1.5,0.5,0)*euler(1.3,0,1)*euler(0,1.6,0),.4)
		rarm.Weld.C1=clerp(larm.Weld.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		larm.Weld.C0=clerp(larm.Weld.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.2),.4)
		larm.Weld.C1=clerp(larm.Weld.C1,cf(0,0.5,0)*euler(0,0,0),.4)
	end
	for i=0,1,0.2 do
		swait()
		rarm.Weld.C0=clerp(rarm.Weld.C0,cf(1.5,0.5,0)*euler(1,0,.8)*euler(0,1.3,0),.4)
		rarm.Weld.C1=clerp(larm.Weld.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		larm.Weld.C0=clerp(larm.Weld.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.2),.4)
		larm.Weld.C1=clerp(larm.Weld.C1,cf(0,0.5,0)*euler(0,0,0),.4)
	end
	slashing = false
	Debounces.CanAttack = true
	Debounces.NoIdl = false
end


function attack3()
	slashing = true
	Debounces.CanAttack = false
	Debounces.NoIdl = true
  for i = 0, 1, 0.16 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.4)
    rarm.Weld.C0 = clerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, -0.2) * angles(0, 1.3, 1.3), 0.4)
    larm.Weld.C0 = clerp(larm.Weld.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(-0.6, 0, -0.5), 0.4)
  end
coroutine.resume(coroutine.create(function()
    for i = 0, 4, 0.2 do
      swait()
      rarm.Weld.C0 = clerp(rarm.Weld.C0, cf(0, 0, 0) * angles(math.rad(0 + 360 * i), math.rad(-60), math.rad(0)), 0.5)
    end
  end
))
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.4)
    rarm.Weld.C0 = clerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, -0.2) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.4)
    larm.Weld.C0 = clerp(larm.Weld.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(0.8, 0, -0.5), 0.4)
  end
	slashing = false
	Debounces.CanAttack = true
	Debounces.NoIdl = false
end
-------------------------------------

-------------------------------------
myVars[5] = "normal"

myVars[8] = 0
mouse.Button1Down:connect(function()
if rainbowHands == false then
if myVars[5] == "normal" then
	if sword2 == true then
		if myVars[1] ~= "att1" then
			if myVars[2] ~= "att2" then
				if Debounces.CanAttack == true then
					myVars[1] = "att1"
					attack1()
				end
			
			elseif myVars[2] == "att2" then
				if Debounces.CanAttack == true then	
					myVars[1] = "none"	
					myVars[2] = "none"
					attack3()
				end
			end
		elseif myVars[2] ~= "att2" then
			if Debounces.CanAttack == true then
				myVars[1] = "none"
				myVars[2] = "att2"
				attack2()
			end
		end
	end
	elseif myVars[5] == "ssl3" then
		if myVars[7] == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			if myVars[8] == 0 then
				vAttackOne()
				myVars[8] = 1
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				return true
			elseif myVars[8] == 1 then
				vAttackTwo()
				myVars[8] = 2
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				return true
			elseif myVars[8] == 2 then
				vAttackThree()
				myVars[8] = 0
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				return true
			end
		end
	elseif myVars[5] == "ssl3_1" then
		if myVars[7] == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			if myVars[8] == 0 then
				vAttackOne()
				myVars[8] = 1
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				return true
			elseif myVars[8] == 1 then
				vAttackTwo()
				myVars[8] = 2
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				return true
			elseif myVars[8] == 2 then
				vAttackThree()
				myVars[8] = 0
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				return true
			end
		end
	end
	end
end)

function testFunc()
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(0)), .2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2, 0.3, -.5) * angles(math.rad(0), math.rad(170), math.rad(90)), .25)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.3, -.7) * angles(math.rad(0), math.rad(-170), math.rad(-110)), .25)
	end
	for i = 0, 1, 0.13 do
		swait()
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(-90), math.rad(0)), .3)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3, 0.5, -.4) * angles(math.rad(120), math.rad(0), math.rad(10)), .3)
	end
end

local prref = part(3, nil, 0, 1, BrickColor.new("Black"), "Reference", vt())
prref.Anchored = true
-------------------------------
local powerHand = false
local randPower = math.random(1,2)
mouse.KeyUp:connect(function(key)
	if key == "t" then
		if powerHand == false then
			if Grab == true then
			if Debounces.CanAttack == true then
				Debounces.CanAttack = false
				Debounces.on = true
				Debounces.NoIdl = true
				powerHand = true
			for i = 1, 10 do
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(160),math.rad(20),math.rad(20)), 0.92)
				wait(0.5)
			end
			getDiscoMan(humanoidR)
			powerHand = false
			Debounces.CanAttack = true
			Debounces.on = false
			Debounces.NoIdl = false
			humanoidR = nil
end
else
	if myVars[3] == "claw" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.on = true
			Debounces.NoIdl = true
			bird()
			Debounces.CanAttack = true
			Debounces.on = false
			Debounces.NoIdl = false
		end
	end

end
end
end
end)
mouse.KeyUp:connect(function(key)
	if key == "x" then
		if powerHand == false then
			if Grab == true then
			if Debounces.CanAttack == true then
				Debounces.CanAttack = false
				Debounces.on = true
				Debounces.NoIdl = true
				powerHand = true
			for i = 1, 10 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(160),math.rad(20),math.rad(20)), 0.92)
				wait(0.5)
			end
			getFreeze(humanoidR)
			powerHand = false
			Debounces.CanAttack = true
			Debounces.on = false
			Debounces.NoIdl = false
			humanoidR = nil
end
end
end
end
end)

-------------------------------
mouse.KeyUp:connect(function(key)
	if key == "r" then
		if Charging == true then
			Charging = false
				pt:Destroy()
				pt2:Destroy()
				bl:Destroy()
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
			end
		end
	end
end)

----------------------------------------------------

function equipHands()
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(0)), .2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2, 0.3, -.5) * angles(math.rad(0), math.rad(170), math.rad(90)), .25)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.3, -.7) * angles(math.rad(0), math.rad(-170), math.rad(-110)), .25)

	end
	--CreateSound("http://roblox.com/asset/?id=346134880", Torso, 1, .9)
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(0)), .2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2, 0.3, -.5) * angles(math.rad(0), math.rad(170), math.rad(95)), .34)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1, 0.3, -.7) * angles(math.rad(0), math.rad(-170), math.rad(-120)), .34)

	end
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(0)), .2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2, 0.3, -.7) * angles(math.rad(0), math.rad(170), math.rad(110)), .25)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.3, -.5) * angles(math.rad(0), math.rad(-170), math.rad(-90)), .25)

	end
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(0)), .2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1, 0.3, -.7) * angles(math.rad(0), math.rad(170), math.rad(120)), .34)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.3, -.7) * angles(math.rad(0), math.rad(-180), math.rad(-95)), .34)

	end
end

function sslBurst1()
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(0)), .2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2, 0.3, -.5) * angles(math.rad(0), math.rad(170), math.rad(90)), .25)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.3, -.7) * angles(math.rad(0), math.rad(-170), math.rad(-110)), .25)

	end
colc = math.random(1,7)
local fx = Instance.new("Part",torso)
fx.Anchored = true
fx.Material = "Neon"
fx.CanCollide = false
fx.Locked = true
fx.Transparency = 1
fx.Material = "Neon"
fx.Size = Vector3.new(1,1,1)
fx.TopSurface = "SmoothNoOutlines"
fx.BottomSurface = "SmoothNoOutlines"
fx.BrickColor = Neonsc[colc]
fxm = Instance.new("SpecialMesh",fx)
fxm.MeshType = "Sphere"
fxm.Scale = Vector3.new(1,1,1)

for i = 1, 20 do 
	colc = math.random(1,7)
	fx.BrickColor = Neonsc[colc]
        fx.Transparency = fx.Transparency - (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(0.5,0.5,0.5)
        wait(0.0000001)
end


		rarm.Weld.C0 = CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(math.random(-36,-20)),math.rad(math.random(-30,-20)),math.rad(math.random(30,50)))
		larm.Weld.C0 = CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(math.random(-36,-20)),math.rad(math.random(20,30)),math.rad(math.random(-50,-30)))
		hed.Weld.C0 = CFrame.new(0,1.5,.1)*CFrame.Angles(math.rad(math.random(26,34)),math.rad(math.random(-5,5)),math.rad(0))
		torso.Weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(math.random(-4,4)), math.rad(0))
		lleg.Weld.C0 = CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(math.random(-10,-6)), math.rad(math.random(10,20)), math.rad(math.random(-20,-10)))
		rleg.Weld.C0 = CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(math.random(-10,-6)), math.rad(math.random(-20,-10)), math.rad(math.random(10,20)))
		ssl3Appear()

for i = 1, 20 do wait(0.0000001)
	colc = math.random(1,7)
	fx.BrickColor = Neonsc[colc]
        fx.Transparency = fx.Transparency + (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(0.5,0.5,0.5)
end
end


---------------SSL3-MODE-1-ATTACKS-START-------------------------
function trail(p,t,h)
	Spawn(function()
		local blcf = p.CFrame
		local scfr = blcf
		for i=1,t do
			local blcf = p.CFrame
			if scfr and (p.Position-scfr.p).magnitude > .1 then
				local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
				if a then game.Debris:AddItem(a,1) end 
				if b then game.Debris:AddItem(b,1) end
				local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
				if a then game.Debris:AddItem(a,1) end 
				if b then game.Debris:AddItem(b,1) end
				scfr = blcf
			elseif not scfr then
				scfr = blcf
			end
			game:service'RunService'.RenderStepped:wait()
		end
		scfr=nil
	end)
end
function lBeam1()
    function partypoison(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
        local fp=Instance.new("Part")
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
    function meshypoison(Mesh,part,meshtype,meshid,offset,scale)
        local mesh=Instance.new(Mesh)
        mesh.Parent=part
        if Mesh=="SpecialMesh" then
            mesh.MeshType=meshtype
            mesh.MeshId=meshid
        end
        mesh.Offset=offset
        mesh.Scale=scale
        return mesh
    end
    
    function weldypoison(parent,part0,part1,c0,c1)
        local weld=Instance.new("Weld")
        weld.Parent=parent
        weld.Part0=part0
        weld.Part1=part1
        weld.C0=c0
        weld.C1=c1
        return weld
    end
function Shockwave(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = partypoison(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	prt.Material = "Neon"
	local msh = meshypoison("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 2)
	coroutine.resume(coroutine.create(function(Part, Mesh) 
		for i = 0, 1, delay do
			swait()
			Part.CFrame = Part.CFrame
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end
for i=0,1,0.2 do
swait()
Shockwave(BrickColor.new("Lime green"),CFrame.new(rarm.Position),1,1,1,1,1,1,0.075)
end
end

function Bash()

function MagicWaveBASH(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,F2,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3})
end



for i=0,1,0.1 do
swait()
--torso.Weld.C0=clerp(torso.Weld.C0,necko*euler(0,0,1)*euler(0.5,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1.4),.3)
rarm.Weld.C0=clerp(rarm.Weld.C0,cf(1,0.5,-0.5)*euler(1.4,-1.4,0)*euler(-.6,0,0),.3)
larm.Weld.C0=clerp(larm.Weld.C0,cf(-1.5,0.5,0)*euler(1,-1,0)*euler(.5,0,0),.3)
end
torso.Velocity=RootPart.CFrame.lookVector*600
MagicWave(Color4,RootPart.CFrame*euler(1.57,0,0),1,1,1,1,1,1,0.05)
torso.Velocity=RootPart.CFrame.lookVector*0
for i=0,1,0.1 do
swait()
--torso.Weld.C0=clerp(torso.Weld.C0,necko*euler(0,0,1.4)*euler(-0.2,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1.4),.3)
rarm.Weld.C0=clerp(rarm.Weld.C0,cf(1,0.5,-0.5)*euler(3,-1.4,0)*euler(-.6,0,0),.3)
larm.Weld.C0=clerp(larm.Weld.C0,cf(-1.5,0.5,0)*euler(2.3,-1.4,0)*euler(.5,0,0),.3)
end
for i=0,1,0.2 do
swait()
--torso.Weld.C0=clerp(torso.Weld.C0,necko*euler(0,0,1.4)*euler(0.4,0,0),.45)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.3)*euler(0,0,-1.4),.45)
rarm.Weld.C0=clerp(rarm.Weld.C0,cf(.5,0.2,-0.5)*euler(3,-1.4,0)*euler(-2.7,0,0),.45)
larm.Weld.C0=clerp(larm.Weld.C0,cf(-1.2,0.1,-0.3)*euler(0,-1.4,0)*euler(.5,0,0),.45)
end
local ref=part(3,workspace,0,1,BrickColor.new("Dark indigo"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,3)

MagicWaveBASH(Neonsc[colc],cf(pos),1,1,1,.7,.7,.7,0.05)
MagniDamage(ref,10,40,80,math.random(100,600),"Up")
swait(10)
print("Bash_1 ran.")
end

vAttackOne = function()
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create



function Damage(hit, damage, cooldown, Color1, Color2, HSound, HPitch)
	for i, v in pairs(hit:GetChildren()) do 
		if v:IsA("Humanoid") and hit.Name ~= Character.Name then
			local find = v:FindFirstChild("DebounceHit")
			if not find then
				if v.Parent:findFirstChild("Head") then
					local BillG = Create("BillboardGui"){
						Parent = v.Parent.Head,
						Size = UDim2.new(1, 0, 1, 0),
						Adornee = v.Parent.Head,
						StudsOffset = Vector3.new(math.random(-3, 3), math.random(3, 5), math.random(-3, 3)),
					}
					local TL = Create("TextLabel"){
						Parent = BillG,
						Size = UDim2.new(3, 3, 3, 3),
						BackgroundTransparency = 1,
						Text = tostring(damage).."-",
						TextColor3 = Color1.Color,
						TextStrokeColor3 = Color2.Color,
						TextStrokeTransparency = 0,
						TextXAlignment = Enum.TextXAlignment.Center,
						TextYAlignment = Enum.TextYAlignment.Center,
						FontSize = Enum.FontSize.Size18,
						Font = "ArialBold",
					}
					coroutine.resume(coroutine.create(function()
						swait(1)
						for i = 0, 1, .1 do
							swait(.1)
							BillG.StudsOffset = BillG.StudsOffset + Vector3.new(0, .1, 0)
						end
						BillG:Destroy()
					end))
				end
				v.Health = v.Health - damage
				local bool = Create("BoolValue"){
					Parent = v,
					Name = "DebounceHit",
				}
				game:GetService("Debris"):AddItem(bool, cooldown)
			end
		end
	end
end
	if myVars[5] == "ssl3" then
		local Con1 = myVars[6].Hitbox.Touched:connect(function(hit)
			Damage(hit.Parent, math.random(1000, 4500), .1, BrickColor.new("Really black"), BrickColor.new("Mid gray"), "rbxassetid://199149186" ,1)
		end)
	for i = 1, 10 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(0.6, 0.9, -0.62)*CFrame.Angles(math.rad(170),math.rad(20),math.rad(-60)), 0.56)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0.2)*CFrame.Angles(math.rad(-30),math.rad(-10),math.rad(-20)), 0.5)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, .2)*CFrame.Angles(math.rad(10),math.rad(-46),0), 0.47)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-8), math.rad(46), 0), 0.55)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(20), math.rad(-10)), 0.43)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(12), math.rad(-20), math.rad(10)), 0.43)
		rs:wait()
	end

	for i = 1, 10 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, .3)*CFrame.Angles(math.rad(-10),math.rad(-15),math.rad(50)), 0.67)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4, 0.7, -0.3)*CFrame.Angles(math.rad(80),math.rad(-10),math.rad(-20)), 0.58)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2)*CFrame.Angles(math.rad(-14),math.rad(40),0), 0.54)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(-40), 0), 0.66)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(12), math.rad(20), math.rad(-10)), 0.5)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-20), math.rad(10)), 0.5)
		rs:wait()
	end
	Con1:disconnect()
	elseif myVars[5] == "ssl3_1" then
		print("RUN_SSL31")
		myVars[11].Parent=myVars[10]
		myVars[11].Size=vt(1,6,1)
		myVars[11].Transparency=1
		myVars[11].CFrame=myVars[10].prtd7.CFrame
		local con1=myVars[11].Touched:connect(function(hit) Damagefunc(hit,30,60,math.random(10000,10000),"Lifesteal",RootPart,.5,1) end)
		for i=0,1,0.1 do
			swait()
			RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.5)*euler(0.4,0,-1),.3)
			rarm.Weld.C0=clerp(rarm.Weld.C0,cf(1.5,0.5,0)*euler(1.4,-0.5,1)*euler(.3,0,.5),.3)
			larm.Weld.C0=clerp(larm.Weld.C0,cf(-1.5,0.5,0)*euler(.7,0,-0.7),.3)
		end
		for i=0,1,0.08 do
			swait()
			RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.5)*euler(0.2,0,1),.3)
			rarm.Weld.C0=clerp(rarm.Weld.C0,cf(1,0.5,-0.5)*euler(1.4,-0.5,1)*euler(1.3,0,-1.7),.3)
			larm.Weld.C0=clerp(larm.Weld.C0,cf(-1.5,0.5,0)*euler(-.7,0,-0.7),.3)
		end
		con1:disconnect()
	end
end

vAttackTwo = function()

    if myVars[5] == "ssl3" then
		local Con1 = myVars[6].Hitbox.Touched:connect(function(hit)
			Damage(hit.Parent, math.random(1000, 4500), .1, BrickColor.new("Really black"), BrickColor.new("Mid gray"), "rbxassetid://199149186" ,1)
		end)
	for i = 1, 5 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.25, 0.9, 0)*CFrame.Angles(math.rad(170),math.rad(20),math.rad(60)), 0.8)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0.17)*CFrame.Angles(math.rad(-30),math.rad(-10),math.rad(-20)), 0.8)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, .2)*CFrame.Angles(math.rad(-10),math.rad(46),0), 0.8)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(8), math.rad(-46), 0), 0.8)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(20), math.rad(-10)), 0.8)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(12), math.rad(-20), math.rad(10)), 0.8)
		--if Debounces.on == false then break end
		rs:wait()
	end
	for i = 1, 10 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(0.8, 0.5, -0.35)*CFrame.Angles(math.rad(0),math.rad(-15),math.rad(-50)), 0.77)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4, 0.6, -0.35)*CFrame.Angles(math.rad(-50),math.rad(10),math.rad(-20)), 0.58)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2)*CFrame.Angles(math.rad(-14),math.rad(-40),0), 0.54)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-9), math.rad(40), 0), 0.66)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(12), math.rad(20), math.rad(-10)), 0.5)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-20), math.rad(10)), 0.5)
		rs:wait()
	end
	Con1:disconnect()
    elseif myVars[5] == "ssl3_1" then
		myVars[11].Parent=myVars[10]
		myVars[11].Size=vt(1,6,1)
		myVars[11].Transparency=1
		myVars[11].CFrame=myVars[10].prtd7.CFrame
		local con1=myVars[11].Touched:connect(function(hit) Damagefunc(hit,30,60,math.random(10000,10000),"Lifesteal",RootPart,.5,1) end)
	for i=0,1,0.1 do
		swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.4)*euler(0.1,0,1.2),.3)
		rarm.Weld.C0=clerp(rarm.Weld.C0,cf(1,0.5,-0.5)*euler(1.4,-1.2,.6)*euler(1.1,0,-1.7),.3)
		larm.Weld.C0=clerp(larm.Weld.C0,cf(-1.5,0.5,0)*euler(-.7,0,-0.7),.3)
	end
	for i=0,1,0.1 do
		swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.4)*euler(0.1,0,-0.8),.3)	
		rarm.Weld.C0=clerp(rarm.Weld.C0,cf(1.5,0.5,0)*euler(1.4,-.8,.6)*euler(0.5,0,.5),.3)
		larm.Weld.C0=clerp(larm.Weld.C0,cf(-1.5,0.5,0)*euler(-.7,0,-0.7),.3)
	end
		con1:disconnect()
    end
end



vAttackThree = function()
    if myVars[5] == "ssl3" then
	for i = 1, 10 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(0.95, 1.1, -0.15)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(-50)), 0.63)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-0.95, 1.1, -0.15)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(50)), 0.63)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0.1)*CFrame.Angles(math.rad(10),math.rad(0),0), 0.54)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(0), 0), 0.66)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.5)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.5, -0.5) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.5)

		rs:wait()
	end
	for i = 1, 10 do
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.1, 0.6, -.4) * CFrame.Angles(math.rad(20), 0, math.rad(40)), 0.7)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.1, 0.6, -.4) * CFrame.Angles(math.rad(20), 0, math.rad(-40)), 0.7)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-40), 0, 0), 0.7)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(10), 0, 0), 0.7)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -.1) * CFrame.Angles(math.rad(-16), 0, 0), 0.7)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.1) * CFrame.Angles(math.rad(-16), 0, 0), 0.7)
		rs:wait()
	end
MagniDamageo(myVars[6].Hitbox,myVars[6].Hitbox,20,20,30,0,"Knockdown")
local hit,pos=rayCast(myVars[6].Hitbox.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,100,char)
if hit~=nil then
print("test1")
local ref2=parto(3,workspace,"Neon",0,1,BrickColor.new("Black"),"Effect",vt())
print("test2")
ref2.Anchored=true
print("test3")
ref2.CFrame=cf(pos)
print("test4")
game:GetService("Debris"):AddItem(ref2,3)
print("test5")

		local Con1 = myVars[6].Hitbox.Touched:connect(function(hit)
			Damage(hit.Parent, math.random(1000, 4500), .1, BrickColor.new("Really black"), BrickColor.new("Mid gray"), "rbxassetid://199149186" ,1)
		end)
for i=1,10 do
local Col=Neonsc[colc]
colc = math.random(1,7)
local groundpart=parto(3,workspace,"Neon",0.5,0,Col,"Ground",vt(math.random(50,200)/100,math.random(50,200)/100,math.random(50,200)/100))
groundpart.Anchored=true
groundpart.CanCollide=false
groundpart.CFrame=cf(pos)*cf(math.random(-500,500)/100,0,math.random(-500,500)/100)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(groundpart,5)
end
colc = math.random(1,7)
BlastEffect(Neonsc[colc],cf(pos),1,1,1,.7,.7,.7)
colc = math.random(1,7)
MagicCircleo(Neonsc[colc],cf(pos),3,3,3,5,5,5,0.05)
MagniDamageo(ref2,ref2,10,10,20,math.random(10,20),"Knockdown")
Con1:disconnect()
end
    else
	
		myVars[11].Parent=myVars[10]
		myVars[11].Size=vt(1,6,1)
		myVars[11].Transparency=1
		myVars[11].CFrame=myVars[10].prtd7.CFrame
		local con1=myVars[11].Touched:connect(function(hit) Damagefunc(hit,30,60,math.random(10000,10000),"Lifesteal",RootPart,.5,1) end)
	for i=0,1,0.1 do
		swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.5)*euler(0.1,0,-0.2),.3)
		rarm.Weld.C0=clerp(rarm.Weld.C0,cf(1.5,0.5,0)*euler(2.9,-1.8,0)*euler(.5,0,0),.3)
		larm.Weld.C0=clerp(larm.Weld.C0,cf(-1.5,0.5,0)*euler(-0.4,0,-0.2),.3)
	end
	for i=0,1,0.15 do
		swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.8)*euler(0.5,0,0.6),.4)
		rarm.Weld.C0=clerp(rarm.Weld.C0,cf(1.5,0.5,0)*euler(1.55,-1.5,0)*euler(.3,0,0),.4)
		larm.Weld.C0=clerp(larm.Weld.C0,cf(-1.5,0.5,0)*euler(-0.4,0,-0.2),.4)
	end
		con1:disconnect()
    end
end




---------------SSL3-MODE-1-ATTACKS-END-------------------------

--------------SSL3-WEAPONS-START-------------------------------
function ssl3()

--[[for i=0.1, 1, 0.1 do
print("anim1")
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.5, -.54) * CFrame.Angles(math.rad(88), 0, math.rad(48)), 0.6)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.3)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.1) * CFrame.Angles(math.rad(-56), 0, 0), 0.3)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1) * CFrame.Angles(math.rad(-6), 0, 0), 0.3)
end
wait(1)
rarm.Weld.C0 = CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(math.random(-36,-20)),math.rad(math.random(-30,-20)),math.rad(math.random(30,50)))
larm.Weld.C0 = CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(math.random(-36,-20)),math.rad(math.random(20,30)),math.rad(math.random(-50,-30)))
hed.Weld.C0 = CFrame.new(0,1.5,.1)*CFrame.Angles(math.rad(math.random(26,34)),math.rad(math.random(-5,5)),math.rad(0))
torso.Weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(math.random(-4,4)), math.rad(0))
lleg.Weld.C0 = CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(math.random(-10,-6)), math.rad(math.random(10,20)), math.rad(math.random(-20,-10)))
rleg.Weld.C0 = CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(math.random(-10,-6)), math.rad(math.random(-20,-10)), math.rad(math.random(10,20)))

colc = math.random(1,7)
local fx = Instance.new("Part",torso)
fx.Anchored = true
fx.Material = "Neon"
fx.CanCollide = false
fx.Locked = true
fx.Transparency = 1
fx.Material = "Neon"
fx.Size = Vector3.new(1,1,1)
fx.TopSurface = "SmoothNoOutlines"
fx.BottomSurface = "SmoothNoOutlines"
fx.BrickColor = Neonsc[colc]
fxm = Instance.new("SpecialMesh",fx)
fxm.MeshType = "Sphere"
fxm.Scale = Vector3.new(1,1,1)

for i = 1, 20 do 
	colc = math.random(1,7)
	fx.BrickColor = Neonsc[colc]
        fx.Transparency = fx.Transparency - (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(0.5,0.5,0.5)
        wait(0.0000001)
end


	if char.Hair ~= nil then
	for i,v in pairs(char:children()) do
    	if v == char.Hair then
        		v:Destroy()
			break
    		end
		end
	end
for i = 1, 20 do wait(0.0000001)
	colc = math.random(1,7)
	fx.BrickColor = Neonsc[colc]
        fx.Transparency = fx.Transparency + (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(0.5,0.5,0.5)
end]]

local num = 0
for i=0,1,0.1 do
swait()
rarm.Weld.C0=clerp(rarm.Weld.C0,cf(1.3,0.5,0.2)*euler(3.4,0,0),.3)
larm.Weld.C0=clerp(larm.Weld.C0,cf(-1.5,0.5,0)*euler(0,0,0),.3)
end
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
rarm.Weld.C0=clerp(rarm.Weld.C0,cf(1.5,0.5,0)*euler(1.3,0,0),.3)
larm.Weld.C0=clerp(larm.Weld.C0,cf(-1,0.5,-0.5)*euler(1.4,-1.57,0)*euler(1.2,0,0),.3)
end
for i=0.1, 1, 0.1 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.5, -.54) * CFrame.Angles(math.rad(88), 0, math.rad(48)), 0.6)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.3)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.1) * CFrame.Angles(math.rad(-56), 0, 0), 0.3)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1) * CFrame.Angles(math.rad(-6), 0, 0), 0.3)
end
num=0
for i=0,1,0.01 do
swait()
if num>=10 then
num=0
colc = math.random(1, 7)
MagicWave(Neonsc[colc],cf(torso.Position)*cf(0,-1,0)*euler(0,math.random(-50,50),0),1,1,1,1,.5,1,0.05)
end
for i=1,2 do
if math.random(1,5)==1 then
colc = math.random(1, 7)
--MagicBlock(Neonsc[colc],RightArm.CFrame*cf(math.random(-100,100)/100,-math.random(0,700)/100,math.random(-100,100)/100),math.random(30,80)/100,math.random(30,80)/100,math.random(30,80)/100,.5,.5,.5,0.05)
else
colc = math.random(1, 7)
--MagicBlock(Neonsc[colc],RightArm.CFrame*cf(math.random(-100,100)/100,-math.random(0,700)/100,math.random(-100,100)/100),math.random(30,80)/100,math.random(30,80)/100,math.random(30,80)/100,.5,.5,.5,0.05)
end
end
num=num+1
end
for i=1,4 do
colc = math.random(1, 7)
--MagicBlock(Neonsc[colc],RightArm.CFrame*cf(0,-.5-math.random(0,500)/100,0),2,2,2,.5,.5,.5,0.05)
end
colc = math.random(1, 7)
MagicWave(Neonsc[colc],cf(torso.Position)*cf(0,-1,0)*euler(0,math.random(-50,50),0),1,1,1,.5,.3,.5,0.01)
--[[model2.Parent=Character
for i=1,#DBlade do
DBlade[i].Parent=model2
DBladeWelds[i].Parent=DBlade[1]
end]]
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-0.4),.3)
rarm.Weld.C0=clerp(rarm.Weld.C0,cf(1.5,0.5,0)*euler(1.2,-0.5,1),.3)
larm.Weld.C0=clerp(larm.Weld.C0,cf(-1.5,0.5,0)*euler(1.4,0.5,-1.3),.3)
end
swait(10)
colc = math.random(1,7)
local fx = Instance.new("Part",torso)
fx.Anchored = true
fx.Material = "Neon"
fx.CanCollide = false
fx.Locked = true
fx.Transparency = 1
fx.Material = "Neon"
fx.Size = Vector3.new(1,1,1)
fx.TopSurface = "SmoothNoOutlines"
fx.BottomSurface = "SmoothNoOutlines"
fx.BrickColor = Neonsc[colc]
fxm = Instance.new("SpecialMesh",fx)
fxm.MeshType = "Sphere"
fxm.Scale = Vector3.new(1,1,1)

for i = 1, 20 do 
	colc = math.random(1,7)
	fx.BrickColor = Neonsc[colc]
        fx.Transparency = fx.Transparency - (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(0.5,0.5,0.5)
        wait(0.0000000001)
end


	if char.Hair ~= nil then
	for i,v in pairs(char:children()) do
    	if v == char.Hair then
        		v:Destroy()
			break
    		end
		end
	end
for i = 1, 20 do wait(0.0000001)
	colc = math.random(1,7)
	fx.BrickColor = Neonsc[colc]
        fx.Transparency = fx.Transparency + (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(0.5,0.5,0.5)
end
end

function ssl3Appear()

if myVars[5] == "ssl3_1" then
print("ssl3RAN")

function part_1(formfactor,parent,reflectance,transparency,brickcolor,name,size)
	local fp=it("Part")
	fp.formFactor=formfactor
	fp.Parent=parent
	fp.Reflectance=reflectance
	fp.Transparency=1
	fp.CanCollide=false
	fp.Locked=true
	fp.BrickColor=brickcolor
	fp.Name=name
	fp.Size=size
	fp.Position=Torso.Position
	NoOutline(fp)
	fp.Material="Neon"
	fp:BreakJoints()
	return fp
end
 
function mesh_1(Mesh,part,meshtype,meshid,offset,scale)
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
 
function weld_1(parent,part0,part1,c0)
	local weld=it("Weld")
	weld.Parent=parent
	weld.Part0=part0
	weld.Part1=part1
	weld.C0=c0
	return weld
end
local model2=Instance.new("Model")
model2.Parent=nil
model2.Name="Demon Blade"
DBlade={}
DBladeWelds={}

colc = math.random(1, 7)
prtd1=part_1(3,model2,0,0.4,Neons[colc],"DPart1",vt())
colc = math.random(1, 7)
prtd2=part_1(3,model2,0,0,Neons[colc],"DPart2",vt())
prtd3=part_1(3,model2,0,0,Neons[colc],"DPart3",vt())
colc = math.random(1, 7)
prtd4=part_1(3,model2,0,0,Neons[colc],"DPart4",vt())
prtd5=part_1(3,model2,0,0,Neons[colc],"DPart5",vt())
colc = math.random(1, 7)
prtd6=part_1(3,model2,0,0,Neons[colc],"DPart6",vt())
prtd7=part_1(3,model2,0.8,0,Neons[colc],"DPart7",vt())
prtd8=part_1(3,model2,0.8,0,Neons[colc],"DPart8",vt())
colc = math.random(1, 7)
prtd9=part_1(3,model2,0.5,0.2,Neons[colc],"DPart9",vt())
prtd10=part_1(3,model2,0.5,0.2,Neons[colc],"DPart10",vt())
prtd11=part_1(3,model2,0.5,0,Neons[colc],"DPart11",vt())
colc = math.random(1, 7)
prtd12=part_1(3,model2,0,0,Neons[colc],"DPart12",vt())
for _,c in pairs(model2:children()) do
	if c.className=="Part" then
		table.insert(DBlade,c)
		print(c)
	end
end
 

 
mshd1=mesh_1("BlockMesh",prtd1,"","",vt(0,0,0),vt(5.01,3,5.01))
mshd2=mesh_1("BlockMesh",prtd2,"","",vt(0,0,0),vt(5.1,3,5.1))
mshd3=mesh_1("SpecialMesh",prtd3,"Wedge","",vt(0,0,0),vt(5.05,4,3))
mshd4=mesh_1("SpecialMesh",prtd4,"Wedge","",vt(0,0,0),vt(5.05,4,3))
mshd5=mesh_1("SpecialMesh",prtd5,"Wedge","",vt(0,0,0),vt(5.5,6,6))
mshd6=mesh_1("SpecialMesh",prtd6,"Wedge","",vt(0,0,0),vt(5.5,6,6))
mshd7=mesh_1("BlockMesh",prtd7,"","",vt(0,0,0),vt(3,20,1))
mshd8=mesh_1("SpecialMesh",prtd8,"Wedge","",vt(0,0,0),vt(1,3,5))
mshd9=mesh_1("BlockMesh",prtd9,"","",vt(0,0,0),vt(4.5,20,.1))
mshd10=mesh_1("SpecialMesh",prtd10,"Wedge","",vt(0,0,0),vt(.1,4.5,8))
mshd11=mesh_1("CylinderMesh",prtd11,"","",vt(0,0,0),vt(4,5.8,4))
mshd12=mesh_1("CylinderMesh",prtd12,"","",vt(0,0,0),vt(3,5.9,3))
 
 
wldd1=weld_1(prtd1,prtd1,RightArm,euler(0,0,0)*cf(0,.21,0))
wldd2=weld_1(prtd1,prtd2,prtd1,euler(0,0,0)*cf(0,.5,0))
wldd3=weld_1(prtd1,prtd3,prtd2,euler(0,1.57,0)*cf(.21,-.6,0))
wldd4=weld_1(prtd1,prtd4,prtd2,euler(0,-1.57,0)*cf(-.21,-.6,0))
wldd5=weld_1(prtd1,prtd5,prtd2,euler(0,-1.57,0)*cf(.1,-.1,0))
wldd6=weld_1(prtd1,prtd6,prtd5,euler(0,0,3.14)*cf(0,1.2,0))
wldd7=weld_1(prtd1,prtd7,prtd2,euler(0,0,0)*cf(0,2.5,0))
wldd8=weld_1(prtd1,prtd8,prtd7,euler(1.57,1.57,0)*cf(0,2.5,0))
wldd9=weld_1(prtd1,prtd9,prtd7,euler(0,0,0)*cf(0,0,0))
wldd10=weld_1(prtd1,prtd10,prtd8,euler(0,0,0)*cf(0,0,0.3))
wldd11=weld_1(prtd1,prtd11,prtd1,euler(1.57,0,0)*cf(0,1,0))
wldd12=weld_1(prtd1,prtd12,prtd11,euler(0,0,0)*cf(0,0,0))
for _,c in pairs(prtd1:children()) do
	if c.className=="Weld" then
		table.insert(DBladeWelds,c)
		print(c)
	end
end
 
local hitbox2=part_1(3,nil,0,1,BrickColor.new("Black"),"Hitbox",vt(1,1,1))

model2.Parent=char
for i=1,#DBlade do
DBlade[i].Parent=model2
DBladeWelds[i].Parent=DBlade[1]
end
myVars[10] = model2
myVars[11] = hitbox2

	for i = 1, 10 do wait()
		for i,v in pairs(myVars[10]:GetChildren()) do
			if v:IsA("Part") or v:IsA("WedgePart") then
				if v.Name ~= "HitBox" then
					v.Transparency = v.Transparency - 0.1
				end
			end
		end
	end
--[[local mei = Instance.new('Model', char)
mei.Name = "WeaponModel"

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create


function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part"){
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = 1,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BColor)),
		Name = Name,
		Size = Size,
		Material = Material,
	}
	RemoveOutlines(Part)
	return Part
end
	
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	local Msh = Create(Mesh){
		Parent = Part,
		Offset = OffSet,
		Scale = Scale,
	}
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end
	
function CreateWeld(Parent, Part0, Part1, C0, C1)
	local Weld = Create("Weld"){
		Parent = Parent,
		Part0 = Part0,
		Part1 = Part1,
		C0 = C0,
		C1 = C1,
	}
	return Weld
end



HandleL = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 1, myVars[6][colc], "HandleL", Vector3.new(1, 2, 1.01999998))
colc = math.random(1,7)
HandleLWeld = CreateWeld(mei, char["Left Arm"], HandleL, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00849914551, 0.00999999046, 6.77108765e-005, 1, 0, 0, 0, 1, 0, 0, 0, 1))
EffectPrt1 = CreatePart(mei, Enum.Material.Neon, 0, 0.30000001192093, "Really black", "EffectPrt1", Vector3.new(0.600000024, 0.600000024, 0.400000036))
EffectPrt1Weld = CreateWeld(mei, HandleL, EffectPrt1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00999355316, -0.499996185, -0.509780884, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("SpecialMesh", EffectPrt1, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
EffectPrt2 = CreatePart(mei, Enum.Material.Neon, 0.30000001192093, 0, myVars[6][colc], "EffectPrt2", Vector3.new(0.600000024, 0.600000024, 0.400000036))
colc = math.random(1,7)
EffectPrt2Weld = CreateWeld(mei, HandleL, EffectPrt2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0100440979, 0.499996185, 0.509773254, 4.06801701e-005, 8.90720813e-008, 1, 2.13165718e-014, -1, 8.90720813e-008, 1, -3.60215091e-012, -4.06801701e-005))
CreateMesh("SpecialMesh", EffectPrt2, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.379999906, 0.399999678, 2.21999955))
HitboxL = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 1, myVars[6][colc], "HitboxL", Vector3.new(1.20000005, 1.39999998, 1.01999998))
colc = math.random(1,7)
HitboxLWeld = CreateWeld(mei, HandleL, HitboxL, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0999908447, 0.699999809, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 0, myVars[6][colc], "Part", Vector3.new(0.75, 0.200000003, 0.200000003))
colc = math.random(1,7)
PartWeld = CreateWeld(mei, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.12071991, 0.312129974, -0.409996033, 0.965925872, 0.258819103, 0, -0.258819103, 0.965925872, 0, 0, 0, 1))
Part = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 0, myVars[6][colc], "Part", Vector3.new(0.200000003, 0.200000003, 1.01999998))
colc = math.random(1,7)
PartWeld = CreateWeld(mei, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.354278564, 0.31212616, 0, 0.965925872, 0.258819103, 0, -0.258819103, 0.965925872, 0, 0, 0, 1))
Part = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 0, myVars[6][colc], "Part", Vector3.new(0.600000024, 0.200000003, 1.01999998))
colc = math.random(1,7)
PartWeld = CreateWeld(mei, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.200004578, 0.899998903, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 0, myVars[6][colc], "Part", Vector3.new(0.75, 0.200000003, 0.200000003))
colc = math.random(1,7)
PartWeld = CreateWeld(mei, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.12071991, 0.312129974, 0.410003662, 0.965925872, 0.258819103, 0, -0.258819103, 0.965925872, 0, 0, 0, 1))
Part = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 0, myVars[6][colc], "Part", Vector3.new(0.200000003, 1.20000005, 1.00999999))
colc = math.random(1,7)
PartWeld = CreateWeld(mei, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.409751892, -0.412899256, 0.00154209137, -1, -5.71118512e-008, 0, -5.71118512e-008, 1, 1.6609139e-008, -9.48578645e-016, 1.6609139e-008, -1))
Part = CreatePart(mei, Enum.Material.Neon, 0, 0.19999998807907, "Really black", "Part", Vector3.new(0.400000036, 0.400000036, 0.400000006))
PartWeld = CreateWeld(mei, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0105276108, -0.491856098, -0.509765625, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
ThunderHoleL = CreatePart(mei, Enum.Material.Neon, 0, 0, "Really black", "ThunderHoleL", Vector3.new(0.200000003, 1.05000007, 0.200000003))
ThunderHoleLWeld = CreateWeld(mei, HandleL, ThunderHoleL, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.699999809, -0.000227928162, 0.228645325, 0, -1, 0, 0, 0, -1, 1, -0, 0))
CreateMesh("CylinderMesh", ThunderHoleL, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(mei, Enum.Material.Neon, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.800000012, 0.200000003))
WedgeWeld = CreateWeld(mei, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.21999836, 0.600001812, 0.62865448, 0, 0, -1, 0, 1, 0, 1, 0, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(mei, Enum.Material.Neon, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.600000024, 0.200000003))
WedgeWeld = CreateWeld(mei, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.232361794, 0.0286483765, 1.10000181, -5.96046448e-008, 1.07931243e-007, 1, 1, 5.49689858e-008, 5.96046412e-008, -5.49689787e-008, 1, -1.07931243e-007))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(mei, Enum.Material.Neon, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.400000006, 0.200000003))
WedgeWeld = CreateWeld(mei, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.21999836, -0.528648376, 1.10000181, 0, 0, -1, -1, -5.96046377e-008, 0, -5.96046377e-008, 1, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(mei, Enum.Material.Neon, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.600000024, 0.200000003))
WedgeWeld = CreateWeld(mei, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.21999836, 0.0286483765, 1.10000181, -5.96046448e-008, 1.07931243e-007, 1, 1, 5.49689858e-008, 5.96046412e-008, -5.49689787e-008, 1, -1.07931243e-007))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 0, myVars[6][colc], "Wedge", Vector3.new(1.01999998, 1.80999994, 0.619999945))
WedgeWeld = CreateWeld(mei, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.104995966, -0.199783325, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 0, myVars[6][colc], "Wedge", Vector3.new(1.03999996, 1.00999999, 1.01999998))
WedgeWeld = CreateWeld(mei, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.494999886, -0.018661499, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(mei, Enum.Material.Neon, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.800000012, 0.200000003))
WedgeWeld = CreateWeld(mei, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.232361794, 0.600001812, 0.62865448, 0, 0, -1, 0, 1, 0, 1, 0, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(mei, Enum.Material.Neon, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.400000006, 0.200000003))
WedgeWeld = CreateWeld(mei, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.232361794, -0.528648376, 1.10000181, 0, 0, -1, -1, -5.96046377e-008, 0, -5.96046377e-008, 1, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
HandleR = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 1, myVars[6][colc], "HandleR", Vector3.new(1, 2, 1.01999998))
colc = math.random(1,7)
HandleRWeld = CreateWeld(mei, char["Right Arm"], HandleR, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00468444824, 0.0100209713, -0.00353145599, -1, -5.71118512e-008, 0, -5.71118512e-008, 1, 1.6609139e-008, -9.48578645e-016, 1.6609139e-008, -1))
Barrel1 = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 1, myVars[6][colc], "Barrel1", Vector3.new(0.600000024, 1.20000005, 0.400000036))
colc = math.random(1,7)
Barrel1Weld = CreateWeld(mei, HandleR, Barrel1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.299865723, 0.599565029, 0.718658447, -1.49011612e-007, -6.73397207e-015, -1, 0, 1, -7.10542736e-015, 1, 0, -1.49011612e-007))
CreateMesh("SpecialMesh", Barrel1, Enum.MeshType.FileMesh, "rbxassetid://433397018", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
Barrel2 = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 1, myVars[6][colc], "Barrel2", Vector3.new(0.600000024, 1.20000005, 0.400000036))
colc = math.random(1,7)
Barrel2Weld = CreateWeld(mei, HandleR, Barrel2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.300126076, 0.599565029, 0.718658447, -1.49011612e-007, -6.73397207e-015, -1, 0, 1, -7.10542736e-015, 1, 0, -1.49011612e-007))
CreateMesh("SpecialMesh", Barrel2, Enum.MeshType.FileMesh, "rbxassetid://433397018", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
Choke1 = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 1, myVars[6][colc], "Choke1", Vector3.new(0.600000024, 0.400000006, 0.400000036))
colc = math.random(1,7)
Choke1Weld = CreateWeld(mei, HandleR, Choke1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.297118187, 1.39956522, 0.718673706, -1.49011612e-007, -6.73397207e-015, -1, 0, 1, -7.10542736e-015, 1, 0, -1.49011612e-007))
CreateMesh("SpecialMesh", Choke1, Enum.MeshType.FileMesh, "rbxassetid://433397231", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
Choke2 = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 1, myVars[6][colc], "Choke2", Vector3.new(0.600000024, 0.400000006, 0.400000036))
colc = math.random(1,7)
Choke2Weld = CreateWeld(mei, HandleR, Choke2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.303283691, 1.3995651, 0.718673706, -1.49011612e-007, -6.73397207e-015, -1, 0, 1, -7.10542736e-015, 1, 0, -1.49011612e-007))
CreateMesh("SpecialMesh", Choke2, Enum.MeshType.FileMesh, "rbxassetid://433397231", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
HitboxR = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 1, myVars[6][colc], "HitboxR", Vector3.new(1.20000005, 0.99999994, 1.01999998))
colc = math.random(1,7)
HitboxRWeld = CreateWeld(mei, HandleR, HitboxR, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.100006104, 0.700003862, 0, 1, 0, 0, 0, 1, 5.41750795e-023, 0, 5.41750795e-023, 1))
Part = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 0, myVars[6][colc], "Part", Vector3.new(0.75, 0.200000003, 0.200000003))
colc = math.random(1,7)
PartWeld = CreateWeld(mei, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.120735168, 0.312120438, 0.40998745, 0.965925872, 0.258819222, -5.53058896e-008, -0.258819222, 0.965925872, 3.094436e-008, 6.14303701e-008, -1.55757274e-008, 1))
Part = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 0, myVars[6][colc], "Part", Vector3.new(0.400000006, 0.819999993, 1.01999998))
colc = math.random(1,7)
PartWeld = CreateWeld(mei, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.718658447, -0.4104321, -1.43051147e-005, 1, 0, 0, 0, 1, 5.41750795e-023, 0, 5.41750795e-023, 1))
Part = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 0, myVars[6][colc], "Part", Vector3.new(0.600000024, 0.200000003, 1.01999998))
colc = math.random(1,7)
PartWeld = CreateWeld(mei, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.199996948, 0.900001049, 0, 1, 0, 0, 0, 1, 5.41750795e-023, 0, 5.41750795e-023, 1))
Part = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 0, myVars[6][colc], "Part", Vector3.new(0.409999996, 2.01999998, 1.01999998))
colc = math.random(1,7)
PartWeld = CreateWeld(mei, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.313659668, -0.00999617577, 0, 1, 0, 0, 0, 1, 5.41750795e-023, 0, 5.41750795e-023, 1))
Part = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 0, myVars[6][colc], "Part", Vector3.new(0.75, 0.200000003, 0.200000003))
colc = math.random(1,7)
PartWeld = CreateWeld(mei, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.120735168, 0.312120438, -0.410010338, 0.965925872, 0.258819222, -5.53058896e-008, -0.258819222, 0.965925872, 3.094436e-008, 6.14303701e-008, -1.55757274e-008, 1))
Part = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 0, myVars[6][colc], "Part", Vector3.new(0.409999967, 0.200000003, 1.01999998))
colc = math.random(1,7)
PartWeld = CreateWeld(mei, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0863342285, -0.919991493, -3.05175781e-005, 1, 0, 0, 0, 1, 5.41750795e-023, 0, 5.41750795e-023, 1))
Part = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 0, myVars[6][colc], "Part", Vector3.new(0.200000003, 0.200000003, 1.01999998))
colc = math.random(1,7)
PartWeld = CreateWeld(mei, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.354248047, 0.312124252, -1.43051147e-005, 0.965925872, 0.258819222, -5.53058896e-008, -0.258819222, 0.965925872, 3.094436e-008, 6.14303701e-008, -1.55757274e-008, 1))
ThunderHoleR = CreatePart(mei, Enum.Material.Neon, 0, 0, "Really black", "ThunderHoleR", Vector3.new(0.200000003, 1.05000007, 0.200000003))
ThunderHoleRWeld = CreateWeld(mei, HandleR, ThunderHoleR, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.700005054, -0.000213623047, 0.228675842, -1.0658141e-014, -1, -1.0658141e-014, 9.48578222e-016, 1.0658141e-014, -1, 1, -1.0658141e-014, 9.48578116e-016))
CreateMesh("CylinderMesh", ThunderHoleR, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(mei, Enum.Material.Neon, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.800000012, 0.200000003))
WedgeWeld = CreateWeld(mei, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.232376099, 0.600004911, 0.628646851, 9.48580657e-016, -3.19744231e-014, -1, 0, 1, -3.19744231e-014, 1, 0, 9.48580551e-016))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(mei, Enum.Material.Neon, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.600000024, 0.200000003))
WedgeWeld = CreateWeld(mei, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.219985962, 0.0286712646, 1.10000277, -3.12924385e-007, 1.07931264e-007, 1, 1, 5.49689787e-008, 3.12924385e-007, -5.49689467e-008, 1, -1.07931285e-007))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(mei, Enum.Material.Neon, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.400000006, 0.200000003))
WedgeWeld = CreateWeld(mei, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.232376099, -0.528656006, 1.100003, 9.48580657e-016, -3.19744231e-014, -1, -1, -5.9604659e-008, -9.48578539e-016, -5.9604659e-008, 1, -3.19744231e-014))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 0, myVars[6][colc], "Wedge", Vector3.new(1.01999998, 0.200000003, 0.400000006))
colc = math.random(1,7)
WedgeWeld = CreateWeld(mei, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.43051147e-005, -0.920844555, 0.718658447, 9.48580657e-016, -3.19744231e-014, -1, 0, 1, -3.19744231e-014, 1, 0, 9.48580551e-016))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 0, myVars[6][colc], "Wedge", Vector3.new(1.03999996, 1.00999999, 1.01999998))
colc = math.random(1,7)
WedgeWeld = CreateWeld(mei, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.495002031, -0.0186691284, -9.48580657e-016, 3.19744231e-014, 1, 0, 1, -3.19744231e-014, -1, 0, -9.48580551e-016))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(mei, Enum.Material.Neon, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.600000024, 0.200000003))
colc = math.random(1,7)
WedgeWeld = CreateWeld(mei, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.232390404, 0.0286712646, 1.100003, -3.12924385e-007, 1.07931264e-007, 1, 1, 5.49689787e-008, 3.12924385e-007, -5.49689467e-008, 1, -1.07931285e-007))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(mei, Enum.Material.Neon, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.400000006, 0.200000003))
WedgeWeld = CreateWeld(mei, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.219985962, -0.528671265, 1.100003, 9.48580657e-016, -3.19744231e-014, -1, -1, -5.9604659e-008, -9.48578539e-016, -5.9604659e-008, 1, -3.19744231e-014))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
colc = math.random(1,7)
Wedge = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 0, myVars[6][colc], "Wedge", Vector3.new(1.01999998, 0.200000003, 0.400000006))
colc = math.random(1,7)
WedgeWeld = CreateWeld(mei, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.43051147e-005, -0.100847006, 0.718658447, 2.45555211e-015, -5.96046306e-008, 1, -1.42108547e-014, -1, -5.96046306e-008, 1, -1.42108547e-014, -2.45555296e-015))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(mei, Enum.Material.Neon, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.800000012, 0.200000003))
WedgeWeld = CreateWeld(mei, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.220002174, 0.600004911, 0.628662109, 9.48580657e-016, -3.19744231e-014, -1, 0, 1, -3.19744231e-014, 1, 0, 9.48580551e-016))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(mei, Enum.Material.Neon, 0.20000000298023, 0, myVars[6][colc], "Wedge", Vector3.new(1.00999999, 0.410000026, 0.410000026))
colc = math.random(1,7)
WedgeWeld = CreateWeld(mei, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00409030914, 0.623651981, 0.0869140625, 7.5121838e-016, 3.45568019e-009, -1, -5.9604659e-008, -1, -3.45568019e-009, -1, 5.9604659e-008, -5.45243684e-016))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))

myVars[6] = mei
	for i = 1, 10 do wait()
		for i,v in pairs(mei:GetChildren()) do
			if v:IsA("Part") or v:IsA("WedgePart") then
				if v.Name ~= "HitBox" then
					v.Transparency = v.Transparency - 0.1
				end
			end
		end
	end]]



return true
elseif myVars[5] == "ssl3" then

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
RemoveOutlines = function(part)
  part.TopSurface = 10
end

CFuncs = {
Part = {new = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
  local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = 1, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
  RemoveOutlines(Part)
  return Part
end}
, 
Mesh = {new = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
  local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
  if Mesh == "SpecialMesh" then
    Msh.MeshType = MeshType
    Msh.MeshId = MeshId
  end
  return Msh
end}
, 
Mesh = {new = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
  local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
  if Mesh == "SpecialMesh" then
    Msh.MeshType = MeshType
    Msh.MeshId = MeshId
  end
  return Msh
end}
, 
Weld = {new = function(Parent, Part0, Part1, C0, C1)
  local Weld = Create("Weld")({Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1})
  return Weld
end}
}
myVars[11] = {"Bright red", "Bright orange", "Bright yellow", "Bright green", "Bright blue", "Royal purple", "Bright violet"}

colc = math.random(1,7)
local mei = Instance.new("Model", char)
mei.Name = "WeaponModel"
Handleer = CFuncs.Part.new(mei, Enum.Material.SmoothPlastic, 0, 1, myVars[11][colc], "Handle", Vector3.new(1, 2, 1))
colc = math.random(1,7)
HandleerWeld = CFuncs.Weld.new(mei, char["Right Arm"], Handleer, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Hitbox = CFuncs.Part.new(mei, Enum.Material.SmoothPlastic, 0, 1, myVars[11][colc], "Hitbox", Vector3.new(1, 0.400000095, 1))
colc = math.random(1,7)
HitboxWeld = CFuncs.Weld.new(mei, Handleer, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 1.20000029, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = CFuncs.Part.new(mei, Enum.Material.Metal, 0, 0, myVars[11][colc], "Part", Vector3.new(1.13000011, 0.2700001, 0.680000067))
colc = math.random(1,7)
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00628662109, 0.935291767, 0.234018803, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(mei, Enum.Material.Neon, 0, 0, myVars[11][colc], "Part", Vector3.new(1.09000015, 0.310000271, 0.530000091))
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00628662109, 0.335297108, 0.288942814, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(mei, Enum.Material.Neon, 0, 0, myVars[11][colc], "Part", Vector3.new(0.200000003, 0.200000003, 0.560000002))
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0128860474, 1.12596655, -0.359955788, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(mei, Enum.Material.Metal, 0, 0, myVars[11][colc], "Part", Vector3.new(0.229999989, 0.200000003, 0.590000033))
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0138702393, 1.11102057, -0.360497475, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(mei, Enum.Material.Neon, 0, 0, myVars[11][colc], "Part", Vector3.new(1.11000013, 0.200000003, 0.530000091))
colc = math.random(1,7)
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0020904541, -0.151069164, 0.29600811, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(mei, Enum.Material.Neon, 0, 0, myVars[11][colc], "Part", Vector3.new(0.680000186, 0.220000178, 0.280000031))
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00286865234, -0.366393089, -0.562141895, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(mei, Enum.Material.Neon, 0, 0, myVars[11][colc], "Part", Vector3.new(0.410000265, 0.530000031, 0.840000033))
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00244140625, -0.782339096, -0.21243906, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(mei, Enum.Material.Neon, 0, 0, myVars[11][colc], "Part", Vector3.new(0.54000026, 0.630000114, 0.900000036))
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00863647461, -0.714685917, -0.176069736, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(mei, Enum.Material.Neon, 0, 0, myVars[11][colc], "Part", Vector3.new(0.24000001, 0.919999957, 0.420000017))
colc = math.random(1,7)
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.027633667, 0.210770607, -0.377646923, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(mei, Enum.Material.Neon, 0, 0, myVars[11][colc], "Part", Vector3.new(1.24000001, 1.13, 0.219999999))
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0117416382, -0.15815258, -0.230055332, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(mei, Enum.Material.Neon, 0, 0, myVars[11][colc], "Part", Vector3.new(0.870000243, 0.2700001, 0.860000014))
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00363922119, 0.975282192, 0.0139846802, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(mei, Enum.Material.Metal, 0, 0, myVars[11][colc], "Part", Vector3.new(0.200000003, 1.62000012, 0.400000095))
colc = math.random(1,7)
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.238723755, 0.107399464, 0.364008427, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(mei, Enum.Material.Neon, 0, 0, myVars[11][colc], "Part", Vector3.new(0.490000248, 0.540000081, 0.420000017))
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0136032104, 0.850343227, -0.406029224, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(mei, Enum.Material.Neon, 0, 0, myVars[11][colc], "Part", Vector3.new(1.11000013, 0.210000008, 0.530000091))
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0108261108, 0.336452961, 0.291498661, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(mei, Enum.Material.Neon, 0, 0,myVars[11][colc], "Part", Vector3.new(1.21000004, 1.63999999, 0.300000012))
colc = math.random(1,7)
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00877380371, 0.0478525162, -0.226531029, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(mei, Enum.Material.Metal, 0, 0, myVars[11][colc], "Part", Vector3.new(1.13000011, 1.88000023, 0.680000067))
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00626373291, 0.130330086, -0.225958824, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(mei, Enum.Material.Neon, 0, 0, myVars[11][colc], "Part", Vector3.new(0.379999936, 0.379999936, 0.379999936))
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.851072311, 0.585458279, 0.0115356445, 3.42726736e-07, 1, -3.37138971e-07, -1.93715223e-07, 5.81145912e-07, -1.00000286, -1, -3.87430191e-07, -1.56462249e-07))
CFuncs.Mesh.new("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs.Part.new(mei, Enum.Material.Neon, 0, 0, myVars[11][colc], "Part", Vector3.new(0.200000003, 1, 0.420000017))
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.131408691, 0.0903525352, -0.406013012, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(mei, Enum.Material.Neon, 0, 0, myVars[11][colc], "Part", Vector3.new(0.79000026, 0.340000153, 0.49000001))
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00364685059, -0.359667778, -0.441084862, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(mei, Enum.Material.Metal, 0, 0, myVars[11][colc], "Part", Vector3.new(0.200000003, 1.77000022, 0.420000106))
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.19871521, 0.0216679573, 0.355883121, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(mei, Enum.Material.Metal, 0, 0, myVars[11][colc], "Part", Vector3.new(1.13000011, 0.329999983, 1.1400001))
colc = math.random(1,7)
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0093460083, -0.835298538, 0.0032749176, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(mei, Enum.Material.Metal, 0, 0, myVars[11][colc], "Part", Vector3.new(0.910000026, 0.47999987, 0.580000043))
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00074005127, -0.35460186, -0.276175022, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(mei, Enum.Material.Neon, 0, 0, myVars[11][colc], "Part", Vector3.new(1.23000002, 0.340000063, 0.229999989))
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00450134277, 0.662789822, -0.228302002, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(mei, Enum.Material.Neon, 0, 0, myVars[11][colc], "Part", Vector3.new(1.09000015, 0.310000271, 0.530000091))
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00623321533, -0.154727459, 0.288996696, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(mei, Enum.Material.Metal, 0, 0, myVars[11][colc], "Part", Vector3.new(0.490000248, 0.520000041, 0.420000017))
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0135955811, -0.396072388, -0.850289822, 1.00000012, -1.01476926e-05, 4.99935777e-06, -4.65661287e-06, 1.56459919e-07, 1.00000286, -1.0818243e-05, -1.00000012, 1.15297803e-06))
CFuncs.Mesh.new("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs.Part.new(mei, Enum.Material.Neon, 0, 0, myVars[11][colc], "Part", Vector3.new(0.200000003, 1.05000007, 0.420000017))
colc = math.random(1,7)
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.158599854, 0.0553216934, -0.405974865, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(mei, Enum.Material.Metal, 0, 0, myVars[11][colc], "Part", Vector3.new(0.629999995, 2.07999992, 0.899999976))
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0092010498, 0.0362443924, -0.120284081, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(mei, Enum.Material.Neon, 0, 0, myVars[11][colc], "Part", Vector3.new(0.750000298, 0.250000089, 0.74000001))
PartWeld = CFuncs.Weld.new(mei, Handleer, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00680541992, 1.00405645, 0.0256195068, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
myVars[6] = mei
	for i = 1, 10 do wait()
		for i,v in pairs(myVars[6]:GetChildren()) do
			if v:IsA("Part") or v:IsA("WedgePart") then
				if v.Name ~= "HitBox" then
					v.Transparency = v.Transparency - 0.1
				end
			end
		end
	end
end
end




function ssl3Vanish()
	if myVars[5] == "ssl3" then
	for i = 1, 10 do wait()
		for i,v in pairs(myVars[6]:GetChildren()) do
			if v:IsA("Part") or v:IsA("WedgePart") then
				if v.Name ~= "HitBox" then
					v.Transparency = v.Transparency + 0.1
				end
			end
		end
	end
	elseif myVars[5] == "ssl3_1" then
		for i = 1, 10 do wait()
			for i,v in pairs(myVars[10]:GetChildren()) do
				if v:IsA("Part") or v:IsA("WedgePart") then
					if v.Name ~= "HitBox" then
						v.Transparency = v.Transparency + 0.1
					end
				end
			end
		end
	end
end

--------------SSL3 WEAPONS END-------------------------------
local iris = nil
function upgradeSword()
local colorscheme = {"Gold","New yeller","Really black","Daisy orange","Black"}
local render = game:GetService("RunService").RenderStepped
local bltb = {}

TorsoColor=Torso.BrickColor




 
function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
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
fp.Position=Torso.Position 
NoOutline(fp)
fp.Material="SmoothPlastic"
fp:BreakJoints()
return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh=it(Mesh) 
mesh.Parent=part
if Mesh=="SpecialMesh" then
mesh.MeshType=meshtype
if meshid~="nil" then
mesh.MeshId="http://www.roblox.com/asset/?id="..meshid
end
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
 
function weld(parent,part0,part1,c0)
local weld=it("Weld") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end
 

function Rainbow(hue)
 local section = hue % 1 * 3
 local secondary = 0.5 * math.pi * (section % 1)
 if section < 1 then
  return Color3.new(1, 1 - math.cos(secondary), 1 - math.sin(secondary))
 elseif section < 2 then
  return Color3.new(1 - math.sin(secondary), 1, 1 - math.cos(secondary))
 else
  return Color3.new(1 - math.cos(secondary), 1 - math.sin(secondary), 1)
 end
end


function UpdatePart(pt,clr)
	pt.BrickColor = BrickColor.new(clr)
end

local Color1=Torso.BrickColor



nooutline = function(part)
  part.TopSurface = 10
end


part2 = function(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = BrickColor.new(tostring(brickcolor))
  fp.Name = name
  fp.Size = size
  fp.Position = Character.Torso.Position
  nooutline(fp)
  fp.Material = material
  fp:BreakJoints()
  return fp
end
--<----------------------------------S w o r d  C r e a t i o n---------------------------------->--

	user=game:service'Players'.localPlayer
	char=user.Character
	mouse=user:GetMouse()
	m=Instance.new('Model',char)
	iris = m
	game:service'Lighting'.Outlines=false
	
	
local Handle  = Instance.new("Part", m)
			Handle:BreakJoints()
			Handle.TopSurface = "Smooth"
			Handle.Transparency = 0			Handle.Material = "Neon"
			Handle.Name = 'Handle'
			Handle.BottomSurface = "Smooth"
			Handle.FormFactor = "Custom" Handle.CanCollide = false
			Handle.BrickColor = BrickColor.new("Really black")
			Handle.Size = Vector3.new(0.337107092, 1.12369001, 0.337107033)
			    local Handleweld = Instance.new("ManualWeld")
   Handleweld.Part0 = Character["Right Arm"]
   Handleweld.Part1 = Handle  Handleweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Handleweld.C1 = CFrame.new(-0.000732421875, -0.0344696045, -0.945665836, -0.999993205, 0, 0, 0, 0, -1, 0, -0.999993086, 0)
    Handleweld.Parent = Character["Right Arm"]
		
					local HandleMesh = Instance.new("CylinderMesh",Handle)
				HandleMesh.Name = "Mesh"
				HandleMesh.Offset = Vector3.new(0, 0, 0)
				HandleMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, -0.393207669, 0.99998641, 0, 1.77634477e-015, -1.32347999e-023, 1, 0, -1.77634477e-015, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part1'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.337107092, 0.224738032, 0.337107033)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-4.00543213e-005, 0.674224854, -1.33514404e-005, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Sphere				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
				table.insert(bltb, Part)				
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.561845124, 0.200000003, 0.449476033)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.730434418, 7.62939453e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
				
				
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.561845124, 0.200000003, 0.449476033)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.730434418, 7.62939453e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part2'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.955184937, -0.179762959, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, -0.393225789, 0.99998641, 0, 1.77634477e-015, -1.32347999e-023, 1, 0, -1.77634477e-015, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.597281575, -0.842823029, -0.00578403473, -0.258815438, 0, 0.965912819, 0, 1, 0, -0.965912819, 0, -0.258815438)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0.5			Part.Name = 'Part3'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 4.62046242, 0.449476063)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(3.24249268e-005, -3.32155609, -4.76837158e-007, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 1, 1)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.597218513, -0.842823029, 0.00602054596, 0.258815646, 0, 0.9659127, 0, 1, 0, -0.9659127, 0, 0.258815646)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part4'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.337107092, 1.12369001, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, 0, -0.123583317, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 0.561845064)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, 0.393286943, 0.99998641, 1.07852229e-016, -0, -1.14204248e-016, 1, -2.3803019e-013, -0, 2.38031816e-013, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part5'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, -0.230328798, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part6'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.337107092, 0.200000003, 0.337107033)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.618034363, 9.53674316e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.200000003, 4.60922527, 0.224738017)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -3.3159256, -1.14440918e-005, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part7'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.337107092, 0.200000003, 0.337107033)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, 0.618049622, 9.53674316e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part8'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.337107092, 1.12369001, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, 0, 0.117978811, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 0.561845064)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.561845124, 0.200000003, 0.561845005)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, 9.53674316e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part9'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.348343939)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.53044498, -0.842823029, 0.0229825974, 0.258815438, -1.97460321e-017, -0.965912819, 3.30120669e-017, 1, -1.15873321e-017, 0.965912819, -2.88872116e-017, 0.258815438)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 0.922500014)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.529430389, -0.842823029, 0.0128250122, 0.258815438, 1.35525272e-020, -0.965912819, -3.50722156e-021, 1, 1.35524351e-020, 0.965912819, 0, 0.258815438)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.529132843, -0.842823029, -0.0117540359, -0.258815706, -3.25260652e-018, -0.965912759, 3.89845789e-017, 1, -1.38099317e-017, 0.965912759, -4.1236952e-017, -0.258815706)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, -0.393235803, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part10'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.348343939)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.525370121, -0.842823029, 0.0256881714, 0.258815676, -6.64073831e-019, 0.9659127, 1.05359266e-018, 1, 4.06573049e-019, -0.9659127, 9.14795583e-019, 0.258815676)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 0.922500014)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part11'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.730434418, 0.174170732, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part12'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.348343939)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.59340477, -0.842823029, 0.00790405273, -0.258815557, 0, -0.9659127, 0, 1, 0, 0.9659127, 0, -0.258815557)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 0.922500014)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part13'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.382054657)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.00023651123, -0.842823029, -0.364931583, 0.99998641, -2.62516024e-017, -1.67287184e-026, 2.62512451e-017, 1, 3.6862117e-018, 1.67287184e-026, -3.68626216e-018, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 1)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part14'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.348343939)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.598263144, -0.842823029, 0.00432395935, -0.258815438, 0, 0.965912819, 0, 1, 0, -0.965912819, 0, -0.258815438)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 0.922500014)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part15'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.449476063)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, 0.398794174, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 1)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part16'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.955184937, 0.174145699, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0.5			Part.Name = 'Part17'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 1.01132107, 0.449476063)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-8.39233398e-005, -6.13697433, 0.00012421608, -0.99998641, 0, 5.96042398e-008, 0, 1, 0, -5.96042398e-008, 0, -0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Wedge				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.221366972, 1, 1)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.561845124, 0.200000003, 0.449476033)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.955184937, -2.38418579e-007, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part18'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, 0.230348349, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
				
				table.insert(bltb, Part)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "Neon"
			Part.Transparency = 0			Part.Name = 'Part19'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.730434418, -0.179762959, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
				
				table.insert(bltb, Part)
				
local hitbox  = Instance.new("Part", m)
			hitbox:BreakJoints()
			hitbox.TopSurface = "Smooth"
			hitbox.Material = "Neon"
			hitbox.Transparency = 1			hitbox.Name = 'hitbox'
			hitbox.BottomSurface = "Smooth"
			hitbox.FormFactor = "Custom" hitbox.CanCollide = false
			hitbox.BrickColor = BrickColor.new("Really black")
			hitbox.Size = Vector3.new(0.200000003, 5.60922527, 0.624738038)
			    local hitboxweld = Instance.new("ManualWeld")
   hitboxweld.Part0 =  Handle   hitboxweld.Part1 = hitbox  hitboxweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   hitboxweld.C1 = CFrame.new(0, -3.8159256, -1.12056732e-005, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    hitboxweld.Parent = hitbox		
					local hitboxMesh = Instance.new("BlockMesh",hitbox)
				hitboxMesh.Name = "Mesh"
				hitboxMesh.Offset = Vector3.new(0, 0, 0)
				hitboxMesh.Scale = Vector3.new(0.561845124, 1, 1)
				
local Wedge  = Instance.new("WedgePart", m)
			Wedge:BreakJoints()
			Wedge.TopSurface = "Smooth"
			Wedge.Material = "Neon"
			Wedge.Transparency = 0			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.200000003, 0.561845124, 0.224738076)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(7.62939453e-006, -5.9009819, -4.0769577e-005, -0.999992788, 1.60944605e-010, -8.94063589e-007, 1.60504526e-010, 0.999993563, -4.18958729e-010, 7.897562e-007, -4.18840851e-010, -0.999986649)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.561845124, 1, 1)



EffectPart2 = part2(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 1, "Institutional white", "EffectPart2", Vector3.new(0.200000003, 0.200000003, 0.200000003))
EffectPart2weld = weld(m, Character["Left Arm"], EffectPart2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.15575993, 0.00814216491, -0.0231294632, -5.23798153e-005, 0.999999821, -0.000210702419, -6.36925748e-008, -0.00021070239, -0.99999994, -1, -5.23797935e-005, 7.47295417e-008))
EffectPart = part2(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 1, "Institutional white", "EffectPart", Vector3.new(0.200000003, 0.200000003, 0.200000003))
EffectPartweld = weld(m, Handle, EffectPart, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00693154335, 0.014090538, 6.03910685, -5.23798153e-005, -6.36925748e-008, -1, 0.99999994, -0.000210702419, -5.23798008e-005, -0.000210702419, -0.99999994, 7.47295417e-008))
mesh("BlockMesh", EffectPart, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	


coroutine.resume(coroutine.create(function()
while wait() do 
	for i,v in pairs(bltb) do
			if v:IsA("Part") or v:IsA("WedgePart") then
					UpdatePart(v,Rainbow(math.noise(0.5, 0.5, 0.5 + (time()/0.5))))
				
			end
		end
end
end)) --work






end

function removeSword()
	for i = 1, 10 do wait()
		for i,v in pairs(iris:GetChildren()) do
			if v:IsA("Part") or v:IsA("WedgePart") then
				if v.Name ~= "HitBox" or v.Name ~= "Thingy" then
					v.Transparency = v.Transparency + 0.1
				end
			end
		end
	end
end
-----------------------------------------------------
local blade1Tip = nil
local blade1cor0 = nil

local m = Instance.new("Model")
m.Name = "Genkadda"
function makeSword()
p1 = Instance.new("Part", m)
p1.Material = "Neon"
colc = math.random(1,7)
p1.BrickColor = Neonsc[colc]
p1.Name = "BladePart"
p1.FormFactor = Enum.FormFactor.Symmetric
p1.Size = Vector3.new(1, 1, 1)
p1.CFrame = CFrame.new(103.003883, 10.755723, -7.61905956, 5.61699271e-005, -7.1823597e-006, 0.999998987, -0.984785616, -0.173714966, 3.55839729e-005, 0.173720747, -0.984761655, 5.9530139e-006)
p1.CanCollide = false
p1.Locked = true
p1.Elasticity = 0
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("BlockMesh", p1)
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.299999923, 1, 0.120000005)
p2 = Instance.new("Part", m)
p2.Material = "Neon"
colc = math.random(1,7)
p2.BrickColor = Neonsc[colc]
p2.FormFactor = Enum.FormFactor.Symmetric
p2.Size = Vector3.new(1, 1, 1)
p2.CFrame = CFrame.new(103.00399, 10.7255898, -6.52608919, 0.00135809346, 0.00169118668, -0.999996662, 0.965820193, 0.259168088, 0.0017684648, 0.259154975, -0.965800881, -0.00130418094)
p2.CanCollide = false
p2.Locked = true
p2.Elasticity = 0
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("BlockMesh", p2)
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.099999927, 0.699999928, 0.099999927)
p3 = Instance.new("Part", m)
p3.Material = "Neon"
colc = math.random(1,7)
p3.BrickColor = Neonsc[colc]
p3.FormFactor = Enum.FormFactor.Symmetric
p3.Size = Vector3.new(1, 2, 1)
p3.CFrame = CFrame.new(103.004028, 11.1456547, -6.819067, 1.43263023e-005, -2.88564479e-006, 0.999998987, -0.882936299, -0.469471544, -7.18829688e-006, 0.469469696, -0.882911503, 1.35099981e-005)
p3.CanCollide = false
p3.Locked = true
p3.Elasticity = 0
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("BlockMesh", p3)
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.099999927, 0.699999928, 0.099999927)
p4 = Instance.new("Part", m)
p4.Material = "Neon"
colc = math.random(1,7)
p4.BrickColor = Neonsc[colc]
p4.Name = "BladePart"
p4.FormFactor = Enum.FormFactor.Symmetric
p4.Size = Vector3.new(1, 1, 1)
p4.CFrame = CFrame.new(103.003372, 10.965373, -6.66876507, 1.57370523e-005, -6.04354591e-006, 0.999996603, -0.965898931, -0.25886938, -7.14969246e-006, 0.258875549, -0.965874314, 1.58735529e-005)
p4.CanCollide = false
p4.Locked = true
p4.Elasticity = 0
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("BlockMesh", p4)
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.299999923, 1, 0.120000005)
p5 = Instance.new("Part", m)
p5.Material = "Neon"
colc = math.random(1,7)
p5.BrickColor = Neonsc[colc]
p5.Name = "Hilt"
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(1, 0.400000006, 1.60000014)
p5.CFrame = CFrame.new(103.003395, 11.0653381, -6.1687479, -0.99999404, 5.54991711e-005, -0.000617815298, -0.000594727404, -0.000124425016, 0.999983907, 2.66434654e-005, 0.999962509, 0.000109782166)
p5.CanCollide = false
p5.Locked = true
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("BlockMesh", p5)
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.299999923, 0.399999917, 0.799999952)
p6 = Instance.new("Part", m)
p6.Material = "Neon"
colc = math.random(1,7)
p6.BrickColor = Neonsc[colc]
p6.Name = "Handle"
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(1.29999995, 1, 1)
p6.CFrame = CFrame.new(103.000061, 11.0688219, -5.5480547, -1.23393656e-005, -1.36360759e-005, 0.999994218, 5.37017331e-006, 0.999984086, -9.45257489e-006, -0.999962509, -9.28580994e-006, 1.64470257e-005)
p6.CanCollide = false
p6.Locked = true
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Cylinder
b6.Name = "Mesh"
b6.Scale = Vector3.new(1, 0.200000003, 0.200000003)
p7 = Instance.new("Part", m)
p7.Material = "Neon"
colc = math.random(1,7)
p7.BrickColor = Neonsc[colc]
p7.FormFactor = Enum.FormFactor.Symmetric
p7.Size = Vector3.new(1, 1, 1)
p7.CFrame = CFrame.new(103.000099, 11.0688391, -4.79808855, -0.000332629686, 0.00429873355, -0.99998492, -4.5920292e-006, 0.999974728, 0.00432178052, 0.999962449, -8.49941443e-006, -0.000361445156)
p7.CanCollide = false
p7.Locked = true
b7 = Instance.new("SpecialMesh", p7)
b7.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b7.TextureId = ""
b7.MeshType = Enum.MeshType.FileMesh
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p8 = Instance.new("Part", m)
p8.Material = "Neon"
colc = math.random(1,7)
p8.BrickColor = Neonsc[colc]
p8.Name = "BladePart"
p8.FormFactor = Enum.FormFactor.Symmetric
p8.Size = Vector3.new(1, 1, 1)
p8.CFrame = CFrame.new(103.003326, 10.6254845, -8.59870911, -2.92104669e-005, -1.10579058e-005, 0.999994218, -0.996175766, -0.0871899351, -5.3152442e-005, 0.0872026458, -0.996152997, 2.03179661e-005)
p8.CanCollide = false
p8.Locked = true
p8.Elasticity = 0
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("BlockMesh", p8)
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.299999923, 1, 0.120000005)
p9 = Instance.new("Part", m)
p9.Material = "Neon"
colc = math.random(1,7)
p9.BrickColor = Neonsc[colc]
p9.Name = "BladePart"
p9.FormFactor = Enum.FormFactor.Symmetric
p9.Size = Vector3.new(1, 1, 1)
p9.CFrame = CFrame.new(103.003311, 10.625597, -9.51878738, -2.59891603e-005, -1.34348729e-005, 0.999994218, -0.996185422, 0.087079078, -4.78096408e-005, -0.0870626047, -0.996165276, 1.31400229e-005)
p9.CanCollide = false
p9.Locked = true
p9.Elasticity = 0
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("BlockMesh", p9)
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.299999923, 1, 0.120000005)
p10 = Instance.new("Part", m)
p10.Material = "Neon"
colc = math.random(1,7)
p10.BrickColor = Neonsc[colc]
p10.Name = "BladeTip"
p10.FormFactor = Enum.FormFactor.Symmetric
p10.Size = Vector3.new(1, 1, 2)
p10.CFrame = CFrame.new(103.00309, 11.1081867, -11.6109829, -0.999994099, -0.000455793255, 4.643387e-005, 0.00045133481, -0.965918779, -0.25878337, 0.000134008093, -0.258763671, 0.965901971)
p10.CanCollide = false
p10.Locked = true
p10.Elasticity = 0
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("SpecialMesh", p10)
b10.MeshType = Enum.MeshType.Wedge
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.119999997, 0.299999923, 0.699999928)
p11 = Instance.new("Part", m)
p11.Material = "Neon"
colc = math.random(1,7)
p11.BrickColor = Neonsc[colc]
p11.Name = "BladePart"
p11.FormFactor = Enum.FormFactor.Symmetric
p11.Size = Vector3.new(1, 1, 1)
p11.CFrame = CFrame.new(103.003296, 10.7956495, -10.4587727, 2.83485351e-005, -1.54050977e-005, 0.999994218, -0.96592474, 0.258761972, 8.27970416e-006, -0.258742362, -0.965907693, 2.1241216e-005)
p11.CanCollide = false
p11.Locked = true
p11.Elasticity = 0
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("BlockMesh", p11)
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.299999923, 1, 0.120000005)
p12 = Instance.new("Part", m)
p12.Material = "Neon"
colc = math.random(1,7)
p12.BrickColor = Neonsc[colc]
p12.Name = "BladeTip2"
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(1, 1, 2.4000001)
p12.CFrame = CFrame.new(102.999977, 10.6319504, -10.4398403, -0.999994218, -5.5769262e-005, 6.55075928e-005, 4.61044419e-006, 0.882887006, 0.469551951, -0.000112806956, 0.469529003, -0.882874727)
p12.CanCollide = false
p12.Locked = true
p12.Elasticity = 0
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b12 = Instance.new("SpecialMesh", p12)
b12.MeshType = Enum.MeshType.Wedge
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.119999997, 0.239999995, 0.699999928)
p13 = Instance.new("Part", m)
p13.Material = "Neon"
p13.BrickColor = BrickColor.new("Medium stone grey")
p13.Transparency = 1
p13.Name = "HitBox"
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(6.0999999, 0.400000006, 1.5999999)
p13.CFrame = CFrame.new(103.009995, 10.9988394, -9.2679081, 1.22519814e-005, -0.999994218, 1.36361559e-005, -5.27501106e-006, 9.45320426e-006, -0.999984264, 0.999962687, -1.65344682e-005, 9.20891762e-006)
p13.CanCollide = false
p13.Locked = true
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
w1 = Instance.new("Weld", p1)
w1.Name = "Part_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(11.9124546, -5.63626003, -103.00383, 4.33940659e-005, -0.984795153, 0.173719674, 1.85460614e-009, -0.173719659, -0.984795094, 1, 4.27345876e-005, -7.53657105e-006)
w1.Part1 = p2
w1.C1 = CFrame.new(-8.80891991, -9.26009178, 102.975845, 0.00136663229, 0.965830803, 0.259170175, 0.00170310249, 0.25916782, -0.965830863, -0.999997616, 0.00176132878, -0.00129072159)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(-8.80891991, -9.26009178, 102.975845, 0.00136663229, 0.965830803, 0.259170175, 0.00170310249, 0.25916782, -0.965830863, -0.999997616, 0.00176132878, -0.00129072159)
w2.Part1 = p3
w2.C1 = CFrame.new(13.0439634, -0.78926897, -103.003448, -4.37113883e-008, -0.88294369, 0.469478935, 0, -0.469478935, -0.88294369, 1, -3.85946954e-008, 2.05215755e-008)
w3 = Instance.new("Weld", p3)
w3.Name = "BladePart_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(13.0439634, -0.78926897, -103.003448, -4.37113883e-008, -0.88294369, 0.469478935, 0, -0.469478935, -0.88294369, 1, -3.85946954e-008, 2.05215755e-008)
w3.Part1 = p4
w3.C1 = CFrame.new(12.3193283, -3.60437131, -103.003067, 2.38418579e-006, -0.965907753, 0.258877277, 0, -0.258874893, -0.965907753, 0.999997616, 0, 2.38418579e-006)
w4 = Instance.new("Weld", p4)
w4.Name = "Hilt_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(12.3193283, -3.60437131, -103.003067, 2.38418579e-006, -0.965907753, 0.258877277, 0, -0.258874893, -0.965907753, 0.999997616, 0, 2.38418579e-006)
w4.Part1 = p5
w4.C1 = CFrame.new(103.010277, 6.16758585, -11.003541, -0.999999821, -0.00060418935, 4.31301851e-005, 4.32021443e-005, -0.000119086159, 1, -0.000604184228, 0.999999821, 0.000119112243)
w5 = Instance.new("Weld", p5)
w5.Name = "Handle_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(103.010277, 6.16758585, -11.003541, -0.999999821, -0.00060418935, 4.31301851e-005, 4.32021443e-005, -0.000119086159, 1, -0.000604184228, 0.999999821, 0.000119112243)
w5.Part1 = p6
w5.C1 = CFrame.new(-5.54999733, -11.0699978, -103, -4.37113883e-008, 2.98366913e-008, -1, 0, 1, 2.98366913e-008, 1, 1.3042032e-015, -4.37113883e-008)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(-5.54999733, -11.0699978, -103, -4.37113883e-008, 2.98366913e-008, -1, 0, 1, 2.98366913e-008, 1, 1.3042032e-015, -4.37113883e-008)
w6.Part1 = p7
w6.C1 = CFrame.new(4.83552647, -11.5140886, 102.949669, -0.000344927335, 7.4505806e-007, 0.99999994, 0.00431239465, 0.999990702, 7.4505806e-007, -0.999990642, 0.00431239465, -0.000344927335)
w7 = Instance.new("Weld", p7)
w7.Name = "BladePart_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(4.83552647, -11.5140886, 102.949669, -0.000344927335, 7.4505806e-007, 0.99999994, 0.00431239465, 0.999990702, 7.4505806e-007, -0.999990642, 0.00431239465, -0.000344927335)
w7.Part1 = p8
w7.C1 = CFrame.new(11.3406382, -7.6414094, -103.0028, -4.38670977e-005, -0.996191144, 0.0871966407, 1.91451011e-009, -0.0871966407, -0.996191144, 1, -4.36998489e-005, 3.82696771e-006)
w8 = Instance.new("Weld", p8)
w8.Name = "BladePart_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(11.3406382, -7.6414094, -103.0028, -4.38670977e-005, -0.996191144, 0.0871966407, 1.91451011e-009, -0.0871966407, -0.996191144, 1, -4.36998489e-005, 3.82696771e-006)
w8.Part1 = p9
w8.C1 = CFrame.new(9.76131344, -10.4100504, -103.002922, -3.85031162e-005, -0.996201694, -0.0870751292, 1.47589729e-009, 0.0870751366, -0.996201754, 1, -3.83570004e-005, -3.35119148e-006)
w9 = Instance.new("Weld", p9)
w9.Name = "BladeTip_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(9.76131344, -10.4100504, -103.002922, -3.85031162e-005, -0.996201694, -0.0870751292, 1.47589729e-009, 0.0870751366, -0.996201754, 1, -3.83570004e-005, -3.35119148e-006)
w9.Part1 = p10
w9.C1 = CFrame.new(102.999939, 7.7735939, 14.0892649, -0.999999881, 0.000441889424, 0.000150508567, -0.000465785735, -0.965935588, -0.258782327, 3.10284122e-005, -0.258782327, 0.965935647)
w10 = Instance.new("Weld", p10)
w10.Name = "BladePart_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(102.999939, 7.7735939, 14.0892649, -0.999999881, 0.000441889424, 0.000150508567, -0.000465785735, -0.965935588, -0.258782327, 3.10284122e-005, -0.258782327, 0.965935647)
w10.Part1 = p11
w10.C1 = CFrame.new(7.72030354, -12.8984127, -103.003448, 1.83585671e-005, -0.965941429, -0.258760989, 3.25545535e-010, 0.258760959, -0.96594137, 1, 1.77332167e-005, 4.7507956e-006)
w11 = Instance.new("Weld", p11)
w11.Name = "BladeTip2_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(7.72030354, -12.8984127, -103.003448, 1.83585671e-005, -0.965941429, -0.258760989, 3.25545535e-010, 0.258760959, -0.96594137, 1, 1.77332167e-005, 4.7507956e-006)
w11.Part1 = p12
w11.C1 = CFrame.new(102.999031, -4.47981405, -14.2206001, -1, -4.84334305e-006, -9.63198472e-005, -4.95036402e-005, 0.882903397, 0.469554722, 8.27668991e-005, 0.469554722, -0.882903397)
w12 = Instance.new("Weld", p12)
w12.Name = "HitBox_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(102.999031, -4.47981405, -14.2206001, -1, -4.84334305e-006, -9.63198472e-005, -4.95036402e-005, 0.882903397, 0.469554722, 8.27668991e-005, 0.469554722, -0.882903397)
w12.Part1 = p13
w12.C1 = CFrame.new(9.27000427, 103.009995, 10.9999933, -4.37113883e-008, -4.37113883e-008, 1, -1, 1.91068547e-015, -4.37113883e-008, 0, -1, -4.37113883e-008)
w13 = Instance.new("Weld", p13)
w13.Name = "Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(9.27000427, 103.009995, 10.9999933, -4.37113883e-008, -4.37113883e-008, 1, -1, 1.91068547e-015, -4.37113883e-008, 0, -1, -4.37113883e-008)
m.Parent = char
m:MakeJoints()
----------------------------------------------------
local cor = Instance.new("Part", char.Genkadda)
cor.Name = "Thingy"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 9, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = rarm
corw.Part1 = cor
corw.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(90))
corw.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld1 = Instance.new("Weld", char.Genkadda)
weld1.Part0 = cor
weld1.Part1 = char.Genkadda.Handle
weld1.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
blade1Tip = cor
end

--[[makeSword()
----------------------------------------------------
]]
blocks = {}
last_block = nil
function ezBlock(type, name, cframe, size, rotation, material, parent, BrickColor, transparency, 

weldToThis, formFactor)
    block = Instance.new(type, parent)
    block.Name = name
    block.FormFactor=formFactor
    block.Size = size
    block.CanCollide = false
    block.Anchored = false
    block.BrickColor = BrickColor
    block.Transparency=transparency
    block.TopSurface = 'SmoothNoOutlines'
    block.BottomSurface = 'SmoothNoOutlines'
    block.FrontSurface = 'SmoothNoOutlines'
    block.BackSurface = 'SmoothNoOutlines'
    block.LeftSurface = 'SmoothNoOutlines'
    block.RightSurface = 'SmoothNoOutlines'
    block.Material = material
    block.formFactor = 'Custom'
    block.CFrame = cframe
 
    if weldToThis then
        stick(weldToThis, block)
    elseif last_block ~= nil then
        stick(block, last_block)
        last_block = block
    else
        last_block = block
    end
    table.insert(blocks, block)
   
    return #blocks
end
--[[
----------------------------------------------------
    for i, v in pairs(blocks) do
            v.Parent = char.Genkadda
    end
----------------------------------------------------
local LastCFr = nil
local Trails = Instance.new("Model",char)
local Trail = {}
local Tip = char.Genkadda.BladeTip --blocks[test]
local number = 0
local num2 = 1
]]


function startBloxFX()
local eff2 = Instance.new("Part", char)
eff2.Size = Vector3.new(10, 10, 10)
eff2.Transparency = 0
eff2.Material = "Neon"
eff2.Anchored = true
eff2.CanCollide = false
eff2.CFrame = char.Torso.CFrame
eff2eff = Instance.new("SelectionBox", eff2)
eff2eff.Adornee = eff2

local Hair = Instance.new("Part", char)
Hair.Name = "Hair"
Hair.Material = "Neon"
Hair.Size = Vector3.new(2, 0.8, 2.4)
Hold = Instance.new("Weld", char.Head)
Hold.Part0 = char.Head
Hold.Part1 = Hair
Hold.C0 = CFrame.new(-0.1, 0.8, 0)
local Mesh = Instance.new("SpecialMesh", Hair)
Mesh.MeshType = "FileMesh"
Mesh.Scale = Vector3.new(1.2, 1, 1)
Mesh.MeshId = ("http://www.roblox.com/asset/?id=145283773 ")
Mesh.TextureId = ("http://www.roblox.com/asset/?id=151460207")
-----------------------------------BLOXFUNC_
p1 = Instance.new("Part", m)
p1.Material = "Neon"
colc = math.random(1,7)
p1.BrickColor = Neonsc[colc]
p1.Name = "BladePart"
p1.FormFactor = Enum.FormFactor.Symmetric
p1.Size = Vector3.new(1, 1, 1)
p1.CFrame = CFrame.new(103.003883, 10.755723, -7.61905956, 5.61699271e-005, -7.1823597e-006, 0.999998987, -0.984785616, -0.173714966, 3.55839729e-005, 0.173720747, -0.984761655, 5.9530139e-006)
p1.CanCollide = false
p1.Locked = true
p1.Elasticity = 0
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("BlockMesh", p1)
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.299999923, 1, 0.120000005)
p2 = Instance.new("Part", m)
p2.Material = "Neon"
colc = math.random(1,7)
p2.BrickColor = Neonsc[colc]
p2.FormFactor = Enum.FormFactor.Symmetric
p2.Size = Vector3.new(1, 1, 1)
p2.CFrame = CFrame.new(103.00399, 10.7255898, -6.52608919, 0.00135809346, 0.00169118668, -0.999996662, 0.965820193, 0.259168088, 0.0017684648, 0.259154975, -0.965800881, -0.00130418094)
p2.CanCollide = false
p2.Locked = true
p2.Elasticity = 0
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("BlockMesh", p2)
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.099999927, 0.699999928, 0.099999927)
p3 = Instance.new("Part", m)
p3.Material = "Neon"
colc = math.random(1,7)
p3.BrickColor = Neonsc[colc]
p3.FormFactor = Enum.FormFactor.Symmetric
p3.Size = Vector3.new(1, 2, 1)
p3.CFrame = CFrame.new(103.004028, 11.1456547, -6.819067, 1.43263023e-005, -2.88564479e-006, 0.999998987, -0.882936299, -0.469471544, -7.18829688e-006, 0.469469696, -0.882911503, 1.35099981e-005)
p3.CanCollide = false
p3.Locked = true
p3.Elasticity = 0
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("BlockMesh", p3)
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.099999927, 0.699999928, 0.099999927)
p4 = Instance.new("Part", m)
p4.Material = "Neon"
colc = math.random(1,7)
p4.BrickColor = Neonsc[colc]
p4.Name = "BladePart"
p4.FormFactor = Enum.FormFactor.Symmetric
p4.Size = Vector3.new(1, 1, 1)
p4.CFrame = CFrame.new(103.003372, 10.965373, -6.66876507, 1.57370523e-005, -6.04354591e-006, 0.999996603, -0.965898931, -0.25886938, -7.14969246e-006, 0.258875549, -0.965874314, 1.58735529e-005)
p4.CanCollide = false
p4.Locked = true
p4.Elasticity = 0
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("BlockMesh", p4)
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.299999923, 1, 0.120000005)
p5 = Instance.new("Part", m)
p5.Material = "Neon"
colc = math.random(1,7)
p5.BrickColor = Neonsc[colc]
p5.Name = "Hilt"
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(1, 0.400000006, 1.60000014)
p5.CFrame = CFrame.new(103.003395, 11.0653381, -6.1687479, -0.99999404, 5.54991711e-005, -0.000617815298, -0.000594727404, -0.000124425016, 0.999983907, 2.66434654e-005, 0.999962509, 0.000109782166)
p5.CanCollide = false
p5.Locked = true
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("BlockMesh", p5)
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.299999923, 0.399999917, 0.799999952)
p6 = Instance.new("Part", m)
p6.Material = "Neon"
colc = math.random(1,7)
p6.BrickColor = Neonsc[colc]
p6.Name = "Handle"
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(1.29999995, 1, 1)
p6.CFrame = CFrame.new(103.000061, 11.0688219, -5.5480547, -1.23393656e-005, -1.36360759e-005, 0.999994218, 5.37017331e-006, 0.999984086, -9.45257489e-006, -0.999962509, -9.28580994e-006, 1.64470257e-005)
p6.CanCollide = false
p6.Locked = true
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Cylinder
b6.Name = "Mesh"
b6.Scale = Vector3.new(1, 0.200000003, 0.200000003)
p7 = Instance.new("Part", m)
p7.Material = "Neon"
colc = math.random(1,7)
p7.BrickColor = Neonsc[colc]
p7.FormFactor = Enum.FormFactor.Symmetric
p7.Size = Vector3.new(1, 1, 1)
p7.CFrame = CFrame.new(103.000099, 11.0688391, -4.79808855, -0.000332629686, 0.00429873355, -0.99998492, -4.5920292e-006, 0.999974728, 0.00432178052, 0.999962449, -8.49941443e-006, -0.000361445156)
p7.CanCollide = false
p7.Locked = true
b7 = Instance.new("SpecialMesh", p7)
b7.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b7.TextureId = ""
b7.MeshType = Enum.MeshType.FileMesh
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p8 = Instance.new("Part", m)
p8.Material = "Neon"
colc = math.random(1,7)
p8.BrickColor = Neonsc[colc]
p8.Name = "BladePart"
p8.FormFactor = Enum.FormFactor.Symmetric
p8.Size = Vector3.new(1, 1, 1)
p8.CFrame = CFrame.new(103.003326, 10.6254845, -8.59870911, -2.92104669e-005, -1.10579058e-005, 0.999994218, -0.996175766, -0.0871899351, -5.3152442e-005, 0.0872026458, -0.996152997, 2.03179661e-005)
p8.CanCollide = false
p8.Locked = true
p8.Elasticity = 0
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("BlockMesh", p8)
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.299999923, 1, 0.120000005)
p9 = Instance.new("Part", m)
p9.Material = "Neon"
colc = math.random(1,7)
p9.BrickColor = Neonsc[colc]
p9.Name = "BladePart"
p9.FormFactor = Enum.FormFactor.Symmetric
p9.Size = Vector3.new(1, 1, 1)
p9.CFrame = CFrame.new(103.003311, 10.625597, -9.51878738, -2.59891603e-005, -1.34348729e-005, 0.999994218, -0.996185422, 0.087079078, -4.78096408e-005, -0.0870626047, -0.996165276, 1.31400229e-005)
p9.CanCollide = false
p9.Locked = true
p9.Elasticity = 0
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("BlockMesh", p9)
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.299999923, 1, 0.120000005)
p10 = Instance.new("Part", m)
p10.Material = "Neon"
colc = math.random(1,7)
p10.BrickColor = Neonsc[colc]
p10.Name = "BladeTip"
p10.FormFactor = Enum.FormFactor.Symmetric
p10.Size = Vector3.new(1, 1, 2)
p10.CFrame = CFrame.new(103.00309, 11.1081867, -11.6109829, -0.999994099, -0.000455793255, 4.643387e-005, 0.00045133481, -0.965918779, -0.25878337, 0.000134008093, -0.258763671, 0.965901971)
p10.CanCollide = false
p10.Locked = true
p10.Elasticity = 0
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("SpecialMesh", p10)
b10.MeshType = Enum.MeshType.Wedge
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.119999997, 0.299999923, 0.699999928)
p11 = Instance.new("Part", m)
p11.Material = "Neon"
colc = math.random(1,7)
p11.BrickColor = Neonsc[colc]
p11.Name = "BladePart"
p11.FormFactor = Enum.FormFactor.Symmetric
p11.Size = Vector3.new(1, 1, 1)
p11.CFrame = CFrame.new(103.003296, 10.7956495, -10.4587727, 2.83485351e-005, -1.54050977e-005, 0.999994218, -0.96592474, 0.258761972, 8.27970416e-006, -0.258742362, -0.965907693, 2.1241216e-005)
p11.CanCollide = false
p11.Locked = true
p11.Elasticity = 0
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("BlockMesh", p11)
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.299999923, 1, 0.120000005)
p12 = Instance.new("Part", m)
p12.Material = "Neon"
colc = math.random(1,7)
p12.BrickColor = Neonsc[colc]
p12.Name = "BladeTip2"
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(1, 1, 2.4000001)
p12.CFrame = CFrame.new(102.999977, 10.6319504, -10.4398403, -0.999994218, -5.5769262e-005, 6.55075928e-005, 4.61044419e-006, 0.882887006, 0.469551951, -0.000112806956, 0.469529003, -0.882874727)
p12.CanCollide = false
p12.Locked = true
p12.Elasticity = 0
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b12 = Instance.new("SpecialMesh", p12)
b12.MeshType = Enum.MeshType.Wedge
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.119999997, 0.239999995, 0.699999928)
p13 = Instance.new("Part", m)
p13.Material = "Neon"
p13.BrickColor = BrickColor.new("Medium stone grey")
p13.Transparency = 1
p13.Name = "HitBox"
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(6.0999999, 0.400000006, 1.5999999)
p13.CFrame = CFrame.new(103.009995, 10.9988394, -9.2679081, 1.22519814e-005, -0.999994218, 1.36361559e-005, -5.27501106e-006, 9.45320426e-006, -0.999984264, 0.999962687, -1.65344682e-005, 9.20891762e-006)
p13.CanCollide = false
p13.Locked = true
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
w1 = Instance.new("Weld", p1)
w1.Name = "Part_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(11.9124546, -5.63626003, -103.00383, 4.33940659e-005, -0.984795153, 0.173719674, 1.85460614e-009, -0.173719659, -0.984795094, 1, 4.27345876e-005, -7.53657105e-006)
w1.Part1 = p2
w1.C1 = CFrame.new(-8.80891991, -9.26009178, 102.975845, 0.00136663229, 0.965830803, 0.259170175, 0.00170310249, 0.25916782, -0.965830863, -0.999997616, 0.00176132878, -0.00129072159)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(-8.80891991, -9.26009178, 102.975845, 0.00136663229, 0.965830803, 0.259170175, 0.00170310249, 0.25916782, -0.965830863, -0.999997616, 0.00176132878, -0.00129072159)
w2.Part1 = p3
w2.C1 = CFrame.new(13.0439634, -0.78926897, -103.003448, -4.37113883e-008, -0.88294369, 0.469478935, 0, -0.469478935, -0.88294369, 1, -3.85946954e-008, 2.05215755e-008)
w3 = Instance.new("Weld", p3)
w3.Name = "BladePart_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(13.0439634, -0.78926897, -103.003448, -4.37113883e-008, -0.88294369, 0.469478935, 0, -0.469478935, -0.88294369, 1, -3.85946954e-008, 2.05215755e-008)
w3.Part1 = p4
w3.C1 = CFrame.new(12.3193283, -3.60437131, -103.003067, 2.38418579e-006, -0.965907753, 0.258877277, 0, -0.258874893, -0.965907753, 0.999997616, 0, 2.38418579e-006)
w4 = Instance.new("Weld", p4)
w4.Name = "Hilt_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(12.3193283, -3.60437131, -103.003067, 2.38418579e-006, -0.965907753, 0.258877277, 0, -0.258874893, -0.965907753, 0.999997616, 0, 2.38418579e-006)
w4.Part1 = p5
w4.C1 = CFrame.new(103.010277, 6.16758585, -11.003541, -0.999999821, -0.00060418935, 4.31301851e-005, 4.32021443e-005, -0.000119086159, 1, -0.000604184228, 0.999999821, 0.000119112243)
w5 = Instance.new("Weld", p5)
w5.Name = "Handle_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(103.010277, 6.16758585, -11.003541, -0.999999821, -0.00060418935, 4.31301851e-005, 4.32021443e-005, -0.000119086159, 1, -0.000604184228, 0.999999821, 0.000119112243)
w5.Part1 = p6
w5.C1 = CFrame.new(-5.54999733, -11.0699978, -103, -4.37113883e-008, 2.98366913e-008, -1, 0, 1, 2.98366913e-008, 1, 1.3042032e-015, -4.37113883e-008)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(-5.54999733, -11.0699978, -103, -4.37113883e-008, 2.98366913e-008, -1, 0, 1, 2.98366913e-008, 1, 1.3042032e-015, -4.37113883e-008)
w6.Part1 = p7
w6.C1 = CFrame.new(4.83552647, -11.5140886, 102.949669, -0.000344927335, 7.4505806e-007, 0.99999994, 0.00431239465, 0.999990702, 7.4505806e-007, -0.999990642, 0.00431239465, -0.000344927335)
w7 = Instance.new("Weld", p7)
w7.Name = "BladePart_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(4.83552647, -11.5140886, 102.949669, -0.000344927335, 7.4505806e-007, 0.99999994, 0.00431239465, 0.999990702, 7.4505806e-007, -0.999990642, 0.00431239465, -0.000344927335)
w7.Part1 = p8
w7.C1 = CFrame.new(11.3406382, -7.6414094, -103.0028, -4.38670977e-005, -0.996191144, 0.0871966407, 1.91451011e-009, -0.0871966407, -0.996191144, 1, -4.36998489e-005, 3.82696771e-006)
w8 = Instance.new("Weld", p8)
w8.Name = "BladePart_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(11.3406382, -7.6414094, -103.0028, -4.38670977e-005, -0.996191144, 0.0871966407, 1.91451011e-009, -0.0871966407, -0.996191144, 1, -4.36998489e-005, 3.82696771e-006)
w8.Part1 = p9
w8.C1 = CFrame.new(9.76131344, -10.4100504, -103.002922, -3.85031162e-005, -0.996201694, -0.0870751292, 1.47589729e-009, 0.0870751366, -0.996201754, 1, -3.83570004e-005, -3.35119148e-006)
w9 = Instance.new("Weld", p9)
w9.Name = "BladeTip_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(9.76131344, -10.4100504, -103.002922, -3.85031162e-005, -0.996201694, -0.0870751292, 1.47589729e-009, 0.0870751366, -0.996201754, 1, -3.83570004e-005, -3.35119148e-006)
w9.Part1 = p10
w9.C1 = CFrame.new(102.999939, 7.7735939, 14.0892649, -0.999999881, 0.000441889424, 0.000150508567, -0.000465785735, -0.965935588, -0.258782327, 3.10284122e-005, -0.258782327, 0.965935647)
w10 = Instance.new("Weld", p10)
w10.Name = "BladePart_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(102.999939, 7.7735939, 14.0892649, -0.999999881, 0.000441889424, 0.000150508567, -0.000465785735, -0.965935588, -0.258782327, 3.10284122e-005, -0.258782327, 0.965935647)
w10.Part1 = p11
w10.C1 = CFrame.new(7.72030354, -12.8984127, -103.003448, 1.83585671e-005, -0.965941429, -0.258760989, 3.25545535e-010, 0.258760959, -0.96594137, 1, 1.77332167e-005, 4.7507956e-006)
w11 = Instance.new("Weld", p11)
w11.Name = "BladeTip2_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(7.72030354, -12.8984127, -103.003448, 1.83585671e-005, -0.965941429, -0.258760989, 3.25545535e-010, 0.258760959, -0.96594137, 1, 1.77332167e-005, 4.7507956e-006)
w11.Part1 = p12
w11.C1 = CFrame.new(102.999031, -4.47981405, -14.2206001, -1, -4.84334305e-006, -9.63198472e-005, -4.95036402e-005, 0.882903397, 0.469554722, 8.27668991e-005, 0.469554722, -0.882903397)
w12 = Instance.new("Weld", p12)
w12.Name = "HitBox_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(102.999031, -4.47981405, -14.2206001, -1, -4.84334305e-006, -9.63198472e-005, -4.95036402e-005, 0.882903397, 0.469554722, 8.27668991e-005, 0.469554722, -0.882903397)
w12.Part1 = p13
w12.C1 = CFrame.new(9.27000427, 103.009995, 10.9999933, -4.37113883e-008, -4.37113883e-008, 1, -1, 1.91068547e-015, -4.37113883e-008, 0, -1, -4.37113883e-008)
w13 = Instance.new("Weld", p13)
w13.Name = "Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(9.27000427, 103.009995, 10.9999933, -4.37113883e-008, -4.37113883e-008, 1, -1, 1.91068547e-015, -4.37113883e-008, 0, -1, -4.37113883e-008)
m.Parent = char
m:MakeJoints()
----------------------------------------------------
local cor = Instance.new("Part", char.Genkadda)
cor.Name = "Thingy"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 9, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = rarm
corw.Part1 = cor
corw.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(90))
corw.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld1 = Instance.new("Weld", char.Genkadda)
weld1.Part0 = cor
weld1.Part1 = char.Genkadda.Handle
weld1.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
blade1Tip = p13
blade1cor0 = corw
--blade1cor0.C0 = CFrame.new(-1, 3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90))
--blade1cor0.C1 = CFrame.new(-1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
----------------------------------------------------BLOXFUNC_SWORD_END
----------------------------------------------------
    for i, v in pairs(blocks) do
            v.Parent = char.Genkadda
    end
----------------------------------------------------
local LastCFr = nil
local Trails = Instance.new("Model",char)
local Trail = {}
local Tip = char.Genkadda.BladeTip --blocks[test]
local number = 0
local num2 = 1
-------VANISH
	for i = 1, 10 do wait()
		for i,v in pairs(char.Genkadda:GetChildren()) do
			if v:IsA("Part") or v:IsA("WedgePart") then
				if v.Name ~= "HitBox" or v.Name ~= "Thingy" then
					v.Transparency = v.Transparency + 0.1
				end
			end
		end
	end

----------

--Vanish()
----------APPEAR
	for i = 1, 10 do wait()
		for i,v in pairs(char.Genkadda:GetChildren()) do
			if v:IsA("Part") or v:IsA("WedgePart") then
				if v.Name ~= "HitBox" or v.Name ~= "Thingy" then
					v.Transparency = v.Transparency - 0.1
				end
			end
		end
	end
---------------------
--Appear()
for i = 1, 30 do
    colc = math.random(1,7)
    eff2.CFrame = char.Torso.CFrame * CFrame.Angles(math.random(), math.random(), math.random())
    eff2.BrickColor = Neonsc[colc]
    eff2eff.Color = BrickColor.Random()
    wait()
end

-------VANISH
	for i = 1, 10 do wait()
		for i,v in pairs(char.Genkadda:GetChildren()) do
			if v:IsA("Part") or v:IsA("WedgePart") then
				if v.Name ~= "HitBox" or v.Name ~= "Thingy" then
					v.Transparency = v.Transparency + 0.1
				end
			end
		end
	end

----------
--Vanish()

eff2:Remove()
newMode = false
end


---------------------------------

startBloxFX()

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
---------------------------------
local clawPart1 = { }
Melee = true
mouse.KeyDown:connect(function(key)
    if key == "m" then
	if rainbowssl == false then
        	if Melee == false then
			powerHand = true
			rainbowHands = true
            		Melee = true
			if sword2 ~= true then
				Vanish()
			else
				sword2 = false
				removeSword()
			end
        		stanceToggle = "Melee"
			rainbowHands = false
			powerHand = false
    		elseif Melee == true then
			powerHand = true
			rainbowHands = true
       			Melee = false
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
			Appear()
			stanceToggle = "Normal"
			rainbowHands = false
			powerHand = false
        	end
elseif rainbowssl == true then
        if Melee == false then
	if myVars[5] == "normal" then 
		powerHand = true
		rainbowHands = true
         	Melee = true
		if clawPart1 == nil then
			char.Humanoid.Health = 0
		end
		for i, v in ipairs(clawPart1) do
    			v:Destroy()
		end
		
		myVars[3] = "none"
		wait(1)
        	stanceToggle = "Melee"
		rainbowHands = false
		powerHand = false
	else
		if myVars[5] == "ssl3" then
			Melee = true
			powerHand = true
			rainbowHands = true
			myVars[7] = false
			ssl3Vanish()
			print("ssl3vanish")
			wait(1)
			rainbowHands = false
			powerHand = false
		elseif myVars[5] == "ssl3_1" then
			rainbowHands = true
			ssl3Vanish()
			myVars[5] = "ssl3"
			print("ssl3vanish_1")
			wait(1)
			rainbowHands = false
		end
	end
    elseif Melee == true then
	if myVars[5] == "normal" then
		powerHand = true
		rainbowHands = true
		Melee = false
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
		makeClaw()
		myVars[3] = "claw"
		wait(1)
        	stanceToggle = "Normal"
		rainbowHands = false
		powerHand = false
	else
		powerHand = true
		rainbowHands = true
		Melee = false
		ssl3Appear()
		myVars[7] = true
		print("ssl3Made")
		wait(1)
		rainbowHands = false
		--equipHands()
		powerHand = false
		return true
        end
	end
end
    end
end)
----------------------------------------------------


mouse.KeyDown:connect(function(key)
	if key == "u" then
		if Melee == false then
			if Debounces.CanAttack == true then
				Debounces.CanAttack = false
				Debounces.NoIdl = true
				Debounces.on = true
			if myVars[5] == "normal" then
			swordPowerUp = true
			blade1cor0.C0 = CFrame.new(-2, -5, -0.5) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
			blade1cor0.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

			for i = 1, 10 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(160),math.rad(20),math.rad(20)), 0.92)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(160),math.rad(20),math.rad(20)), 0.92)
				wait(0.5)
			end
			local eff3 = Instance.new("Part", char)
eff3.Size = Vector3.new(20, 20, 20)
eff3.Transparency = 0
eff3.Material = "Neon"
eff3.Anchored = true
eff3.CanCollide = false
eff3.Shape = "Ball"
eff3.CFrame = blade1Tip.CFrame
for i = 1, 40 do
    eff3.Size = eff3.Size - Vector3.new(0.5, 0.5, 0.5)
    eff3.CFrame = blade1Tip.CFrame * CFrame.Angles(math.random(), math.random(), math.random())
    eff3.BrickColor = BrickColor.Random()
    wait()
end
Vanish()
eff3:Remove()
			blade1cor0.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(90))
			blade1cor0.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
			upgradeSword()
			sword2 = true
			swordPowerUp = false
			Debounces.CanAttack = true
			Debounces.NoIdl = false
			Debounces.on = false
			elseif myVars[5] == "ssl3" then
				powerHand = true
				rainbowHands = true
				Melee = true
				--ssl3Vanish()
				print("ssl3vanish")
				wait(1)
				rainbowHands = false
				powerHand = false
				myVars[5] = "ssl3_1"
				myVars[7] = true
				myVars[8] = 0
				rainbowHands = true
				Melee = false
				sslBurst1()
				print("ssl3Made")
				wait(1)
				rainbowHands = false
				equipHands()
			Debounces.CanAttack = true
			Debounces.NoIdl = false
			Debounces.on = false
			end
			end
		end
end
end)
----------------------------------------------------
local ballAtt = 0
mouse.KeyDown:connect(function(key)
	if key == "g" then
		if rainbowHands == true then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
				if ballAtt == 1 then
					ballAtt = 2
				elseif ballAtt == 2 then
					ballAtt = 1
				end
				if ballAtt == 0 then
					ballAtt = 1
				end
				local shell = Instance.new("Part",torso)
				shell.BrickColor = Neonsc[colc]
				shell.Anchored = true
				shell.CanCollide = false
				shell.Locked = true
				shell.TopSurface = "SmoothNoOutlines"
				shell.BottomSurface = "SmoothNoOutlines"
				shell.Size = Vector3.new(1,1,1)
				shellm = Instance.new("SpecialMesh",shell)
				shellm.MeshType = "Sphere"
				shellm.Scale = Vector3.new(1,1,1)
				local shell2 = Instance.new("Part",torso)
				shell2.BrickColor = Neonsc[colc]
				shell2.Anchored = true
				shell2.CanCollide = false
				shell2.Locked = true
				shell2.TopSurface = "SmoothNoOutlines"
				shell2.BottomSurface = "SmoothNoOutlines"
				shell2.Size = Vector3.new(1,1,1)
				shellm2 = Instance.new("SpecialMesh",shell2)
				shellm2.MeshType = "Sphere"
				shellm2.Scale = Vector3.new(1,1,1)

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

Shell = function()
local X = Instance.new("Part",char)
local O = Instance.new("ObjectValue",X)
        O.Name = "creator"
        X.Locked = true
		X.Name = "Shell"
        X.Anchored = false
        X.CanCollide = false
        X.Transparency = 0
        X.Reflectance = 100
        X.BottomSurface = 0
        X.TopSurface = 0
        X.Shape = 0
        local V = Instance.new("ObjectValue",X)
        V.Value = char
        V.Name = "creator"
        X.BrickColor = Neonsc[colc]
        X.Size = Vector3.new(1,1,1)
        X.Material = "Neon"
        local Z = Instance.new("SpecialMesh",X)
        Z.MeshType = "Sphere"
        Z.Scale = Vector3.new(1,1,1)
        X.CFrame = rarm.CFrame*CFrame.new(0,-6,0)
        local bv = Instance.new("BodyVelocity",X)
        bv.maxForce = Vector3.new(99999,99999,99999)
        X.CFrame = CFrame.new(X.Position,root.CFrame.lookVector*10)
        bv.velocity = root.CFrame.lookVector*65
Explode = X.Touched:connect(function(hit)
        if hit ~= char and hit.Name ~= "Shell" and hit:IsA("Part") or hit:IsA("BasePart}") then
        local cf = X.CFrame
        bv:Destroy()
	--if hit ~= char and hit.Name ~= "Shell" and hit:IsA("Part") and hit:IsA("BasePart}") == false then
	--	hit:Destroy()
	--end
        X.Anchored = true
        Z:Remove()
        Explode:disconnect()
        X.Size = Vector3.new(3,3,3)
        X.Touched:connect(function(hit) end)
        X.CanCollide = false
		for i,v in pairs(FindNearestTorso(X.CFrame.p,40))do
			if v:FindFirstChild('Humanoid') then
				v.Humanoid:TakeDamage(1000)
			end
		end
			for i = 1, (40) do rs:wait()
				X.Transparency = X.Transparency + (1/40)
				X.Size = X.Size + Vector3.new(1,1,1)
				X.CFrame = cf
			end
		X:Destroy()
		end
	end)
end
				if ballAtt == 1 then
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				shell.Transparency = 1
				shell2.Transparency = 1
				end
				if ballAtt == 2 then
				Shell()
				shell.Transparency = 1
				shell2.Transparency = 0
				for i = 1, 10 do
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				shell2.Transparency = 1
				end
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
			end
		end
else
	if myVars[3] == "claw" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
			fistBomb()
			Debounces.CanAttack = true
			Debounces.NoIdl = false
			Debounces.on = false
		end
	end
end
	end
end)
function BlastEffect(brickcolor,cframe,x1,y1,z1,x2,y2,z2)
local prt=parto(3,workspace,"Neon",0.5,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame = cframe
local msh=mesho("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function() 
for i=0,1,0.05 do
wait()
prt.Transparency=i
msh.Scale=msh.Scale+vt(x2,y2,z2)
end
prt.Parent=nil
end))
end

function fistBomb()
for i = 0,1,0.1 do
swait()
--torso.Weld.C0 = clerp(torso.Weld.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-60), math.rad(-30), 0), 0.3)
rarm.Weld.C0 = clerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(150), math.rad(0), math.rad(0)), 0.3)
larm.Weld.C0 = clerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.3)
clawPart1[6].C0=clerp(clawPart1[6].C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
clawPart1[7].C0=clerp(clawPart1[7].C0,cf(0,0.07,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
clawPart1[8].C0=clerp(clawPart1[8].C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
clawPart1[9].C0=clerp(clawPart1[9].C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
clawPart1[10].C0=clerp(clawPart1[10].C0,cf(0,-0.1,0)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
end
MagniDamageo(clawPart1[11],clawPart1[11],20,20,30,0,"Knockdown")
local hit,pos=rayCast(clawPart1[11].Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,100,char)
if hit~=nil then
print("test1")
local ref2=parto(3,workspace,"Neon",0,1,BrickColor.new("Black"),"Effect",vt())
print("test2")
ref2.Anchored=true
print("test3")
ref2.CFrame=cf(pos)
print("test4")
game:GetService("Debris"):AddItem(ref2,3)
print("test5")
for i=1,10 do
local Col=BrickColor.new("New Yeller")
local groundpart=parto(3,workspace,"Neon",0.5,0,Col,"Ground",vt(math.random(50,200)/100,math.random(50,200)/100,math.random(50,200)/100))
groundpart.Anchored=true
groundpart.CanCollide=false
groundpart.CFrame=cf(pos)*cf(math.random(-500,500)/100,0,math.random(-500,500)/100)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(groundpart,5)
end
BlastEffect(BrickColor.new("New Yeller"),cf(pos),1,1,1,.7,.7,.7)
MagicCircleo(BrickColor.new("New Yeller"),cf(pos),3,3,3,5,5,5,0.05)
MagniDamageo(ref2,ref2,10,10,20,math.random(10,20),"Knockdown")
end
for i = 0,1,0.1 do
swait()
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-60), math.rad(-30), 0), 0.3)
rarm.Weld.C0 = clerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(0)), 0.5)
larm.Weld.C0 = clerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(-30)), 0.3)
clawPart1[6].C0=clerp(clawPart1[6].C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
clawPart1[7].C0=clerp(clawPart1[7].C0,cf(0,0.07,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
clawPart1[8].C0=clerp(clawPart1[8].C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
clawPart1[9].C0=clerp(clawPart1[9].C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
clawPart1[10].C0=clerp(clawPart1[10].C0,cf(0,-0.1,0)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
end
end


function modeChange()
colc = math.random(1,7)
local fx = Instance.new("Part",torso)
fx.Anchored = true
fx.Material = "Neon"
fx.CanCollide = false
fx.Locked = true
fx.Transparency = 1
fx.Material = "Neon"
fx.Size = Vector3.new(1,1,1)
fx.TopSurface = "SmoothNoOutlines"
fx.BottomSurface = "SmoothNoOutlines"
fx.BrickColor = Neonsc[colc]
fxm = Instance.new("SpecialMesh",fx)
fxm.MeshType = "Sphere"
fxm.Scale = Vector3.new(1,1,1)
for i = 1, 20 do rs:wait()
	fx.BrickColor = Neonsc[colc]
        fx.Transparency = fx.Transparency - (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(0.5,0.5,0.5)
        rs:wait()
end

for i = 1, 20 do rs:wait()
	fx.BrickColor = Neonsc[colc]
        fx.CFrame = torso.CFrame
end

	if char.Hair == nil then
		spawnHair()
	end
	for i,v in pairs(char:children()) do
    	if v == char.Hair then
        		v:Destroy()
			break
    		end
		end

if rainbowssl == true then
spawnHair()
else
local Hair = Instance.new("Part", char)
Hair.Name = "Hair"
Hair.Material = "Neon"
Hair.Size = Vector3.new(2, 0.8, 2.4)
Hold = Instance.new("Weld", char.Head)
Hold.Part0 = char.Head
Hold.Part1 = Hair
Hold.C0 = CFrame.new(-0.1, 0.8, 0)
local Mesh = Instance.new("SpecialMesh", Hair)
Mesh.MeshType = "FileMesh"
Mesh.Scale = Vector3.new(1.2, 1, 1)
Mesh.MeshId = ("http://www.roblox.com/asset/?id=145283773 ")
Mesh.TextureId = ("http://www.roblox.com/asset/?id=151460207")
end


for i = 1, 20 do rs:wait()
	fx.BrickColor = Neonsc[colc]
        fx.Transparency = fx.Transparency + (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(0.5,0.5,0.5)
        rs:wait()
end

end
----------------------------------------------------
myVars[5] = "normal"
mouse.KeyDown:connect(function(key)
	if key == "n" then
		if rainbowssl == true then

		if myVars[5] == "ssl3" then
			myVars[5] = "Normal"
			rainbowssl = false
			newMode = true
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
			end
			modeChange()
			wait(1)
			newMode = false
			return true
		else
			if Debounces.CanAttack == true then
				Debounces.CanAttack = false
				Debounces.NoIdl = true
				myVars[5] = "ssl3"
				ssl3()
				print(myVars[5])
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				return true
			end
		end
		elseif rainbowssl == false then
			if rainbowHands == true then
			newMode = true
			if Debounces.CanAttack == true then
				Debounces.CanAttack = false
				Debounces.NoIdl = true
			end
			wait(1)
			rainbowssl = true
			modeChange()
			newMode = false
			Debounces.CanAttack = true
			Debounces.NoIdl = false
 			end
		end
	end
end)
-------------------------------


------------------------------------------------------

Magik = function()
	Spawn(function()
		--if stanceToggle == "Normal" or stanceToggle == "Melee" then
		local function lerp(a,b,c)
			return a+(b-a)*c	
		end
		local function rndRange(rng)
			return math.random(-rng*1000,rng*1000)/1000	
		end
		local magik = Instance.new("Part", larm)
		local Colors = {"Royal purple", "Really black"}
		magik.Anchored = true
		magik.Locked = true
		magik.FormFactor = "Custom"
		magik.Size = Vector3.new(1.2, 1.2, 1.2)
		magik.TopSurface = "Smooth"
		magik.BottomSurface = "Smooth"
		magik.Transparency = 0
		magik.CanCollide = false
		magik.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		local mr = math.rad
		local rnx,rny,rnz = mr(rndRange(180)),mr(rndRange(180)),mr(rndRange(180))
		local cf = larm.CFrame * CFrame.new(0, -.8, 0) * CFrame.Angles(rnx,rny,rnz)
		magik.CFrame = cf
		for i = 0, 1, .05 do
			local newTrans = lerp(0.5, 1, i)
			local ns = lerp(1,1.2,i)
			magik.Transparency = newTrans
			magik.Size = Vector3.new(ns,ns,ns)
			magik.CFrame = cf
			rs:wait()
	    end
		magik:Destroy()
		--elseif stanceToggle ~= "Normal" or stanceToggle ~= "Melee" then
		--wait()
              --  end
    end)
end
----------------------------------------------------
Magik2 = function()
	Spawn(function()
		--if stanceToggle == "Melee" then
		local function lerp(a,b,c)
			return a+(b-a)*c	
		end
		local function rndRange(rng)
			return math.random(-rng*1000,rng*1000)/1000	
		end
		local magik2 = Instance.new("Part", rarm)
		local Colors = {"Royal purple", "Really black"}
		magik2.Anchored = true
		magik2.Locked = true
		magik2.FormFactor = "Custom"
		magik2.Size = Vector3.new(1.2, 1.2, 1.2)
		magik2.TopSurface = "Smooth"
		magik2.BottomSurface = "Smooth"
		magik2.Transparency = 0
		magik2.CanCollide = false
		magik2.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		local mr = math.rad
		local rnx,rny,rnz = mr(rndRange(180)),mr(rndRange(180)),mr(rndRange(180))
		local cf = rarm.CFrame * CFrame.new(0, -.8, 0) * CFrame.Angles(rnx,rny,rnz)
		magik2.CFrame = cf
		for i = 0, 1, .05 do
			local newTrans = lerp(0.5, 1, i)
			local ns = lerp(1,1.2,i)
			magik2.Transparency = newTrans
			magik2.Size = Vector3.new(ns,ns,ns)
			magik2.CFrame = cf
			rs:wait()
	    end
		magik2:Destroy()
		--elseif stanceToggle ~= "Melee" then
		--wait()
		--end
    end)
end
----------------------------------------------------
Magik3 = function()
	Spawn(function()
		--if stanceToggle == "Devil" then
		local function lerp(a,b,c)
			return a+(b-a)*c	
		end
		local function rndRange(rng)
			return math.random(-rng*1000,rng*1000)/1000	
		end
		local magik3 = Instance.new("Part", rarm)
		local Colors = {"Really red", "Really black"}
		magik3.Anchored = true
		magik3.Locked = true
		magik3.FormFactor = "Custom"
		magik3.Size = Vector3.new(1.2, 1.2, 1.2)
		magik3.TopSurface = "Smooth"
		magik3.BottomSurface = "Smooth"
		magik3.Transparency = 0
		magik3.CanCollide = false
		magik3.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		local mr = math.rad
		local rnx,rny,rnz = mr(rndRange(180)),mr(rndRange(180)),mr(rndRange(180))
		local cf = rarm.CFrame * CFrame.new(0, -.8, 0) * CFrame.Angles(rnx,rny,rnz)
		magik3.CFrame = cf
		for i = 0, 1, .05 do
			local newTrans = lerp(0.5, 1, i)
			local ns = lerp(1,1.2,i)
			magik3.Transparency = newTrans
			magik3.Size = Vector3.new(ns,ns,ns)
			magik3.CFrame = cf
			rs:wait()
	    end
		magik3:Destroy()
		--elseif stanceToggle ~= "Devil" then
		--wait()
		--end
    end)
end
----------------------------------------------------
Magik4 = function()
	Spawn(function()
		--if stanceToggle == "Devil" then
		local function lerp(a,b,c)
			return a+(b-a)*c	
		end
		local function rndRange(rng)
			return math.random(-rng*1000,rng*1000)/1000	
		end
		local magik4 = Instance.new("Part", larm)
		local Colors = {"Really red", "Really black"}
		magik4.Anchored = true
		magik4.Locked = true
		magik4.FormFactor = "Custom"
		magik4.Size = Vector3.new(1.2, 1.2, 1.2)
		magik4.TopSurface = "Smooth"
		magik4.BottomSurface = "Smooth"
		magik4.Transparency = 0
		magik4.CanCollide = false
		magik4.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		local mr = math.rad
		local rnx,rny,rnz = mr(rndRange(180)),mr(rndRange(180)),mr(rndRange(180))
		local cf = larm.CFrame * CFrame.new(0, -.8, 0) * CFrame.Angles(rnx,rny,rnz)
		magik4.CFrame = cf
		for i = 0, 1, .05 do
			local newTrans = lerp(0.5, 1, i)
			local ns = lerp(1,1.2,i)
			magik4.Transparency = newTrans
			magik4.Size = Vector3.new(ns,ns,ns)
			magik4.CFrame = cf
			rs:wait()
	    end
		magik4:Destroy()
		--elseif stanceToggle ~= "Devil" then
		--wait()
		--end
    end)
end
----------------------------------------------------
mouse.KeyDown:connect(function(key)
	if key == "e" then
		if Debounces.CanAttack == true then
		Debounces.CanAttack = false
		Debounces.on = true
		Debounces.NoIdl = true
pt = {1, 1.1, 1.2, 1.3, 1.4, 1.5}
z = Instance.new("Sound", rarm)
z.SoundId = "http://www.roblox.com/asset/?id=206083107"--160867463, 161006212
z.Volume = .6
z.Pitch = pt[math.random(1,#pt)]
z.Looped = false
z:Play()
Debounces.RPunch = true
Debounces.LPunch = true
Debounces.ks = true
Debounces.ks2 = true
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z2 = Instance.new("Sound", larm)
z2.SoundId = "http://www.roblox.com/asset/?id=206083107"
z2.Volume = .6
z2.Pitch = pt[math.random(1,#pt)]
z2.Looped = false
z2:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z3 = Instance.new("Sound", rarm)
z3.SoundId = "http://www.roblox.com/asset/?id=206083107"
z3.Volume = 0.6
z3.Pitch = pt[math.random(1,#pt)]
z3.Looped = false
z3:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z4 = Instance.new("Sound", larm)
z4.SoundId = "http://www.roblox.com/asset/?id=206083107"
z4.Volume = .6
z4.Pitch = pt[math.random(1,#pt)]
z4.Looped = false
z4:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z5 = Instance.new("Sound", rarm)
z5.SoundId = "http://www.roblox.com/asset/?id=206083107"
z5.Volume = .6
z5.Pitch = pt[math.random(1,#pt)]
z5.Looped = false
z5:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(110),math.rad(30),math.rad(20)), 0.9)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.9)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.9)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.9)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.9)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.9)
if Debounces.on == false then break end
wait()
end
z6 = Instance.new("Sound", larm)
z6.SoundId = "http://www.roblox.com/asset/?id=206083107"
z6.Volume = .6
z6.Pitch = pt[math.random(1,#pt)]
z6.Looped = false
z6:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z7 = Instance.new("Sound", rarm)
z7.SoundId = "http://www.roblox.com/asset/?id=206083107"--160867463, 161006212
z7.Volume = .6
z7.Pitch = pt[math.random(1,#pt)]
z7.Looped = false
z7:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z8 = Instance.new("Sound", larm)
z8.SoundId = "http://www.roblox.com/asset/?id=206083107"
z8.Volume = .6
z8.Pitch = pt[math.random(1,#pt)]
z8.Looped = false
z8:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z9 = Instance.new("Sound", rarm)
z9.SoundId = "http://www.roblox.com/asset/?id=206083107"
z9.Volume = 0.6
z9.Pitch = pt[math.random(1,#pt)]
z9.Looped = false
z9:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z10 = Instance.new("Sound", larm)
z10.SoundId = "http://www.roblox.com/asset/?id=206083107"
z10.Volume = .6
z10.Pitch = pt[math.random(1,#pt)]
z10.Looped = false
z10:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z:Destroy()
z2:Destroy()
z3:Destroy()
z4:Destroy()
z5:Destroy()
z6:Destroy()
z7:Destroy()
z8:Destroy()
z9:Destroy()
z10:Destroy()
Debounces.LPunch = false
Debounces.RPunch = false
Debounces.ks = false
Debounces.ks2 = false
if Debounces.CanAttack == false then
Debounces.CanAttack = true
Debounces.on = false
Debounces.NoIdl = false
end
end
end
end)
-------------------------------


  do2 = function()
    local sbref1 = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
    local sbrwld1 = weld(sbref1, sbref1, LeftArm, cf(0, 1, 0))
    local sbref2 = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
    local sbrwld2 = weld(sbref2, sbref2, RightArm, cf(0, 1, 0))
    local da1 = lparti1:Clone()
    local da2 = lparti1:Clone()
    da1.Parent = sbref1
    da2.Parent = sbref2
    da1.Enabled = true
    da2.Enabled = true
	d0arm[1] = da1
	d0arm[2] = da2


end


function makeClaw()
local m = Instance.new("Model",char)
m.Name = "WeaponModel"
------------------------------------------------------

function NoOutlineo(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end

	function swaito(num)
    if num==0 or num==nil then
    game:service'RunService'.Heartbeat:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Heartbeat:wait(0)
    end
    end
	    end
	
	function nooutlineo(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function partio(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
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
		nooutlineo(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesho(Mesh,part,meshtype,meshid,offset,scale)
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
	
	function weldio(parent,part0,part1,c0,c1)
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


Handle0=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,1,"New Yeller","Handle0",Vector3.new(1, 0.800000012, 1))

Handle0weld=weldio(m,rarm,Handle0,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.96453857e-005, 0.000481128693, -1.83582306e-005, 1, 1.92410751e-014, -4.42007258e-005, -1.93349195e-014, 0.999999881, -2.12312026e-012, 4.42007258e-005, 2.12312091e-012, 1))
Hitbox=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,1,"New Yeller","Hitbox",Vector3.new(1.60000002, 3.4000001, 1))
Hitboxweld=weldio(m,Handle0,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300050735, 0.100232601, 3.57627869e-007, 1, 1.06558363e-014, -4.67116479e-009, -1.06558363e-014, 1, -7.35089073e-017, 4.67116479e-009, 7.35089073e-017, 1))
Part1=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(1, 0.200000003, 1))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.20159912e-005, 1.10002291, 1.57356262e-005, 1, -1.22308889e-014, 4.41999473e-005, 1.23254525e-014, 0.999996662, -2.14035647e-012, -4.41999473e-005, 2.14036427e-012, 1))
Part2=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.82012939e-005, -0.699694633, 0.410015702, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part3=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.82012939e-005, -0.699361324, -0.40998435, 1, -1.22308889e-014, 4.41999473e-005, 1.23254932e-014, 1, -2.14036362e-012, -4.41999473e-005, 2.14036427e-012, 1))
Part4=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(0.200000003, 0.800000012, 0.620000005))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409914017, 0.000346660614, 1.57356262e-005, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part5=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409914017, 0.700180769, 1.57356262e-005, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part6=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(1.01999998, 0.800000012, 0.200000003))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.82012939e-005, 0.000400543213, 0.410015702, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part7=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(0.200000003, 0.800000012, 0.620000005))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410078049, 0.000326633453, 1.57356262e-005, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part8=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(1.01999998, 0.800000012, 0.200000003))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.82012939e-005, 0.000392436981, -0.40998435, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part9=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.82012939e-005, 0.700207949, 0.410015702, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part10=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410078049, -0.699380398, 1.56164169e-005, 1, -1.22308889e-014, 4.41999473e-005, 1.23254932e-014, 1, -2.14036362e-012, -4.41999473e-005, 2.14036427e-012, 1))
Part11=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.4100914, 0.700154781, 1.57356262e-005, 1, -1.93349195e-014, 4.42007258e-005, 1.92409124e-014, 0.999991417, 2.12310291e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part12=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.82012939e-005, 0.700230837, -0.40998435, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part13=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(0.400000006, 2, 1))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699924469, 4.14848328e-005, 2.16960907e-005, 1, -1.22308889e-014, 4.41999473e-005, 1.23254932e-014, 1, -2.14036362e-012, -4.41999473e-005, 2.14036427e-012, 1))
Part14=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(1, 1.39999998, 0.200000003))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.57356262e-005, -0.299851894, 0.999885559, -4.41999473e-005, -5.95854743e-008, 1, -2.60350986e-012, 1, 5.95854743e-008, -1, 3.01648321e-014, -4.41999473e-005))
--mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part15=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(1, 0.600000024, 0.200000003))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.57356262e-005, -0.700007677, 0.999902725, 4.41999473e-005, -2.13950775e-012, -1, -2.65373322e-014, -1, 2.13950667e-012, -1, 2.64427677e-014, -4.41999473e-005))
--mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part16=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(0.400000006, 1.39999998, 0.399999976))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.848457336, -0.300411701, -0.141453743, 0.707042813, -1.50516166e-012, -0.707170904, 1.1783393e-014, 1, -2.11664583e-012, 0.707170904, 1.48822632e-012, 0.707042813))
Part17=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.6998806, -0.499980569, -0.399654627, 0.999999881, 3.17161053e-008, 4.20847573e-005, -4.21145523e-005, -2.83570323e-009, 0.999999762, 3.17162403e-008, -0.999999762, -2.83438673e-009))
--mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.404000014, 0.400000006, 0.995999992))
Part18=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699882507, 0.500019133, 1.00034523, 0.999999881, 3.17161053e-008, 4.20847573e-005, -4.21145523e-005, -2.83570323e-009, 0.999999762, 3.17162403e-008, -0.999999762, -2.83438673e-009))
--mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.404000014, 0.400000006, 0.560000002))
Part19=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699882507, 0.500019133, -0.399654627, 0.999999881, 3.17161053e-008, 4.20847573e-005, -4.21145523e-005, -2.83570323e-009, 0.999999762, 3.17162403e-008, -0.999999762, -2.83438673e-009))
--mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.404000014, 0.400000006, 0.995999992))
Part20=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409921646, -0.699380398, 1.57356262e-005, 1, -1.22308889e-014, 4.41999473e-005, 1.23254932e-014, 1, -2.14036362e-012, -4.41999473e-005, 2.14036427e-012, 1))
Part21=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(1, 0.200000003, 0.400000006))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.56164169e-005, -1.10002637, 0.699918747, 4.41999473e-005, -2.14036427e-012, -1, -1.23254932e-014, -1, 2.14036362e-012, -1, 1.22308889e-014, -4.41999473e-005))
--mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part22=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(1, 0.200000003, 0.200000003))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.16960907e-005, -0.599924088, 1.49999762, 4.41999473e-005, -2.14036427e-012, -1, 1, -1.22308889e-014, 4.41999473e-005, -1.23254932e-014, -1, 2.14036362e-012))
--mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part23=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(0.400000006, 1.39999998, 0.399999976))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.141283035, -0.300261259, -0.848459244, 0.707067847, -1.51049073e-012, -0.70714587, 1.20093924e-014, 1, -2.12403055e-012, 0.70714587, 1.49334115e-012, 0.707067847))
Part24=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.6998806, -0.499980569, 1.00034523, 0.999999881, 3.17161053e-008, 4.20847573e-005, -4.21145523e-005, -2.83570323e-009, 0.999999762, 3.17162403e-008, -0.999999762, -2.83438673e-009))
--mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.403999984, 0.399999976, 0.560000002))
Part25=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(1, 0.200000003, 0.400000006))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.16960907e-005, -0.79992485, 1.19999647, 4.41999473e-005, -2.14036427e-012, -1, 0.999999821, 2.980231e-008, 4.419994e-005, 2.980231e-008, -0.999999821, 3.45762416e-012))

--mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part26=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"New Yeller","Part",Vector3.new(0.200000003, 0.400000006, 1))
Partweld=weldio(m,Handle0,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599924088, -1.19995832, 2.16960907e-005, 1, -1.22308889e-014, 4.41999473e-005, 1.23254932e-014, 1, -2.14036362e-012, -4.41999473e-005, 2.14036427e-012, 1))
Finger1Connector=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,1,"New Yeller","Finger1Connector",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger1Connectorweld=weldio(m,Handle0,Finger1Connector,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.399971008, 1.29990399, 0.200015664, 1, 1.78782017e-007, 4.41999473e-005, -1.7878321e-007, 0.999993324, -1.00110302e-011, -4.41999473e-005, 2.10883698e-012, 1))
Finger2Connector=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,1,"New Yeller","Finger2Connector",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger2Connectorweld=weldio(m,Handle0,Finger2Connector,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399934769, 1.29982674, 0.400015712, 1, 2.97982776e-008, 4.41999473e-005, -2.97984766e-008, 0.999993324, -3.43642345e-012, -4.41999473e-005, 2.11934723e-012, 1))
Finger3Connector=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,1,"New Yeller","Finger3Connector",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger3Connectorweld=weldio(m,Handle0,Finger3Connector,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399934769, 1.29971194, 0.140015721, 1, 8.93768473e-008, 4.421228e-005, -8.93774441e-008, 0.999993324, -1.82566007e-012, -4.421228e-005, -2.12587717e-012, 1))
Finger4Connector=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,1,"New Yeller","Finger4Connector",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger4Connectorweld=weldio(m,Handle0,Finger4Connector,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399930954, 1.29973722, -0.119984269, 1, 8.93806842e-008, 4.421228e-005, -8.9381281e-008, 0.999993324, -1.82601091e-012, -4.421228e-005, -2.12569589e-012, 1))
Finger5Connector=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,1,"New Yeller","Finger5Connector",Vector3.new(0.200000003, 0.200000003, 0.200000003)) 
colc = math.random(1,7)
Finger5Connectorweld=weldio(m,Handle0,Finger5Connector,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399984121, -1.29981911, -0.399932861, -4.41701486e-005, 5.95858012e-008, 1, 4.58027785e-008, -0.999993324, 5.95882241e-008, 1, 4.58051019e-008, 4.41701486e-005))
Finger1=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,Neonsc[colc],"Finger1",Vector3.new(0.200000003, 0.400000006, 0.200000003))
colc = math.random(1,7)
Finger1weld=weldio(m,Finger1Connector,Finger1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-005, 0.100007057, 0, 1, 2.06483719e-011, -5.55111512e-017, -2.54232191e-011, 0.999986649, 4.50594423e-016, 5.55111512e-017, -4.49727061e-016, 1))
Finger2=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,Neonsc[colc],"Finger2",Vector3.new(0.200000003, 0.600000024, 0.200000003))
colc = math.random(1,7)
Finger2weld=weldio(m,Finger2Connector,Finger2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 0.199999213, 1.1920929e-007, 1, 8.77520279e-013, 0, -1.67332814e-012, 0.999986649, 1.50920942e-016, 0, -1.50053581e-016, 1))
Finger3=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,Neonsc[colc],"Finger3",Vector3.new(0.200000003, 0.600000024, 0.200000003))
colc = math.random(1,7)
Finger3weld=weldio(m,Finger3Connector,Finger3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 0.200001121, 1.1920929e-007, 1, 2.64321898e-012, -4.35207426e-013, -5.03064257e-012, 0.999986649, -1.23739232e-016, 4.35207426e-013, 2.38535383e-016, 1))
Finger4=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,Neonsc[colc],"Finger4",Vector3.new(0.200000003, 0.600000024, 0.200000003))
colc = math.random(1,7)
Finger4weld=weldio(m,Finger4Connector,Finger4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 0.199998736, 1.1920929e-007, 1, 2.64321898e-012, -4.35207426e-013, -5.03064257e-012, 0.999986649, -1.23732138e-016, 4.35207426e-013, 2.38539513e-016, 1))
Finger5=partio(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,Neonsc[colc],"Finger5",Vector3.new(0.200000003, 0.600000024, 0.200000003))
colc = math.random(1,7)
Finger5weld=weldio(m,Finger5Connector,Finger5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.199927688, 9.53674316e-006, 1, -3.86535248e-012, -7.77482967e-010, 5.45696821e-012, 0.999986649, -1.35540613e-012, 7.77477638e-010, 2.57749442e-012, 1))
colc = math.random(1,7)
------------------------------------------------
Handle0.Transparency=1
Part1.Transparency=1 --1
Part2.Transparency=1 --2
Part3.Transparency=1 --3
Part4.Transparency=1 --4
Part5.Transparency=1 --5
Part6.Transparency=1 --6
Part7.Transparency=1
Part8.Transparency=1
Part9.Transparency=1
Part10.Transparency=1
Part11.Transparency=1  --11
Part12.Transparency=1
Part13.Transparency=1
Part14.Transparency=1
Part15.Transparency=1
Part16.Transparency=1
Part17.Transparency=1
Part18.Transparency=1
Part19.Transparency=1
Part20.Transparency=1
Part21.Transparency=1
Part22.Transparency=1
Part23.Transparency=1
Part24.Transparency=1
Part25.Transparency=1
Part26.Transparency=1 --25
Finger1Connector.Transparency=1
Finger2Connector.Transparency=1
Finger3Connector.Transparency=1
Finger4Connector.Transparency=1
Finger5Connector.Transparency=1
Hitbox.Transparency=1
clawPart1[1] = Finger1
clawPart1[2] = Finger2
clawPart1[3] = Finger3
clawPart1[4] = Finger4
clawPart1[5] = Finger5
clawPart1[6] = Finger1weld
clawPart1[7] = Finger2weld
clawPart1[8] = Finger3weld
clawPart1[9] = Finger4weld
clawPart1[10] = Finger5weld
clawPart1[11] = Hitbox
end

function bird()
for i = 0,1,0.1 do
swait()
rarm.Weld.C0 = clerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-130), math.rad(-170)), 0.3)
larm.Weld.C0 = clerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.3)
clawPart1[6].C0=clerp(clawPart1[6].C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
clawPart1[7].C0=clerp(clawPart1[7].C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
clawPart1[8].C0=clerp(clawPart1[8].C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
clawPart1[9].C0=clerp(clawPart1[9].C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
clawPart1[10].C0=clerp(clawPart1[10].C0,cf(0,-0.1,0)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
end
for i = 0,1,0.01 do
swait()
rarm.Weld.C0 = clerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-130), math.rad(-150)), 0.3)
larm.Weld.C0 = clerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.3)
clawPart1[6].C0=clerp(clawPart1[6].C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
clawPart1[7].C0=clerp(clawPart1[7].C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
clawPart1[8].C0=clerp(clawPart1[8].C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(-20)),.3)
clawPart1[9].C0=clerp(clawPart1[9].C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
clawPart1[10].C0=clerp(clawPart1[10].C0,cf(0,-0.1,0)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
end


clawPart1[6].C0=clerp(clawPart1[6].C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
clawPart1[7].C0=clerp(clawPart1[7].C0,cf(0,0.07,0)*angles(math.rad(0),math.rad(0),math.rad(-20)),.3)
clawPart1[8].C0=clerp(clawPart1[8].C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
clawPart1[9].C0=clerp(clawPart1[9].C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
clawPart1[10].C0=clerp(clawPart1[10].C0,cf(0,-0.1,0)*angles(math.rad(-50),math.rad(0),math.rad(0)),.3)
end
--------------------------------
  equipanim = function()

  local colin = 1
  local colnumer = 0
  for i = 0, 1, 0.1 do
    swait()
    colnumer = colnumer + 1

    if #Neonsc - 1 < colin and (colnumer) % 2 == 0 then
      colin = 1
    end

    if (colnumer) % 2 == 0 then
      colin = colin + 1
    end

    MagicBlock2(Neonsc[colin], LeftArm.CFrame * cf(0, -1, 0), 4, 4, 4, 2, 2, 2, 0.2, 1)
    MagicBlock2(Neonsc[colin], RightArm.CFrame * cf(0, -1, 0), 4, 4, 4, 2, 2, 2, 0.2, 1)

rarm.Weld.C0 = clerp(rarm.Weld.C0, cf(1.2, 0.7, 0.4) * euler(2.9, 0, 0) * euler(0, 0, 0.5) * euler(0, 1.5, 0), 0.25)
larm.Weld.C0 = clerp(larm.Weld.C0, cf(-1.2, 0.7, -0.4) * euler(2.9, 0, 0) * euler(0, 0, -0.5) * euler(0, -1.5, 0), 0.25)

  end
 --colc = math.random(1,7)
  MagicCircleo(Neonsc[colin], LeftArm.CFrame * cf(0, -1, 0), 10, 10, 10, 4, 4, 4, 0.1, 1)
 --colc = math.random(1,7)
  MagicCircleo(Neonsc[colin], RightArm.CFrame * cf(0, -1, 0), 10, 10, 10, 4, 4, 4, 0.1, 1)


end
----------------------------------
function GetParts(obj)
	for i, v in pairs(obj:GetChildren())do
		if ( v:IsA'BasePart' ) then
			if v.Name ~= "Trail" then
			Instance.new("ForceField", v);
			end
		end
		GetParts(v);
	end
end

GetParts(char);
----------------------------------------------------


----------------------------------------------------
p13.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if slashing == true then
                            hit:FindFirstChild("Humanoid"):TakeDamage(1000)
                            wait(.3)
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                    if slashing == true then
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(1000)
                            wait(.3)
		end
            end
        end
    end    
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 60
    end
end)
mouse.KeyUp:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 8
    end
end)
-------------------------------
local animpose = "Idle"
local lastanimpose = "Idle"
local grab = false
local sine = 0
local change = 1
local val = 0
local ffing = false
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
if animpose == "Idle" then
for i = 1, 2 do

if myVars[5] ~= "ssl3_1" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(-6),math.rad(8)), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
if myVars[3] ~= nil then
if myVars[3] == "claw" then


clawPart1[6].C0=clerp(clawPart1[6].C0,cf(0,0.09,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
clawPart1[7].C0=clerp(clawPart1[7].C0,cf(0,0.09,0)*angles(math.rad(20),math.rad(0),math.rad(50)),.3)
clawPart1[8].C0=clerp(clawPart1[8].C0,cf(0,0.08,0)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
clawPart1[9].C0=clerp(clawPart1[9].C0,cf(0,0.09,0)*angles(math.rad(-10),math.rad(0),math.rad(50)),.3)
clawPart1[10].C0=clerp(clawPart1[10].C0,cf(0,-0.1,0)*angles(math.rad(50),math.rad(0),math.rad(-20)),.3)
end
end
else
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.4)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5, 0)*CFrame.Angles(math.rad(-40), math.rad(-20),math.rad(40)), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
larm.Weld.C0=clerp(larm.Weld.C0,cf(-1.5,0.5,0)*euler(-0.4,0,-0.2),.3)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
end
end
elseif animpose == "Walking" then
for i = 1, 2 do
if myVars[5] ~= "ssl3_1" then
if Melee == false then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5, 0)*CFrame.Angles(math.rad(20), math.rad(-20),math.rad(40)), 0.2)
else
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
end
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6, -math.sin(sine/8)/2.8)*CFrame.Angles(math.sin(sine/8)/4, -math.sin(sine/8)/2, math.rad(-10)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-8+2*math.cos(sine/4)), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.1*math.cos(sine/4), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/4)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1-0.14*math.cos(sine/8)/2.8, -0.05 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + -math.sin(sine/8)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1+0.14*math.cos(sine/8)/2.8, -0.05 + -math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + math.sin(sine/8)/2.3, 0, 0), .4)
else
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5, 0)*CFrame.Angles(math.rad(-40), math.rad(-30),math.rad(40)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6, -math.sin(sine/8)/2.8)*CFrame.Angles(math.sin(sine/8)/4, -math.sin(sine/8)/2, math.rad(-10)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-8+2*math.cos(sine/4)), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.1*math.cos(sine/4), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/4)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1-0.14*math.cos(sine/8)/2.8, -0.05 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + -math.sin(sine/8)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1+0.14*math.cos(sine/8)/2.8, -0.05 + -math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + math.sin(sine/8)/2.3, 0, 0), .4)
end
end
elseif animpose == "Running" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-20),math.rad(-14),math.rad(8+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-20),math.rad(14),math.rad(-8-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-10),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20),0, math.rad(0)), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(-7)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(7)), 0.4)
wait()
end
end
if stanceToggle == "Grabbed" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5, 0)*CFrame.Angles(math.rad(-20), math.rad(-20),math.rad(40)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(120),math.rad(0),math.rad(-30)), 0.3)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-8+2*math.cos(sine/4)), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.1*math.cos(sine/4), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/4)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1-0.14*math.cos(sine/8)/2.8, -0.05 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + -math.sin(sine/8)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1+0.14*math.cos(sine/8)/2.8, -0.05 + -math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + math.sin(sine/8)/2.3, 0, 0), .4)
end
else
end
end
lastanimpose = animpose
if Debounces.NoIdl == false then
if animpose == "Idle" then
if myVars[5] ~= "ssl3_1" then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-6),math.rad(-6),math.rad(8+2*math.cos(sine/14))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8-2*math.cos(sine/14))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8-2*math.cos(sine/14))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8+2*math.cos(sine/14))), 0.4)

else
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5, 0)*CFrame.Angles(math.rad(-40), math.rad(-20),math.rad(40)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8-2*math.cos(sine/14))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8-2*math.cos(sine/14))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8+2*math.cos(sine/14))), 0.4)
end
elseif animpose == "Walking" then
change = 1
if myVars[5] ~= "ssl3_1" then
if Melee == false then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5, 0)*CFrame.Angles(math.rad(20), math.rad(-20),math.rad(40)), 0.2)
else
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
end
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6, -math.sin(sine/8)/2.8)*CFrame.Angles(math.sin(sine/8)/4, -math.sin(sine/8)/2, math.rad(-10)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-8+2*math.cos(sine/4)), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.1*math.cos(sine/4), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/4)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1-0.14*math.cos(sine/8)/2.8, -0.05 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + -math.sin(sine/8)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1+0.14*math.cos(sine/8)/2.8, -0.05 + -math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + math.sin(sine/8)/2.3, 0, 0), .4)
else
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5, 0)*CFrame.Angles(math.rad(-40), math.rad(-30),math.rad(40)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6, -math.sin(sine/8)/2.8)*CFrame.Angles(math.sin(sine/8)/4, -math.sin(sine/8)/2, math.rad(-10)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-8+2*math.cos(sine/4)), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.1*math.cos(sine/4), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/4)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1-0.14*math.cos(sine/8)/2.8, -0.05 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + -math.sin(sine/8)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1+0.14*math.cos(sine/8)/2.8, -0.05 + -math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + math.sin(sine/8)/2.3, 0, 0), .4)
end
elseif animpose == "Running" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.35,.4)*CFrame.Angles(math.rad(-30),math.rad(14),math.rad(-30+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.55,-.4)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(40-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, .2) * CFrame.Angles(math.rad(20),math.rad(10),0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-40),math.rad(-10), math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1.2) * CFrame.Angles(math.rad(-20), math.rad(10), math.rad(0)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-12), math.rad(10), math.rad(0)), 0.4)
end
end
end)

hum.MaxHealth = 9001
wait(3)
hum.Health = 9001
local Neonlist = {"Bright red", "Bright orange", "Bright yellow", "Bright green", "Bright blue", "Royal purple", "Bright violet"}

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
	temp.X = v.Size.X/2 * 10
	temp.Y = v.Size.Y/2 * 10
	temp.Z = v.Size.Z/2 * 10
	Bounding[v.Name] = temp
	--table.insert(Bounding, v.Name, temp)
end




  print("Bloxxy loaded.")
  local mananum = 0
  local donum = 0
  local stunnum = 0
  local staggeranim = false
  local stunanim = false
  local walk = 0
  local walkforw = true
  local fnum = 0
  local domodel = false
  local gef = 10
  local col = 1
  local colnum = 0
  while true do
    swait()

    colnum = colnum + 1
    if #Neons - 1 < col and (colnum) % 2 == 0 then
      col = 1
    end
    if (colnum) % 2 == 0 then
      col = col + 1
    end
    if Humanoid.Health <= 0 then
      attack = true
      resumeControl()
      modelzorz.Parent = workspace
      model2.Parent = workspace
      game:GetService("Debris"):AddItem(modelzorz, 30)
      game:GetService("Debris"):AddItem(model2, 30)
      if domodel == false then
        domodel = true
        for i = 1, #Weapon do
          Weapon[i].Parent = modelzorz
          Weapon[i].CanCollide = true
        end
        for i = 1, #Welds do
          Welds[i].Parent = main1
        end
      end
    end
    do

      if equipped == true then

        if 1 < RootPart.Velocity.y and hitfloor == nil then

        else
          if RootPart.Velocity.y < -1 and hitfloor == nil then


          else
            if torvel < 1 and hitfloor ~= nil then

            else
              if 2 < torvel and torvel < 30 and hitfloor ~= nil then


              else
                do

                  end
                  end
             	 end
        end
          end
                  
                end
if #Effects>0 then
for e=1,#Effects do
if Effects[e]~=nil then
local Thing=Effects[e]
                        if Thing ~= nil then
                          local Part = Thing[1]
                          local Mode = Thing[2]
                          local Delay = Thing[3]
                          local IncX = Thing[4]
                          local IncY = Thing[5]
                          local IncZ = Thing[6]
                          if Thing[2] == "CylinderClang" then
                            if Thing[3] <= 1 then
                              Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, 2.5 * Thing[5], 0) * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
                              Thing[7] = Thing[1].CFrame
                              effect("New Yeller", 0, Thing[8], Thing[7], nil, 0.1, 2)
                              Thing[8] = Thing[7]
                              Thing[3] = Thing[3] + Thing[4]
                            else
                              Part.Parent = nil
                              table.remove(Effects, e)
                            end
                          end
                          if Thing[2] == "showDamage" then
                            if Thing[6] < Thing[5] then
                              Thing[6] = Thing[6] + 1
                            else
                              if Thing[6] < Thing[7] then
                                Thing[4].position = Thing[4].position + vt(0, -0.2, 0)
                                Thing[6] = Thing[6] + 1
                              else
                                if Thing[6] < Thing[8] then
                                  Thing[6] = Thing[6] + 1
                                else
                                  if Thing[6] < Thing[9] then
                                    Thing[6] = Thing[6] + 1
                                    Thing[4].position = Thing[4].position + vt(0, 0.2, 0)
                                    Thing[3].TextStrokeTransparency = Thing[3].TextStrokeTransparency + 0.1
                                    Thing[3].TextTransparency = Thing[3].TextTransparency + 0.1
                                  else
                                    Thing[1].Parent = nil
                                    table.remove(Effects, e)
                                  end
                                end
                              end
                            end
                          end
                          if Thing[2] == "CloneEf" then
                            if Thing[3] <= 500 then
                              Thing[3] = Thing[3] + 1
                              if 10 <= Thing[4] then
                                Thing[4] = 0
                              end
                              Thing[4] = Thing[4] + 1
                            else
                              table.remove(Effects, e)
                            end
                          end
                          if Thing[2] == "SatelliteStrike" then
                            if Thing[5] < 100 then
                              Thing[5] = Thing[5] + 2
                              Thing[6] = Thing[6] + 1
                              if 2 < Thing[6] then
                                Thing[6] = 0
                                if Thing[3].BrickColor == BrickColor.new("New Yeller") then
                                  Thing[3].Transparency = 0.8
                                  Thing[3].BrickColor = BrickColor.new("Really red")
                                else
                                  Thing[3].Transparency = 0.8
                                  Thing[3].BrickColor = BrickColor.new("New Yeller")
                                end
                              end
                            else
                              refda = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
                              refda.Anchored = true
                              refda.CFrame = cf(Thing[1].Position) * cf(0, 500, 0)
                              game:GetService("Debris"):AddItem(refda, 1)
                              local mag = (refda.Position - Thing[1].Position).magnitude
                              MagicCylinder(BrickColor.new("White"), CFrame.new((refda.Position + Thing[1].Position) / 2, Thing[1].Position) * angles(1.57, 0, 0), 40, mag * 5, 40, 0, 0, 0, 0.3)
                              Lightning(refda.Position, Thing[1].Position, 15, 5, "Bright yellow", 3.5, 0.2, 0.05)
                              MagicBlock2(BrickColor.new("Bright yellow"), cf(Thing[1].Position), 40, 40, 40, -1, -1, -1, 0.08, 1)
                              refda.CFrame = cf(Thing[1].Position)
                              MagniDamage(refda, 5, 10, 12, 0, "Knockdown2", refda, 0.1, 1, (math.random(10, 12)), nil, nil, true)
                              refda.CFrame = cf(Thing[1].Position) * cf(0, 3, 0)
                              MagniDamage(refda, 5, 10, 12, 0, "Knockdown2", refda, 0.1, 1, (math.random(10, 12)), nil, nil, true)
                              refda.CFrame = cf(Thing[1].Position)
                              so("341336446", refda, 1, math.random(100, 120) / 100)
                              so("341336459", refda, 1, math.random(100, 120) / 100)
                              Thing[1].Parent = nil
                              table.remove(Effects, e)
                            end
                          end
                          do
                            if Thing[2] == "SatelliteStrike2" then
                              if Thing[5] < 100 then
                                Thing[5] = Thing[5] + 2
                                Thing[6] = Thing[6] + 1
                                if 2 < Thing[6] then
                                  Thing[6] = 0
                                  if Thing[3].BrickColor == BrickColor.new("New Yeller") then
                                    Thing[3].Transparency = 0.8
                                    Thing[3].BrickColor = BrickColor.new("Really red")
                                  else
                                    Thing[3].Transparency = 0.8
                                    Thing[3].BrickColor = BrickColor.new("New Yeller")
                                  end
                                end
                              else
                                refda = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
                                refda.Anchored = true
                                refda.CFrame = cf(Thing[1].Position) * cf(0, 500, 0)
                                game:GetService("Debris"):AddItem(refda, 1)
                                local mag = (refda.Position - Thing[1].Position).magnitude
                                MagicCylinder(BrickColor.new("White"), CFrame.new((refda.Position + Thing[1].Position) / 2, Thing[1].Position) * angles(1.57, 0, 0), 60, mag * 5, 60, 0, 0, 0, 0.1)
                                Lightning(refda.Position, Thing[1].Position, 25, 5, "Bright yellow", 5, 0.2, 0.03)
                                MagicBlock2(BrickColor.new("Bright yellow"), cf(Thing[1].Position), 80, 80, 80, -1, -1, -1, 0.06, 1)
                                refda.CFrame = cf(Thing[1].Position)
                                MagniDamage(refda, 10, 14, 16, 0, "Knockdown2", refda, 0.1, 1, (math.random(14, 18)), nil, nil, true)
                                refda.CFrame = cf(Thing[1].Position) * cf(0, 3, 0)
                                MagniDamage(refda, 10, 14, 16, 0, "Knockdown2", refda, 0.1, 1, (math.random(14, 18)), nil, nil, true)
                                refda.CFrame = cf(Thing[1].Position)
                                so("341336446", refda, 1, math.random(70, 90) / 100)
                                so("341336459", refda, 1, math.random(50, 80) / 100)
                                Thing[1].Parent = nil
                                table.remove(Effects, e)
                              end
                            end
                            do
                              if Thing[2] == "Shoot" then
                                Thing[11] = Thing[11] + 0.02
                                local Look = Thing[1]
                                local hit, pos = rayCast(Thing[4], Look, Thing[11], modelzorz)
                                local mag = (Thing[4] - pos).magnitude
                                if 6 < Thing[8] then
                                  Thing[8] = 1
                                else
                                  Thing[8] = Thing[8] + 1
                                end
                                MagicCylinder(Neons[Thing[8]], CFrame.new((Thing[4] + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.2)
                                Thing[9].BrickColor = Neons[Thing[8]]
                                Thing[9].CFrame = CFrame.new((Thing[4] + pos) / 2, pos) * cf(0, 0, -1) * Thing[10]
                                Thing[4] = Thing[4] + Look * Thing[11]
                                Thing[3] = Thing[3] - 1
                                if hit ~= nil then
                                  Damagefunc(hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0.1, 2, (math.random(1, 3)), nil, nil, true)
                                end
                                if Thing[3] <= 0 then
                                  Thing[9].Parent = nil
                                  table.remove(Effects, e)
                                end
                              end
                              do
                                if Thing[2] == "Shoot2" then
                                  local Look = Thing[1]
                                  local hit, pos = rayCast(Thing[4], Look, 4, Character)
                                  local mag = (Thing[4] - pos).magnitude
                                  if 6 < Thing[8] then
                                    Thing[8] = 1
                                  else
                                    Thing[8] = Thing[8] + 1
                                  end
                                  MagicCircle(BrickColor.new(NewCol3), CFrame.new((Thing[4] + pos) / 2, pos) * angles(1.57, 0, 0), 4, 4, 4, -0.5, -0.5, -0.5, 0.5)
                                  Thing[4] = Thing[4] + Look * 4
                                  Thing[3] = Thing[3] - 1
                                  if hit ~= nil then
                                    Thing[3] = 0
                                    Damagefunc(hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0.1, 2, (math.random(1, 5)), nil, nil, true)
                                  end
                                  if Thing[3] <= 0 then
                                    table.remove(Effects, e)
                                  end
                                end
                                do
                                  if Thing[2] == "Shoot3" then
                                    local Look = Thing[1]
                                    local hit, pos = rayCast(Thing[4], Look, 1.5, modelzorz)
                                    local mag = (Thing[4] - pos).magnitude
                                    if 6 < Thing[8] then
                                      Thing[8] = 1
                                    else
                                      Thing[8] = Thing[8] + 1
                                    end
                                    Thing[11] = Thing[11] + 0.05
                                    Thing[9].BrickColor = Neons[Thing[8]]
                                    Thing[9].CFrame = CFrame.new((Thing[4] + pos) / 2, pos) * euler(0, mr(90), 0) * euler(Thing[10], 0, 0) * euler(0, Thing[11], 0)
                                    MagicStar(Thing[9].BrickColor, Thing[9].CFrame, 25, 25, 25, 2, 2, 2, 0.25)
                                    Thing[4] = Thing[4] + Look * 1.5
                                    Thing[3] = Thing[3] - 1
                                    if hit ~= nil then
                                      Thing[3] = 0
                                    end
                                    if Thing[3] <= 0 then
                                      MagicStar(Thing[9].BrickColor, Thing[9].CFrame, 30, 30, 30, 4, 4, 4, 0.1)
                                      MagicCircle(Thing[9].BrickColor, Thing[9].CFrame, 100, 100, 100, 0, 0, 0, 0.05)
                                      local staaaaref = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
                                      staaaaref.Anchored = true
                                      staaaaref.CFrame = cf(Thing[9].Position)
                                      game:GetService("Debris"):AddItem(staaaaref, 1)
                                      so("341336499", staaaaref, 0.8, 2)
                                      MagniDamage(staaaaref, 10, 10, 12, math.random(10, 20), "Knockdown2", staaaaref, 0.1, 1, (math.random(4, 6)), nil, nil, true, "Damage", 0.1, 200)
                                      Thing[9].Parent = nil
                                      table.remove(Effects, e)
                                    end
                                  end
                                  do
                                    if Thing[2] == "Shoot4" then
                                      local Look = Thing[1]
                                      local hit, pos = rayCast(Thing[4], Look, 1.5, modelzorz)
                                      local mag = (Thing[4] - pos).magnitude
                                      if 6 < Thing[8] then
                                        Thing[8] = 1
                                      else
                                        Thing[8] = Thing[8] + 1
                                      end
                                      Thing[11] = Thing[11] + 0.05
                                      Thing[9].BrickColor = Neons[Thing[8]]
                                      Thing[9].CFrame = CFrame.new((Thing[4] + pos) / 2, pos) * euler(0, mr(90), 0) * euler(Thing[10], 0, 0) * euler(0, Thing[11], 0)
                                      MagicStar(Thing[9].BrickColor, Thing[9].CFrame, 80, 80, 80, 2, 2, 2, 0.25)
                                      Thing[4] = Thing[4] + Look * 1.5
                                      Thing[3] = Thing[3] - 1
                                      if hit ~= nil then
                                        Thing[3] = 0
                                      end
                                      if Thing[3] <= 0 then
                                        MagicStar(Thing[9].BrickColor, Thing[9].CFrame, 90, 90, 90, 4, 4, 4, 0.1)
                                        MagicCircle(Thing[9].BrickColor, Thing[9].CFrame, 200, 200, 200, 0, 0, 0, 0.1)
                                        MagicCircle(Thing[9].BrickColor, Thing[9].CFrame, 150, 150, 150, 10, 10, 10, 0.08)
                                        MagicCircle(Thing[9].BrickColor, Thing[9].CFrame, 100, 100, 100, 15, 15, 15, 0.06)
                                        local staaaaref = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
                                        staaaaref.Anchored = true
                                        staaaaref.CFrame = cf(Thing[9].Position)
                                        game:GetService("Debris"):AddItem(staaaaref, 1)
                                        so("341336499", staaaaref, 0.8, 1)
                                        MagniDamage(staaaaref, 20, 15, 18, math.random(30, 50), "Knockdown2", staaaaref, 0.1, 1, (math.random(8, 10)), nil, nil, true, "Damage", 0.1, 400)
                                        Thing[9].Parent = nil
                                        table.remove(Effects, e)
                                      end
                                    end
                                    do
                                      do
                                        if Thing[2] ~= "DecreaseStat" and Thing[2] ~= "showDamage" and Thing[2] ~= "CloneEf" and Thing[2] ~= "Blink" and Thing[2] ~= "ShootIce" and Thing[2] ~= "Freeze" and Thing[2] ~= "Shoot" and Thing[2] ~= "Shoot2" and Thing[2] ~= "Shoot3" and Thing[2] ~= "Shoot4" and Thing[2] ~= "SatelliteStrike" and Thing[2] ~= "SatelliteStrike2" then
                                          if Thing[1].Transparency <= 1 then
                                            if Thing[2] == "Block1" then
                                              Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                                              Mesh = Thing[7]
                                              Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                                              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                            else
                                              if Thing[2] == "Block2" then
                                                Thing[1].CFrame = Thing[1].CFrame
                                                Mesh = Thing[7]
                                                Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                                                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                              else
                                                if Thing[2] == "Block3" then
                                                  Thing[8] = Thing[8] * cf(0, 1, 0)
                                                  Thing[1].CFrame = Thing[8] * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                                                  Mesh = Thing[7]
                                                  Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                                                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                else
                                                  if Thing[2] == "Block4" then
                                                    if #Neons - 1 < Thing[8] then
                                                      Thing[8] = 1
                                                    else
                                                      Thing[8] = Thing[8] + 1
                                                    end
						else
							
                                                    if Thing[2] == "Cylinder" then
                                                      Mesh = Thing[7]
                                                      Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                                                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						end
                                                  end
                                                end
                                              end
                                            end
                                          else
                                            Part.Parent = nil
                                            table.remove(Effects, e)
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
            end
			if swordPowerUp == true then
				MagicBlock2(Neons[col], blade1Tip.CFrame * cf(0, -1, 0), 4, 4, 4, 2, 2, 2, 0.2, 1)
    				MagicBlock2(Neons[col], LeftArm.CFrame * cf(0, -1, 0), 4, 4, 4, 2, 2, 2, 0.2, 1)
  				MagicBlock2(Neons[col], RightArm.CFrame * cf(0, -1, 0), 4, 4, 4, 2, 2, 2, 0.2, 1)
			end
			if d0arm[3] == "true" then
            			d0arm[1].Color = cs(Neons[math.random(1, 7)].Color, Neons[math.random(1, 7)].Color)
           			d0arm[2].Color = cs(Neons[math.random(1, 7)].Color, Neons[math.random(1, 7)].Color)
			end
			if rainbowHands == true then
				if myVars[5] == "ssl3" or myVars[5] == "ssl3_1" then
					if Melee == false then
    						MagicBlock2(Neons[col], LeftArm.CFrame * cf(0, -1, 0), 4, 4, 4, 2, 2, 2, 0.2, 1)
					else
					if powerHand == false then
    						MagicBlock2(Neons[col], LeftArm.CFrame * cf(0, -1, 0), 4, 4, 4, 2, 2, 2, 0.2, 1)
					end
  						MagicBlock2(Neons[col], RightArm.CFrame * cf(0, -1, 0), 4, 4, 4, 2, 2, 2, 0.2, 1)	
					end
				else
				if powerHand == false then
    					MagicBlock2(Neons[col], LeftArm.CFrame * cf(0, -1, 0), 4, 4, 4, 2, 2, 2, 0.2, 1)
				end
  				MagicBlock2(Neons[col], RightArm.CFrame * cf(0, -1, 0), 4, 4, 4, 2, 2, 2, 0.2, 1)
				end
			end
			for key, value in pairs(myDictionary) do
				if value == "disco" then
					if key.Name ~= p.Name then
						MagicBlock2(Neons[col], key['Right Arm'].CFrame * cf(0, -1, 0), 4, 4, 4, 2, 2, 2, 0.2, 1)
    						MagicBlock2(Neons[col], key['Left Arm'].CFrame * cf(0, -1, 0), 4, 4, 4, 2, 2, 2, 0.2, 1)
					end
				end
			end
			if newMode == true then
				if rainbowssl == false then
					rarm.Weld.C0 = CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(math.random(-36,-20)),math.rad(math.random(-30,-20)),math.rad(math.random(30,50)))
					larm.Weld.C0 = CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(math.random(-36,-20)),math.rad(math.random(20,30)),math.rad(math.random(-50,-30)))
					hed.Weld.C0 = CFrame.new(0,1.5,.1)*CFrame.Angles(math.rad(math.random(26,34)),math.rad(math.random(-5,5)),math.rad(0))
					torso.Weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(math.random(-4,4)), math.rad(0))
					lleg.Weld.C0 = CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(math.random(-10,-6)), math.rad(math.random(10,20)), math.rad(math.random(-20,-10)))
					rleg.Weld.C0 = CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(math.random(-10,-6)), math.rad(math.random(-20,-10)), math.rad(math.random(10,20)))
				end
			end

			lightningNum = math.random(1,100)
	if lightningNum <= 80 and lightningNum >= 60 then
--while wait(math.random(1,10)/10) do -- Emit the Lightning effects randomly
	local Body1 = BodyParts[math.random(#BodyParts)]
	local Body2 = BodyParts[math.random(#BodyParts)]
	local Pos1 = Vector3.new(
		math.random(-Bounding[Body1.Name].X, Bounding[Body1.Name].X)/10,
		math.random(-Bounding[Body1.Name].Y, Bounding[Body1.Name].Y)/10,
		math.random(-Bounding[Body1.Name].Z, Bounding[Body1.Name].Z)/10
)
	local Pos2 = Vector3.new(
		math.random(-Bounding[Body2.Name].X, Bounding[Body2.Name].X)/10,
		math.random(-Bounding[Body2.Name].Y, Bounding[Body2.Name].Y)/10,
		math.random(-Bounding[Body2.Name].Z, Bounding[Body2.Name].Z)/10
)
	local SPos1 = Body1.Position + Pos1
	local SPos2 = Body2.Position + Pos2
	local cols = math.random(1,7)
	Lightning(SPos1, SPos2, 4, 3, Neonlist[cols], .3, .56)
              end
swaito()

if #fx>0 then
for e=1,#fx do
if fx[e]~=nil then
local Thingy=fx[e]
if Thingy~=nil then
local Part=Thingy[1]
local Mode=Thingy[2]
local Delay=Thingy[3]
local IncX=Thingy[4]
local IncY=Thingy[5]
local IncZ=Thingy[6]
if Thingy[1].Transparency<=1 then
if Thingy[2]=="Block1" then
Thingy[1].CFrame=Thingy[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Mesh=Thingy[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thingy[4],Thingy[5],Thingy[6])
Thingy[1].Transparency=Thingy[1].Transparency+Thingy[3]
elseif Thingy[2]=="Cylinder" then
Mesh=Thingy[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thingy[4],Thingy[5],Thingy[6])
Thingy[1].Transparency=Thingy[1].Transparency+Thingy[3]
elseif Thingy[2]=="Blood" then
Mesh=Thingy[7]
Thingy[1].CFrame=Thingy[1].CFrame*cf(0,.5,0)
Mesh.Scale=Mesh.Scale+vt(Thingy[4],Thingy[5],Thingy[6])
Thingy[1].Transparency=Thingy[1].Transparency+Thingy[3]
elseif Thingy[2]=="Elec" then
Mesh=Thingy[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thingy[7],Thingy[8],Thingy[9])
Thingy[1].Transparency=Thingy[1].Transparency+Thingy[3]
elseif Thingy[2]=="Disappear" then
Thingy[1].Transparency=Thingy[1].Transparency+Thingy[3]
end
else
Part.Parent=nil
table.remove(fx,e)
end
end
end
end
end


              end
local gobj,gpos,gnormal = Workspace:FindPartOnRay(Ray.new(Leg.Position, CFrame.new(Leg.Position, (Leg.CFrame * CFrame.new(0,Leg.Size.Y / -2,0)).p).lookVector * (Leg.Size.Y / 2 + .5)), LocalCharacter)
if gobj ~= nil then
    local ObjectCF = CFrame.new(gpos, gpos+gnormal) * CFrame.Angles(math.pi/2,0,0)
    -- create part flattened on Y axis and set it's CFrame to ObjectCF
end






-----------------------------------------