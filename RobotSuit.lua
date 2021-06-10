local message = Instance.new('Message', game.Workspace) -- Insert a new message in the Workspace.
message.Text = "Welcome to ScrollGui v2" -- Set the text of the message to "Hello World!".
wait(2)
message:Destroy()
local message = Instance.new('Message', game.Workspace) -- Insert a new message in the Workspace.
message.Text = "This was created by Crypto!" -- Set the text of the message to "Hello World!".
wait(2)
message:Destroy()

local a = Instance.new("ScreenGui",game.CoreGui)
-----------------------------------------------------------------
local b = Instance.new("Frame",a)
		b.Size = UDim2.new(0,550,0,300)
		b.Position = UDim2.new(0.5,-150,0.5,-150)
		b.BorderSizePixel = 0
		b.BackgroundTransparency = .5
		b.BackgroundColor3 = Color3.new(200,0,0)
        b.Draggable = true
		b.Active = true
---------------------------------------------------------------
local c = Instance.new("ScrollingFrame",b)
		c.Size = UDim2.new(1,-360,0,270)
		c.Position = UDim2.new(0,0,0,0)
		c.BorderSizePixel = 4
		c.BackgroundTransparency = 0
		c.BackgroundColor3 = Color3.new(0) 
		c.ZIndex = 2
		c.Draggable = false
		c.Active = true

-------------------------------------------------------------------------
local d = Instance.new("ScrollingFrame",b)
		d.Size = UDim2.new(0,-180,0,270)
		d.Position = UDim2.new(1,0,0,0)
		d.BorderSizePixel = 4
		d.BackgroundTransparency = 0
		d.BackgroundColor3 = Color3.new(0) 
		d.ZIndex = 2
		d.Draggable = false
		d.Active = true
---------------------------------------------------------------------------

local e = Instance.new("ScrollingFrame",b)
		e.Size = UDim2.new(0,-180,0,270)
		e.Position = UDim2.new(1,-175,0,0)
		e.BorderSizePixel = 4
		e.BackgroundTransparency = 0
		e.BackgroundColor3 = Color3.new(0) 
		e.ZIndex = 2
		e.Draggable = false
		e.Active = true

local ff = Instance.new("TextButton",b)
		ff.Size = UDim2.new(1,1,0,30)
		ff.Position = UDim2.new(0,0,0,10)
		ff.BorderSizePixel = go
		ff.BackgroundTransparency = .2
		ff.BackgroundColor3 = Color3.new(200, 0, 0) 
		ff.ZIndex = 2
		ff.Draggable = false
		ff.Active = true
		ff.Text = "Flash"
		ff.Parent = e
 		ff.MouseButton1Down:connect(function()
--[[
	     ______     __  __        ____                 __         ______
	    / _/ _/    /  \/  \      / __/___  __  _______/ /_       /  /  /
	   / // /     / /\/ /\ \  __/ /_/ __ \/ / / / ___/ __ \      / // / 
	  / // /     / / /_/  \ \/_  __/ /_/ / /_/ / /  / /_/ /     / // /  
	 / // /     /_/        \_\/_/  \____/\__,_/_/  /_.___/    _/ // /   
	/__/__/                                                  /__/__/  

--]]

wait()
Player = game.Players.LocalPlayer
Object = game.Players.LocalPlayer.Character.HumanoidRootPart
Arm1 = game.Players.LocalPlayer.Character["Right Arm"]
PreviousA1 = Arm1.CFrame.p
Arm2 = game.Players.LocalPlayer.Character["Left Arm"]
PreviousA2 = Arm2.CFrame.p

Leg1 = game.Players.LocalPlayer.Character["Right Leg"]
PreviousL1 = Leg1.CFrame.p
Leg2 = game.Players.LocalPlayer.Character["Left Leg"]
PreviousL2 = Leg2.CFrame.p

PreviousP = Object.CFrame.p
Running = false
Phase = false
PhaseActive = false
Morph = false
MorphActive = false
Tornado = false
TornadoRadius = 50
TornadoActive = false
Portal = false
PortalEnd = false
MaxZ = 15
MinZ = -15
LightMaxX = 3
LightMinX = 1
LightMaxX2 = -1
LightMinX2 = -3
LightMaxY = 3
LightMinY = -1
Rotation = 0
Length = 10
Color = BrickColor.Yellow()
PColor = Color3.new(255,255,0)
PrevPoint1 = nil
PrevPoint2 = nil
PrevPoint3 = nil
PrevPoint4 = nil
PrevPoint5 = nil
PrevPoint6 = nil
PrevPoint7 = nil
PrevPoint8 = nil
PrevPoint9 = nil
PrevPoint10 = nil
PrevPoint11 = nil
PrevPoint12 = nil
angle = 0
Mouse = Player:GetMouse()
Player.Character.Humanoid.WalkSpeed = 100

Nil = function()
	PrevPoint1 = "Empty"
	PrevPoint2 = "Empty"
	PrevPoint3 = "Empty"
	PrevPoint4 = "Empty"
	PrevPoint5 = "Empty"
	PrevPoint6 = "Empty"
	PrevPoint7 = "Empty"
	PrevPoint8 = "Empty"
	PrevPoint9 = "Empty"
	PrevPoint10 = "Empty"
	PrevPoint11 = "Empty"
	PrevPoint12 = "Empty"
end

	local Lightning = coroutine.wrap(function()
while wait(0.1) do
		if Portal == false then
		angle = angle + 0.6
		local Model = Instance.new("Model",workspace)
		Model.Name = "Lightning"
		local Point1 = Instance.new("Part",Model)
		Point1.Transparency = 1
		Point1.Size = Vector3.new(0.2,0.2,0.2)
		Point1.CFrame = Object.CFrame * CFrame.new(0,0,-(Object.Size.Z/2+Point1.Size.Z/2))
		Point1.Anchored = true
		Point1.CanCollide = false
		Point1.CFrame = Point1.CFrame * CFrame.new(math.random(-2,2),math.random(-2,2),-math.random(0,2))

		local Point2 = Instance.new("Part",Model)
		Point2.Transparency = 1
		Point2.Size = Vector3.new(0.2,0.2,0.2)
		Point2.CFrame = Object.CFrame * CFrame.new(0,0,-(Object.Size.Z/2+Point2.Size.Z/2))
		Point2.Anchored = true
		Point2.CanCollide = false
		Point2.CFrame = Point2.CFrame * CFrame.new(math.random(-2,2),math.random(-2,2),-math.random(0,2))

		local Point3 = Instance.new("Part",Model)
		Point3.Transparency = 1
		Point3.Size = Vector3.new(0.2,0.2,0.2)
		Point3.CFrame = Object.CFrame * CFrame.new(0,0,-(Object.Size.Z/2+Point3.Size.Z/2))
		Point3.Anchored = true
		Point3.CanCollide = false
		Point3.CFrame = Point3.CFrame * CFrame.new(math.random(-2,2),math.random(-2,2),-math.random(0,2))

		local distance = (Point2.CFrame.p - Point1.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		local PointLight = Instance.new("PointLight",Light)
		PointLight.Range = 5
		PointLight.Color = PColor
		Light.Transparency = 0.5
		Light.BrickColor = Color
		Light.Material = "Neon"
		Light.Size = Vector3.new(0.25,0.25,distance)
		Light.Anchored = true
		Light.CanCollide = false
		Light.CFrame = CFrame.new(Point2.CFrame.p , Point1.CFrame.p) * CFrame.new(0,0,-distance/2) 

		local distance2 = (Point3.CFrame.p - Point2.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		local PointLight = Instance.new("PointLight",Light)
		PointLight.Range = 5
		PointLight.Color = PColor
		Light.Transparency = 0.5
		Light.BrickColor = Color
		Light.Material = "Neon"
		Light.Size = Vector3.new(0.25,0.25,distance2)
		Light.Anchored = true
		Light.CanCollide = false
		Light.CFrame = CFrame.new(Point3.CFrame.p , Point2.CFrame.p) * CFrame.new(0,0,-distance2/2) 

		local Point1 = Instance.new("Part",Model)
		Point1.Transparency = 1
		Point1.Size = Vector3.new(0.2,0.2,0.2)
		Point1.CFrame = Object.CFrame * CFrame.new(0,0,(Object.Size.Z/2+Point1.Size.Z/2))
		Point1.Anchored = true
		Point1.CanCollide = false
		Point1.CFrame = Point1.CFrame * CFrame.new(math.random(-2,2),math.random(-2,2),math.random(0,2))

		local Point2 = Instance.new("Part",Model)
		Point2.Transparency = 1
		Point2.Size = Vector3.new(0.2,0.2,0.2)
		Point2.CFrame = Object.CFrame * CFrame.new(0,0,(Object.Size.Z/2+Point2.Size.Z/2))
		Point2.Anchored = true
		Point2.CanCollide = false
		Point2.CFrame = Point2.CFrame * CFrame.new(math.random(-2,2),math.random(-2,2),math.random(0,2))

		local Point3 = Instance.new("Part",Model)
		Point3.Transparency = 1
		Point3.Size = Vector3.new(0.2,0.2,0.2)
		Point3.CFrame = Object.CFrame * CFrame.new(0,0,(Object.Size.Z/2+Point3.Size.Z/2))
		Point3.Anchored = true
		Point3.CanCollide = false
		Point3.CFrame = Point3.CFrame * CFrame.new(math.random(-2,2),math.random(-2,2),math.random(0,2))

		local distance = (Point2.CFrame.p - Point1.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		local PointLight = Instance.new("PointLight",Light)
		PointLight.Range = 5
		PointLight.Color = PColor
		Light.Transparency = 0.5
		Light.BrickColor = Color
		Light.Material = "Neon"
		Light.Size = Vector3.new(0.25,0.25,distance)
		Light.Anchored = true
		Light.CanCollide = false
		Light.CFrame = CFrame.new(Point2.CFrame.p , Point1.CFrame.p) * CFrame.new(0,0,-distance/2) 

		local distance2 = (Point3.CFrame.p - Point2.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		local PointLight = Instance.new("PointLight",Light)
		PointLight.Range = 5
		PointLight.Color = PColor
		Light.Transparency = 0.5
		Light.BrickColor = Color
		Light.Material = "Neon"
		Light.Size = Vector3.new(0.3,0.3,distance2)
		Light.Anchored = true
		Light.CanCollide = false
		Light.CFrame = CFrame.new(Point3.CFrame.p , Point2.CFrame.p) * CFrame.new(0,0,-distance2/2) 
		
		local Point1 = Instance.new("Part",Model)
		Point1.Transparency = 1
		Point1.Size = Vector3.new(0.2,0.2,0.2)
		Point1.CFrame = Object.CFrame * CFrame.new((Object.Size.X/2+Point1.Size.X/2),0,0)
		Point1.Anchored = true
		Point1.CanCollide = false
		Point1.CFrame = Point1.CFrame * CFrame.new(math.random(0,2),math.random(-2,2),math.random(-2,2))

		local Point2 = Instance.new("Part",Model)
		Point2.Transparency = 1
		Point2.Size = Vector3.new(0.2,0.2,0.2)
		Point2.CFrame = Object.CFrame * CFrame.new((Object.Size.X/2+Point1.Size.X/2),0,0)
		Point2.Anchored = true
		Point2.CanCollide = false
		Point2.CFrame = Point2.CFrame * CFrame.new(math.random(0,2),math.random(-2,2),math.random(-2,2))

		local Point3 = Instance.new("Part",Model)
		Point3.Transparency = 1
		Point3.Size = Vector3.new(0.2,0.2,0.2)
		Point3.CFrame = Object.CFrame * CFrame.new((Object.Size.X/2+Point1.Size.X/2),0,0)
		Point3.Anchored = true
		Point3.CanCollide = false
		Point3.CFrame = Point3.CFrame * CFrame.new(math.random(0,2),math.random(-2,2),math.random(-2,2))

		local distance = (Point2.CFrame.p - Point1.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		local PointLight = Instance.new("PointLight",Light)
		PointLight.Range = 5
		PointLight.Color = PColor
		Light.Transparency = 0.5
		Light.BrickColor = Color
		Light.Material = "Neon"
		Light.Size = Vector3.new(0.25,0.25,distance)
		Light.Anchored = true
		Light.CanCollide = false
		Light.CFrame = CFrame.new(Point2.CFrame.p , Point1.CFrame.p) * CFrame.new(0,0,-distance/2) 

		local distance2 = (Point3.CFrame.p - Point2.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		local PointLight = Instance.new("PointLight",Light)
		PointLight.Range = 5
		PointLight.Color = PColor
		Light.Transparency = 0.5
		Light.BrickColor = Color
		Light.Material = "Neon"
		Light.Size = Vector3.new(0.25,0.25,distance2)
		Light.Anchored = true
		Light.CanCollide = false
		Light.CFrame = CFrame.new(Point3.CFrame.p , Point2.CFrame.p) * CFrame.new(0,0,-distance2/2) 

		local Point1 = Instance.new("Part",Model)
		Point1.Transparency = 1
		Point1.Size = Vector3.new(0.2,0.2,0.2)
		Point1.CFrame = Object.CFrame * CFrame.new(-(Object.Size.X/2+Point1.Size.X/2),0,0)
		Point1.Anchored = true
		Point1.CanCollide = false
		Point1.CFrame = Point1.CFrame * CFrame.new(-math.random(0,2),math.random(-2,2),math.random(-2,2))

		local Point2 = Instance.new("Part",Model)
		Point2.Transparency = 1
		Point2.Size = Vector3.new(0.2,0.2,0.2)
		Point2.CFrame = Object.CFrame * CFrame.new(-(Object.Size.X/2+Point1.Size.X/2),0,0)
		Point2.Anchored = true
		Point2.CanCollide = false
		Point2.CFrame = Point2.CFrame * CFrame.new(-math.random(0,2),math.random(-2,2),math.random(-2,2))

		local Point3 = Instance.new("Part",Model)
		Point3.Transparency = 1
		Point3.Size = Vector3.new(0.2,0.2,0.2)
		Point3.CFrame = Object.CFrame * CFrame.new(-(Object.Size.X/2+Point1.Size.X/2),0,0)
		Point3.Anchored = true
		Point3.CanCollide = false
		Point3.CFrame = Point3.CFrame * CFrame.new(-math.random(0,2),math.random(-2,2),math.random(-2,2))

		local distance = (Point2.CFrame.p - Point1.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		local PointLight = Instance.new("PointLight",Light)
		PointLight.Range = 5
		PointLight.Color = PColor
		Light.Transparency = 0.5
		Light.BrickColor = Color
		Light.Material = "Neon"
		Light.Size = Vector3.new(0.25,0.25,distance)
		Light.Anchored = true
		Light.CanCollide = false
		Light.CFrame = CFrame.new(Point2.CFrame.p , Point1.CFrame.p) * CFrame.new(0,0,-distance/2) 

		local distance2 = (Point3.CFrame.p - Point2.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		local PointLight = Instance.new("PointLight",Light)
		PointLight.Range = 5
		PointLight.Color = PColor
		Light.Transparency = 0.5
		Light.BrickColor = Color
		Light.Material = "Neon"
		Light.Size = Vector3.new(0.25,0.25,distance2)
		Light.Anchored = true
		Light.CanCollide = false
		Light.CFrame = CFrame.new(Point3.CFrame.p , Point2.CFrame.p) * CFrame.new(0,0,-distance2/2) 
		end
		end
	end)
Lightning()

TornadoFunction = function()
	local TornadoModel = Instance.new("Model",workspace)
	local Center = Instance.new("Part",TornadoModel)
	Center.Anchored = true
	Center.CanCollide = false
	Center.Transparency = 1
	Center.Size = Vector3.new(2,2,2)
	Center.CFrame = Object.CFrame * CFrame.new(0,0,-20)	
	local Death = Instance.new("Part",TornadoModel)
	Death.Anchored = true
	Death.CanCollide = false
	Death.Transparency = 1
	Death.Size = Vector3.new(TornadoRadius+10,TornadoRadius+10,TornadoRadius+10)
	Death.CFrame = Center.CFrame
	Death.Touched:connect(function(Touch)
		print(Touch.Name)
		if Touch.Parent:FindFirstChild("Humanoid") ~= nil and Touch.Parent.Name ~= Player.Name then
			Touch.Parent.Humanoid.Health = 0
		end
	end)
	local Spin = coroutine.wrap(function()
while wait(0.001) do
		if Tornado == false then TornadoActive = false TornadoModel:Destroy() break end
		angle = angle + 0.6
		Player.Character.Torso.Anchored = false
		Player.Character.Torso.CFrame = Center.CFrame * CFrame.Angles(0,angle,0) * CFrame.new(0,0,TornadoRadius)
		Player.Character.Torso.CFrame =	Player.Character.Torso.CFrame * CFrame.Angles(0,-math.rad(90),0)
		end
	end)
Spin()
end

PhaseFunction = function()
	local Phase = coroutine.wrap(function()
	while wait(0.001) do
	if Phase == false then PhaseActive = false break end
	if Player.Character.Humanoid.WalkSpeed > 50 then
		Player.Character.Torso.CFrame = Player.Character.Torso.CFrame * CFrame.new(0,0,-Player.Character.Humanoid.WalkSpeed/10)
	end
	wait(0.01)
	end
	end)
	Phase()
end

PortalFunction = function()
	local PortalBlock = Instance.new("Part",workspace)
	PortalBlock.CFrame = Object.CFrame * CFrame.new(0,0,-100)
	PortalBlock.Transparency = 1
	PortalBlock.Anchored = true
	PortalBlock.CanCollide = false
	PortalBlock.Size = Vector3.new(20,20,0.2)
	PortalBlock.CFrame = PortalBlock.CFrame * CFrame.new(0,(PortalBlock.Size.Y/2),0)
	local Gui = Instance.new("SurfaceGui",PortalBlock)
	local Img = Instance.new("ImageLabel",Gui)
	Img.Size = UDim2.new(2,0,2,0)
	Img.Position = UDim2.new(-0.5,0,-0.5,0)
	Img.Transparency = 1
	Img.Image = "http://www.roblox.com/asset/?id=21315275"
	local Gui = Instance.new("SurfaceGui",PortalBlock)
	Gui.Face = "Back"
	local Img = Instance.new("ImageLabel",Gui)
	Img.Size = UDim2.new(2,0,2,0)
	Img.Position = UDim2.new(-0.5,0,-0.5,0)
	Img.Transparency = 1
	Img.Image = "http://www.roblox.com/asset/?id=21315275"
	Object.CFrame = PortalBlock.CFrame
	local Face = Object.Parent.Head.face.Texture
	local ObjectC = Object.Parent:GetChildren()
	for i = 1,#ObjectC do
		if ObjectC[i]:IsA("Part") and ObjectC[i].Name ~= "HumanoidRootPart" then
			ObjectC[i].Transparency = 1
		elseif ObjectC[i]:IsA("Hat") then
			ObjectC[i].Handle.Transparency = 1
		end
		if ObjectC[i].Name == "Head" then
			ObjectC[i].face.Texture = ""
		end
	end
	local PortalR = coroutine.wrap(function()
	wait(0.1)
	Portal = true
	PortalEnd = true
	while wait(0.001) do
	if Portal == false then 
		break 
	end
		Nil()
		PortalBlock.CFrame = PortalBlock.CFrame * CFrame.Angles(0,0,-0.1)
	wait(0.01)
	end
		PortalBlock:Destroy() 
	for i = 1,#ObjectC do
		if ObjectC[i]:IsA("Part") and ObjectC[i].Name ~= "HumanoidRootPart" then
			ObjectC[i].Transparency = 0
		elseif ObjectC[i]:IsA("Hat") then
			ObjectC[i].Handle.Transparency = 0
		end
		if ObjectC[i].Name == "Head" then
			ObjectC[i].face.Texture = Face
		end
	end
	local PortalBlock = Instance.new("Part",workspace)
	PortalBlock.CFrame = Object.CFrame * CFrame.new(0,0,0)
	PortalBlock.Transparency = 1
	PortalBlock.Anchored = true
	PortalBlock.CanCollide = false
	PortalBlock.Size = Vector3.new(20,20,0.2)
	PortalBlock.CFrame = PortalBlock.CFrame * CFrame.new(0,(PortalBlock.Size.Y/2),0)
	local Gui = Instance.new("SurfaceGui",PortalBlock)
	local Img = Instance.new("ImageLabel",Gui)
	Img.Size = UDim2.new(2,0,2,0)
	Img.Position = UDim2.new(-0.5,0,-0.5,0)
	Img.Transparency = 1
	Img.Image = "http://www.roblox.com/asset/?id=21315275"
	local Gui = Instance.new("SurfaceGui",PortalBlock)
	Gui.Face = "Back"
	local Img = Instance.new("ImageLabel",Gui)
	Img.Size = UDim2.new(2,0,2,0)
	Img.Position = UDim2.new(-0.5,0,-0.5,0)
	Img.Transparency = 1
	Img.Image = "http://www.roblox.com/asset/?id=21315275"
	Object.CFrame = PortalBlock.CFrame
	PreviousA1 = Arm1.CFrame.p
	PreviousA2 = Arm2.CFrame.p
	PreviousL1 = Leg1.CFrame.p
	PreviousL2 = Leg2.CFrame.p
	PreviousP = Object.CFrame.p
	PortalEnd = false
	wait(2)
	PortalBlock:Destroy()
	end)
	PortalR()
end

MorphFunction = function()
	local MaxX = 100
	local MinX = -100
	local MaxY = 100
	local MinY = -100
	local MaxZ = 100
	local MinZ = -100
	local Morph = coroutine.wrap(function()
	while wait(0.001) do
	if Morph == false then MorphActive = false break end
	local Model = Instance.new("Model",workspace)
	local Shirt = Player.Character.Shirt:Clone()
	Shirt.Parent = Model
	local Pants = Player.Character.Pants:Clone()
	Pants.Parent = Model
	local Humanoid = Instance.new("Humanoid",Model)
	local LeftArm = Player.Character["Left Arm"]:Clone()
	LeftArm.Parent = Model
	LeftArm.Transparency = 0.4
	LeftArm.Anchored = true 
	LeftArm.CFrame = Player.Character["Left Arm"].CFrame * CFrame.new(math.random(MinX,MaxX)*0.003,math.random(MinY,MaxY)*0.002,math.random(MinZ,MaxZ)*0.002)
	local RightArm = Player.Character["Right Arm"]:Clone()
	RightArm.Parent = Model
	RightArm.Transparency = 0.4
	RightArm.Anchored = true
	RightArm.CFrame = Player.Character["Right Arm"].CFrame * CFrame.new(math.random(MinX,MaxX)*0.003,math.random(MinY,MaxY)*0.002,math.random(MinZ,MaxZ)*0.002)
	local LeftLeg = Player.Character["Left Leg"]:Clone()
	LeftLeg.Parent = Model
	LeftLeg.Transparency = 0.4
	LeftLeg.Anchored = true
	LeftLeg.CFrame = Player.Character["Left Leg"].CFrame * CFrame.new(math.random(MinX,MaxX)*0.003,math.random(MinY,MaxY)*0.002,math.random(MinZ,MaxZ)*0.002)
	local RightLeg = Player.Character["Right Leg"]:Clone()
	RightLeg.Parent = Model	
	RightLeg.Transparency = 0.4
	RightLeg.Anchored = true	
	RightLeg.CFrame = Player.Character["Right Leg"].CFrame * CFrame.new(math.random(MinX,MaxX)*0.004,math.random(MinY,MaxY)*0.002,math.random(MinZ,MaxZ)*0.002)
	wait(0.01)
	Model:Destroy()
	end
	end)
	Morph()
end

local Guis = coroutine.wrap(function()
	local Gui = Instance.new("ScreenGui",Player.PlayerGui)
	local TextBox = Instance.new("TextBox",Gui)
	TextBox.Text = "Speed"
	TextBox.BackgroundColor3 = Color3.new(255,255,255)
	TextBox.BorderColor3 = Color3.new(0,0,0)
	TextBox.Size = UDim2.new(0,200,0,25)
	TextBox.Position = UDim2.new(0,10,0.5,-12.5)
	TextBox.FocusLost:connect(function(EnterPressed)
		if EnterPressed then
	 		Player.Character.Humanoid.WalkSpeed = TextBox.Text
		end
	end)
	local Flash = Instance.new("TextButton",Gui)
	Flash.BackgroundColor3 = Color3.new(255,255,255)
	Flash.BorderColor3 = Color3.new(0,0,0)
	Flash.Size = UDim2.new(0,200,0,25)
	Flash.Position = UDim2.new(0,10,0.5,22.5)
	Flash.Text = "The Flash"
	Flash.MouseButton1Click:connect(function()
		Color = BrickColor.Yellow()
		PColor = Color3.new(255,255,0)
	end)
	local RFlash = Instance.new("TextButton",Gui)
	RFlash.BackgroundColor3 = Color3.new(255,255,255)
	RFlash.BorderColor3 = Color3.new(0,0,0)
	RFlash.Size = UDim2.new(0,200,0,25)
	RFlash.Position = UDim2.new(0,10,0.5,57.5)
	RFlash.Text = "The Reverse Flash"
	RFlash.MouseButton1Click:connect(function()
		Color = BrickColor.new("Really red")
		PColor = Color3.new(255,0,0)
	end)
	local Zoom = Instance.new("TextButton",Gui)
	Zoom.BackgroundColor3 = Color3.new(255,255,255)
	Zoom.BorderColor3 = Color3.new(0,0,0)
	Zoom.Size = UDim2.new(0,200,0,25)
	Zoom.Position = UDim2.new(0,10,0.5,92.5)
	Zoom.Text = "Zoom"
	Zoom.MouseButton1Click:connect(function()
		Color = BrickColor.new("Cyan")
		PColor = Color3.new(0,170,255)
	end)
	local Radius = Instance.new("TextBox",Gui)
	Radius.Text = "Tornado Radius"
	Radius.BackgroundColor3 = Color3.new(255,255,255)
	Radius.BorderColor3 = Color3.new(0,0,0)
	Radius.Size = UDim2.new(0,200,0,25)
	Radius.Position = UDim2.new(0,10,0.5,127.5)
	Radius.FocusLost:connect(function(EnterPressed)
		if EnterPressed then
	 		TornadoRadius = Radius.Text
		end
	end)
	Mouse.KeyDown:connect(function(Key)
		if Key == "r" then
			if Phase == false then
				Phase = true
			else
				Phase = false
			end
		end
	end)
	Mouse.KeyDown:connect(function(Key)
		if Key == "e" then
			if Tornado == false then
				Tornado = true
			else
				Tornado = false
			end
		end
	end)
	Mouse.KeyDown:connect(function(Key)
		if Key == "t" then
			if Morph == false then
				Morph = true
			else
				Morph = false
			end
		end
	end)
	Mouse.KeyDown:connect(function(Key)
		if Key == "f" then
			if Portal == false then
				PortalFunction()
				Nil()
			else
				Portal = false
			end
		end
	end)
end)
Guis()

game.Workspace.DescendantAdded:connect(function(Ray)
	wait(0.1)
	if Ray.Name == "Ray" then
		local RayC = Ray:GetChildren()
		local Remove = coroutine.wrap(function()
			for i = 1,2 do
				for i = 1,#RayC do
					if RayC[i]:IsA("Part") then
					RayC[i].Transparency = RayC[i].Transparency + 0.25
					wait(0.001)
end
				end
			end
			Ray:Destroy()		
		end)
		Remove()
	end
end)

game.Workspace.DescendantAdded:connect(function(Ray)
	wait(0.1)
	if Ray.Name == "Lightning" then
			Ray:Destroy()		
	end
end)

while wait(0.001) do
	if (Object.CFrame.p - PreviousP).magnitude > 7 and Player.Character.Humanoid.WalkSpeed > 25 and Portal == false and PortalEnd == false then
	local Model = Instance.new("Model",workspace)
	Model.Name = "Ray"
	local Humanoid = Instance.new("Humanoid",Model)
	if Player.Character:FindFirstChild("Shirt") ~= nil then
		Player.Character.Shirt:Clone().Parent = Model
	end
	if Player.Character:FindFirstChild("Pants") ~= nil then
		Player.Character.Pants:Clone().Parent = Model
	end
	local distance = (Object.CFrame.p - PreviousP).magnitude
	local Light = Instance.new("Part",Model)
	Light.Anchored = true
	Light.CanCollide = false
	Light.TopSurface = "SmoothNoOutlines"
	Light.BottomSurface = "SmoothNoOutlines"
	Light.BackSurface = "SmoothNoOutlines"
	Light.FrontSurface = "SmoothNoOutlines"
	Light.LeftSurface = "SmoothNoOutlines"
	Light.RightSurface = "SmoothNoOutlines"
	Light.Transparency = 1
	Light.BrickColor = BrickColor.Black()
	Light.Size = Vector3.new(2,2,distance)
	Light.CFrame = CFrame.new(Object.CFrame.p , PreviousP) * CFrame.new(0,0,-distance/2) 
	
	local PointLight = Instance.new("PointLight",Light)
	PointLight.Range = 15
	PointLight.Brightness = 100
	PointLight.Color = PColor

	local distance = (Arm1.CFrame.p - PreviousA1).magnitude

	local Arm1Light = Instance.new("Part",Model)
	Arm1Light.Name = "Right Arm"
	Arm1Light.Anchored = true
	Arm1Light.CanCollide = false
	Arm1Light.TopSurface = "SmoothNoOutlines"
	Arm1Light.BottomSurface = "SmoothNoOutlines"
	Arm1Light.BackSurface = "SmoothNoOutlines"
	Arm1Light.FrontSurface = "SmoothNoOutlines"
	Arm1Light.LeftSurface = "SmoothNoOutlines"
	Arm1Light.RightSurface = "SmoothNoOutlines"
	Arm1Light.Transparency = 0.5
	Arm1Light.BrickColor = BrickColor.Black()
	Arm1Light.Size = Vector3.new(1,2,distance)
	Arm1Light.CFrame = CFrame.new(Arm1.CFrame.p , PreviousA1) * CFrame.new(0,0,-distance/2) * CFrame.Angles(0,math.rad(180),0)

	local distance = (Arm2.CFrame.p - PreviousA2).magnitude

	local Arm2Light = Instance.new("Part",Model)
	Arm2Light.Name = "Left Arm"
	Arm2Light.Anchored = true
	Arm2Light.CanCollide = false
	Arm2Light.TopSurface = "SmoothNoOutlines"
	Arm2Light.BottomSurface = "SmoothNoOutlines"
	Arm2Light.BackSurface = "SmoothNoOutlines"
	Arm2Light.FrontSurface = "SmoothNoOutlines"
	Arm2Light.LeftSurface = "SmoothNoOutlines"
	Arm2Light.RightSurface = "SmoothNoOutlines"
	Arm2Light.Transparency = 0.5
	Arm2Light.BrickColor = BrickColor.Black()
	Arm2Light.Size = Vector3.new(1,2,distance)
	Arm2Light.CFrame = CFrame.new(Arm2.CFrame.p , PreviousA2) * CFrame.new(0,0,-distance/2) * CFrame.Angles(0,math.rad(180),0)

	local distance = (Leg1.CFrame.p - PreviousL1).magnitude

	local Leg1Light = Instance.new("Part",Model)
	Leg1Light.Name = "Right Leg"
	Leg1Light.Anchored = true
	Leg1Light.CanCollide = false
	Leg1Light.TopSurface = "SmoothNoOutlines"
	Leg1Light.BottomSurface = "SmoothNoOutlines"
	Leg1Light.BackSurface = "SmoothNoOutlines"
	Leg1Light.FrontSurface = "SmoothNoOutlines"
	Leg1Light.LeftSurface = "SmoothNoOutlines"
	Leg1Light.RightSurface = "SmoothNoOutlines"
	Leg1Light.Transparency = 0.5
	Leg1Light.BrickColor = BrickColor.Black()
	Leg1Light.Size = Vector3.new(1,2,distance)
	Leg1Light.CFrame = CFrame.new(Leg1.CFrame.p , PreviousL1) * CFrame.new(0,0,-distance/2) * CFrame.Angles(0,math.rad(180),0)

	local distance = (Leg2.CFrame.p - PreviousL2).magnitude

	local Leg1Light = Instance.new("Part",Model)
	Leg1Light.Name = "Left Leg"
	Leg1Light.Anchored = true
	Leg1Light.CanCollide = false
	Leg1Light.TopSurface = "SmoothNoOutlines"
	Leg1Light.BottomSurface = "SmoothNoOutlines"
	Leg1Light.BackSurface = "SmoothNoOutlines"
	Leg1Light.FrontSurface = "SmoothNoOutlines"
	Leg1Light.LeftSurface = "SmoothNoOutlines"
	Leg1Light.RightSurface = "SmoothNoOutlines"
	Leg1Light.Transparency = 0.5
	Leg1Light.BrickColor = BrickColor.Black()
	Leg1Light.Size = Vector3.new(1,2,distance)
	Leg1Light.CFrame = CFrame.new(Leg2.CFrame.p , PreviousL2) * CFrame.new(0,0,-distance/2) * CFrame.Angles(0,math.rad(180),0)

	local Point1 = Instance.new("Part",Model)
	Point1.Transparency = 1
	Point1.Anchored = true
	Point1.CanCollide = false
	Point1.Size = Vector3.new(0.2,0.2,0.2)
	Point1.CFrame = Light.CFrame * CFrame.new(0,0,-Light.Size.Z/2)
	 * CFrame.new(Light.Size.X/2 ,0 ,0)
	 * CFrame.new(math.random(LightMinX,LightMaxX),0,0) 
	 * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
	
	local Point2 = Instance.new("Part",Model)
	Point2.Transparency = 1
	Point2.Anchored = true
	Point2.CanCollide = false
	Point2.Size = Vector3.new(0.2,0.2,0.2)
	Point2.CFrame = Light.CFrame * CFrame.new(0,0,Light.Size.Z/2)
	 * CFrame.new(Light.Size.X/2 ,0 ,0)
	 * CFrame.new(math.random(LightMinX,LightMaxX),0,0) 
	 * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
	
	local Point5 = Instance.new("Part",Model)
	Point5.Transparency = 1
	Point5.Anchored = true
	Point5.CanCollide = false
	Point5.Size = Vector3.new(0.2,0.2,0.2)
	Point5.CFrame = Light.CFrame * CFrame.new(0,0,-Light.Size.Z/2)
	 * CFrame.new(Light.Size.X/2 ,0 ,0)
	 * CFrame.new(math.random(LightMinX,LightMaxX),0,0) 
	 * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
	
	local Point6 = Instance.new("Part",Model)
	Point6.Transparency = 1
	Point6.Anchored = true
	Point6.CanCollide = false
	Point6.Size = Vector3.new(0.2,0.2,0.2)
	Point6.CFrame = Light.CFrame * CFrame.new(0,0,Light.Size.Z/2)
	 * CFrame.new(Light.Size.X/2 ,0 ,0)
	 * CFrame.new(math.random(LightMinX,LightMaxX),0,0) 
	 * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
	
	local Point3 = Instance.new("Part",Model)
	Point3.Transparency = 1
	Point3.Anchored = true
	Point3.CanCollide = false
	Point3.Size = Vector3.new(0.2,0.2,0.2)
	Point3.CFrame = Light.CFrame * CFrame.new(0,0,-Light.Size.Z/2)
	 * CFrame.new(-Light.Size.X/2 ,0 ,0)
	 * CFrame.new(math.random(LightMinX2,LightMaxX2),0,0) 
	 * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
	
	local Point4 = Instance.new("Part",Model)
	Point4.Transparency = 1
	Point4.Anchored = true
	Point4.CanCollide = false
	Point4.Size = Vector3.new(0.2,0.2,0.2)
	Point4.CFrame = Light.CFrame * CFrame.new(0,0,Light.Size.Z/2)
	 * CFrame.new(-Light.Size.X/2 ,0 ,0)
	 * CFrame.new(math.random(LightMinX2,LightMaxX2),0,0) 
	 * CFrame.new(0,math.random(LightMinY,LightMaxY),0)

	local Point7 = Instance.new("Part",Model)
	Point7.Transparency = 1
	Point7.Anchored = true
	Point7.CanCollide = false
	Point7.Size = Vector3.new(0.2,0.2,0.2)
	Point7.CFrame = Light.CFrame * CFrame.new(0,0,-Light.Size.Z/2)
	 * CFrame.new(-Light.Size.X/2 ,0 ,0)
	 * CFrame.new(math.random(LightMinX2,LightMaxX2),0,0) 
	 * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
	
	local Point8 = Instance.new("Part",Model)
	Point8.Transparency = 1
	Point8.Anchored = true
	Point8.CanCollide = false
	Point8.Size = Vector3.new(0.2,0.2,0.2)
	Point8.CFrame = Light.CFrame * CFrame.new(0,0,Light.Size.Z/2)
	 * CFrame.new(-Light.Size.X/2 ,0 ,0)
	 * CFrame.new(math.random(LightMinX2,LightMaxX2),0,0) 
	 * CFrame.new(0,math.random(LightMinY,LightMaxY),0)

	local Point9 = Instance.new("Part",Model)
	Point9.Transparency = 1
	Point9.Anchored = true
	Point9.CanCollide = false
	Point9.Size = Vector3.new(0.2,0.2,0.2)
	Point9.CFrame = Light.CFrame * CFrame.new(0,-1,-Light.Size.Z/2)
	 * CFrame.new(Light.Size.X/2 ,-2 ,0)
	 * CFrame.new(math.random(LightMinX,LightMaxX),0,0) 
	 * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
	
	local Point10 = Instance.new("Part",Model)
	Point10.Transparency = 1
	Point10.Anchored = true
	Point10.CanCollide = false
	Point10.Size = Vector3.new(0.2,0.2,0.2)
	Point10.CFrame = Light.CFrame * CFrame.new(0,-1,Light.Size.Z/2)
	 * CFrame.new(Light.Size.X/2 ,0 ,0)
	 * CFrame.new(math.random(LightMinX,LightMaxX),0,0) 
	 * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
	
	local Point11 = Instance.new("Part",Model)
	Point11.Transparency = 1
	Point11.Anchored = true
	Point11.CanCollide = false
	Point11.Size = Vector3.new(0.2,0.2,0.2)
	Point11.CFrame = Light.CFrame * CFrame.new(0,-1,-Light.Size.Z/2)
	 * CFrame.new(Light.Size.X/2 ,-2 ,0)
	 * CFrame.new(math.random(LightMinX2,LightMaxX2),0,0) 
	 * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
	
	local Point12 = Instance.new("Part",Model)
	Point12.Transparency = 1
	Point12.Anchored = true
	Point12.CanCollide = false
	Point12.Size = Vector3.new(0.2,0.2,0.2)
	Point12.CFrame = Light.CFrame * CFrame.new(0,-1,Light.Size.Z/2)
	 * CFrame.new(Light.Size.X/2 ,-2 ,0)
	 * CFrame.new(math.random(LightMinX2,LightMaxX2),0,0) 
	 * CFrame.new(0,math.random(LightMinY,LightMaxY),0)

if PrevPoint2 == nil or PrevPoint2 == "Empty" then
		local distance = (Point2.CFrame.p - Point1.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		Light.Anchored = true
		Light.CanCollide = false
		Light.TopSurface = "SmoothNoOutlines"
		Light.BottomSurface = "SmoothNoOutlines"
		Light.BackSurface = "SmoothNoOutlines"
		Light.FrontSurface = "SmoothNoOutlines"
		Light.LeftSurface = "SmoothNoOutlines"
		Light.RightSurface = "SmoothNoOutlines"
		Light.Transparency = 0.5
		Light.Size = Vector3.new(0.4,0.4,distance)
		Light.Material = "Neon"
		Light.BrickColor = Color
		Light.CFrame = CFrame.new(Point2.CFrame.p , Point1.CFrame.p) * CFrame.new(0,0,-distance/2)
	elseif PrevPoint2 ~= nil then
		local distance = (Point2.CFrame.p - PrevPoint2).magnitude
		local Light = Instance.new("Part",Model)
		Light.Anchored = true
		Light.CanCollide = false
		Light.TopSurface = "SmoothNoOutlines"
		Light.BottomSurface = "SmoothNoOutlines"
		Light.BackSurface = "SmoothNoOutlines"
		Light.FrontSurface = "SmoothNoOutlines"
		Light.LeftSurface = "SmoothNoOutlines"
		Light.RightSurface = "SmoothNoOutlines"
		Light.Transparency = 0.5
		Light.Size = Vector3.new(0.4,0.4,distance)
		Light.Material = "Neon"
		Light.BrickColor = Color
		Light.CFrame = CFrame.new(Point2.CFrame.p , PrevPoint2) * CFrame.new(0,0,-distance/2)		
	end

if PrevPoint4 == nil or PrevPoint4 == "Empty" then
		local distance = (Point4.CFrame.p - Point3.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		Light.Anchored = true
		Light.CanCollide = false
		Light.TopSurface = "SmoothNoOutlines"
		Light.BottomSurface = "SmoothNoOutlines"
		Light.BackSurface = "SmoothNoOutlines"
		Light.FrontSurface = "SmoothNoOutlines"
		Light.LeftSurface = "SmoothNoOutlines"
		Light.RightSurface = "SmoothNoOutlines"
		Light.Transparency = 0.5
		Light.Size = Vector3.new(0.4,0.4,distance)
		Light.Material = "Neon"
		Light.BrickColor = Color
		Light.CFrame = CFrame.new(Point4.CFrame.p , Point3.CFrame.p) * CFrame.new(0,0,-distance/2)	
	elseif PrevPoint4 ~= nil then
		local distance = (Point4.CFrame.p - PrevPoint4).magnitude
		local Light = Instance.new("Part",Model)
		Light.Anchored = true
		Light.CanCollide = false
		Light.TopSurface = "SmoothNoOutlines"
		Light.BottomSurface = "SmoothNoOutlines"
		Light.BackSurface = "SmoothNoOutlines"
		Light.FrontSurface = "SmoothNoOutlines"
		Light.LeftSurface = "SmoothNoOutlines"
		Light.RightSurface = "SmoothNoOutlines"
		Light.Transparency = 0.5
		Light.Size = Vector3.new(0.4,0.4,distance)
		Light.Material = "Neon"
		Light.BrickColor = Color
		Light.CFrame = CFrame.new(Point4.CFrame.p , PrevPoint4) * CFrame.new(0,0,-distance/2)	
	end


if PrevPoint6 == nil or PrevPoint6 == "Empty" then
		local distance = (Point6.CFrame.p - Point5.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		Light.Anchored = true
		Light.CanCollide = false
		Light.TopSurface = "SmoothNoOutlines"
		Light.BottomSurface = "SmoothNoOutlines"
		Light.BackSurface = "SmoothNoOutlines"
		Light.FrontSurface = "SmoothNoOutlines"
		Light.LeftSurface = "SmoothNoOutlines"
		Light.RightSurface = "SmoothNoOutlines"
		Light.Transparency = 0.5
		Light.Size = Vector3.new(0.4,0.4,distance)
		Light.Material = "Neon"
		Light.BrickColor = Color
		Light.CFrame = CFrame.new(Point6.CFrame.p , Point5.CFrame.p) * CFrame.new(0,0,-distance/2)	
	elseif PrevPoint6 ~= nil then
		local distance = (Point6.CFrame.p - PrevPoint6).magnitude
		local Light = Instance.new("Part",Model)
		Light.Anchored = true
		Light.CanCollide = false
		Light.TopSurface = "SmoothNoOutlines"
		Light.BottomSurface = "SmoothNoOutlines"
		Light.BackSurface = "SmoothNoOutlines"
		Light.FrontSurface = "SmoothNoOutlines"
		Light.LeftSurface = "SmoothNoOutlines"
		Light.RightSurface = "SmoothNoOutlines"
		Light.Transparency = 0.5
		Light.Size = Vector3.new(0.4,0.4,distance)
		Light.Material = "Neon"
		Light.BrickColor = Color
		Light.CFrame = CFrame.new(Point6.CFrame.p , PrevPoint6) * CFrame.new(0,0,-distance/2)	
	end
	
if PrevPoint8 == nil or PrevPoint8 == "Empty" then
		local distance = (Point8.CFrame.p - Point7.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		Light.Anchored = true
		Light.CanCollide = false
		Light.TopSurface = "SmoothNoOutlines"
		Light.BottomSurface = "SmoothNoOutlines"
		Light.BackSurface = "SmoothNoOutlines"
		Light.FrontSurface = "SmoothNoOutlines"
		Light.LeftSurface = "SmoothNoOutlines"
		Light.RightSurface = "SmoothNoOutlines"
		Light.Transparency = 0.5
		Light.Size = Vector3.new(0.4,0.4,distance)
		Light.Material = "Neon"
		Light.BrickColor = Color
		Light.CFrame = CFrame.new(Point8.CFrame.p , Point7.CFrame.p) * CFrame.new(0,0,-distance/2)	
	elseif PrevPoint8 ~= nil then
		local distance = (Point8.CFrame.p - PrevPoint8).magnitude
		local Light = Instance.new("Part",Model)
		Light.Anchored = true
		Light.CanCollide = false
		Light.TopSurface = "SmoothNoOutlines"
		Light.BottomSurface = "SmoothNoOutlines"
		Light.BackSurface = "SmoothNoOutlines"
		Light.FrontSurface = "SmoothNoOutlines"
		Light.LeftSurface = "SmoothNoOutlines"
		Light.RightSurface = "SmoothNoOutlines"
		Light.Transparency = 0.5
		Light.Size = Vector3.new(0.4,0.4,distance)
		Light.Material = "Neon"
		Light.BrickColor = Color
		Light.CFrame = CFrame.new(Point8.CFrame.p , PrevPoint8) * CFrame.new(0,0,-distance/2)
	end
	
if PrevPoint10 == nil or PrevPoint10 == "Empty" then
		local distance = (Point10.CFrame.p - Point9.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		Light.Anchored = true
		Light.CanCollide = false
		Light.TopSurface = "SmoothNoOutlines"
		Light.BottomSurface = "SmoothNoOutlines"
		Light.BackSurface = "SmoothNoOutlines"
		Light.FrontSurface = "SmoothNoOutlines"
		Light.LeftSurface = "SmoothNoOutlines"
		Light.RightSurface = "SmoothNoOutlines"
		Light.Transparency = 0.5
		Light.Size = Vector3.new(0.4,0.4,distance)
		Light.Material = "Neon"
		Light.BrickColor = Color
		Light.CFrame = CFrame.new(Point10.CFrame.p , Point9.CFrame.p) * CFrame.new(0,0,-distance/2)
elseif PrevPoint10 ~= nil then
		local distance = (Point10.CFrame.p - PrevPoint10).magnitude
		local Light = Instance.new("Part",Model)
		Light.Anchored = true
		Light.CanCollide = false
		Light.TopSurface = "SmoothNoOutlines"
		Light.BottomSurface = "SmoothNoOutlines"
		Light.BackSurface = "SmoothNoOutlines"
		Light.FrontSurface = "SmoothNoOutlines"
		Light.LeftSurface = "SmoothNoOutlines"
		Light.RightSurface = "SmoothNoOutlines"
		Light.Transparency = 0.5
		Light.Size = Vector3.new(0.4,0.4,distance)
		Light.Material = "Neon"
		Light.BrickColor = Color
		Light.CFrame = CFrame.new(Point10.CFrame.p , PrevPoint10) * CFrame.new(0,0,-distance/2)	
	end

	
if PrevPoint12 == nil or PrevPoint12 == "Empty" then
		local distance = (Point12.CFrame.p - Point11.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		Light.Anchored = true
		Light.CanCollide = false
		Light.TopSurface = "SmoothNoOutlines"
		Light.BottomSurface = "SmoothNoOutlines"
		Light.BackSurface = "SmoothNoOutlines"
		Light.FrontSurface = "SmoothNoOutlines"
		Light.LeftSurface = "SmoothNoOutlines"
		Light.RightSurface = "SmoothNoOutlines"
		Light.Transparency = 0.5
		Light.Size = Vector3.new(0.4,0.4,distance)
		Light.Material = "Neon"
		Light.BrickColor = Color
		Light.CFrame = CFrame.new(Point12.CFrame.p , Point11.CFrame.p) * CFrame.new(0,0,-distance/2)	
	elseif PrevPoint12 ~= nil then
		local distance = (Point12.CFrame.p - PrevPoint12).magnitude
		local Light = Instance.new("Part",Model)
		Light.Anchored = true
		Light.CanCollide = false
		Light.TopSurface = "SmoothNoOutlines"
		Light.BottomSurface = "SmoothNoOutlines"
		Light.BackSurface = "SmoothNoOutlines"
		Light.FrontSurface = "SmoothNoOutlines"
		Light.LeftSurface = "SmoothNoOutlines"
		Light.RightSurface = "SmoothNoOutlines"
		Light.Transparency = 0.5
		Light.Size = Vector3.new(0.4,0.4,distance)
		Light.Material = "Neon"
		Light.BrickColor = Color
		Light.CFrame = CFrame.new(Point12.CFrame.p , PrevPoint12) * CFrame.new(0,0,-distance/2)
	end
	PreviousP = Object.CFrame.p
	PreviousA1 = Arm1.CFrame.p
	PreviousA2 = Arm2.CFrame.p
	PreviousL1 = Leg1.CFrame.p
	PreviousL2 = Leg2.CFrame.p
	PrevPoint1 = Point1.CFrame.p
	PrevPoint2 = Point2.CFrame.p
	PrevPoint3 = Point3.CFrame.p
	PrevPoint4 = Point4.CFrame.p
	PrevPoint5 = Point5.CFrame.p
	PrevPoint6 = Point6.CFrame.p
	PrevPoint7 = Point7.CFrame.p
	PrevPoint8 = Point8.CFrame.p
	PrevPoint9 = Point9.CFrame.p
	PrevPoint10 = Point10.CFrame.p
	PrevPoint11 = Point11.CFrame.p
	PrevPoint12 = Point12.CFrame.p
end
	if Tornado == true and TornadoActive == false then
		TornadoActive = true
		TornadoFunction()
	end
	if Phase == true and PhaseActive == false then
		PhaseActive = true
		PhaseFunction()
	end
	if Morph == true and MorphActive == false then
		MorphActive = true
		MorphFunction()
	end
end
end)

local f = Instance.new("TextLabel",b)
		f.Size = UDim2.new(1,1,0,-20)
		f.Position = UDim2.new(0,-180,0,0)
		f.BorderSizePixel = go
		f.BackgroundTransparency = 1
		f.BackgroundColor3 = Color3.new(0) 
                f.TextColor3 = Color3.new(200, 0, 0)
		f.ZIndex = 5
		f.Draggable = false
		f.Active = true
		f.Text = "Scripts"


local g = Instance.new("TextLabel",b)
		g.Size = UDim2.new(1,1,0,-20)
		g.Position = UDim2.new(0,1,0,0)
		g.BorderSizePixel = go
		g.BackgroundTransparency = 1
		g.BackgroundColor3 = Color3.new(0) 
                g.TextColor3 = Color3.new(200, 0, 0)
		g.ZIndex = 5
		g.Draggable = false
		g.Active = true
		g.Text = "Rare Scripts"


local h = Instance.new("TextLabel",b)
		h.Size = UDim2.new(1,1,0,-20)
		h.Position = UDim2.new(0,180,0,0)
		h.BorderSizePixel = go
		h.BackgroundTransparency = 1
		h.BackgroundColor3 = Color3.new(0) 
                h.TextColor3 = Color3.new(200, 0, 0)
		h.ZIndex = 5
		h.Draggable = false
		h.Active = true
		h.Text = "Commands"


--------------------------------------------------------------------------------
local tele = Instance.new("TextButton",b)
		tele.Size = UDim2.new(1,1,0,30)
		tele.Position = UDim2.new(0,0,0,50)
		tele.BorderSizePixel = go
		tele.BackgroundTransparency = .2
		tele.BackgroundColor3 = Color3.new(200, 0, 0) 
		tele.ZIndex = 2
		tele.Draggable = false
		tele.Active = true
		tele.Text = "Telekinesis"
		tele.Parent = e
 		tele.MouseButton1Down:connect(function()
local isScriptNil = false

local PlrName = "identity7"
local Plrs = game:GetService("Players")
local RunService = game:GetService("RunService")
local Content = game:GetService("ContentProvider")
local LP = Plrs.LocalPlayer
local Char = LP.Character
local PlrGui = LP.PlayerGui
local Backpack = LP.Backpack
local Mouse = LP:GetMouse()

local Camera = Workspace.CurrentCamera
local LastCamCF = Camera.CoordinateFrame
local AnimJoints = {}
local Cons = {}
local mDown = false
local Multi = false
local Grabbing = false
local Current = {}
local Alpha = 1
local LightNum = 1

Current.Part = nil
Current.BP = nil
Current.BA = nil
Current.Mass = nil

local LastPart = nil

local Head = Char["Head"]
local Torso = Char["Torso"]
local Humanoid = Char["Humanoid"]
local LA = Char["Left Arm"]
local RA = Char["Right Arm"]
local LL = Char["Left Leg"]
local RL = Char["Right Leg"]

local LS, RS;

local OrigLS = Torso["Left Shoulder"]
local OrigRS = Torso["Right Shoulder"]

for _,v in pairs(Char:GetChildren()) do
	if v.Name == ModID then
		v:Destroy()
	end
end

for _,v in pairs(PlrGui:GetChildren()) do
	if v.Name == "PadsGui" then
		v:Destroy()
	end
end

local ModID = "Pads"
local Objects = {}
local Grav = 196.2

local sin=math.sin
local cos=math.cos
local max=math.max
local min=math.min
local atan2=math.atan2
local random=math.random
local tau = 2 * math.pi

local BodyObjects = {
	["BodyVelocity"] = true;
	["BodyAngularVelocity"] = true;
	["BodyForce"] = true;
	["BodyThrust"] = true;
	["BodyPosition"] = true;
	["RocketPropulsion"] = true;
}

if LP.Name == PlrName and isScriptNil then
	script.Parent = nil
end

LP.CameraMode = "Classic"

local Assets = {
}

local LS0, LS1 = OrigLS.C0, OrigLS.C1
local RS0, RS1 = OrigRS.C0, OrigRS.C1

for i,v in pairs(Assets) do
	local ID = tostring(Assets[i])
	Assets[i] = "http://www.roblox.com/asset/?id=" .. ID
	Content:Preload("http://www.roblox.com/asset/?id=" .. ID)
end

function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components();
	local trace = m00 + m11 + m22 if trace > 0 then 
		local s = math.sqrt(1 + trace);
		local recip = 0.5/s;
		return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5;
	else 
		local i = 0;
		if m11 > m00 then 
			i = 1;
		end;
		if m22 > (i == 0 and m00 or m11) then
			i = 2 end if i == 0 then
			local s = math.sqrt(m00-m11-m22+1);
			local recip = 0.5/s return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip; 
		elseif i == 1 then
			local s = math.sqrt(m11-m22-m00+1);
			local recip = 0.5/s;
			return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip ;
		elseif i == 2 then
			local s = math.sqrt(m22-m00-m11+1);
			local recip = 0.5/s;
			return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip;
		end;
	end; 
end;

function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z;
	local wx, wy, wz = w*xs, w*ys, w*zs;
	local xx = x*xs;
	local xy = x*ys;
	local xz = x*zs;
	local yy = y*ys;
	local yz = y*zs;
	local zz = z*zs;
	return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end;

function QuaternionSlerp(a, b, t)
	local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4];
	local startInterp, finishInterp; 
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = math.acos(cosTheta);
			local invSinTheta = 1/math.sin(theta);
			startInterp = math.sin((1-t)*theta)*invSinTheta;
			finishInterp = math.sin(t*theta)*invSinTheta;
		else
			startInterp = 1-t finishInterp = t;
		end;
	else 
		if (1+cosTheta) > 0.0001 then
			local theta = math.acos(-cosTheta);
			local invSinTheta = 1/math.sin(theta);
			startInterp = math.sin((t-1)*theta)*invSinTheta;
			finishInterp = math.sin(t*theta)*invSinTheta;
		else startInterp = t-1 finishInterp = t;
		end;
	end;
	return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp;
end;

function CLerp(a,b,t)
	local qa={QuaternionFromCFrame(a)};
	local qb={QuaternionFromCFrame(b)};
	local ax,ay,az=a.x,a.y,a.z;
	local bx,by,bz=b.x,b.y,b.z;
	local _t=1-t;
	return QuaternionToCFrame(_t*ax+t*bx,_t*ay+t*by,_t*az+t*bz,QuaternionSlerp(qa, qb, t));
end

function GetWeld(weld) 
	local obj 
	for i, v in pairs(AnimJoints) do 
		if v[1] == weld then 
			obj = v 
			break 
		end 
	end 
	if not obj then 
		obj = {weld,NV} 
		table.insert(AnimJoints,obj) 
	end 
	return weld.C0.p, obj[2] 
end 

function SetWeld(weld, i, loops, origpos, origangle, nextpos, nextangle, override, overrideLower, smooth) 
	smooth = smooth or 1 
	local obj 
	for i, v in pairs(AnimJoints) do 
		if v[1] == weld then 
			obj = v 
			break 
		end 
	end 
	if not obj then 
		obj = {weld,NV} 
		table.insert(AnimJoints,obj) 
	end 
	
	local perc = (smooth == 1 and math.sin((math.pi/2)/loops*i)) or i/loops 
	
	local tox,toy,toz = 0,0,0 
	tox = math.abs(origangle.x - nextangle.x) *perc 
	toy = math.abs(origangle.y - nextangle.y) *perc 
	toz = math.abs(origangle.z - nextangle.z) *perc 
	tox = ((origangle.x > nextangle.x and -tox) or tox)
	toy = ((origangle.y > nextangle.y and -toy) or toy)
	toz = ((origangle.z > nextangle.z and -toz) or toz)
	
	local tox2,toy2,toz2 = 0,0,0 
	tox2 = math.abs(origpos.x - nextpos.x) *perc 
	toy2 = math.abs(origpos.y - nextpos.y) *perc 
	toz2 = math.abs(origpos.z - nextpos.z) *perc 
	tox2 = (origpos.x > nextpos.x and -tox2) or tox2 
	toy2 = (origpos.y > nextpos.y and -toy2) or toy2 
	toz2 = (origpos.z > nextpos.z and -toz2) or toz2 
	
	obj[2] = Vector3.new(origangle.x + tox, origangle.y + toy, origangle.z + toz) 
	weld.C0 = CFrame.new(origpos.x + tox2,origpos.y + toy2,origpos.z + toz2) * CFrame.Angles(origangle.x + tox,origangle.y + toy,origangle.z + toz) 
end 

function RotateCamera(x, y)
	Camera.CoordinateFrame = CFrame.new(Camera.Focus.p) * (Camera.CoordinateFrame - Camera.CoordinateFrame.p) * CFrame.Angles(x, y, 0) * CFrame.new(0, 0, (Camera.CoordinateFrame.p - Camera.Focus.p).magnitude)
end

function GetAngles(cf)
	local lv = cf.lookVector
	return -math.asin(lv.y), math.atan2(lv.x, -lv.z)
end

local LastCamCF = Camera.CoordinateFrame

function Look()
	if AlphaOn == true then
		local x, y = GetAngles(LastCamCF:toObjectSpace(Camera.CoordinateFrame))
		Camera.CoordinateFrame = LastCamCF
		RotateCamera(x * -(Alpha), y * -(Alpha))
		LastCamCF = Camera.CoordinateFrame
	end
end

function Cor(Func)
	local Ok, Err = coroutine.resume(coroutine.create(Func))
	if not Ok then
		print(Err)
	end
end

function Cor2(Func)
	local Ok, Err = ypcall(Func)
	if not Ok then
		print(Err)
	end
end

function MakePads()
	-- 1 - VTelekinesis
	P1 = Instance.new("Model")
	P1.Name = ModID

	-- 2 - RBase
	P2 = Instance.new("Part")
	P2.CFrame = CFrame.new(Vector3.new(21.100008, 1.95000589, 11.899971)) * CFrame.Angles(-0, 0, -0)
	P2.FormFactor = Enum.FormFactor.Custom
	P2.Size = Vector3.new(0.799999952, 0.200000003, 0.800000012)
	P2.Anchored = true
	P2.BrickColor = BrickColor.new("White")
	P2.Friction = 0.30000001192093
	P2.Shape = Enum.PartType.Block
	P2.Name = "RBase"
	P2.Parent = P1
    P2.Transparency = 1
	-- 3 - Mesh
	P3 = Instance.new("CylinderMesh")
	P3.Scale = Vector3.new(1, 0.5, 1)
	P3.Parent = P2

	-- 4 - LBase
	P4 = Instance.new("Part")
	P4.CFrame = CFrame.new(Vector3.new(18.100008, 1.95000589, 11.899971)) * CFrame.Angles(-0, 0, -0)
	P4.FormFactor = Enum.FormFactor.Custom
	P4.Size = Vector3.new(0.799999952, 0.200000003, 0.800000012)
	P4.Anchored = true
	P4.BrickColor = BrickColor.new("White")
	P4.Friction = 0.30000001192093
	P4.Shape = Enum.PartType.Block
	P4.Name = "LBase"
	P4.Parent = P1
    P4.Transparency = 1
	-- 5 - Mesh
	P5 = Instance.new("CylinderMesh")
	P5.Scale = Vector3.new(1, 0.5, 1)
	P5.Parent = P4

	-- 7 - Mesh
	P7 = Instance.new("CylinderMesh")
	P7.Scale = Vector3.new(1, 0.5, 1)
	P7.Parent = P6

	

	-- 9 - Mesh
	P9 = Instance.new("CylinderMesh")
	P9.Scale = Vector3.new(1, 0.5, 1)
	P9.Parent = P8

	

	-- 11 - Mesh
	P11 = Instance.new("CylinderMesh")
	P11.Scale = Vector3.new(1, 0.5, 1)
	P11.Parent = P10

	
	-- 13 - Mesh
	P13 = Instance.new("CylinderMesh")
	P13.Scale = Vector3.new(1, 0.5, 1)
	P13.Parent = P12


	-- 15 - Mesh
	P15 = Instance.new("CylinderMesh")
	P15.Scale = Vector3.new(1, 0.5, 1)
	P15.Parent = P14

	-- 17 - Mesh
	P17 = Instance.new("CylinderMesh")
	P17.Scale = Vector3.new(1, 0.5, 1)
	P17.Parent = P16

	P1.Parent = LP.Character
	P1:MakeJoints()
	return P1
end

weldModel = function(model, unanchor, rooty)
	local parts = {}
	local function recurse(object)
		if object:IsA("BasePart") then
			table.insert(parts, object)
		end
		for _,child in pairs(object:GetChildren()) do
			recurse(child)
		end
	end
	recurse(model)
	
	local rootPart = rooty or parts[1]
	for _, part in pairs(parts) do
		local cframe = rootPart.CFrame:toObjectSpace(part.CFrame)
		local weld = Instance.new("Weld")
		weld.Part0 = rootPart
		weld.Part1 = part
		weld.C0 = cframe
		weld.Parent = rootPart
	end
	
	if unanchor then
		for _, part in pairs(parts) do
			part.Anchored = false
			part.CanCollide = false
		end
	end
end

weldItem = function(rootPart, Item, TheC0, unanchor, ParentItem)
	local cframe = TheC0 or rootPart.CFrame:toObjectSpace(Item.CFrame)
	local weld = Instance.new("Weld")
	weld.Name = "Weld"
	weld.Part0 = rootPart
	weld.Part1 = Item
	weld.C0 = cframe
	weld.Parent = ParentItem and Item or rootPart
	
	if unanchor then
		Item.Anchored = false
	end
	return weld, cframe
end

scaleModel = function(model, scale)
	local parts = {}
	local function recurse(object)
		if object:IsA("BasePart") then
			table.insert(parts, object)
		end
		for _,child in pairs(object:GetChildren()) do
			recurse(child)
		end
	end
	recurse(model)
	
	local top, bottom, left, right, back, front
	for _, part in pairs(parts) do
		if top == nil or top < part.Position.y then			top = part.Position.y end
		if bottom == nil or bottom > part.Position.y then	bottom = part.Position.y end
		if left == nil or left > part.Position.x then		left = part.Position.x end
		if right == nil or right < part.Position.x then		right = part.Position.x end
		if back == nil or back > part.Position.z then		back = part.Position.z end
		if front == nil or front < part.Position.z then		front = part.Position.z end
	end
	
	local middle = Vector3.new( left+right, top+bottom, back+front )/2
	local minSize = Vector3.new(0.2, 0.2, 0.2)
	
	for _, part in pairs(parts) do
		local foo = part.CFrame.p - middle
		local rotation = part.CFrame - part.CFrame.p
		local newSize = part.Size*scale
		part.FormFactor = "Custom"
		part.Size = newSize
		part.CFrame = CFrame.new( middle + foo*scale ) * rotation
		
		if newSize.x < minSize.x or newSize.y < minSize.y or newSize.z < minSize.z then
			local mesh
			for _, child in pairs(part:GetChildren()) do
				if child:IsA("DataModelMesh") then
					mesh = child
					break
				end
			end
			
			if mesh == nil then
				mesh = Instance.new("BlockMesh", part)
			end
			
			local oScale = mesh.Scale
			local newScale = newSize/minSize * oScale
			if 0.2 < newSize.x then newScale = Vector3.new(1 * oScale.x, newScale.y, newScale.z) end
			if 0.2 < newSize.y then newScale = Vector3.new(newScale.x, 1 * oScale.y, newScale.z) end
			if 0.2 < newSize.z then newScale = Vector3.new(newScale.x, newScale.y, 1 * oScale.z) end
			
			mesh.Scale = newScale
		end
	end
end

function getMass(Obj, Total)
	local newTotal = Total
	local returnTotal = 0
	
	if Obj:IsA("BasePart") then
		newTotal = newTotal + Objects[Obj]
	elseif BodyObjects[Obj.ClassName] then
		Obj:Destroy()
	end
	
	if Obj:GetChildren() and #Obj:GetChildren() > 0 then
		for _,v in pairs(Obj:GetChildren()) do
			returnTotal = returnTotal + getMass(v, newTotal)
		end
	else
		returnTotal = newTotal
	end
	
	return returnTotal
end

function getTargFromCurrent()
	local Current = Current.Part
	if Current:IsA("BasePart") then
		return Current
	elseif Current:findFirstChild("Torso") then
		return Current.Torso
	else
		for _,v in pairs(Current:GetChildren()) do
			if v:IsA("BasePart") then
				return v
			end
		end
	end
end

function Fire(Part, Vec, Inv)
	pcall(function()
		Current.BP:Destroy()
		Current.BP = nil
	end)
	pcall(function()
		Current.BA:Destroy()
		Current.BA = nil
	end)
	pcall(function()
		if Inv then
			Part.Velocity = -((Vec - Torso.Position).unit * Grav * 1.1)
		else
			Part.Velocity = ((Vec - Camera.CoordinateFrame.p).unit * Grav * 1.1)
		end
		Current.Mass = nil
	end)
	Reset()
end

function Reset()
	LS.Parent = nil
	RS.Parent = nil
	
	OrigLS.Parent = Torso
	OrigRS.Parent = Torso
	
	OrigLS.C0 = LS0
	OrigRS.C0 = RS0
end

function Start()
	Cor(function()
		repeat wait(1/30) until LP.Character and LP.Character.Parent == Workspace and LP.Character:findFirstChild("Torso")
		Char = LP.Character
		PlrGui = LP.PlayerGui
		Backpack = LP.Backpack
		Mouse = LP:GetMouse()
		
		for _,v in pairs(Cons) do
			v:disconnect()
		end
		Cons = {}

		Camera = Workspace.CurrentCamera
		LastCamCF = Camera.CoordinateFrame
		AnimJoints = {}
		mDown = false
		Multi = false
		Grabbing = false
		Current = {}
		Alpha = 1

		Head = Char["Head"]
		Torso = Char["Torso"]
		Humanoid = Char["Humanoid"]
		LA = Char["Left Arm"]
		RA = Char["Right Arm"]
		LL = Char["Left Leg"]
		RL = Char["Right Leg"]
		
		OrigLS = Torso["Left Shoulder"]
		OrigRS = Torso["Right Shoulder"]

		for _,v in pairs(Char:GetChildren()) do
			if v.Name == ModID then
				v:Destroy()
			end
		end

		for _,v in pairs(PlrGui:GetChildren()) do
			if v.Name == "PadsGui" then
				v:Destroy()
			end
		end
		
		LS = Instance.new("Weld")
		RS = Instance.new("Weld")

		LS.Name = OrigLS.Name
		LS.Part0 = Torso
		LS.Part1 = LA
		LS.C0 = LS0
		LS.C1 = CFrame.new(0, 0.5, 0,  1, 0, 0,  0, 0, 1,  0, -1, 0)

		RS.Name = OrigRS.Name
		RS.Part0 = Torso
		RS.Part1 = RA
		RS.C0 = RS0
		RS.C1 = CFrame.new(0, 0.5, 0,  1, 0, 0,  0, 0, 1,  0, -1, 0)

		local Pads = MakePads()
		local LPad = Pads.LBase
		local RPad = Pads.RBase

		weldModel(LPad, true, LPad)
		weldModel(RPad, true, RPad)

		local GripWeldL = Instance.new("Weld")
		GripWeldL.Name = "GripWeldL"
		GripWeldL.Part0 = LA
		GripWeldL.Part1 = LPad
		GripWeldL.C0 = CFrame.new(0, -1.05, 0) * CFrame.Angles(0, math.rad(180), 0)
		GripWeldL.Parent = LA

		local GripWeldR = Instance.new("Weld")
		GripWeldR.Name = "GripWeldR"
		GripWeldR.Part0 = RA
		GripWeldR.Part1 = RPad
		GripWeldR.C0 = CFrame.new(0, -1.05, 0) * CFrame.Angles(0, math.rad(180), 0)
		GripWeldR.Parent = RA
		
		local isParts = false

		table.insert(Cons, Mouse.KeyDown:connect(function(Key)
			Key = Key:lower()
			if Key == "z" then
				--Stuff
			elseif Key == "f" then
				local Current = Current.Part
				if Current and Current.Parent ~= nil and not Multi then
					Current:BreakJoints()
				end
			elseif Key == "q" then
				if isParts then
					isParts = false
					for _,v in pairs(Workspace:GetChildren()) do
						if v.Name == "MyPartV" and v:IsA("BasePart") then
							v:Destroy()
						end
					end
				else
					isParts = true
					for i = 1, 50 do
						local Part = Instance.new("Part")
						Part.Color = Color3.new(math.random(), math.random(), math.random())
						Part.Transparency = 0
						Part.Size = Vector3.new(math.random(1, 3), math.random(1, 3), math.random(1, 3))
						Part.Archivable = true
						Part.CanCollide = false
						Part.Material = "Neon"
						Part.Locked = false
						Part.CFrame = Torso.CFrame * CFrame.new(math.random(-15, 15), -1, math.random(-15, 15))
						Part.Anchored = true
						Part.Name = "MyPartV"
						Part.TopSurface = "Smooth"
						Part.BottomSurface = "Smooth"
						Part.Parent = Workspace
					end
				end
			elseif Key == "e" then
				local Targ;
				if Current.Part and Current.Part ~= nil then
					Targ = getTargFromCurrent()
				else
					Targ = LastPart
				end
				if Targ and Targ.Parent ~= nil and not Multi then
					local Ex = Instance.new("Explosion", Workspace)
					Ex.Position = Targ.CFrame.p
					Ex.BlastRadius = 16
					Ex.DestroyJointRadiusPercent = 0.5
				end
			elseif Key == "c" then
				if Current.Part and Current.Part.Parent ~= nil and not Multi then
					local Part = getTargFromCurrent()
					if Part then
						Grabbing = false
						if Mouse.Hit then
							local TargPos = CFrame.new(Camera.CoordinateFrame.p, Mouse.Hit.p) * CFrame.new(0, 0, -1000)
							Fire(Part, TargPos.p)
						else
							Fire(Part, Mouse.Origin.p + Mouse.UnitRay.Direction, true)
						end
					end
				end
			end
		end))

		table.insert(Cons, Mouse.Button1Up:connect(function()
			mDown = false
			if Grabbing == true and Multi == false then
				Grabbing = false
				Reset()
			end
			if Current.Part ~= nil then
				LastPart = getTargFromCurrent()
				Current = {}
			end
		end))

		local function makeLightning(Par, Start, End, Width, Length, RandomScale, ArcScale, Num1)
			local oldParts = {}
			for _,v in pairs(Par:GetChildren()) do
				v.CFrame = CFrame.new(5e5, 5e5, 5e5)
				table.insert(oldParts, v)
			end
			local Distance = (Start-End).Magnitude
			local ArcScale = ArcScale or 1
			local RandomScale = RandomScale or 0
			local Last = Start
			local IterNum = 0

			while Par.Parent do
				IterNum = IterNum + 1
				local New = nil
				if (Last-End).Magnitude < Length then
					New = CFrame.new(End)
				else
					if (End-Last).Magnitude < Length*2 then
						RandomScale = RandomScale*0.5
						ArcScale = ArcScale*0.5
					end
					local Direct = CFrame.new(Last,End)
					New = Direct*CFrame.Angles(math.rad(math.random(-RandomScale/4,RandomScale*ArcScale)),math.rad(math.random(-RandomScale,RandomScale)),math.rad(math.random(-RandomScale,RandomScale)))
					New = New*CFrame.new(0,0,-Length)
				end
				local Trail = nil
				if oldParts[IterNum] then
					Trail = oldParts[IterNum]
					Trail.BrickColor = ((Num1 % 2 == 0) and BrickColor.new("White")) or BrickColor.new("Cyan")
					Trail.Size = Vector3.new(Width, (Last-New.p).Magnitude, Width)
					Trail.CFrame = CFrame.new(New.p, Last)*CFrame.Angles(math.rad(90),0,0)*CFrame.new(0, -(Last-New.p).Magnitude/2, 0)
					oldParts[IterNum] = nil
				else
					Trail = Instance.new("Part")
					Trail.Name = "Part"
					Trail.FormFactor = "Custom"
					Trail.BrickColor = ((Num1 % 2 == 0) and BrickColor.new("White")) or BrickColor.new("White")
					Trail.Transparency = 0
					Trail.Anchored = true
					Trail.CanCollide = false
					Trail.Locked = true
					Trail.BackSurface = "SmoothNoOutlines"
					Trail.BottomSurface = "SmoothNoOutlines"
					Trail.FrontSurface = "SmoothNoOutlines"
					Trail.LeftSurface = "SmoothNoOutlines"
					Trail.RightSurface = "SmoothNoOutlines"
					Trail.TopSurface = "SmoothNoOutlines"
					Trail.Material = "Neon"
					Trail.Size = Vector3.new(Width, (Last-New.p).Magnitude, Width)
					Trail.CFrame = CFrame.new(New.p, Last)*CFrame.Angles(math.rad(90),0,0)*CFrame.new(0, -(Last-New.p).Magnitude/2, 0)
					Trail.Parent = Par
				end
				Last = New.p
				if (Last-End).Magnitude < 1 then
					break
				end
			end
			for _,v in pairs(oldParts) do
				v:Destroy()
			end
		end

		table.insert(Cons, Mouse.Button1Down:connect(function()
			mDown = true
			local Targ = Mouse.Target
			Cor(function()
				if Targ and Objects[Targ] and not Multi then
					Grabbing = true
					Current.Part = Targ
					local Mass = Objects[Targ]
					local ForceNum = 0
					local Hum = nil
					
					for _,v in pairs(Targ:GetChildren()) do
						if BodyObjects[v.ClassName] then
							v:Destroy()
						end
					end
					
					for _,v in pairs(Workspace:GetChildren()) do
						if v:findFirstChild("Humanoid") and v:IsAncestorOf(Targ) then
							Hum = v.Humanoid
							Mass = getMass(v, 0)
							Current.Part = v
							break
						end
					end
					
					Current.Mass = Mass
					
					if not Hum then
						Targ:BreakJoints()
					end
					
					ForceNum = Mass * Grav
					Targ.CanCollide = true
					Targ.Anchored = false
					
					local BP = Instance.new("BodyPosition")
					BP.maxForce = Vector3.new(3 * ForceNum, 3 * ForceNum, 3 * ForceNum)
					BP.Parent = Targ
					
					local Ang = Instance.new("BodyAngularVelocity")
					Ang.Parent = Targ
					
					Current.BP = BP
					Current.BA = Ang
					
					OrigLS.Parent = nil
					OrigRS.Parent = nil
					
					LS.Parent = Torso
					RS.Parent = Torso
					
					LS.C0 = LS0
					RS.C0 = RS0
					
					local DirDot = Mouse.UnitRay.Direction:Dot(Targ.Position - Mouse.Origin.p)
					local BPPos = Vector3.new(0, 0, 0)
					local Vel = Vector3.new(0, 0, 0)
					local Vlev = random() * math.pi
					local RPos = Vector3.new(random() * 2 - 1, cos(Vlev), random() * 2 - 1)
					
					local Ball = Instance.new("Part")
					Ball.Name = "Ball"
					Ball.FormFactor = "Custom"
					Ball.Color = Color3.new(0, 1, 1)
					Ball.Transparency = 0.3
					Ball.Anchored = true
					Ball.CanCollide = false
					Ball.Locked = true
					Ball.BottomSurface, Ball.TopSurface = "Smooth", "Smooth"
					Ball.Size = Vector3.new(0.5, 0.5, 0.5)
					Ball.CFrame = Torso.CFrame * CFrame.new(0, 1, -3)
					Ball.Parent = Char

					if Targ.Name == "MyPartV" then
						Targ.Name = "MyPartF"
					end

					local LightMod = Instance.new("Model", Char)
						
					local Mesh = Instance.new("SpecialMesh")
					Mesh.MeshType = "Sphere"
					Mesh.Parent = Ball
					
					local Size = 0.5
					local Rise = true
					
					while Grabbing and BP and Ang and Targ.Parent ~= nil do
						local BPPos = Mouse.Origin.p + Mouse.UnitRay.Direction * DirDot
						Ang.angularvelocity = Vel
						BP.position = BPPos + RPos
						RPos = Vector3.new(max(-1, min(RPos.x + random() * 0.02 - 0.01, 1)), cos(Vlev), max(-1, min(RPos.z + random() * 0.02 - 0.01, 1)))
						Vel = Vector3.new(max(-1, min(Vel.x + random() * 0.2 - 0.1, 1)), max(-1, min(Vel.y + random() * 0.2 - 0.1, 1)), max(-1, min(Vel.z + random() * 0.2 - 0.1, 1)))
						Vlev = (Vlev + 0.05) % tau
						
						if Hum then
							Hum.Sit = true
						end
						
						if LA.Parent ~= nil and RA.Parent ~= nil then
							local LPos = (LA.CFrame * CFrame.new(0, -1, 0)).p
							local RPos = (RA.CFrame * CFrame.new(0, -1, 0)).p
							if Rise == true then
								if Size < 0.6 then
									Size = Size + 0.05
								else
									Size = Size + 0.1
								end
								if Size >= 2.2 then
									Rise = false
								end
							else
								if Size > 2.1 then
									Size = Size - 0.05
								else
									Size = Size - 0.1
								end
								if Size <= 0.5 then
									Rise = true
								end
							end
							Ball.Size = Vector3.new(Size, Size, Size)
							Ball.CFrame = CFrame.new(LPos:Lerp(RPos, 0.5), Targ.Position) * CFrame.new(0, 0, -2.2)
							LightNum = LightNum + 1
							makeLightning(LightMod, Ball.Position, Targ.Position, 0.2, 4, 50, 1, LightNum)
						elseif Ball.Parent ~= nil then
							Ball:Destroy()
						end
						
						if LS and LS.Parent == Torso then
							LS.C0 = CFrame.new(Vector3.new(-1.5, 0.5, 0), Torso.CFrame:pointToObjectSpace((Targ.CFrame or Torso.CFrame * CFrame.new(-1.5, 0.5, 1)).p))
						end
						if RS and RS.Parent == Torso then
							RS.C0 = CFrame.new(Vector3.new(1.5, 0.5, 0), Torso.CFrame:pointToObjectSpace((Targ.CFrame or Torso.CFrame * CFrame.new(1.5, 0.5, 1)).p))
						end
						RunService.Heartbeat:wait()
					end

					coroutine.resume(coroutine.create(function()
						for i = 0.5, 1, 0.1 do
							for i2,v in pairs(LightMod:GetChildren()) do
								--v.Light.Range = 6-(i*5)
								v.Transparency = i
							end
							wait(1/30)
						end
						LightMod:Destroy()
					end))
					
					if BP and BP.Parent ~= nil then
						BP:Destroy()
					end
					
					if Ang and Ang.Parent ~= nil then
						Ang:Destroy()
					end
					
					pcall(function() Ball:Destroy() end)
				end
			end)
		end))
	end)
end

function Add(Obj)
	if Obj:IsA("BasePart") and not Objects[Obj] and not (Obj.Name == "Base" and Obj.ClassName == "Part") then
		Objects[Obj] = Obj:GetMass()
		Obj.Changed:connect(function(P)
			if P:lower() == "size" and Objects[Obj] and Obj.Parent ~= nil then
				Objects[Obj] = Obj:GetMass()
			end
		end)
	end
end

function Rem(Obj)
	if Objects[Obj] then
		Objects[Obj] = nil
	end
end

function Recursion(Obj)
	ypcall(function()
		Add(Obj)
		if #Obj:GetChildren() > 0 then
			for _,v in pairs(Obj:GetChildren()) do 
				Recursion(v)
			end
		end
	end)
end

Workspace.DescendantAdded:connect(function(Obj)
	Add(Obj)
end)

Workspace.DescendantRemoving:connect(function(Obj)
	Rem(Obj)
end)

for _,v in pairs(Workspace:GetChildren()) do
	Recursion(v)
end

Start()

if LP.Name == PlrName then
	LP.CharacterAdded:connect(Start)
end

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
  return Color3.new(0, 0, 0)
 elseif section < 2 then
  return Color3.new(0, 0, 0)
 else
  return Color3.new(0, 0, 0)
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
		part.BrickColor = BrickColor.new(107, 0, 107)
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
end)
--------------------------------------------------------------------------------------------
local wee = Instance.new("TextButton",b)
		wee.Size = UDim2.new(1,1,0,30)
		wee.Position = UDim2.new(0,0,0,90)
		wee.BorderSizePixel = go
		wee.BackgroundTransparency = .2
		wee.BackgroundColor3 = Color3.new(200, 0, 0) 
		wee.ZIndex = 2
		wee.Draggable = false
		wee.Active = true
		wee.Text = "Bong"
		wee.Parent = e
 		wee.MouseButton1Down:connect(function()
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
local shot = 0
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
local stanceToggle = "Bong"
math.randomseed(os.time())
hum.WalkSpeed = 8
----------------------------------------------------
----------------------------------------------------
----------------------------------------------------
Debounces = {
CanPuff = true;
CanJoke = true;
Bong = true;
Pipe = false;
Blunt = false;
NoIdl = false;
on = false;
}

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
z = Instance.new("Sound",char)
z.SoundId = "rbxassetid://143065500"
z.Looped = true
z.Pitch = .94
z.Volume = 1
wait(1)
z:Play()
----------------------------------------------------
pa = Instance.new("Part", torso)
pa.Name = "Fat"
pa.Transparency = 1
pa.CanCollide = false
pa.Anchored = false
pa.Locked = true
pa.Size = Vector3.new(1,1,1)
weld = Instance.new("Weld", pa)
weld.Part0 = pa
weld.Part1 = torso
weld.C0 = CFrame.new(0, 0, -1.5)
weld.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-50), math.rad(0), math.rad(0))
s = Instance.new("Smoke", pa)
s.Color = Color3.new(1,1,1)
s.Opacity = 1
s.RiseVelocity = 4
s.Enabled = false
----------------------------------------------------
local m = Instance.new("Model")
m.Name = "Bong"
p1 = Instance.new("Part", m)
p1.Material = "Neon"
p1.BrickColor = BrickColor.new("Black")
p1.Name = "Lip"
p1.FormFactor = Enum.FormFactor.Symmetric
p1.Size = Vector3.new(1, 1, 1)
p1.CFrame = CFrame.new(28.499649, 10.9996414, -11.4994812, -0.999972343, 6.21378422e-006, -0.00049701333, -0.000477582216, -5.70863485e-005, 0.999959588, -1.02631748e-005, 0.999939203, 2.50376761e-005)
p1.CanCollide = false
p1.Locked = true
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshId = "http://www.roblox.com/asset/?id=3270017"
b1.TextureId = ""
b1.MeshType = Enum.MeshType.FileMesh
b1.Name = "Mesh"
p2 = Instance.new("Part", m)
p2.Material = "Neon"
p2.BrickColor = BrickColor.new("Earth green")
p2.Material = Enum.Material.SmoothPlastic
p2.Transparency = 0.20000000298023
p2.Name = "Tube"
p2.FormFactor = Enum.FormFactor.Symmetric
p2.Size = Vector3.new(1, 3, 1)
p2.CFrame = CFrame.new(28.4998627, 9.49954987, -11.4992342, 0.000220132133, -5.49961114e-005, 0.999972463, -7.23355697e-005, 0.999959707, 3.55862139e-005, -0.999939203, -0.000104385108, 0.000236587104)
p2.CanCollide = false
p2.Locked = true
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("CylinderMesh", p2)
b2.Name = "Mesh"
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Earth green")
p3.Name = "Devil's Lettuce"
p3.Size = Vector3.new(1, 1.20000005, 1)
p3.CFrame = CFrame.new(27.1619816, 8.50439644, -11.4991903, 0.754621029, -0.656118929, 2.5186062e-005, 0.656095922, 0.754624128, -5.45315925e-005, 8.17945693e-006, 2.26873817e-005, 0.999939263)
p3.CanCollide = false
p3.Locked = true
b3 = Instance.new("SpecialMesh", p3)
b3.MeshId = "http://www.roblox.com/asset/?id=1290033"
b3.TextureId = "http://www.roblox.com/asset/?id=1290030"
b3.MeshType = Enum.MeshType.FileMesh
b3.VertexColor = Vector3.new(0.5, 70, 0)
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.199999988, 0.199999988, 0.199999988)
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Black")
p4.Name = "Bowl"
p4.FormFactor = Enum.FormFactor.Symmetric
p4.Size = Vector3.new(1, 1, 1)
p4.CFrame = CFrame.new(27.243679, 8.40425396, -11.4991856, -0.754621029, 0.656118929, 0.000100085585, -0.656095922, -0.754624128, 1.05888903e-005, 9.10690069e-005, -2.26873672e-005, 0.999939263)
p4.CanCollide = false
p4.Locked = true
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("SpecialMesh", p4)
b4.MeshId = "http://www.roblox.com/asset/?id=19380188"
b4.TextureId = ""
b4.MeshType = Enum.MeshType.FileMesh
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.400000006, 0.400000006, 0.400000006)
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Black")
p5.Material = Enum.Material.SmoothPlastic
p5.Name = "Stem"
p5.FormFactor = Enum.FormFactor.Symmetric
p5.Size = Vector3.new(1, 1, 1)
p5.CFrame = CFrame.new(27.8998299, 7.64966011, -11.4992504, -0.754621029, -0.656118929, -3.68308465e-005, -0.656095922, 0.754624128, 4.44071593e-005, 7.25091377e-006, 2.26873672e-005, -0.999939263)
p5.CanCollide = false
p5.Locked = true
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("CylinderMesh", p5)
b5.Name = "Mesh"
b5.Scale = Vector3.new(1, 1.79999995, 0.200000003)
p6 = Instance.new("Part", m)
p6.Material = "Neon"
p6.BrickColor = BrickColor.new("Earth green")
p6.Material = Enum.Material.SmoothPlastic
p6.Transparency = 0.20000000298023
p6.Name = "Bong"
p6.FormFactor = Enum.FormFactor.Symmetric
p6.Size = Vector3.new(1, 1, 1)
p6.CFrame = CFrame.new(28.5000229, 7.34961605, -11.4990406, -0.000452600536, 0.00015476234, -0.999972343, -1.39447293e-005, 0.999959707, 0.000174246117, 0.999939203, -1.80333263e-005, -0.000469060004)
p6.CanCollide = false
p6.Locked = true
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Sphere
b6.Name = "Mesh"
b6.Scale = Vector3.new(1.79999995, 1.79999995, 1.79999995)
p7 = Instance.new("Part", m)
p7.Material = "Neon"
p7.BrickColor = BrickColor.new("Pastel Blue")
p7.Material = Enum.Material.SmoothPlastic
p7.Name = "Water"
p7.FormFactor = Enum.FormFactor.Symmetric
p7.Size = Vector3.new(1, 1, 1)
p7.CFrame = CFrame.new(28.5000248, 7.25962019, -11.4990396, -0.000452600565, 0.000154762354, -0.999972343, -1.39616022e-005, 0.999959707, 0.000174246117, 0.999939322, -1.80501975e-005, -0.000469060033)
p7.CanCollide = false
p7.Locked = true
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Sphere
b7.Name = "Mesh"
b7.Scale = Vector3.new(1.5999999, 1.39999986, 1.5999999)
w1 = Instance.new("Weld", p1)
w1.Name = "Tube_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(28.505003, 11.5008535, -10.9858503, -0.999999881, -0.000485179946, -1.08338909e-007, -8.74227695e-008, -4.31100962e-005, 1, -0.000485179946, 0.999999881, 4.31100489e-005)
w1.Part1 = p2
w1.C1 = CFrame.new(-11.5057898, -9.49978542, -28.4976711, 0.000226438046, -8.63153255e-005, -1, -4.31497574e-005, 1, -8.63251043e-005, 1, 4.31693043e-005, 0.000226438046)
w2 = Instance.new("Weld", p2)
w2.Name = "Devil's Lettuce_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(-11.5057898, -9.49978542, -28.4976711, 0.000226438046, -8.63153255e-005, -1, -4.31497574e-005, 1, -8.63251043e-005, 1, 4.31693043e-005, 0.000226438046)
w2.Part1 = p3
w2.C1 = CFrame.new(-26.0778522, 11.4040451, 11.4999485, 0.75464958, 0.656128049, 1.23602822e-005, -0.656128049, 0.75464958, 4.29936699e-005, 1.88816703e-005, -4.05550818e-005, 1)
w3 = Instance.new("Weld", p3)
w3.Name = "Bowl_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(-26.0778522, 11.4040451, 11.4999485, 0.75464958, 0.656128049, 1.23602822e-005, -0.656128049, 0.75464958, 4.29936699e-005, 1.88816703e-005, -4.05550818e-005, 1)
w3.Part1 = p4
w3.C1 = CFrame.new(26.0749397, -11.5332241, 11.4973526, -0.75464958, -0.656128049, 8.68942152e-005, 0.656128049, -0.75464958, -4.29936554e-005, 9.37840305e-005, 2.45685878e-005, 1)
w4 = Instance.new("Weld", p4)
w4.Name = "Stem_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(26.0749397, -11.5332241, 11.4973526, -0.75464958, -0.656128049, 8.68942152e-005, 0.656128049, -0.75464958, -4.29936554e-005, 9.37840305e-005, 2.45685878e-005, 1)
w4.Part1 = p5
w4.C1 = CFrame.new(26.0740185, 12.5332232, -11.4995804, -0.75464958, -0.656128049, 3.07102709e-006, -0.656128049, 0.75464958, 4.29936554e-005, -3.05268914e-005, 3.04301557e-005, -1)
w5 = Instance.new("Weld", p5)
w5.Name = "Bong_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(26.0740185, 12.5332232, -11.4995804, -0.75464958, -0.656128049, 3.07102709e-006, -0.656128049, 0.75464958, 4.29936554e-005, -3.05268914e-005, 3.04301557e-005, -1)
w5.Part1 = p6
w5.C1 = CFrame.new(11.5130777, -7.35474873, 28.493494, -0.000458917581, 2.98023224e-008, 0.99999994, 0.000166644895, 1, 2.98023224e-008, -0.999999881, 0.000166644895, -0.000458917581)
w6 = Instance.new("Weld", p6)
w6.Name = "Water_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(11.5130777, -7.35474873, 28.493494, -0.000458917581, 2.98023224e-008, 0.99999994, 0.000166644895, 1, 2.98023224e-008, -0.999999881, 0.000166644895, -0.000458917581)
w6.Part1 = p7
w6.C1 = CFrame.new(11.5130777, -7.26474905, 28.4935093, -0.000458917581, 2.98023224e-008, 0.99999994, 0.000166644895, 1, 2.98023224e-008, -0.999999881, 0.000166644895, -0.000458917581)
w7 = Instance.new("Weld", p7)
w7.Name = "Head_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(11.5130777, -7.26474905, 28.4935093, -0.000458917581, 2.98023224e-008, 0.99999994, 0.000166644895, 1, 2.98023224e-008, -0.999999881, 0.000166644895, -0.000458917581)
m.Parent = torso
m:MakeJoints()
----------------------------------------------------
weld2 = Instance.new("Weld", torso.Bong)
weld2.Part0 = torso
weld2.Part1 = torso.Bong.Tube
weld2.C0 = CFrame.new(0, -.5, -1.5)
weld2.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
----------------------------------------------------
local m2 = Instance.new("Model")
m2.Name = "Blunt"
p1 = Instance.new("Part", m2)
p1.Transparency = 1
p1.BrickColor = BrickColor.new("CGA brown")
p1.Name = "Handle"
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p1.CFrame = CFrame.new(30.5498123, 9.24952984, -12.2989969, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p1.CanCollide = false
p1.Locked = true
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Cylinder
b1.Name = "Mesh"
p2 = Instance.new("Part", m2)
p2.Transparency = 1
p2.BrickColor = BrickColor.new("CGA brown")
p2.Name = "Joint11"
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p2.CFrame = CFrame.new(30.5498104, 9.24934578, -12.4989843, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p2.CanCollide = false
p2.Locked = true
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Cylinder
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.300000012, 1, 1)
p3 = Instance.new("Part", m2)
p3.Transparency = 1
p3.BrickColor = BrickColor.new("CGA brown")
p3.Name = "Joint10"
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p3.CFrame = CFrame.new(30.5498104, 9.24934673, -12.5489807, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p3.CanCollide = false
p3.Locked = true
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("SpecialMesh", p3)
b3.MeshType = Enum.MeshType.Cylinder
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.300000012, 1, 1)
p4 = Instance.new("Part", m2)
p4.Transparency = 1
p4.BrickColor = BrickColor.new("CGA brown")
p4.Name = "Joint9"
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p4.CFrame = CFrame.new(30.5498104, 9.24934673, -12.5989771, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p4.CanCollide = false
p4.Locked = true
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("SpecialMesh", p4)
b4.MeshType = Enum.MeshType.Cylinder
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.300000012, 1, 1)
p5 = Instance.new("Part", m2)
p5.Transparency = 1
p5.BrickColor = BrickColor.new("CGA brown")
p5.Name = "Joint8"
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p5.CFrame = CFrame.new(30.5498104, 9.24934769, -12.6489735, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p5.CanCollide = false
p5.Locked = true
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("SpecialMesh", p5)
b5.MeshType = Enum.MeshType.Cylinder
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.300000012, 1, 1)
p6 = Instance.new("Part", m2)
p6.Transparency = 1
p6.BrickColor = BrickColor.new("CGA brown")
p6.Name = "Joint7"
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p6.CFrame = CFrame.new(30.5498104, 9.24934769, -12.6989698, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p6.CanCollide = false
p6.Locked = true
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Cylinder
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.300000012, 1, 1)
p7 = Instance.new("Part", m2)
p7.Transparency = 1
p7.BrickColor = BrickColor.new("CGA brown")
p7.Name = "Joint6"
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p7.CFrame = CFrame.new(30.5498104, 9.24934864, -12.7489662, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p7.CanCollide = false
p7.Locked = true
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Cylinder
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.300000012, 1, 1)
p8 = Instance.new("Part", m2)
p8.Transparency = 1
p8.BrickColor = BrickColor.new("CGA brown")
p8.Name = "Joint5"
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p8.CFrame = CFrame.new(30.5498104, 9.24934864, -12.7989626, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p8.CanCollide = false
p8.Locked = true
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p8)
b8.MeshType = Enum.MeshType.Cylinder
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.300000012, 1, 1)
p9 = Instance.new("Part", m2)
p9.Transparency = 1
p9.BrickColor = BrickColor.new("CGA brown")
p9.Name = "Joint4"
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p9.CFrame = CFrame.new(30.5498104, 9.24934959, -12.848959, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p9.CanCollide = false
p9.Locked = true
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("SpecialMesh", p9)
b9.MeshType = Enum.MeshType.Cylinder
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.300000012, 1, 1)
p10 = Instance.new("Part", m2)
p10.Transparency = 1
p10.BrickColor = BrickColor.new("CGA brown")
p10.Name = "Joint3"
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p10.CFrame = CFrame.new(30.5498104, 9.24934959, -12.8989553, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p10.CanCollide = false
p10.Locked = true
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("SpecialMesh", p10)
b10.MeshType = Enum.MeshType.Cylinder
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.300000012, 1, 1)
p11 = Instance.new("Part", m2)
p11.Transparency = 1
p11.BrickColor = BrickColor.new("CGA brown")
p11.Name = "Joint3"
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p11.CFrame = CFrame.new(30.5498104, 9.24935055, -12.9489517, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p11.CanCollide = false
p11.Locked = true
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("SpecialMesh", p11)
b11.MeshType = Enum.MeshType.Cylinder
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.300000012, 1, 1)
p12 = Instance.new("Part", m2)
p12.Transparency = 1
p12.BrickColor = BrickColor.new("CGA brown")
p12.Name = "Joint2"
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p12.CFrame = CFrame.new(30.5498104, 9.24935055, -12.9989481, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p12.CanCollide = false
p12.Locked = true
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b12 = Instance.new("SpecialMesh", p12)
b12.MeshType = Enum.MeshType.Cylinder
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.300000012, 1, 1)
p13 = Instance.new("Part", m2)
p13.Transparency = 1
p13.BrickColor = BrickColor.new("CGA brown")
p13.Name = "Joint1"
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p13.CFrame = CFrame.new(30.5498104, 9.2493515, -13.0489445, -6.35227434e-006, -1.18419912e-005, 0.999973059, -7.23406483e-005, 0.999959469, -7.5179214e-006, -0.999939501, -0.000104367107, 1.01497435e-005)
p13.CanCollide = false
p13.Locked = true
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b13 = Instance.new("SpecialMesh", p13)
b13.MeshType = Enum.MeshType.Cylinder
b13.Name = "Mesh"
b13.Scale = Vector3.new(0.300000012, 1, 1)
w1 = Instance.new("Weld", p1)
w1.Name = "Joint11_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(-12.2991934, -9.25106144, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w1.Part1 = p2
w1.C1 = CFrame.new(-12.4991941, -9.25089169, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w2 = Instance.new("Weld", p2)
w2.Name = "Joint10_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(-12.4991941, -9.25089169, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w2.Part1 = p3
w2.C1 = CFrame.new(-12.5491943, -9.25089645, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w3 = Instance.new("Weld", p3)
w3.Name = "Joint9_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(-12.5491943, -9.25089645, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w3.Part1 = p4
w3.C1 = CFrame.new(-12.5991945, -9.25090027, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w4 = Instance.new("Weld", p4)
w4.Name = "Joint8_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-12.5991945, -9.25090027, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w4.Part1 = p5
w4.C1 = CFrame.new(-12.6491947, -9.25090504, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w5 = Instance.new("Weld", p5)
w5.Name = "Joint7_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(-12.6491947, -9.25090504, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w5.Part1 = p6
w5.C1 = CFrame.new(-12.6991949, -9.25090885, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w6 = Instance.new("Weld", p6)
w6.Name = "Joint6_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(-12.6991949, -9.25090885, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w6.Part1 = p7
w6.C1 = CFrame.new(-12.7491951, -9.25091362, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w7 = Instance.new("Weld", p7)
w7.Name = "Joint5_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(-12.7491951, -9.25091362, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w7.Part1 = p8
w7.C1 = CFrame.new(-12.7991953, -9.25091743, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w8 = Instance.new("Weld", p8)
w8.Name = "Joint4_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(-12.7991953, -9.25091743, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w8.Part1 = p9
w8.C1 = CFrame.new(-12.8491955, -9.2509222, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w9 = Instance.new("Weld", p9)
w9.Name = "Joint3_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(-12.8491955, -9.2509222, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w9.Part1 = p10
w9.C1 = CFrame.new(-12.8991957, -9.25092602, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w10 = Instance.new("Weld", p10)
w10.Name = "Joint3_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(-12.8991957, -9.25092602, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w10.Part1 = p11
w10.C1 = CFrame.new(-12.9491959, -9.25093079, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w11 = Instance.new("Weld", p11)
w11.Name = "Joint2_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(-12.9491959, -9.25093079, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w11.Part1 = p12
w11.C1 = CFrame.new(-12.9991961, -9.2509346, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w12 = Instance.new("Weld", p12)
w12.Name = "Joint1_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(-12.9991961, -9.2509346, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
w12.Part1 = p13
w12.C1 = CFrame.new(-13.0491962, -9.25093937, -30.5498657, -4.37113883e-008, -8.63075256e-005, -1, 0, 1, -8.63075256e-005, 1, -3.77262197e-012, -4.37113883e-008)
m2.Parent = larm
m2:MakeJoints()
----------------------------------------------------
weld3 = Instance.new("Weld", larm.Blunt)
weld3.Part0 = larm
weld3.Part1 = p1
weld3.C0 = CFrame.new(0, 0, 0)
weld3.C1 = CFrame.new(-.4, -.8, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(130))
----------------------------------------------------
local m3 = Instance.new("Model")
m3.Name = "Pipe"
p1 = Instance.new("Part", m3)
p1.Transparency = 1
p1.BrickColor = BrickColor.new("Lime green")
p1.Name = "Ganja"
p1.Size = Vector3.new(1, 1.20000005, 1)
p1.CFrame = CFrame.new(34.4998474, 9.47253323, -12.1971197, 0.999142408, 0.0395895876, 0.00966008008, -0.0395250656, 0.999140501, -0.00866904482, -0.00997729599, 0.00824850239, 0.999855876)
p1.CanCollide = false
p1.Locked = true
b1 = Instance.new("SpecialMesh", p1)
b1.MeshId = "http://www.roblox.com/asset/?id=1290033"
b1.TextureId = "http://www.roblox.com/asset/?id=1290030"
b1.MeshType = Enum.MeshType.FileMesh
b1.Name = "Mesh"
b1.VertexColor = Vector3.new(1, 1, 0)
b1.Scale = Vector3.new(0.25, 0.25, 0.25)
p2 = Instance.new("Part", m3)
p2.Transparency = 1
p2.BrickColor = BrickColor.new("Reddish brown")
p2.Name = "Bowl"
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.200000003, 0.600000024, 0.200000003)
p2.CFrame = CFrame.new(34.5002136, 9.30045128, -12.1985321, 0.999142408, -0.0395896509, -0.00965970568, -0.0395250618, -0.999140382, 0.00867650099, -0.0099772159, -0.0082559688, -0.999855697)
p2.CanCollide = false
p2.Locked = true
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p2)
b2.MeshId = "http://www.roblox.com/asset/?id=1038653"
b2.TextureId = "http://www.roblox.com/asset/?id=63422869"
b2.MeshType = Enum.MeshType.FileMesh
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.5, 0.75, 0.5)
p3 = Instance.new("Part", m3)
p3.Transparency = 1
p3.BrickColor = BrickColor.new("Reddish brown")
p3.Name = "Handle"
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.200000003, 1.29999995, 0.200000003)
p3.CFrame = CFrame.new(34.4998512, 9.09950542, -13.0488882, -0.999973059, -6.22216612e-006, 1.18450553e-005, 7.51431071e-006, 1.40070915e-005, -0.999959469, -1.02808699e-005, -0.999939501, 1.80210918e-005)
p3.CanCollide = false
p3.Locked = true
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("CylinderMesh", p3)
b3.Name = "Mesh"
w1 = Instance.new("Weld", p1)
w1.Name = "Bowl_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(-34.2188034, -10.7307339, 11.9460506, 0.999168873, -0.0395192951, -0.00998879783, 0.0396024287, 0.999181271, 0.00826664828, 0.00965392869, -0.00865535904, 0.999915898)
w1.Part1 = p2
w1.C1 = CFrame.new(-34.2259827, 10.5586996, -11.9460554, 0.999168873, -0.0395192914, -0.00998871867, -0.0396024957, -0.999181211, -0.00827411562, -0.00965355337, 0.00866281614, -0.999915838)
w2 = Instance.new("Weld", p2)
w2.Name = "Handle_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(-34.2259827, 10.5586996, -11.9460554, 0.999168873, -0.0395192914, -0.00998871867, -0.0396024957, -0.999181211, -0.00827411562, -0.00965355337, 0.00866281614, -0.999915838)
w2.Part1 = p3
w2.C1 = CFrame.new(34.5000114, -13.0499754, 9.09998798, -1, -3.60887031e-009, -8.74227766e-008, 8.74227766e-008, 4.37113883e-008, -1, 3.60887409e-009, -1, -4.37113883e-008)
w3 = Instance.new("Weld", p3)
w3.Name = "Handle_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(34.5000114, -13.0499754, 9.09998798, -1, -3.60887031e-009, -8.74227766e-008, 8.74227766e-008, 4.37113883e-008, -1, 3.60887409e-009, -1, -4.37113883e-008)
m3.Parent = larm
m3:MakeJoints()
----------------------------------------------------
weld4 = Instance.new("Weld", larm.Pipe)
weld4.Part0 = larm
weld4.Part1 = p3
weld4.C0 = CFrame.new(0, 0, 0)
weld4.C1 = CFrame.new(-.8, .7, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40))
----------------------------------------------------
local m4 = Instance.new("Model")
m4.Name = "Match"
p1 = Instance.new("Part", m4)
p1.CanCollide = false
p1.Transparency = 1
p1.BrickColor = BrickColor.new("Brown")
p1.Material = "Marble"
p1.Name = "Match"
p1.Size = Vector3.new(1, 2.4, 1)
p1.CFrame = CFrame.new(-8.20000362, 1.18600059, -10.0000038, 1.00000048, -0.00011438923, 0.000152289867, 0.000114176073, 0.999999344, 0.00107795233, -0.000152289867, -0.00107795768, 0.999999762)
b1 = Instance.new("BlockMesh", p1)
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.14, 1, 0.14)
p2 = Instance.new("Part", m4)
p2.CanCollide = false
p2.Transparency = 1
p2.BrickColor = BrickColor.new("Really black")
p2.Shape = "Ball"
p2.Material = "Sand"
p2.Name = "MatchHead"
p2.Size = Vector3.new(1, 1, 1)
p2.CFrame = CFrame.new(-8.20000267, 2.48600006, -10.0000038, 1.00000048, -0.000109304514, -3.49245965e-009, 0.000109255525, 0.999999404, 0.00103000901, 1.41153578e-008, -0.00103003171, 0.999999821)
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = "Sphere"
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.3, 0.6, 0.3)
x1 = Instance.new("Fire",p2)
x1.Heat = 4
x1.Size = 2
x1.Enabled = false
x1.Color = Color3.new(236, 139, 70)
x1.SecondaryColor = Color3.new(0, 0, 0)
w1 = Instance.new("Weld", p2)
w1.Part0 = p1
w1.C0 = CFrame.new(8.19834042, -1.19771659, 9.99996376, 1, 0.00011420052, -0.000152360211, -0.000114364695, 0.999999404, -0.00107794593, 0.000152237015, 0.00107796339, 0.999999404)
w1.Part1 = p2
w1.C1 = CFrame.new(8.19972706, -2.49719477, 9.99743366, 1, 0.000109279979, -5.62802924e-008, -0.000109279979, 0.999999464, -0.00103001995, -5.62802924e-008, 0.00103001995, 0.999999464)
m4.Parent = rarm
m4:MakeJoints()
----------------------------------------------------
weld5 = Instance.new("Weld", p1)
weld5.Part0 = p1
weld5.Part1 = rarm
weld5.C0 = CFrame.new(0, 0, 0)
weld5.C1 = CFrame.new(.2, -.8, .3) * CFrame.Angles(math.rad(-150), math.rad(0), math.rad(0))
----------------------------------------------------
function Burn()
local bk=torso.Bong["Devil's Lettuce"].Mesh
bk.VertexColor=Vector3.new(0,0,0)
local pl=Instance.new("PointLight",bk.Parent)
pl.Brightness=0 pl.Color=Color3.new(1,0,0)
for i=1,50 do wait()bk.VertexColor=bk.VertexColor+Vector3.new(.05,0,0)pl.Brightness=pl.Brightness+0.05 end
for i=1,50 do wait()bk.VertexColor=bk.VertexColor-Vector3.new(.05,0,0)pl.Brightness=pl.Brightness-0.05 end
pl:Remove()
end
----------------------------------------------------
function Burn2()
local bk=larm.Pipe.Ganja.Mesh
bk.VertexColor=Vector3.new(0,0,0)
local pl=Instance.new("PointLight",bk.Parent)
pl.Brightness=0 pl.Color=Color3.new(1,0,0)
for i=1,50 do wait()bk.VertexColor=bk.VertexColor+Vector3.new(.05,0,0)pl.Brightness=pl.Brightness+0.05 end
for i=1,50 do wait()bk.VertexColor=bk.VertexColor-Vector3.new(.05,0,0)pl.Brightness=pl.Brightness-0.05 end
pl:Remove()
end
----------------------------------------------------
function Burn3()
local brn=larm.Blunt.Joint1
brn.BrickColor = BrickColor.new("Dusty rose")
wait(.5)
brn.BrickColor = BrickColor.new("Bright red")
wait(.5)
brn.BrickColor = BrickColor.new("Really red")
wait(1)
brn.BrickColor = BrickColor.new("Black")
wait(.5)
brn.BrickColor = BrickColor.new("Really black")
wait(1)
brn.BrickColor = BrickColor.new("White")
end
----------------------------------------------------
function Match1()
        for i = 1, 10 do wait()
                for i,v in pairs(m4:GetChildren()) do
                        if v:IsA("Part") then
                                v.Transparency = v.Transparency - 0.1
                        end
                end
        end
        x1.Enabled = true
end
----------------------------------------------------
function Match2()
        for i = 1, 10 do wait()
                for i,v in pairs(m4:GetChildren()) do
                        if v:IsA("Part") then
                                v.Transparency = v.Transparency + 0.1
                        end
                end
        end
        x1.Enabled = false
end
----------------------------------------------------
print("snoop dawg motherfiker")--Dun change plox
----------------------------------------------------
function Snoop()
pits = {0.7, 0.75, 0.8, 0.85, 0.9, 0.95, 1}

if math.random(1,3) == 1 then
cgh = Instance.new("Sound",hed)
cgh.SoundId = "rbxassetid://186581757"
cgh.Pitch = pits[math.random(1,#pits)]
cgh.Volume = 1
wait(.1)
cgh:Play()
end

frogSequence = {177231086,177235819,177231110,177231125,177235637,177231141,177231148,177231162,177231174,177231186}
snoopSequence = {175425918,175425940,175425986,175426013,175426270,175426298,175426373,175426397,175426407,175426432,175426443,175426561,175426586,175426607,175426620,175426638,175426653,175426666,175426691,175426764,175426777,175426972,175426988,175426999,175427017,175427038,175427054,175427092,175427110,175427137,175427148,175427177}

fatboysraidmcdonalds = {
        SelectFromTable = function(tab)
                if #tab == 0 then
                        return nil
                else
                        return tab[math.random(1,#tab)]
                end
        end,
        ["Clamp"] = function(n,a,b)
                n = tonumber(n or 0) or 0
                a = tonumber(a or -math.huge) or -math.huge
                b = tonumber(b or math.huge) or math.huge
                if a > b then
                        a,b = b,a
                end
                return math.max(a,math.min(b,n))
        end,
        ["Slerp"] = function(val)
                val = fatboysraidmcdonalds.Clamp(val,0,1)
                local input = math.pi/2 + (val*math.pi);
                local sine = math.sin(input);
                local scale = -sine/2;
                return 0.5 + scale;
        end,
        ["Bounce"] = function(val)
                val = val%2
                if val <= 1 then
                        return val
                else
                        return 2 - val
                end
        end,
        ["Camera"] = {
                ["Smooth"] = function(t)
                        local start = tick()
                        local now = start
                        local targ = start + t
                        local Diff = now - start
                        local cam = Workspace.CurrentCamera
                        local orig = cam.FieldOfView
                        local diff,distance,offset
                        if orig >= 70 then
                                distance = 50
                                offset = orig - 70
                                diff = offset/distance
                        else
                                distance = 120 - orig
                                offset = 0
                                diff = 0
                        end
                        local speed = 0.5 + (math.random()*1.5)
                        while now <= targ do
                                cam.FieldOfView = orig + (fatboysraidmcdonalds.Slerp(fatboysraidmcdonalds.Bounce(diff + (Diff*speed))) * distance)
                                wait()
                                now = tick()
                                Diff = now - start
                        end
                        cam.FieldOfView = orig
                        return Diff
                end,
                ["Headache"] = function(t)
                        local now = tick()
                        local targ = tick() + t
                        local cam = Workspace.CurrentCamera
                        local fixes = {
                                ["FieldOfView"] = cam.FieldOfView,
                                ["TiltUnits"] = 0,
                        }
                        while now <= targ do
                                local fov = 60 + math.random()*60
                                local pan = -8 + (math.random()*16)
                                local tilt = -9 + (math.random()*18)
                                local roll = (-math.pi/2) + (math.random()*(math.pi*4))
                                fixes.TiltUnits = fixes.TiltUnits + tilt
                                cam.FieldOfView = fov
                                cam:TiltUnits(tilt)
                                wait()
                                now = tick()
                        end
                        cam.FieldOfView = fixes.FieldOfView
                        cam:TiltUnits(-fixes.TiltUnits)
                        return t + (now - targ)
                end
        },
        ["Control"] = function(t,switch)
                switch = switch == nil and true or switch
                local phase = math.min((tonumber(t or 10) or 10),math.random() + (switch and 2 or 0))
                local pick
                if switch then
                        pick = fatboysraidmcdonalds.Camera.Smooth
                else
                        pick = {}
                        for i,v in pairs(fatboysraidmcdonalds.Camera) do
                                if i ~= "Smooth" then
                                        table.insert(pick,v)
                                end
                        end
                        pick = fatboysraidmcdonalds.SelectFromTable(pick)
                end
                local offset = pick(phase)
                t = t - offset
                if t >= 1 then
                        fatboysraidmcdonalds.Control(t,not switch)
                elseif t > 0 then
                        fatboysraidmcdonalds.Control(t,false)
                end
        end,
        ["Snoop"] = function(t)
                local snoopy = Instance.new("Part")
                snoopy.Anchored = true
                snoopy.Locked = true
                snoopy.CanCollide = false
                snoopy.FormFactor = "Custom"
                snoopy.Transparency = 1
                snoopy.Size = Vector3.new(2,2,1)
                local lol = Instance.new("BillboardGui")
                lol.Name = "anim"
                lol.Adornee = lol.Parent
                lol.AlwaysOnTop = false
                lol.Size = UDim2.new(1.5,0,1.5,0)
                lol.SizeOffset = Vector2.new(-0.5,-0.5)
                lol.Parent = snoopy
                local cam = Workspace.CurrentCamera
                local function Pos(p)
                        return p + cam.Focus.p
                end
                local function newSnoop(tiem)
                        Spawn(function()
                                local new = snoopy:Clone()
                                local anim = new:WaitForChild("anim")
                                animGui(anim,snoopSequence,0.05)
                                local tack = tick()
                                local start = tack
                                local wow = tack*(((math.random()*2)-1)*57)
                                local s,c,r = math.sin(wow)*math.random(200,225)*0.01,math.cos(wow)*math.random(175,200)*0.01,-1 + (math.random()*2)
                                local dist = 10
                                local xp,yp,zp = dist*-s,dist*-r,dist*-c
                                local xe,ye,ze = dist*s,dist*r,dist*c
                                local pos,targ = Vector3.new(xp,yp,zp),Vector3.new(xe,ye,ze)
                                new.CFrame = Pos(CFrame.new(pos))
                                new.Parent = cam
                                tiem = tack + tiem
                                while tack <= tiem do
                                        local diff = fatboysraidmcdonalds.Clamp((tack-start)/(tiem-start),0,1)
                                        new.CFrame = Pos(CFrame.new(pos + ((targ-pos)*diff)))
                                        wait()
                                        tack = tick()
                                end
                                new.CFrame = Pos(CFrame.new(targ))
                                new:destroy()
                        end)
                end
                local now = tick()
                local targ = now + t
                while now <= targ do
                        local diff = targ - now
                        newSnoop(math.min(diff,0.75 + math.random()*0.5))
                        wait()
                        now = tick()
                end
        end,
        ["Illuminati"] = function(t,frame)
        local decal = e
                local audio = 168907893
                local img = Instance.new("ImageLabel",frame)
                img.BackgroundTransparency = 1
                img.BorderSizePixel = 0
                img.ImageTransparency = 0.5
                img.ZIndex = 10
                img.Size = UDim2.new(0.1,0,0.1,0)
                img.Position = UDim2.new(0.45,0,0.45,0)
                img.Image = "http://www.roblox.com/asset/?id="..tostring(decal)
                local sound = Instance.new("Sound",img)                
                sound.Volume = 0.75
                sound.Looped = true
                sound.PlayOnRemove = false
                sound.SoundId = "http://www.roblox.com/asset/?id="..tostring(audio)
                sound:Play()
                img:TweenSizeAndPosition(UDim2.new(1,0,1,0),UDim2.new(0,0,0,0),"Out","Linear",t+1.5)
                img.Changed:connect(function(p)
                        if p ~= "ImageTransparency" then
                                local x = img.Size.X.Scale
                                img.ImageTransparency = 1 - x
                                sound.Volume = x
                        end
                end)
        end
}

function animGui(lol,sequence,speed)
        local img = Instance.new("ImageLabel",lol)
        img.BackgroundTransparency = 1
        img.BorderSizePixel = 0
        img.Size = UDim2.new(2.25,0,5,0)
        img.Position = UDim2.new(0,0,-2.5,0)
        Spawn(function()
                local now = tick()
                while img:IsDescendantOf(game) do
                        img.Image = "http://www.roblox.com/asset/?id="..tostring(sequence[(math.floor((tick()-now)/speed)%#sequence)+1]-1)
                        wait()
                end
        end)
        return img
end

function Rainbow(h)
        local h,s,v = h%1,1,1
        local r, g, b
        
        local i = math.floor(h * 6);
        local f = h * 6 - i;
        local p = v * (1 - s);
        local q = v * (1 - f * s);
        local t = v * (1 - (1 - f) * s);
        
        i = i % 6
        
        if i == 0 then r, g, b = v, t, p
        elseif i == 1 then r, g, b = q, v, p
        elseif i == 2 then r, g, b = p, v, t
        elseif i == 3 then r, g, b = p, q, v
        elseif i == 4 then r, g, b = t, p, v
        elseif i == 5 then r, g, b = v, p, q
        end
        
        return r, g, b
end

local gui = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
gui.Name = "SnoopyMcSnooperson"
local frame = Instance.new("Frame",gui)
frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundTransparency = 1
local snoop = animGui(frame,snoopSequence,0.05)
snoop.Size = UDim2.new(0.25,0,0.50,0)
snoop.Position = UDim2.new(-0.25,0,0.25,0)
frog = animGui(frame,frogSequence,0.05)
frog.Size = UDim2.new(0.25,0,0.50,0)
frog.Position = UDim2.new(1,0,0.25,0)

trollLabels = {snoopSequence,frogSequence,"Can I have a large pizza with please, cheese?","thomas the weed engine","get out of my face","ur gone and i gutta stay hi111","a duble rainbow... wut dos it men??22/?/","im so high bro","im so high bruh","whoa im tripin balz man","get out of my face","ellomenartiy","WORK 8 HOURS\nPLAY 8 HOURS\nSLEEP 8 HOURS","fite the powur bruh","fite the man11","usa females are payed 20 cents less bru its unfair","why am i doing this to myself","the woods are my home man","run free little bro","teach me ur ways, snoopie-san kawabi","how much for a bong","i luv this bong man","oh yeah its right in my bronchioles man","is this real life??","this is a robbery","this is why my mom doesnt like me"}
snoop:TweenPosition(UDim2.new(0,0,0.25,0), "Out", "Sine", 1, true)
frog:TweenPosition(UDim2.new(0.75,0,0.25,0), "Out","Sine", 1, true)
Spawn(function()
        local start = tick()
        local last = start
        local ending = false
        local tiem = 10
        Spawn(function()
                fatboysraidmcdonalds.Control(tiem)
        end)
        Spawn(function()
                fatboysraidmcdonalds.Snoop(tiem)
        end)
        Spawn(function()
                fatboysraidmcdonalds.Illuminati(tiem,frame)
        end)
        while true do
                local tack = tick()
                local now = tack-start
                frog.Rotation = now*360
                if now <= tiem then
                        local k = math.min(now/2,0.5)
                        frame.BackgroundTransparency = 1 - k
                        if tack - last >= 0.25 then
                                for i = 1,3 do
                                        local wow = tack*(((math.random()*2)-1)*57)
                                        local s,c = math.sin(wow)*math.random(200,225)*0.01,math.cos(wow)*math.random(175,200)*0.01
                                        local dist = 0.5
                                        local xp,yp = dist+(dist*s),dist+(dist*c)
                                        local xe,ye = dist-(dist*s),dist-(dist*c)
                                        local funk
                                        if i == 1 then
                                                funk = trollLabels[math.random(1,2)]
                                        else
                                                funk = trollLabels[math.random(3,#trollLabels)]
                                        end
                                        local ngui
                                        local size = math.random()*0.25
                                        if funk == snoopSequence then
                                                ngui = animGui(frame,funk,0.05)
                                                ngui.Size = UDim2.new(size,0,size*2,0)
                                                ngui.ImageTransparency = (frame.BackgroundTransparency*2) - 1
                                        elseif funk == frogSequence then
                                                ngui = animGui(frame,funk,0.05)
                                                ngui.Size = UDim2.new(size,0,size,0)
                                                ngui.ImageTransparency = (frame.BackgroundTransparency*2) - 1
                                        else
                                                ngui = Instance.new("TextLabel",frame)
                                                local bt = frame.BackgroundTransparency
                                                ngui.TextTransparency = (bt-0.5)/0.5
                                                ngui.TextStrokeTransparency = bt
                                                ngui.BackgroundTransparency = 1
                                                ngui.TextColor3 = Color3.new(math.random(),math.random(),math.random())
                                                ngui.Font = "ArialBold"
                                                ngui.Text = funk
                                                ngui.Size = UDim2.new(size*0.5,0,size*0.5,0)
                                                ngui.TextScaled = true
                                                ngui.TextWrapped = false
                                                ngui.FontSize = "Size48"
                                        end
                                        ngui.Position = UDim2.new(xp,0,yp,0)
                                        ngui:TweenPosition(UDim2.new(xe,0,ye,0), "Out", "Linear", math.random(35,80)*0.035*i, true,function()
                                                ngui:destroy()
                                        end)
                                        if i == 1 then
                                                local sp = 500*(1-(math.random()*2))
                                                ngui.Changed:connect(function(prop)
                                                        if prop ~= "Rotation" and prop ~= "ImageTransparency" then
                                                                ngui.Rotation = (tick()-tack)*sp
                                                                ngui.ImageTransparency = (frame.BackgroundTransparency*2) - 1
                                                        end
                                                end)
                                        else
                                                ngui.Changed:connect(function(prop)
                                                        if prop ~= "TextTransparency" and prop ~= "TextStrokeTransparency" then
                                                                local bt = frame.BackgroundTransparency
                                                                ngui.TextTransparency = (bt-0.5)/0.5
                                                                ngui.TextStrokeTransparency = bt
                                                        end
                                                end)
                                        end
                                end
                                last = tack
                        end
                else
                        if not ending then
                                ending = true
                                snoop:TweenPosition(UDim2.new(-0.25,0,0.25,0), "Out", "Sine", math.max((tiem+1)-now,0), true)
                                frog:TweenPosition(UDim2.new(1,0,0.25,0), "Out", "Sine", math.max((tiem+1)-now,0), true)
                        end
                        local nao = math.max(((tiem+1)-now)*0.3,0)
                        frame.BackgroundTransparency = 1 - nao
                        if nao == 0 then
                                gui:destroy()
                                return
                        end
                end
                frame.BackgroundColor3 = Color3.new(Rainbow(now))
                wait()
        end
end)
end
----------------------------------------------------
local Using="Bong"
local tools={m,m2,m3}
function tolFad(nam)
        local tol=nil
        for _,v in pairs(tools) do
                if Using=="Bong" then
                        tol=m
                elseif Using=="Blunt" then
                        tol=m2
                elseif Using=="Pipe" then
                        tol=m3
                end
                if v~=tol then
                        for _,c in pairs(v:GetChildren()) do
                                if c:IsA("Part") then
                                        c.Transparency=1
                                end
                        end
                else
                        for _,c in pairs(v:GetChildren()) do
                                if c:IsA("Part") and c.Name ~= "Bong" and c.Name ~= "Tube" then
                                        c.Transparency = 0
                                elseif c:IsA("Part") and c.Name == "Bong" or c.Name == "Tube" then
                                        c.Transparency = 0.2
                                end
                        end
                end
        end
end
--[[if Debounces.Bong == true then
        Debounces.Pipe = false
        Debounces.Blunt = false
        for i = 1, 10 do wait()
                for i,v in pairs(torso.Bong:GetChildren()) do
                        if v:IsA("Part") and v.Transparency <= 1 then
                                v.Transparency = v.Transparency - 0.1
                        end
                end
        end
        for i = 1, 10 do wait()
                for q,e in pairs(rarm.Pipe:GetChildren()) do
                        if e:IsA("Part") and e.Transparency >= 0 then
                                e.Transparency = e.Transparency + 0.1
                        elseif e:IsA("Part") and e.Transparency == 1 then wait()
                        end
                end
        end
        for i = 1, 10 do wait()
                for a,d in pairs(rarm.Blunt:GetChildren()) do
                        if d:IsA("Part") and d.Transparency >= 0 then
                                d.Transparency = d.Transparency + 0.1
                        elseif d:IsA("Part") and d.Transparency == 1 then wait()
                        end
                end
        end
elseif Debounces.Pipe == true then
        Debounces.Bong = false
        Debounces.Blunt = false
        for i = 1, 10 do wait()
                for i,v in pairs(torso.Bong:GetChildren()) do
                        if v:IsA("Part") and v.Transparency >= 0 then
                                v.Transparency = v.Transparency + 0.1
                        elseif v:IsA("Part") and v.Transparency == 1 then wait()
                        end
                end
        end
        for i = 1, 10 do wait()
                for q,e in pairs(rarm.Pipe:GetChildren()) do
                        if e:IsA("Part") and e.Transparency <= 1 then
                                e.Transparency = e.Transparency - 0.1
                        end
                end
        end
        for i = 1, 10 do wait()
                for a,d in pairs(rarm.Blunt:GetChildren()) do
                        if d:IsA("Part") and d.Transparency >= 0 then
                                d.Transparency = d.Transparency + 0.1
                        elseif d:IsA("Part") and d.Transparency == 1 then wait()
                        end
                end
        end
elseif Debounces.Blunt == true then
        Debounces.Bong = false
        Debounces.Pipe = false
        for i = 1, 10 do wait()
                for i,v in pairs(torso.Bong:GetChildren()) do
                        if v:IsA("Part") and v.Transparency >= 0 then
                                v.Transparency = v.Transparency + 0.1
                        elseif v:IsA("Part") and v.Transparency == 1 then wait()
                        end
                end
        end
        for i = 1, 10 do wait()
                for q,e in pairs(rarm.Pipe:GetChildren()) do
                        if e:IsA("Part") and e.Transparency >= 0 then
                                e.Transparency = e.Transparency + 0.1
                        elseif e:IsA("Part") and e.Transparency == 1 then wait()
                        end
                end
        end
        for i = 1, 10 do wait()
                for a,d in pairs(rarm.Blunt:GetChildren()) do
                        if d:IsA("Part") and d.Transparency <= 1 then
                                d.Transparency = d.Transparency - 0.1
                        end
                end
        end
end]]--
----------------------------------------------------
mouse.KeyDown:connect(function(key)
        if key == "q" then
                if Debounces.CanPuff == true then
                        Using = "Bong"
                        stanceToggle = "Bong"
                        tolFad(Using)
                end
        end
end)
mouse.KeyDown:connect(function(key)
        if key == "e" then
                if Debounces.CanPuff == true then
                        Using = "Pipe"
                        stanceToggle = "Pipe"
                        tolFad(Using)
                end
        end
end)
mouse.KeyDown:connect(function(key)
        if key == "r" then
                if Debounces.CanPuff == true then
                        Using = "Blunt"
                        stanceToggle = "Blunt"
                        tolFad(Using)
                end
        end
end)
----------------------------------------------------
mt = {8, 8.4, 8.8, 9, 9.4}
mouse.KeyDown:connect(function(key)
        if key == "h" then
        if Debounces.CanJoke == true then
        Debounces.CanJoke = false
        z                 = Instance.new("Sound",hed)
        z.SoundId         = "http://www.roblox.com/asset/?id=238500679"
        z.Looped          = false
        z.Pitch           = mt[math.random(1,#mt)]
        z.Volume          = 1
        z2                = Instance.new("Sound",hed)
        z2.SoundId        = "http://www.roblox.com/asset/?id=238500679"
        z2.Looped         = false
        z2.Pitch          = z.Pitch
        z2.Volume         = 1
        z3                = Instance.new("Sound",hed)
        z3.SoundId        = "http://www.roblox.com/asset/?id=238500679"
        z3.Looped         = false
        z3.Pitch          = z.Pitch
        z3.Volume         = 1
        z4                = Instance.new("Sound",hed)
        z4.SoundId        = "http://www.roblox.com/asset/?id=238500679"
        z4.Looped         = false
        z4.Pitch          = z.Pitch
        z4.Volume         = 1
        z:Play()
        z2:Play()
        z3:Play()
        z4:Play()
        wait(1)
        z:Destroy()
        z2:Destroy()
        z3:Destroy()
        z4:Destroy()
        if Debounces.CanJoke == false then
        Debounces.CanJoke = true
end
end
end
end)
----------------------------------------------------
mouse.Button1Down:connect(function(hoot)
        if Debounces.CanPuff == true and Using == "Bong" then
                Debounces.CanPuff = false
                Debounces.NoIdl = true
                Debounces.on = true
                for i = 1,20 do
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.55,-1.4)*CFrame.Angles(math.rad(50),math.rad(0),math.rad(-40)), 0.2)
                        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,-.3)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(30)), 0.2)
                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.4) * CFrame.Angles(math.rad(-50), 0, 0), 0.4)
                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
                        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
                        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
                        weld2.C0 = Lerp(weld2.C0, CFrame.new(0, -.5, -1.4), 0.4)
                        weld2.C1 = Lerp(weld2.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-30),0,0), 0.4)
                        if Debounces.on == false then break end
                        wait()
                end
        Match1()
z = Instance.new("Sound",hed)
z.SoundId = "rbxassetid://174628230"
z.Looped = true
z.Pitch = 2
z.Volume = 1
z1 = Instance.new("Sound",hed)
z1.SoundId = "rbxassetid://174628230"
z1.Looped = true
z1.Pitch = 2
z1.Volume = 1
wait(1)
z:Play()
z1:Play()
Burn()
wait(2.4)
for i = 1,10 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,-.3)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(-30)), 0.2)
        if Debounces.on == false then break end
        wait()
end
Match2()
wait(2.6)
                z:Stop()
                z1:Stop()
                for i = 1,20 do
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,-.3)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(-30)), 0.2)
                        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,-.3)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(30)), 0.2)
                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, .2) * CFrame.Angles(math.rad(40), 0, 0), 0.4)
                        weld2.C0 = Lerp(weld2.C0, CFrame.new(0, -.5, -1.5), 0.4)
                        weld2.C1 = Lerp(weld2.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
                        if Debounces.on == false then break end
                        wait()
                end
        s.Enabled = true
        wait(5)
        s.Enabled = false
                Snoop()
                if Debounces.CanPuff == false then
                Debounces.CanPuff = true
                Debounces.NoIdl = false
                Debounces.on = true
                end
        end
end)
----------------------------------------------------
mouse.Button1Down:connect(function(hoot)
        if Debounces.CanPuff == true and Using == "Pipe" then
                Debounces.CanPuff = false
                Debounces.NoIdl = true
                Debounces.on = true
                Match1()
                for i = 1,20 do
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.1,0.65,-.3)*CFrame.Angles(math.rad(115),math.rad(-10),math.rad(-30)), 0.2)
                        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3,0.6,-.45)*CFrame.Angles(math.rad(110),math.rad(10),math.rad(45)), 0.2)
                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.4) * CFrame.Angles(math.rad(-10), 0, 0), 0.4)
                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
                        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-5)), 0.2)
                        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(5)), 0.2)
                        if Debounces.on == false then break end
                        wait()
                end
            Burn2()
                wait(2.4)
                for i = 1,10 do
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)), 0.4)
                        if Debounces.on == false then break end
                        wait()
                end
                Match2()
                wait(2.6)
                for i = 1,20 do
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)), 0.4)
                        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3,0.6,-.3)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(20)), 0.6)
                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, .2) * CFrame.Angles(math.rad(30), 0, 0), 0.4)
                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
                        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-5)), 0.2)
                        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(5)), 0.2)
                        if Debounces.on == false then break end
                        wait()
                end
                s.Enabled = true
                wait(5)
                s.Enabled = false
                Snoop()
                if Debounces.CanPuff == false then
                Debounces.CanPuff = true
                Debounces.NoIdl = false
                Debounces.on = true
                end
        end
end)
----------------------------------------------------
mouse.Button1Down:connect(function(hoot)
        if Debounces.CanPuff == true and Using == "Blunt" then
                Debounces.CanPuff = false
                Debounces.NoIdl = true
                Debounces.on = true
                for i = 1,20 do
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,.1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)), 0.2)
                        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3,0.6,-.45)*CFrame.Angles(math.rad(115),math.rad(10),math.rad(40)), 0.2)
                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.4) * CFrame.Angles(math.rad(-15), 0, 0), 0.4)
                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
                        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-5)), 0.2)
                        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(5)), 0.2)
                        if Debounces.on == false then break end
                        wait()
                end
                wait(0.5)
                Burn3()
                wait()
                for i = 1,20 do
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)), 0.2)
                        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3,0.6,-.3)*CFrame.Angles(math.rad(115),math.rad(0),math.rad(-20)), 0.6)
                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, .2) * CFrame.Angles(math.rad(30), 0, 0), 0.4)
                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
                        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-5)), 0.2)
                        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(5)), 0.2)
                        if Debounces.on == false then break end
                        wait()
                end
                s.Enabled = true
                wait(5)
                s.Enabled = false
                Snoop()
                if Debounces.CanPuff == false then
                Debounces.CanPuff = true
                Debounces.NoIdl = false
                Debounces.on = true
                end
        end
end)
----------------------------------------------------
local animpose = "Idle"
local lastanimpose = "Idle"
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
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,-.3)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(-30)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,-.3)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(30)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-20+1*math.cos(sine/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
wait()
end
else
end
end
lastanimpose = animpose
if Debounces.NoIdl == false then
if animpose == "Idle" then
if stanceToggle == "Bong" then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,-.3)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(-30)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,-.3)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(30)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-20+1*math.cos(sine/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
elseif stanceToggle == "Pipe" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,-.3)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(-30)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-20+1*math.cos(sine/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
elseif stanceToggle == "Blunt" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-14)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-20+1*math.cos(sine/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
end
elseif animpose == "Walking" then
if stanceToggle == "Bong" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,-.3)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(-30)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,-.3)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(30)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.07*math.cos(sine/4), 0) * CFrame.Angles(math.rad(-4+1*math.cos(sine/4)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1-0.14*math.cos(sine/8)/2.8, -0.05 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + -math.sin(sine/8)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1+0.14*math.cos(sine/8)/2.8, -0.05 + -math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + math.sin(sine/8)/2.3, 0, 0), .4)
elseif stanceToggle == "Pipe" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5-.05*math.cos(sine/4), math.sin(sine/8)/4) * CFrame.Angles(-math.sin(sine/8)/2.8, -math.sin(sine/8)/3, math.rad(10+2*math.cos(sine/4))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(-30)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.07*math.cos(sine/4), 0) * CFrame.Angles(math.rad(-4+1*math.cos(sine/4)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1-0.14*math.cos(sine/8)/2.8, -0.05 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + -math.sin(sine/8)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1+0.14*math.cos(sine/8)/2.8, -0.05 + -math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + math.sin(sine/8)/2.3, 0, 0), .4)
elseif stanceToggle == "Blunt" then
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5+.05*math.cos(sine/4), -math.sin(sine/8)/4)*CFrame.Angles(math.sin(sine/8)/2.8, -math.sin(sine/8)/3, math.rad(-10-2*math.cos(sine/3))), 0.2)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5-.05*math.cos(sine/4), math.sin(sine/8)/4) * CFrame.Angles(-math.sin(sine/8)/2.8, -math.sin(sine/8)/3, math.rad(10+2*math.cos(sine/3))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.07*math.cos(sine/4), 0) * CFrame.Angles(math.rad(-4+1*math.cos(sine/4)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1-0.14*math.cos(sine/8)/2.8, -0.05 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + -math.sin(sine/8)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1+0.14*math.cos(sine/8)/2.8, -0.05 + -math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(-10) + math.sin(sine/8)/2.3, 0, 0), .4)
end
end
end
end)
end)
-----------------------------------------------------------------------------------------
local aluah = Instance.new("TextButton",b)
		aluah.Size = UDim2.new(1,1,0,30)
		aluah.Position = UDim2.new(0,0,0,130)
		aluah.BorderSizePixel = go
		aluah.BackgroundTransparency = .2
		aluah.BackgroundColor3 = Color3.new(200, 0, 0) 
		aluah.ZIndex = 2
		aluah.Draggable = false
		aluah.Active = true
		aluah.Text = "Bomb Vest"
		aluah.Parent = e
 		aluah.MouseButton1Down:connect(function()
local Me = game:GetService("Players").LocalPlayer
local Char = Me.Character
local Torso = Char.Torso
local TickWait = 1
local Color = "Black"
local Dead = false

local Tool = Instance.new("HopperBin", Me.Backpack)
Tool.Name = "Bomb Vest"

local Position = Vector3.new(0,100,0)
function NewPart(Parent)
   local Part = Instance.new("Part", Parent)
   Part.CanCollide = false
   Part.FormFactor = "Custom"
   Part.Position = Position
   Part.TopSurface = "Smooth"
   Part.BottomSurface = "Smooth"
   Part.BrickColor = BrickColor.new(Color)
   Position = Position + Vector3.new(0,Part.Size.Y + 10,0)
   return Part
end

local Model = Char:FindFirstChild("Bomb")
if Model then Model:Destroy() end

Model = Instance.new("Model", Char)
Model.Name = "Bomb"

local Belt = NewPart(Model)
Belt.Size = Vector3.new(2.2,0.5,1.2)
local Weld = Instance.new("Weld", Belt)
Weld.Part0 = Belt
Weld.Part1 = Torso
Weld.C0 = CFrame.new(0,1.1,0)
local Light = Instance.new("PointLight", Belt)
Light.Range = 15
Light.Brightness = 5
Light.Color = Color3.new(1,0,0)
local Beep = Instance.new("Sound", Belt)
Beep.SoundId = "http://www.roblox.com/asset/?id=188588790"
local ExplodeSound = Instance.new("Sound", Belt)
ExplodeSound.SoundId = "http://www.roblox.com/asset/?id="..(tonumber((math.ceil(1776.66^2)+17).."."..string.rep("36",3))*77)+0.00003 --144507765
ExplodeSound.Pitch = 2.8
ExplodeSound.Volume = 100

local Back = NewPart(Model)
Back.Size = Vector3.new(1.5,1.5,0.5)
local Weld = Instance.new("Weld", Back)
Weld.Part0 = Back
Weld.Part1 = Torso
Weld.C0 = CFrame.new(0,0.1,-0.75)

local StrapLeft = NewPart(Model)
StrapLeft.Size = Vector3.new(0.2,0.5,1.6)
local Weld = Instance.new("Weld", StrapLeft)
Weld.Part0 = StrapLeft
Weld.Part1 = Torso
Weld.C0 = CFrame.new(0.65,-0.9,-0.2)

local BuckleLeft = NewPart(Model)
BuckleLeft.Size = Vector3.new(0.2,1.5,0.2)
local Weld = Instance.new("Weld", BuckleLeft)
Weld.Part0 = BuckleLeft
Weld.Part1 = Torso
Weld.C0 = CFrame.new(0.65,0.1,0.5)

local StrapRight = NewPart(Model)
StrapRight.Size = Vector3.new(0.2,0.5,1.6)
local Weld = Instance.new("Weld", StrapRight)
Weld.Part0 = StrapRight
Weld.Part1 = Torso
Weld.C0 = CFrame.new(-0.65,-0.9,-0.2)

local BuckleRight = NewPart(Model)
BuckleRight.Size = Vector3.new(0.2,1.5,0.2)
local Weld = Instance.new("Weld", BuckleRight)
Weld.Part0 = BuckleRight
Weld.Part1 = Torso
Weld.C0 = CFrame.new(-0.65,0.1,0.5)

Tool.Selected:connect(function(Mouse)
   TickWait = 0.3
   Mouse.Icon = "http://www.roblox.com/asset/?id=9109985"
  
   Mouse.Button1Down:connect(function()
       if Dead == false then
           Dead = true
           ExplodeSound:Play()
           wait(1.4)
           local Explosion = Instance.new("Explosion", Workspace)
           Explosion.Position = Belt.Position
           Explosion.BlastPressure = 100000
           Explosion.DestroyJointRadiusPercent = 0.7
           Explosion.ExplosionType = "CratersAndDebris"
           Explosion.BlastRadius = 50
           Explosion.Hit:connect(function(Part, Distance)
               Part.Anchored = false
               if Distance <= 10 then
                   Part:BreakJoints()
               end
           end)
       end
   end)
end)

Tool.Deselected:connect(function()
   TickWait = 1
end)

coroutine.wrap(function()
   repeat
       wait(TickWait)
       Light.Enabled = not Light.Enabled
       Beep:Play()
   until Dead == true
end)()
end)
------------------------------------------------------------------------------
local grap = Instance.new("TextButton",b)
		grap.Size = UDim2.new(1,1,0,30)
		grap.Position = UDim2.new(0,0,0,170)
		grap.BorderSizePixel = go
		grap.BackgroundTransparency = .2
		grap.BackgroundColor3 = Color3.new(200, 0, 0) 
		grap.ZIndex = 2
		grap.Draggable = false
		grap.Active = true
		grap.Text = "Arm Grapples"
		grap.Parent = e
 		grap.MouseButton1Down:connect(function()
--3DG
--three dimensional grapples
function clerp(c1,c2,al)
    local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
    local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
    for i,v in pairs(com1) do 
        com1[i] = v+(com2[i]-v)*al
    end
    return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end

plr = game:service'Players'.LocalPlayer
plrgui = plr.PlayerGui
char = plr.Character
mouse = plr:GetMouse()
humanoid = char:findFirstChild("Humanoid")
torso = char:findFirstChild("Torso")
head = char.Head
ra = char:findFirstChild("Right Arm")
la = char:findFirstChild("Left Arm")
rl = char:findFirstChild("Right Leg")
ll = char:findFirstChild("Left Leg")
rs = torso:findFirstChild("Right Shoulder")
ls = torso:findFirstChild("Left Shoulder")
rh = torso:findFirstChild("Right Hip")
lh = torso:findFirstChild("Left Hip")
neck = torso:findFirstChild("Neck")
rj = char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
rootpart = char:findFirstChild("HumanoidRootPart")
camera = workspace.CurrentCamera
anim = char:findFirstChild("Animate")
if anim then
anim:Destroy()
end

local lal = Instance.new('Sound', head)
lal.SoundId = "rbxassetid://145048800"
lal.Volume = 1
lal:play()
game:service'Debris':AddItem(lal, 8)

local rm = Instance.new("Weld", torso)
rm.C0 = CFrame.new(1.5, 0.5, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra
rm.Name = 'Right Shoulder'

local lm = Instance.new("Weld", torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la
lm.Name = 'Left Shoulder'

local rlegm = Instance.new("Weld", torso)
rlegm.C0 = CFrame.new(0.5, -1, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = torso
rlegm.Part1 = rl

local llegm = Instance.new("Weld", torso)
llegm.C0 = CFrame.new(-0.5, -1, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll

rj.C0 = CFrame.new()
rj.C1 = CFrame.new()

neck.C0 = CFrame.new(0, 1, 0)
neck.C1 = CFrame.new(0, -0.5, 0)


local speed = 0.3
local angle = 0
local anglespeed = 1
rsc0 = rm.C0
lsc0 = lm.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
rootc0 = rj.C0
neckc0 = neck.C0

model = Instance.new('Model', char)
model.Name = '3DG'
function Weld(part0,part1,c1,c0)
	local w = Instance.new('Weld', model)
	w.Part0 = part0
	w.Part1 = part1
	w.C0 = c0 or CFrame.new()
	w.C1 = c1 or CFrame.new()
end

local BasePart = Instance.new('Part')
BasePart.FormFactor = 'Custom'
BasePart.Material = 'Neon'
BasePart.CanCollide = false
BasePart.Locked = true
BasePart.TopSurface = 10
BasePart.BottomSurface = 10
BasePart.LeftSurface = 10
BasePart.RightSurface = 10
BasePart.FrontSurface = 10
BasePart.BackSurface = 10
BasePart:breakJoints()


for i = 1,2 do
	local strap = BasePart:clone()
	strap.Size = Vector3.new(1.025,.2,1.025)
	strap.Parent = model
	strap.BrickColor = BrickColor.new()
    strap:BreakJoints()
	Weld(strap, la, CFrame.new(0, .1 - i/3,0))
end

for i = 1,2 do
	local strap = BasePart:clone()
	strap.Size = Vector3.new(1.025,.2,1.025)
	strap.Parent = model
	strap.BrickColor = BrickColor.new()
    strap:BreakJoints()
	Weld(strap, ra, CFrame.new(0, .1 - i/3,0))
end

local ropeStart = BasePart:clone()
    ropeStart.Size = Vector3.new(.2,1.75,.2)
    ropeStart.Parent = model
    ropeStart.BrickColor = BrickColor.new()
    ropeStart:BreakJoints()
    Weld(ropeStart, ra, CFrame.new(-.45, -.5, 0))
local ropeStart2 = BasePart:clone()
    ropeStart2.Size = Vector3.new(.2,1.75,.2)
    ropeStart2.Parent = model
    ropeStart2.BrickColor = BrickColor.new()
    ropeStart2:BreakJoints()
    Weld(ropeStart2, la, CFrame.new(.45, -.5, 0))

    local ropeCont = BasePart:clone()
    ropeCont.Size = Vector3.new(.8,.2,.8)
    ropeCont.Parent = model
    ropeCont.BrickColor = BrickColor.new(199)
    ropeCont:BreakJoints()
    Instance.new('CylinderMesh', ropeCont)
    Weld(ropeCont, la, CFrame.new(.5, .05, 0), CFrame.Angles(math.pi/2, math.pi/2, 0))
local ropeCont2 = BasePart:clone()
    ropeCont2.Size = Vector3.new(.8,.2,.8)
    ropeCont2.Parent = model
    ropeCont2.BrickColor = BrickColor.new(199)
    ropeCont2:BreakJoints()
    Instance.new('CylinderMesh', ropeCont2)
    Weld(ropeCont2, ra, CFrame.new(-.5, .05, 0), CFrame.Angles(math.pi/2, math.pi/2, 0))

    local GasTank = BasePart:clone()
    GasTank.Size = Vector3.new(.8,1.4,.8)
    GasTank.Parent = model
    GasTank.BrickColor = BrickColor.new(194)
    GasTank:BreakJoints()
    Instance.new('SpecialMesh', GasTank)
    Weld(GasTank, ra, CFrame.new(0, -.25, .5))
local GasTank2 = BasePart:clone()
    GasTank2.Size = Vector3.new(.8,1.4,.8)
    GasTank2.Parent = model
    GasTank2.BrickColor = BrickColor.new(194)
    GasTank2:BreakJoints()
    Instance.new('SpecialMesh', GasTank2)
    Weld(GasTank2, la, CFrame.new(0, -.25, .5))

local pa = BasePart:clone()
pa.BrickColor = BrickColor.new()
pa.Anchored = true
pa.Size = Vector3.new(.5,1,.5)
local special = Instance.new('SpecialMesh', pa)
special.MeshId = "rbxassetid://1033714"
special.Scale = Vector3.new(.25,2,.25)
local ropePA = BasePart:clone()
ropePA.Parent = pa
ropePA.Anchored = true
ropePA.BrickColor = BrickColor.new'White'
Instance.new('CylinderMesh', ropePA).Scale = Vector3.new(.25,1,.25)

local pa2 = BasePart:clone()
pa2.BrickColor = BrickColor.new()
pa2.Anchored = true
pa2.Size = Vector3.new(.5,1,.5)
local special = Instance.new('SpecialMesh', pa2)
special.MeshId = "rbxassetid://1033714"
special.Scale = Vector3.new(.25,2,.25)
local ropePA2 = BasePart:clone()
ropePA2.Parent = pa2
ropePA2.Anchored = true
ropePA2.BrickColor = BrickColor.new'White'
Instance.new('CylinderMesh', ropePA2).Scale = Vector3.new(.25,1,.25)

local pa3 = BasePart:clone()
pa3.Transparency = 1
pa3.Anchored = true
pa3.Size = Vector3.new(2,2,2)

local torso3 = Instance.new('Part', char)
torso3.Name = 'FakeTorsoForStuff'
torso3.Size = torso.Size
torso3.Transparency = 1
torso3:breakJoints()
Weld(torso3, torso)

Instance.new('PointLight', torso)

local jumpmode

local SGui = Instance.new('ScreenGui', plr.PlayerGui)
local JumpButton = Instance.new('TextButton', SGui)
JumpButton.BackgroundColor = BrickColor.new('Dark stone grey')
JumpButton.BorderSizePixel = 4
JumpButton.TextColor3 = Color3.new(1,1,1)
JumpButton.BorderColor3 = Color3.new()
JumpButton.TextStrokeTransparency = .5
JumpButton.FontSize = 'Size12'
JumpButton.Text = 'Thrust up when grappled'
JumpButton.Size = UDim2.new(0, 250, 0, 50)
JumpButton.Position = UDim2.new(1, -250, 1, -50)
local OnOff = Instance.new('Frame', JumpButton)
OnOff.BackgroundColor3 = Color3.new()
OnOff.BorderSizePixel = 0
OnOff.Size = UDim2.new(.8, 0, 0, 5)
OnOff.Position = UDim2.new(.1, 0, 1, -10)
JumpButton.MouseButton1Down:connect(function()
    jumpmode = not jumpmode
    if jumpmode then
        OnOff.BackgroundColor3 = Color3.new(0,1,0)
    else
        OnOff.BackgroundColor3 = Color3.new()
    end
end)



local bodygyro = Instance.new('BodyGyro', torso)
    bodygyro.maxTorque = Vector3.new(14e16,14e16,14e16)
    bodygyro.P = 10000

        ro=Instance.new("RocketPropulsion",rootpart)
        ro.Name = 'RockatPropoolsun'
        ro.MaxSpeed=200
        ro.MaxThrust=8000
        ro.TurnP = 0
        ro.MaxTorque=Vector3.new(14e16,14e16,14e16)

        ro2=Instance.new("RocketPropulsion",torso)
        ro2.Name = 'RockatPropoolsun2'
        ro2.MaxSpeed=200
        ro2.MaxThrust=8000
        ro2.TurnP = 0
        ro2.MaxTorque=Vector3.new(14e16,14e16,14e16)
local run
mouse.KeyDown:connect(function(k)
    if k:byte() == 48 then
        run = not run
        if run then
            humanoid.WalkSpeed = 22
        else
            humanoid.WalkSpeed = 16
        end
    end
    if k:byte() == 32 then
        if Grapple1 or Grapple2 then
        wait()
        humanoid.PlatformStand = true
        rlegm.C0 = rlc0 * CFrame.new(0, .5, -.65) * CFrame.Angles(-math.pi/8, 0, .1)
        llegm.C0 = llc0 * CFrame.new(0, .5, -.65) * CFrame.Angles(-math.pi/8, 0, -.1)
        if pa3.Parent ~= nil then
            ro3:Fire()
        end
        if Grapple1 then
            ro:Fire()
        end
        if Grapple2 then
            ro2:Fire()
        end
        end
    end
    if k=="q" then
        local sound = Instance.new('Sound', head)
        sound.SoundId = "rbxassetid://160248505"
        sound.Pitch = 3+math.random()/3
        sound.Volume = .8
        sound:play()
        game:service'Debris':AddItem(sound,4)
        lm.Parent = torso
        pa.CFrame = la.CFrame
            local grapplepos = pa.Position
            local grapplevelocity = (mouse.Hit.p - grapplepos).unit*50
            local lastgrapplepos = pa.Position 
            while wait() do
                lastgrapplepos = grapplepos 
                grapplepos = grapplepos + grapplevelocity
                local RayCast = Ray.new(lastgrapplepos, (grapplepos - lastgrapplepos))
                local hit, hitpos = workspace:FindPartOnRay(RayCast, char)
                if (torso.Position - pa.Position).magnitude > 900 then
                    pa.Parent = nil
                    break
                end
                pa.Anchored = true
                pa.CFrame = CFrame.new(grapplepos, grapplepos+grapplevelocity) * CFrame.Angles(math.pi/2, 0, 0)
                pa.Parent = char
                if hit then
                    local rotX,rotY,rotZ = pa.CFrame:toEulerAnglesXYZ()
                    local sound = Instance.new('Sound', head)
                    sound.SoundId = "rbxassetid://146466021"
                    sound.Pitch = 1.2+math.random()/3
                    sound.Volume = .25
                    sound:play()
                    game:service'Debris':AddItem(sound,4)
                    pa.Parent = char
                    pa.CFrame=CFrame.new(hitpos.x, hitpos.y, hitpos.z)*CFrame.Angles(rotX,rotY,rotZ)*CFrame.Angles(math.pi,0,0)
                    ro.Target=pa
                    lm.Parent = torso
                    local ray = Ray.new(rootpart.Position, Vector3.new(0, -6, 0))
                    local hitz, enz = workspace:FindPartOnRay(ray, char)
                    local hum = hit and hit.Parent and hit.Parent:findFirstChild'Humanoid'
                    if hum then
                        hum:TakeDamage(math.random(7,11))
                    end
                    local hum = hit and hit.Parent and hit.Parent.Parent and hit.Parent.Parent:findFirstChild'Humanoid'
                    if hum then
                        hum:TakeDamage(math.random(7,11))
                    end
                    if pa.Parent ~= nil and humanoid.PlatformStand or not (hitz and hitz.CanCollide) then
                        ro:Fire()
                        if jumpmode then
                            humanoid.Jump = true
                        end
                    end
                    Gweld = Instance.new("Weld", char)
                    Gweld.C0 = hit.CFrame:toObjectSpace(pa.CFrame)
                    Gweld.Part0 = hit
                    Gweld.Part1 = pa
                    pa.Anchored = false
                    Grapple1Hit = hit
                    Grapple1 = true
                    break
                end
                pa.Anchored = true
                pa.CFrame = CFrame.new(grapplepos, grapplepos+grapplevelocity) * CFrame.Angles(math.pi/2, 0, 0)
            end
    end
    if k=="e" then
        local sound = Instance.new('Sound', head)
        sound.SoundId = "rbxassetid://160248505"
        sound.Pitch = 3+math.random()/3
        sound.Volume = .8
        sound:play()
        game:service'Debris':AddItem(sound,4)
            pa2.CFrame = ra.CFrame
            rm.Parent = torso
            local grapplepos = pa2.Position
            local grapplevelocity = (mouse.Hit.p - grapplepos).unit*50
            local lastgrapplepos = pa2.Position 
            while wait() do
                lastgrapplepos = grapplepos 
                grapplepos = grapplepos + grapplevelocity
                local RayCast = Ray.new(lastgrapplepos, (grapplepos - lastgrapplepos))
                local hit, hitpos = workspace:FindPartOnRay(RayCast, char)
                if (torso.Position - pa2.Position).magnitude > 900 then
                    pa2.Parent = nil
                    break
                end
                pa2.Anchored = true
                pa2.CFrame = CFrame.new(grapplepos, grapplepos+grapplevelocity) * CFrame.Angles(math.pi/2, 0, 0)
                pa2.Parent = char
                if hit then
                    local rotX,rotY,rotZ = pa2.CFrame:toEulerAnglesXYZ()
                    local sound = Instance.new('Sound', head)
                    sound.SoundId = "rbxassetid://146466021"
                    sound.Pitch = 1.2+math.random()/3
                    sound.Volume = .25
                    sound:play()
                    game:service'Debris':AddItem(sound,4)
                    pa2.Parent = char
                    pa2.CFrame=CFrame.new(hitpos.x, hitpos.y, hitpos.z)*CFrame.Angles(rotX,rotY,rotZ)*CFrame.Angles(math.pi,0,0)
                    ro2.Target=pa2
                    rm.Parent = torso
                    local ray = Ray.new(rootpart.Position, Vector3.new(0, -6, 0))
                    local hitz, enz = workspace:FindPartOnRay(ray, char)
                    local hum = hit and hit.Parent and hit.Parent:findFirstChild'Humanoid'
                    if hum then
                        hum:TakeDamage(math.random(7,11))
                    end
                    local hum = hit and hit.Parent and hit.Parent.Parent and hit.Parent.Parent:findFirstChild'Humanoid'
                    if hum then
                        hum:TakeDamage(math.random(7,11))
                    end
                    if pa2.Parent ~= nil and humanoid.PlatformStand or not (hitz and hitz.CanCollide) then
                        if jumpmode then
                            humanoid.Jump = true
                        end
                        ro2:Fire()
                    end
                    Gweld2 = Instance.new("Weld", char)
                    Gweld2.C0 = hit.CFrame:toObjectSpace(pa2.CFrame)
                    Gweld2.Part0 = hit
                    Gweld2.Part1 = pa2
                    pa2.Anchored = false
                    Grapple2Hit = hit
                    Grapple2 = true
                    break
                end
                pa2.Anchored = true
                pa2.CFrame = CFrame.new(grapplepos, grapplepos+grapplevelocity) * CFrame.Angles(math.pi/2, 0, 0)
            end
    end
end)

mouse.KeyUp:connect(function(k)
    if k=="q" then
        pcall(function() Gweld:remove() end)
        game:service'RunService'.RenderStepped:wait()
        pcall(function() pa.Parent = nil Grapple1 = false end)
        pcall(function() ro:Abort() end)
        game:service'RunService'.RenderStepped:wait()
        pcall(function() ro2.Target=pa2 if Grapple2 and humanoid.PlatformStand or Grapple2 and not hitz then ro2:Fire() end end)
    elseif k=="e" then
        pcall(function() Gweld2:remove() end)
        game:service'RunService'.RenderStepped:wait()
        pcall(function() pa2.Parent = nil Grapple2 = false end)
        pcall(function() ro2:Abort() end)
        game:service'RunService'.RenderStepped:wait()
        pcall(function() ro.Target=pa if Grapple1 and humanoid.PlatformStand or Grapple1 and not hitz then ro:Fire() end end)
    end
end)


local MidPointUsed = false
local TorsoSmoke = Instance.new('Smoke', torso)


game:service'RunService'.RenderStepped:connect(function()
        angle = (angle % 100) + anglespeed/10
        mvmnt = math.pi * math.sin(math.pi*2/100*(angle*10))
        local rscf = rsc0
        local lscf = lsc0
        local rlcf = rlc0
        local llcf = llc0
        local rjcf = rootc0
        local ncf = neckc0
        for i,object in pairs(char:children()) do
            if object:IsA("Tool") then
                tool = true
                if not debounce then
                for x,value in pairs(object:children()) do
                    if value:IsA("StringValue") and value.Name == "toolanim" and value.Value == "Slash" then
                        debounce = true
                        coroutine.wrap(function()
                        slashing = true
                        wait(.25)
                        slashing = false
                        debounce = false
                    end)()
                    value:Destroy()
                    end
                end
                end
            elseif not object:IsA'Tool' then
                tool = false
            end
        end
        if not humanoid.PlatformStand then
            if humanoid.Sit == true then
                speed = 0.2
                anglespeed = 1/4
                        ncf = neckc0 * CFrame.Angles(0, 0, 0)
                        rjcf = rootc0
                        rscf = rsc0 * CFrame.Angles(math.pi/2+math.sin(-angle)*0.05, 0, 0)
                        lscf = lsc0 * CFrame.Angles(math.pi/2+math.sin(-angle)*0.05, 0, 0)
                        rlcf = rlc0 * CFrame.Angles(math.pi/2+-math.rad(.2), 0, math.rad(.2))
                        llcf = llc0 * CFrame.Angles(math.pi/2+math.rad(.2), 0, -math.rad(.2))
            elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 2 then
                    anglespeed = 1/4
                        speed = 0.2
                        ncf = neckc0 * CFrame.Angles(math.sin(angle)*0.075, 0, 0)
                        rjcf = rootc0
                        rscf = rsc0 * CFrame.new(0, math.sin(angle)*0.05, 0) * CFrame.Angles(math.sin(-angle)*0.05, 0, 0)
                        lscf = lsc0 * CFrame.new(0, math.sin(angle)*0.05, 0) * CFrame.Angles(math.sin(-angle)*0.05, 0, 0)
                        rlcf = rlc0 * CFrame.Angles(-math.rad(.2), 0, math.rad(.2))
                        llcf = llc0 * CFrame.Angles(math.rad(.2), 0, -math.rad(.2))
            elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 20 then
                        anglespeed = 1.7
                        speed = 0.25
                        anglespeed = 2.2
                        speed = 0.25
                        ncf = neckc0 * CFrame.Angles(0, 0, 0)
                        rjcf = rootc0 * CFrame.new(0, math.abs(math.sin(angle))*.055, 0) * CFrame.Angles(-math.rad(1), 0, 0)
                        rscf = rsc0 * CFrame.Angles(math.sin(angle)*.5, 0, -math.rad(1))
                        lscf = lsc0 * CFrame.Angles(math.sin(-angle)*.5, 0, math.rad(1))
                        rlcf = rlc0 * CFrame.new(0, .075 + -math.cos(-angle)*.075, math.sin(angle)*0.1) * CFrame.Angles(math.sin(-angle)*.45, 0, math.rad(.5))
                        llcf = llc0 * CFrame.new(0, .075 - -math.cos(angle)*.075, -math.sin(angle)*0.1) * CFrame.Angles(math.sin(angle)*.45, 0, -math.rad(.5))
            elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then
                local RotVelocityZ = torso.RotVelocity.Y
                if RotVelocityZ >= 15 then
                    RotVelocityZ = 15
                elseif RotVelocityZ <= -15 then
                    RotVelocityZ = -15
                end
                    speed = 0.25
                    anglespeed = 2.7
                    ncf = neckc0 * CFrame.Angles(0, 0, -math.sin(angle)*.045)
                    rscf = rsc0 * CFrame.new(0, 0, -math.sin(angle)*0.125) * CFrame.Angles(math.pi/14+math.sin(angle)*1.5, 0, -math.sin(math.abs(angle))*0.3)
                    lscf = lsc0 * CFrame.new(0, 0, math.sin(angle)*0.125) * CFrame.Angles(math.pi/14+math.sin(-angle)*1.5, 0, -math.sin(math.abs(angle))*0.3)
                    rjcf = rootc0 * CFrame.new(0, math.abs(math.sin(angle))*.175 - .2, 0) * CFrame.Angles(math.abs(math.sin(angle))*0.055 + -math.pi/18, 0, math.rad(RotVelocityZ) + math.sin(angle)*.045)
                    rlcf = rlc0 * CFrame.new(0, .3 + -math.cos(-angle)*.3, -.2+math.sin(angle)*0.25) * CFrame.Angles(-math.pi/18+math.sin(-angle)*1.3, 0, math.rad(.5))
                    llcf = llc0 * CFrame.new(0, .3 - -math.cos(angle)*.3, -.05-math.sin(angle)*0.25) * CFrame.Angles(-math.pi/18+math.sin(angle)*1.3, 0, -math.rad(.5))
            end
            if tool then
                rscf = rsc0 * CFrame.Angles(math.pi/2, 0, 0)
                if slashing then
                    rscf = rsc0
                end
            end
        end
    if pa2.Parent == nil then
    rm.C0 = clerp(rm.C0,rscf,speed)
    end
    if pa.Parent == nil then
    lm.C0 = clerp(lm.C0,lscf,speed)
    end
    rj.C0 = clerp(rj.C0,rjcf,speed)
    neck.C0 = clerp(neck.C0,ncf,speed)
    rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
    llegm.C0 = clerp(llegm.C0,llcf,speed)
end)



game:service'RunService'.RenderStepped:connect(function()
    if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 225 then
        TorsoSmoke.Enabled = true
    else
        TorsoSmoke.Enabled = false
    end
    local ray = Ray.new(rootpart.Position, Vector3.new(0, -7, 0))
    local hitz, enz = workspace:FindPartOnRay(ray, char)
    if hitz and hitz.CanCollide and pa.Parent ~= char and pa2.Parent ~= char then
        bodygyro.Parent = nil
        humanoid.PlatformStand = false
    end
    if pa.Parent ~= nil or Grapple1 then
        local size = (ropeStart2.Position-pa.Position).magnitude
            ropePA.Size = Vector3.new(.2, size, .2) 
            ropePA.CFrame = CFrame.new(ropeStart2.Position, pa.Position) * CFrame.Angles(math.pi/2, 0, 0) * CFrame.new(0, -size/2, 0)
        lm.C0 = CFrame.new(Vector3.new(lsc0.x, lsc0.y, lsc0.z), torso.CFrame:pointToObjectSpace(pa.Position)) * CFrame.Angles(math.pi/2, 0, 0)
    else
        if not debounce and humanoid.PlatformStand then
            lm.C0 = lsc0 * CFrame.Angles(-.15, 0, -.15)
        end
    end
    if pa2.Parent ~= nil or Grapple2 then
        local size = (ropeStart.Position-pa2.Position).magnitude
            ropePA2.Size = Vector3.new(.2, size, .2) 
            ropePA2.CFrame = CFrame.new(ropeStart.Position, pa2.Position) * CFrame.Angles(math.pi/2, 0, 0) * CFrame.new(0, -size/2, 0)
        rm.C0 = CFrame.new(Vector3.new(rsc0.x, rsc0.y, rsc0.z), torso.CFrame:pointToObjectSpace(pa2.Position)) * CFrame.Angles(math.pi/2, 0, 0)
    else
        if not debounce and humanoid.PlatformStand then
            rm.C0 = rsc0 * CFrame.Angles(-.15, 0, .15)
        end
    end
    if Grapple1 and Grapple1Hit.Parent == nil then
        pcall(function() Gweld:remove() end)
        pa.Parent = nil
        Grapple1 = false
        ro:Abort()
    end
    if Grapple2 and Grapple2Hit.Parent == nil then
        pcall(function() Gweld2:remove() end)
        pa2.Parent = nil
        Grapple2 = false
        ro2:Abort()
    end
    if Grapple1 and Grapple2 and (humanoid.PlatformStand or not hitz) then
        local distance = (pa.Position-pa2.Position).magnitude
        bodygyro.Parent = torso
        torso.CFrame = CFrame.new(torso.Position, Vector3.new(camera.CoordinateFrame.x, camera.CoordinateFrame.y, camera.CoordinateFrame.z)) * CFrame.Angles(0, math.pi, 0)
        bodygyro.cframe = CFrame.new(torso.Position, Vector3.new(camera.CoordinateFrame.x, camera.CoordinateFrame.y, camera.CoordinateFrame.z)) * CFrame.Angles(0, math.pi, 0)
        pa3.Parent = char
            if distance <= .5 then
                pa3.CFrame = pa.CFrame
            elseif distance > .5 then
                pa3.CFrame = CFrame.new(pa.Position, pa2.Position) * CFrame.new(0, 0, -distance/2)
            end
        if not MidPointUsed then
        ro3=Instance.new("RocketPropulsion",torso3)
        ro3.Name = 'RockatPropoolsun3'
        ro3.MaxSpeed=250
        ro3.MaxThrust=16000
        ro3.TurnP = 0
        ro3.TurnD = 0
        ro3.MaxTorque=Vector3.new(14e16,14e16,14e16)
        if humanoid.PlatformStand or not hitz then
            ro:Abort()
            ro2:Abort()
        end
            ro3.Target = pa3
            if humanoid.PlatformStand or not hitz then
                ro3:Fire()
            end
            MidPointUsed = true
        end
    elseif (not Grapple1 or not Grapple2) and MidPointUsed == true and (humanoid.PlatformStand or not hitz) then
        pa3.Parent = nil
        MidPointUsed = false
        ro3:Abort()
        ro3:Destroy()
        if Grapple1 then
            ro:Fire()
        end
        if Grapple2 then
            ro2:Fire()
        end
    end
    if not Grapple1 then
        pcall(function() Gweld:remove() end)
    end
    if not Grapple2 then
        pcall(function() Gweld2:remove() end)
    end
    if (Grapple1 or Grapple2) and not hitz then
        bodygyro.Parent = torso
        humanoid.PlatformStand = true
        rlegm.Parent = torso
        llegm.Parent = torso
        lm.Parent = torso
        rm.Parent = torso
        rlegm.C0 = rlc0 * CFrame.new(0, .5, -.65) * CFrame.Angles(-math.pi/8, 0, .1)
        llegm.C0 = llc0 * CFrame.new(0, .5, -.65) * CFrame.Angles(-math.pi/8, 0, -.1)
    end
    if (Grapple1 or Grapple2) and not hitz or humanoid.PlatformStand then
        bodygyro.Parent = torso
        bodygyro.cframe = CFrame.new(torso.Position, Vector3.new(camera.CoordinateFrame.x, camera.CoordinateFrame.y, camera.CoordinateFrame.z)) * CFrame.Angles(0, math.pi, 0)
        rlegm.Parent = torso
        llegm.Parent = torso
        rlegm.C0 = rlc0 * CFrame.new(0, .5, -.65) * CFrame.Angles(-math.pi/8, 0, .1)
        llegm.C0 = llc0 * CFrame.new(0, .5, -.65) * CFrame.Angles(-math.pi/8, 0, -.1)
    end
end)
end)

local exp = Instance.new("TextButton",b)
		exp.Size = UDim2.new(1,1,0,30)
		exp.Position = UDim2.new(0,0,0,210)
		exp.BorderSizePixel = go
		exp.BackgroundTransparency = .2
		exp.BackgroundColor3 = Color3.new(200, 0, 0) 
		exp.ZIndex = 2
		exp.Draggable = false
		exp.Active = true
		exp.Text = "Explorer"
		exp.Parent = e
 		exp.MouseButton1Down:connect(function()
loadstring(game:GetObjects("rbxassetid://418957341")[1].Source)()
end)

local bird = Instance.new("TextButton",b)
		bird.Size = UDim2.new(1,1,0,30)
		bird.Position = UDim2.new(0,0,0,10)
		bird.BorderSizePixel = go
		bird.BackgroundTransparency = .2
		bird.BackgroundColor3 = Color3.new(200, 0, 0) 
		bird.ZIndex = 2
		bird.Draggable = false
		bird.Active = true
		bird.Text = "Bird Wings"
		bird.Parent = c
 		bird.MouseButton1Down:connect(function()
--bird wings Gifted by harrypotterfan249, Local Script!
--Jump Two Time
--Down Press Q

script.Parent = nil

function fly()

for i,v in pairs(script:GetChildren()) do

        pcall(function() v.Value = "" end)

        game:GetService("Debris"):AddItem(v,.1)

end

function weld(p0,p1,c0,c1,par)

        local w = Instance.new("Weld",p0 or par)

        w.Part0 = p0

        w.Part1 = p1

        w.C0 = c0 or CFrame.new()

        w.C1 = c1 or CFrame.new()

        return w

end

local motors = {}

function motor(p0,p1,c0,c1,des,vel,par)

        local w = Instance.new("Motor6D",p0 or par)

        w.Part0 = p0

        w.Part1 = p1

        w.C0 = c0 or CFrame.new()

        w.C1 = c1 or CFrame.new()

        w.MaxVelocity = tonumber(vel) or .05

        w.DesiredAngle = tonumber(des) or 0

        return w

end

function lerp(a,b,c)

    return a+(b-a)*c

end

function clerp(c1,c2,al)

        local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}

        local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}

        for i,v in pairs(com1) do

                com1[i] = lerp(v,com2[i],al)

        end

        return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))

end

function ccomplerp(c1,c2,al)

        local com1 = {c1:components()}

        local com2 = {c2:components()}

        for i,v in pairs(com1) do

                com1[i] = lerp(v,com2[i],al)

        end

        return CFrame.new(unpack(com1))

end

function tickwave(time,length,offset)

        return (math.abs((tick()+(offset or 0))%time-time/2)*2-time/2)/time/2*length

end

function invcol(c)

        c = c.Color

        return BrickColor.new(Color3.new(1-c.b,1-c.g,1-c.r))

end

local oc = oc or function(...) return ... end

local plr = game.Players.LocalPlayer

local char = plr.Character

local tor = char.Torso

local hum = char.Humanoid

hum.PlatformStand = false

pcall(function()

        char.Wings:Destroy()

end)

pcall(function()

        char.Angel:Destroy() -- hat

end)

local mod = Instance.new("Model",char)

mod.Name = "Wings"

local special = {

        --antiboomz0r = {"Really black","Institutional white",0,0,false,Color3.new(1,1,.95),Color3.new(1,1,.6)},

        antiboomz0r = {"New Yeller",nil,0.4,0.7,true,Color3.new(1,1,.95),Color3.new(1,1,.6)},

        --antiboomz0r = {"Cyan","Toothpaste",0,0,false,Color3.new(1,0,0),Color3.new(0,0,0)},

        taart = {"Royal purple",nil,.4,.4,true},

        mitta = {"Black",nil,0,0,false},

        penjuin3 = {"White",nil,0,0,false},

        thepc8110 = {"Black","Bright red",.5,0,false,Color3.new(1,0,0),Color3.new(0,0,0)},

        nonspeaker = {"Cyan","Toothpaste",0,0,false,Color3.new(1,0,0),Color3.new(0,0,0)},

        littleau999 = {"Reddish brown",1030,0,0,false},

        unscripter = {"Really black","Really black",.2,0,true,Color3.new(0,0,0),Color3.new(0,0,0)},

        oxcool1 = {"Really black","White",.2,0,false,Color3.new(0,0,0),Color3.new(0,0,0)},

        krodmiss = {"Really black",nil,0,0,false},

}

local topcolor = invcol(char.Torso.BrickColor)

local feacolor = char.Torso.BrickColor

local ptrans = 0

local pref = 0

local fire = false

local fmcol = Color3.new()

local fscol = Color3.new()

local spec = special[plr.Name:lower()]

if spec then

        topcolor,feacolor,ptrans,pref,fire,fmcol,fscol = spec[1] and BrickColor.new(spec[1]) or topcolor,spec[2] and BrickColor.new(spec[2]) or feacolor,spec[3],spec[4],spec[5],spec[6],spec[7]

end

local part = Instance.new("Part")

part.FormFactor = "Custom"

part.Size = Vector3.new(.2,.2,.2)

part.TopSurface,part.BottomSurface = 0,0

part.CanCollide = false

part.BrickColor = topcolor

part.Transparency = ptrans

part.Reflectance = pref

local ef = Instance.new("Fire",fire and part or nil)

ef.Size = .15

ef.Color = fmcol or Color3.new()

ef.SecondaryColor = fscol or Color3.new()

part:BreakJoints()


function newpart()

        local clone = part:Clone()

        clone.Parent = mod

        clone:BreakJoints()

        return clone

end

local feath = newpart()

feath.BrickColor = feacolor

feath.Transparency = 0

Instance.new("SpecialMesh",feath).MeshType = "Sphere"

function newfeather()

        local clone = feath:Clone()

        clone.Parent = mod

        clone:BreakJoints()

        return clone

end


---------- RIGHT WING

local r1 = newpart()

r1.Size = Vector3.new(.3,1.5,.3)*1.2

local rm1 = motor(tor,r1,CFrame.new(.35,.6,.4) * CFrame.Angles(0,0,math.rad(-60)) * CFrame.Angles(math.rad(30),math.rad(-25),0),CFrame.new(0,-.8,0),.1)

local r2 = newpart()

r2.Size = Vector3.new(.4,1.8,.4)*1.2

local rm2 = motor(r1,r2,CFrame.new(0,.75,0) * CFrame.Angles(0,0,math.rad(50)) * CFrame.Angles(math.rad(-30),math.rad(15),0),CFrame.new(0,-.9,0),.1)

local r3 = newpart()

r3.Size = Vector3.new(.3,2.2,.3)*1.2

local rm3 = motor(r2,r3,CFrame.new(.1,.9,0) * CFrame.Angles(0,0,math.rad(-140)) * CFrame.Angles(math.rad(-3),0,0),CFrame.new(0,-1.1,0),.1)

local r4 = newpart()

r4.Size = Vector3.new(.25,1.2,.25)*1.2

local rm4 = motor(r3,r4,CFrame.new(0,1.1,0) * CFrame.Angles(0,0,math.rad(-10)) * CFrame.Angles(math.rad(-3),0,0),CFrame.new(0,-.6,0),.1)

local feather = newfeather()

feather.Mesh.Scale = Vector3.new(1,1,1)

feather.Size = Vector3.new(.4,3,.3)

weld(r4,feather,CFrame.new(-.1,-.3,0),CFrame.new(0,-1.5,0))

feather = newfeather()

feather.Mesh.Scale = Vector3.new(1,1,1)

feather.Size = Vector3.new(.4,2.3,.3)

weld(r4,feather,CFrame.new(.1,-.1,0) * CFrame.Angles(0,math.random()*.1,0),CFrame.new(0,-1.1,0))

feather = newfeather()

feather.Mesh.Scale = Vector3.new(1,1,1)

feather.Size = Vector3.new(.35,2.2,.25)

weld(r4,feather,CFrame.new(.1,-.3,0) * CFrame.Angles(0,math.random()*.1,math.rad(-10)),CFrame.new(0,-1.1,0))

local rf3 = {}

for i=0,7 do

        feather = newfeather()

        feather.Mesh.Scale = Vector3.new(1,1,1)

        feather.Size = Vector3.new(.45,2.2,.35)

        table.insert(rf3,motor(r3,feather,CFrame.new(.05,1-i*.285,0) * CFrame.Angles(0,math.random()*.1,math.rad(-25-i*2)),CFrame.new(0,-feather.Size.Y/2,0)))

end

local rf2 = {}

for i=0,6 do

        feather = newfeather()

        feather.Mesh.Scale = Vector3.new(1,1,1)

        feather.Size = Vector3.new(.45,2.2-i*.08,.3)

        table.insert(rf2,motor(r2,feather,CFrame.new(.05,.75-i*.26,0) * CFrame.Angles(0,math.random()*.1,math.rad(-75-i*4)),CFrame.new(0,-feather.Size.Y/2,0)))

end

local rf1 = {}

for i=0,6 do

        feather = newfeather()

        feather.Mesh.Scale = Vector3.new(1,1,1)

        feather.Size = Vector3.new(.37,1.65-i*.06,.25)

        table.insert(rf1,motor(r1,feather,CFrame.new(.05,.63-i*.21,0) * CFrame.Angles(0,math.random()*.05,math.rad(-75)),CFrame.new(0,-feather.Size.Y/2,0)))

end

---------- LEFT WING

local l1 = newpart()

l1.Size = Vector3.new(.3,1.5,.3)*1.2

local lm1 = motor(tor,l1,CFrame.new(-.35,.6,.4) * CFrame.Angles(0,0,math.rad(60)) * CFrame.Angles(math.rad(30),math.rad(25),0) * CFrame.Angles(0,-math.pi,0),CFrame.new(0,-.8,0) ,.1)

local l2 = newpart()

l2.Size = Vector3.new(.4,1.8,.4)*1.2

local lm2 = motor(l1,l2,CFrame.new(0,.75,0) * CFrame.Angles(0,0,math.rad(50)) * CFrame.Angles(math.rad(30),math.rad(-15),0),CFrame.new(0,-.9,0),.1)

local l3 = newpart()

l3.Size = Vector3.new(.3,2.2,.3)*1.2

local lm3 = motor(l2,l3,CFrame.new(.1,.9,0) * CFrame.Angles(0,0,math.rad(-140)) * CFrame.Angles(math.rad(3),0,0),CFrame.new(0,-1.1,0),.1)

local l4 = newpart()

l4.Size = Vector3.new(.25,1.2,.25)*1.2

local lm4 = motor(l3,l4,CFrame.new(0,1.1,0) * CFrame.Angles(0,0,math.rad(-10)) * CFrame.Angles(math.rad(3),0,0),CFrame.new(0,-.6,0),.1)

local feather = newfeather()

feather.Mesh.Scale = Vector3.new(1,1,1)

feather.Size = Vector3.new(.4,3,.3)

weld(l4,feather,CFrame.new(-.1,-.3,0),CFrame.new(0,-1.5,0))

feather = newfeather()

feather.Mesh.Scale = Vector3.new(1,1,1)

feather.Size = Vector3.new(.4,2.3,.3)

weld(l4,feather,CFrame.new(.1,-.1,0) * CFrame.Angles(0,math.random()*.1,0),CFrame.new(0,-1.1,0))

feather = newfeather()

feather.Mesh.Scale = Vector3.new(1,1,1)

feather.Size = Vector3.new(.35,2.2,.25)

weld(l4,feather,CFrame.new(.1,-.3,0) * CFrame.Angles(0,math.random()*.1,math.rad(-10)),CFrame.new(0,-1.1,0))

local lf3 = {}

for i=0,7 do

        feather = newfeather()

        feather.Mesh.Scale = Vector3.new(1,1,1)

        feather.Size = Vector3.new(.45,2.2,.35)

        table.insert(lf3,motor(l3,feather,CFrame.new(.05,1-i*.285,0) * CFrame.Angles(0,math.random()*.1,math.rad(-25-i*2)),CFrame.new(0,-feather.Size.Y/2,0)))

end

local lf2 = {}

for i=0,6 do

        feather = newfeather()

        feather.Mesh.Scale = Vector3.new(1,1,1)

        feather.Size = Vector3.new(.45,2.2-i*.08,.3)

        table.insert(lf2,motor(l2,feather,CFrame.new(.05,.75-i*.26,0) * CFrame.Angles(0,math.random()*.1,math.rad(-75-i*4)),CFrame.new(0,-feather.Size.Y/2,0)))

end

local lf1 = {}

for i=0,6 do

        feather = newfeather()

        feather.Mesh.Scale = Vector3.new(1,1,1)

        feather.Size = Vector3.new(.37,1.65-i*.06,.25)

        table.insert(lf1,motor(l1,feather,CFrame.new(.05,.63-i*.21,0) * CFrame.Angles(0,math.random()*.05,math.rad(-75)),CFrame.new(0,-feather.Size.Y/2,0)))

end

local rwing = {rm1,rm2,rm3,rm4}

local lwing = {lm1,lm2,lm3,lm4}

local oc0 = {}

for i,v in pairs(rwing) do

        oc0[v] = v.C0

end

for i,v in pairs(lwing) do

        oc0[v] = v.C0

end

function gotResized()

        if lastsize then

                if tor.Size == lastsize then return end -- This shouldn't happen?

                local scaleVec = tor.Size/lastsize

                for i,v in pairs(oc0) do

                        oc0[i] = v-v.p+scaleVec*v.p

                end

                lastsize = tor.Size

        end

        lastsize = tor.Size

end

tor.Changed:connect(function(p)

        if p == "Size" then

                gotResized()

        end

end)

gotResized()

local idle = {0,0.5,-.2,0; .05,.05,.1,.05; -.6,-1.5,.1,0;}--0,.3,0,0

local outlow = {-.7,-.2,1.8,0; .3,.05,.1,.05; .2,0,0,0}

local outhigh = {.5,-.2,1.8,0; .3,.05,.1,.05; .2,0,0,0}

local veryhigh = {.9,-.3,1.9,0; .3,.05,.1,.05; .2,0,0,0}

local flap1 = {-.3,.3,1.1,-.2; .3,.05,.1,.05; .2,-.6,0,0}

local divebomb = {0,.2,.4,-.7; .3,.05,.1,.05; 0,-.5,-.6,0}


function setwings(tab,time)

        time = time or 10

        for i=1,4 do

                rwing[i].DesiredAngle = tab[i]

                lwing[i].DesiredAngle = tab[i]

                rwing[i].MaxVelocity = math.abs(tab[i]-rwing[i].CurrentAngle)/time

                lwing[i].MaxVelocity = math.abs(tab[i]-lwing[i].CurrentAngle)/time

                local rcf = oc0[rwing[i]] * (tab[12+i] or CFrame.new())

                local lcf = oc0[lwing[i]] * (tab[12+i] or CFrame.new())

        end

        for i,v in pairs(rf1) do

                v.DesiredAngle = tab[9]

                v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time

        end

        for i,v in pairs(lf1) do

                v.DesiredAngle = tab[9]

                v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time

        end

        for i,v in pairs(rf2) do

                v.DesiredAngle = tab[10]

                v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time

        end

        for i,v in pairs(lf2) do

                v.DesiredAngle = tab[10]

                v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time

        end

        for i,v in pairs(rf3) do

                v.DesiredAngle = tab[11]

                v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time

        end

        for i,v in pairs(lf3) do

                v.DesiredAngle = tab[11]

                v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time

        end

end

setwings(outhigh,1)

flying = false

moving = false

for i,v in pairs(tor:GetChildren()) do

        if v.ClassName:lower():match("body") then

                v:Destroy()

        end

end

local ctor = tor:Clone()

ctor:ClearAllChildren()

ctor.Name = "cTorso"

ctor.Transparency = 1

ctor.CanCollide = false

ctor.FormFactor = "Custom"

ctor.Size = Vector3.new(.2,.2,.2)

ctor.Parent = mod

weld(tor,ctor)

local bg = Instance.new("BodyGyro",ctor)

bg.maxTorque = Vector3.new()

bg.P = 15000

bg.D = 1000

local bv = Instance.new("BodyVelocity",ctor)

bv.maxForce = Vector3.new()

bv.P = 15000

vel = Vector3.new()

cf = CFrame.new()

flspd = 0


keysdown = {}

keypressed = {}

ktime = {}

descendtimer = 0

jumptime = tick()

hum.Jumping:connect(function()

        jumptime = tick()

end)

cam = workspace.CurrentCamera

kd = plr:GetMouse().KeyDown:connect(oc(function(key) 

        keysdown[key] = true 

        keypressed[key] = true 

        if key == "q" then 

                descendtimer = tick() 

        elseif key == " " and not hum.Jump then 

                jumptime = tick()

        elseif (key == "a" or key == "d") and ktime[key] and tick()-ktime[key] < .3 and math.abs(reqrotx) < .3 then

                reqrotx = key == "a" and math.pi*2 or -math.pi*2

        end

        ktime[key] = tick() 

end))

ku = plr:GetMouse().KeyUp:connect(function(key) 

        keysdown[key] = false 

        if key == " " then 

                descendtimer = tick() 

        end 

end)

function mid(a,b,c)

        return math.max(a,math.min(b,c or -a))

end

function bn(a)

        return a and 1 or 0

end

function gm(tar)

        local m = 0

        for i,v in pairs(tar:GetChildren()) do

                if v:IsA("BasePart") then

                        m = m + v:GetMass()

                end

                        m = m + gm(v)

        end

        return m

end

reqrotx = 0

local grav = 196.2

local con

con = game:GetService("RunService").Stepped:connect(oc(function()

        --[[if not mod:IsDescendantOf(workspace) then

                pcall(function() kd:disconnect() end)

                pcall(function() ku:disconnect() end)

                bg:Destroy()

                bv:Destroy()

                con:disconnect()

                script:Destroy()

                return

        end]]

        local obvel = tor.CFrame:vectorToObjectSpace(tor.Velocity)

        local sspd, uspd,fspd = obvel.X,obvel.Y,obvel.Z

        if flying then

                local lfldir = fldir

                fldir = cam.CoordinateFrame:vectorToWorldSpace(Vector3.new(bn(keysdown.d)-bn(keysdown.a),0,bn(keysdown.s)-bn(keysdown.w))).unit

                local lmoving = moving

                moving = fldir.magnitude > .1

                if lmoving and not moving then

                        idledir = lfldir*Vector3.new(1,0,1)

                        descendtimer = tick()

                end

                local dbomb = fldir.Y < -.6 or (moving and keysdown["1"])

                if moving and keysdown["0"] and lmoving then

                        fldir = (Vector3.new(lfldir.X,math.min(fldir.Y,lfldir.Y+.01)-.1,lfldir.Z)+(fldir*Vector3.new(1,0,1))*.05).unit

                end

                local down = tor.CFrame:vectorToWorldSpace(Vector3.new(0,-1,0))

                local descending = (not moving and keysdown["q"] and not keysdown[" "])

                cf = ccomplerp(cf,CFrame.new(tor.Position,tor.Position+(not moving and idledir or fldir)),keysdown["0"] and .02 or .07)

                local gdown = not dbomb and cf.lookVector.Y < -.2 and tor.Velocity.unit.Y < .05

                hum.PlatformStand = true

                bg.maxTorque = Vector3.new(1,1,1)*9e5

                local rotvel = CFrame.new(Vector3.new(),tor.Velocity):toObjectSpace(CFrame.new(Vector3.new(),fldir)).lookVector

                bg.cframe = cf * CFrame.Angles(not moving and -.1 or -math.pi/2+.2,moving and mid(-2.5,rotvel.X/1.5) + reqrotx or 0,0)

                reqrotx = reqrotx - reqrotx/10

                bv.maxForce = Vector3.new(1,1,1)*9e4*.5

                local anioff =(bn(keysdown[" "])-bn(keysdown["q"]))/2

                local ani = tickwave(1.5-anioff,1)

                bv.velocity = bv.velocity:Lerp(Vector3.new(0,bn(not moving)*-ani*15+(descending and math.min(20,tick()-descendtimer)*-8 or bn(keysdown[" "])-bn(keysdown["q"]))*15,0)+vel,.6) 

                vel = moving and cf.lookVector*flspd or Vector3.new()

                flspd = math.min(120,lerp(flspd,moving and (fldir.Y<0 and flspd+(-fldir.Y)*grav/60 or math.max(50,flspd-fldir.Y*grav/300)) or 60,.4))

                setwings(moving and (gdown and outlow or dbomb and divebomb) or (descending and veryhigh or flap1),15)

                for i=1,4 do

                        --CFrame.Angles(-.5+bn(i==3)*2.4+bn(i==4)*.5,.1+bn(i==2)*.5-bn(i==3)*1.1,bn(i==3)*.1)

                        rwing[i].C0 = clerp(rwing[i].C0,oc0[rwing[i]] * (gdown and CFrame.new() or dbomb and CFrame.Angles(-.5+bn(i==3)*.4+bn(i==4)*.5,.1+bn(i==2)*.5-bn(i==3)*1.1,bn(i==3)*.1) or descending and CFrame.Angles(.3,0,0) or CFrame.Angles((i*.1+1.5)*ani,ani*-.5,1*ani)),descending and .8 or .2)

                        lwing[i].C0 = clerp(lwing[i].C0,oc0[lwing[i]] * (gdown and CFrame.new() or dbomb and CFrame.Angles(-(-.5+bn(i==3)*.4+bn(i==4)*.5),-(.1+bn(i==2)*.5-bn(i==3)*1.1),bn(i==3)*.1) or descending and CFrame.Angles(-.3,0,0) or CFrame.Angles(-(i*.1+1.5)*ani,ani*.5,1*ani)),descending and .8 or .2)

                end

                local hit,ray = workspace:FindPartOnRayWithIgnoreList(Ray.new(tor.Position,Vector3.new(0,-3.5+math.min(0,bv.velocity.y)/30,0)),{char})

                if hit and down.Y < -.85 and tick()-flystart > 1 then

                        flying = false

                        hum.PlatformStand = false

                        tor.Velocity = Vector3.new()

                end

        else

                bg.maxTorque = Vector3.new()

                bv.maxForce = Vector3.new()

                local ani = tickwave(walking and .8 or 4.5,1)

                setwings(idle,10)

                local x,y,z = fspd/160,uspd/700,sspd/900

                for i=1,4 do

                        rwing[i].C0 = clerp(rwing[i].C0,oc0[rwing[i]] * CFrame.Angles(ani*.1 + -mid(-.1,x),0 + -mid(-.1,y) + bn(i==2)*.6,ani*.02 + -mid(-.1,z)),.2)

                        lwing[i].C0 = clerp(lwing[i].C0,oc0[lwing[i]] * CFrame.Angles(ani*-.05 + mid(-.1,x),0 + mid(-.1,y) + -bn(i==2)*.6,ani*.02 + mid(-.1,z)),.2)

                end

                if keypressed[" "] and not flying and (tick()-jumptime > .05 and (tick()-jumptime < 3 or hum.Jump)) then

                        vel = Vector3.new(0,50,0)

                        bv.velocity = vel

                        idledir = cam.CoordinateFrame.lookVector*Vector3.new(1,0,1)

                        cf = tor.CFrame * CFrame.Angles(-.01,0,0)

                        tor.CFrame = cf

                        bg.cframe = cf

                        flystart = tick()

                        flying = true

                end

        end

        keypressed = {}

end))



end fly()
end)

local god = Instance.new("TextButton",b)
		god.Size = UDim2.new(1,1,0,30)
		god.Position = UDim2.new(0,0,0,10)
		god.BorderSizePixel = go
		god.BackgroundTransparency = .2
		god.BackgroundColor3 = Color3.new(200, 0, 0) 
		god.ZIndex = 2
		god.Draggable = false
		god.Active = true
		god.Text = "God"
		god.Parent = d
 		god.MouseButton1Down:connect(function()
Player = Game.Players.LocalPlayer
Character = Player.Character

Character.Humanoid.MaxHealth = 100000000

Player.RobloxLocked = true
Character.RobloxLocked = true
for _, part in pairs(Character) do
part.RobloxLocked = true
end
while true do end
end)

local fff = Instance.new("TextButton",b)
		fff.Size = UDim2.new(1,1,0,30)
		fff.Position = UDim2.new(0,0,0,50)
		fff.BorderSizePixel = go
		fff.BackgroundTransparency = .2
		fff.BackgroundColor3 = Color3.new(200, 0, 0) 
		fff.ZIndex = 2
		fff.Draggable = false
		fff.Active = true
		fff.Text = "ForceField"
		fff.Parent = d
 		fff.MouseButton1Down:connect(function()
 Instance.new("ForceField", game.Players.LocalPlayer.Character)
end)


local spe = Instance.new("TextButton",b)
		spe.Size = UDim2.new(1,1,0,30)
		spe.Position = UDim2.new(0,0,0,90)
		spe.BorderSizePixel = go
		spe.BackgroundTransparency = .2
		spe.BackgroundColor3 = Color3.new(200, 0, 0) 
		spe.ZIndex = 2
		spe.Draggable = false
		spe.Active = true
		spe.Text = "Speed +10"
		spe.Parent = d
 		spe.MouseButton1Down:connect(function()
local me = game.Players.LocalPlayer
 		if me.Character ~= nil then
 	 	if me.Character:FindFirstChild("Humanoid") then
  	 me.Character:FindFirstChild("Humanoid").WalkSpeed = me.Character:FindFirstChild("Humanoid").WalkSpeed + 10 
    end
 end
end)

local spa = Instance.new("TextButton",b)
		spa.Size = UDim2.new(1,1,0,30)
		spa.Position = UDim2.new(0,0,0,130)
		spa.BorderSizePixel = go
		spa.BackgroundTransparency = .2
		spa.BackgroundColor3 = Color3.new(200, 0, 0) 
		spa.ZIndex = 2
		spa.Draggable = false
		spa.Active = true
		spa.Text = "Sparkles"
		spa.Parent = d
 		spa.MouseButton1Down:connect(function()
x = Instance.new("Sparkles")x.Parent = game.Workspace.LocalPlayer.Torso
end)

local fir = Instance.new("TextButton",b)
		fir.Size = UDim2.new(1,1,0,30)
		fir.Position = UDim2.new(0,0,0,170)
		fir.BorderSizePixel = go
		fir.BackgroundTransparency = .2
		fir.BackgroundColor3 = Color3.new(200, 0, 0) 
		fir.ZIndex = 2
		fir.Draggable = false
		fir.Active = true
		fir.Text = "Fire"
		fir.Parent = d
 		fir.MouseButton1Down:connect(function()
x = Instance.new("Fire")x.Parent = game.Workspace.LocalPlayer.Head
end)

local btools = Instance.new("TextButton",b)
		btools.Size = UDim2.new(1,1,0,30)
		btools.Position = UDim2.new(0,0,0,210)
		btools.BorderSizePixel = go
		btools.BackgroundTransparency = .2
		btools.BackgroundColor3 = Color3.new(200, 0, 0) 
		btools.ZIndex = 2
		btools.Draggable = false
		btools.Active = true
		btools.Text = "Btools"
		btools.Parent = d
 		btools.MouseButton1Down:connect(function()
x = Instance.new("HopperBin")  x.Parent = game.Players.LocalPlayer.Backpack  x.BinType = Enum.BinType.Clone
    x = Instance.new("HopperBin")  x.Parent = game.Players.LocalPlayer.Backpack  x.BinType = Enum.BinType.Hammer
    x = Instance.new("HopperBin")  x.Parent = game.Players.LocalPlayer.Backpack  x.BinType = Enum.BinType.GameTool
end)

local Fly = Instance.new("TextButton",b)
		Fly.Size = UDim2.new(1,1,0,30)
		Fly.Position = UDim2.new(0,0,0,250)
		Fly.BorderSizePixel = go
		Fly.BackgroundTransparency = .2
		Fly.BackgroundColor3 = Color3.new(200, 0, 0) 
		Fly.ZIndex = 2
		Fly.Draggable = false
		Fly.Active = true
		Fly.Text = "Admin"
		Fly.Parent = d
 		Fly.MouseButton1Down:connect(function()
		loadstring(game:GetObjects('rbxassetid://295850902')[1].Source)()

end)
---------------------------------------------------------------------------------------
local fap = Instance.new("TextButton",b)
		fap.Size = UDim2.new(1,1,0,30)
		fap.Position = UDim2.new(0,0,0,50)
		fap.BorderSizePixel = go
		fap.BackgroundTransparency = .2
		fap.BackgroundColor3 = Color3.new(200, 0, 0) 
		fap.ZIndex = 2
		fap.Draggable = false
		fap.Active = true
		fap.Text = "Fap"
		fap.Parent = c
 		fap.MouseButton1Down:connect(function()
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
end)

local illu = Instance.new("TextButton",b)
		illu.Size = UDim2.new(1,1,0,30)
		illu.Position = UDim2.new(0,0,0,90)
		illu.BorderSizePixel = go
		illu.BackgroundTransparency = .2
		illu.BackgroundColor3 = Color3.new(200, 0, 0) 
		illu.ZIndex = 2
		illu.Draggable = false
		illu.Active = true
		illu.Text = "Illuminati"
		illu.Parent = c
 		illu.MouseButton1Down:connect(function()
local music = Instance.new("Sound", workspace)
music.SoundId = "http://www.roblox.com/asset/?id=191907895"
music.Volume = 20
music.Looped = true
music:Play()
t1 = "http://www.roblox.com/asset/?id=223238256"
t2 = "http://www.roblox.com/asset/?id=201788175"
t3 = "http://www.roblox.com/asset/?id=261113277"
local p = game.Players:GetChildren()
local w = game.Workspace:GetChildren()
for i,v in pairs(p) do
pe = Instance.new("ParticleEmitter", v.Character.Torso)
pe.Texture = t3
pe.VelocitySpread = 360
end
for i= 1,#w do
if w[i]:isA("BasePart") then
pe = Instance.new("ParticleEmitter", w[i])
pe.Texture = t3
pe.VelocitySpread = 5
end
end
local Sky = Instance.new("Sky", game.Lighting)
Sky.SkyboxBk = t1
Sky.SkyboxDn = t2
Sky.SkyboxFt = t3
Sky.SkyboxLf = t1
Sky.SkyboxRt = t2
Sky.SkyboxUp = t3
Sky.StarCount = 0
end)

-------------------------------------------------------------------------------------------
local knife = Instance.new("TextButton",b)
		knife.Size = UDim2.new(1,1,0,30)
		knife.Position = UDim2.new(0,0,0,130)
		knife.BorderSizePixel = go
		knife.BackgroundTransparency = .2
		knife.BackgroundColor3 = Color3.new(200, 0, 0) 
		knife.ZIndex = 2
		knife.Draggable = false
		knife.Active = true
		knife.Text = "Knife"
		knife.Parent = c
 		knife.MouseButton1Down:connect(function()
  local CoreGui= game.Players.LocalPlayer.PlayerGui
local n=Instance.new("ScreenGui") 
 n.Parent=CoreGui
 n.Name="HandLoaderGui:D."
----------------------------------------------------------------------------------------------------
local f=Instance.new("Frame")  ----------------------------Main Frame
 f.Parent=n
 f.Size=UDim2.new(0,100,0,20)
 f.Position=UDim2.new(0,0,0.4,0)
 f.Visible=true
 f.Style="RobloxRound"
----------------------------------
local Loadchar=Instance.new("TextButton")
 Loadchar.Parent=f
 Loadchar.Size=UDim2.new(1,10,1,10)
 Loadchar.Position=UDim2.new(0,-6,0,-5)
 Loadchar.Text="Execute Knife"
 Loadchar.TextColor3=Color3.new(1, 1, 1)
 Loadchar.Style="RobloxButton"
-----
 local Close = Instance.new("TextButton")
 Close.Parent = f
 Close.Size = UDim2.new(0,10,1,10)
 Close.Position = UDim2.new(1,10,0,-5)
 Close.Text = "<"
 Close.TextColor3 = Color3.new(1, 1, 1)
 Close.Style = "RobloxButton"
-----
local Open = Instance.new("TextButton")
 Open.Parent = f
 Open.Size = UDim2.new(0,10,1,10)
 Open.Position = UDim2.new(1,10,0,-5)
 Open.Text = ">"
 Open.Visible = false
 Open.TextColor3 = Color3.new(1, 1, 1)
 Open.Style = "RobloxButton"
-------------------------------------------------------------------
Close.MouseButton1Down:connect(function()
 f:TweenPosition(UDim2.new(0,-100,0.5,0),Out,"Linear",.5,true,nil)
wait(.1)
 Close.Visible = false
 Open.Visible = true
end)
-------------------------------------------------------------------
Open.MouseButton1Down:connect(function()
 f:TweenPosition(UDim2.new(0,0,0.5,0),Out,"Linear",.5,true,nil)
wait(.1)
 Close.Visible = true
 Open.Visible = false
end)
Loadchar.MouseButton1Down:connect(function()
me = game.Players.LocalPlayer
char = me.Character
selected = false
attacking = false
hurt = false
grabbed = nil
mode = "drop"
bloodcolors = {"Bright red", "Really red"}
function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)
part.Parent = parent
part.formFactor = form
part.CanCollide = collide
part.Transparency = tran
part.Reflectance = ref
part.Size = Vector3.new(x,y,z)
part.BrickColor = BrickColor.new(color)
part.TopSurface = 0
part.BottomSurface = 0
part.Anchored = anchor
part.Locked = true
part:BreakJoints()
end
function weld(w, p, p1, a, b, c, x, y, z)
w.Parent = p
w.Part0 = p
w.Part1 = p1
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
end
function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.MeshType = type
end
function remgui()
 for _,v in pairs(me.PlayerGui:GetChildren()) do
 if v.Name == "Modeshow" then
 v:remove()
 end
 end
end
function inform(text,delay)
 remgui()
 local sc = Instance.new("ScreenGui")
 sc.Parent = me.PlayerGui
 sc.Name = "Modeshow"
 local bak = Instance.new("Frame",sc)
 bak.BackgroundColor3 = Color3.new(1,1,1)
 bak.Size = UDim2.new(0.94,0,0.1,0)
 bak.Position = UDim2.new(0.03,0,0.037,0)
 bak.BorderSizePixel = 0
 local gi = Instance.new("TextLabel",sc)
 gi.Size = UDim2.new(0.92,0,0.09,0)
 gi.BackgroundColor3 = Color3.new(0,0,0)
 gi.Position = UDim2.new(0.04,0,0.042,0)
 gi.TextColor3 = Color3.new(1,1,1)
 gi.FontSize = "Size12"
 gi.Text = text
 coroutine.resume(coroutine.create(function()
 wait(delay)
 sc:remove()
 end))
end
if char:findFirstChild("Bricks",true) then
 char:findFirstChild("Bricks",true):remove()
end
bricks = Instance.new("Model",me.Character)
bricks.Name = "Bricks"
--Parts-------------------------Parts-------------------------Parts-------------------------Parts----------------------
rarm = char:findFirstChild("Right Arm")
larm = char:findFirstChild("Left Arm")
lleg = char:findFirstChild("Left Leg")
torso = char:findFirstChild("Torso")
hum = char:findFirstChild("Humanoid")
righthold = Instance.new("Part")
prop(righthold, bricks, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
w11 = Instance.new("Weld")
weld(w11, rarm, righthold, 0, 0, 0, 0, 1, 0)
lefthold = Instance.new("Part")
prop(lefthold, bricks, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
w12 = Instance.new("Weld")
weld(w12, larm, lefthold, 0, 0, 0, 0, 1, 0)
hold = Instance.new("Part")
prop(hold, bricks, false, 0, 0, 0.2, 0.4, 0.7, "Black", false, "Custom")
oh = Instance.new("Weld")
weld(oh, lleg, hold, -math.pi/1.4, 0, math.rad(35), 0.55, -0.9, 0.3)
knife = Instance.new("Part")
prop(knife, bricks, false, 0, 0, 0.35, 1.1, 0.5, "Really red", false, "Custom")
orr = Instance.new("Weld")
weld(orr, hold, knife, 0, 0, 0, 0, 0.7, 0)
ar = Instance.new("Weld")
weld(ar, lefthold, nil, math.pi/2, 0, math.pi, 0, 0, 0)
blade = Instance.new("Part")
prop(blade, bricks, false, 0, 0, 0.1, 1.5, 0.4, "Medium grey", false, "Custom")
Instance.new("BlockMesh",blade).Scale = Vector3.new(0.3,1,1)
w2 = Instance.new("Weld")
weld(w2, knife, blade, 0, 0, 0, 0, -1.2, 0)
blade2 = Instance.new("Part")
prop(blade2, bricks, false, 0, 0, 0.1, 0.5, 0.4, "Medium grey", false, "Custom")
local mew = Instance.new("SpecialMesh",blade2)
mew.MeshType = "Wedge"
mew.Scale = Vector3.new(0.3,1,1)
w3 = Instance.new("Weld")
weld(w3, blade, blade2, 0, 0, 0, 0, -1, 0)
rb = Instance.new("Part")
prop(rb, bricks, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
w13 = Instance.new("Weld")
weld(w13, torso, rb, 0, 0, 0, -1.5, -0.5, 0)
lb = Instance.new("Part")
prop(lb, bricks, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
w14 = Instance.new("Weld")
weld(w14, torso, lb, 0, 0, 0, 1.5, -0.5, 0)
rw = Instance.new("Weld")
weld(rw, rb, nil, 0, 0, 0, 0, 0.5, 0)
lw = Instance.new("Weld")
weld(lw, lb, nil, 0, 0, 0, 0, 0.5, 0)
grabweld = nil
platlol = nil
lolhum = nil
function touch(h)
 if hurt then
 if grabbed == nil then
 local hu = h.Parent:findFirstChild("Humanoid")
 local head = h.Parent:findFirstChild("Head")
 local torz = h.Parent:findFirstChild("Torso")
 if hu ~= nil and head ~= nil and torz ~= nil and h.Parent.Name ~= name then
 if hu.Health > 0 then
 grabbed = torz
 hu.PlatformStand = true
 local w = Instance.new("Weld")
 weld(w,righthold,grabbed,math.pi/2,0.2,0,0.7,-0.9,-0.6)
 grabweld = w
 lolhum = hu
 local lolxd = true
 platlol = lolxd
 hu.Changed:connect(function(prop)
 if prop == "PlatformStand" and platlol then
 hu.PlatformStand = true
 end
 end)
 end
 end
 end
 end
end
righthold.Touched:connect(touch)
lefthold.Touched:connect(touch)
function bleed(part,po)
 local lol1 = math.random(5,30)/100
 local lol2 = math.random(5,30)/100
 local lol3 =math.random(5,30)/100
 local lol4 = math.random(1,#bloodcolors)
 local p = Instance.new("Part")
 prop(p,part.Parent,false,0,0,lol1,lol2,lol3,bloodcolors[lol4],false,"Custom")
 p.CFrame = part.CFrame * CFrame.new(math.random(-5,5)/10,po,math.random(-5,5)/10)
 p.Velocity = Vector3.new(math.random(-190,190)/10,math.random(-190,190)/10,math.random(-190,190)/10)
 p.RotVelocity = Vector3.new(math.random(-400,400)/10,math.random(-400,400)/10,math.random(-400,400)/10)
 coroutine.resume(coroutine.create(function()
 wait(3)
 p:remove()
 end))
end
if script.Parent.className ~= "HopperBin" then
 h = Instance.new("HopperBin",me.Backpack)
 h.Name = "Grab"
 script.Parent = h
end
bin = script.Parent
function select(mouse)
 orr.Part1 = nil
 ar.Part1 = knife
 mouse.Button1Down:connect(function()
 if attacking == false then
 attacking = true
 lw.Part1 = larm
 rw.Part1 = rarm
 hurt = true
 for i=1, 8 do
 rw.C0 = rw.C0 * CFrame.new(-0.03,0,-0.08) * CFrame.fromEulerAnglesXYZ(0.18,0.04,0)
 lw.C0 = lw.C0 * CFrame.new(0.06,0,-0.06) * CFrame.fromEulerAnglesXYZ(0.15,-0.11,-0.05)
 wait()
 end
 wait(1)
 hurt = false
 if grabbed == nil then
 for i=1, 4 do
 rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
 lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.12) * CFrame.fromEulerAnglesXYZ(-0.3,0.22,0.05)
 wait()
 end
 lw.C0 = CFrame.new(0,0,0)
 rw.C0 = CFrame.new(0,0,0)
 lw.Part1 = nil
 rw.Part1 = nil
 attacking = false
 end
 elseif hurt == false and grabbed ~= nil and mode == "drop" then
 grabweld:remove()
 grabweld = nil
 platlol = false
 grabbed = nil
 lolhum.PlatformStand = false
 lolhum = nil
 for i=1, 4 do
 rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
 lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.3,0.2,0)
 wait()
 end
 lw.C0 = CFrame.new(0,0,0)
 rw.C0 = CFrame.new(0,0,0)
 lw.Part1 = nil
 rw.Part1 = nil
 attacking = false
 platlol = nil
 elseif hurt == false and grabbed ~= nil and grabweld ~= nil and mode == "throw" then
 grabweld:remove()
 grabweld = nil
 local bf = Instance.new("BodyForce",grabbed)
 bf.force = torso.CFrame.lookVector * 8500
 bf.force = bf.force + Vector3.new(0,7400,0)
 coroutine.resume(coroutine.create(function()
 wait(0.12)
 bf:remove()
 end))
 for i=1, 6 do
 rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.35,0,0)
 lw.C0 = lw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.18,0,0)
 wait()
 end
 for i=1, 4 do
 rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.47,0,0)
 lw.C0 = lw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0)
 wait()
 end
 wait(0.2)
 platlol = false
 grabbed = nil
 lolhum.PlatformStand = false
 lolhum = nil
 for i=1, 4 do
 rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
 lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.3,0.2,0)
 wait()
 end
 lw.C0 = CFrame.new(0,0,0)
 rw.C0 = CFrame.new(0,0,0)
 lw.Part1 = nil
 rw.Part1 = nil
 attacking = false
 platlol = nil
 elseif hurt == false and grabbed ~= nil and lolhum ~= nil and grabweld ~= nil and mode == "kill" then
 for i=1, 5 do
 lw.C0 = lw.C0 * CFrame.new(0.02,0.12,0.1) * CFrame.fromEulerAnglesXYZ(-0.05,0,-0.03)
 wait()
 end
 local ne = grabbed:findFirstChild("Neck")
 coroutine.resume(coroutine.create(function()
 local duh = grabbed
 local duh2 = grabbed.Parent.Head
 local lolas = lolhum
 duh.RotVelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
 for i=1, 60 do
 wait()
 local hm = math.random(1,9)
 pcall(function()
 if hm == 1 then
 duh2.Sound.Pitch = math.random(90,110)/100
 duh2.Sound:play()
 end

 end)

 if hm > 0 and hm < 3 then

 bleed(duh,1)
 bleed(duh2,-0.5)
 end
 end
 lolas.Health = 0
 for i=1, 85 do
 wait()
 local hm = math.random(1,9)
 pcall(function()
 if hm == 1 then
 duh2.Sound.Pitch = math.random(90,110)/100
 duh2.Sound:play()
 end
 end)
 if hm > 0 and hm < 3 then
 bleed(duh,1)
 bleed(duh2,-0.5)
 end
 end
 end))
 for i=1, 3 do
 lw.C0 = lw.C0 * CFrame.new(0.02,0.12,0.1) * CFrame.fromEulerAnglesXYZ(-0.05,0,-0.03)
 if ne ~= nil then
 grabbed.Neck.C0 = grabbed.Neck.C0 * CFrame.fromEulerAnglesXYZ(-0.35,0,0)
 end
 wait()
 end
 grabweld:remove()
 grabweld = nil
 for i=1, 4 do
 lw.C0 = lw.C0 * CFrame.new(-0.04,-0.24,-0.2) * CFrame.fromEulerAnglesXYZ(0.1,0,0.06)
 wait()
 end
 for i=1, 4 do
 rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
 lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.12) * CFrame.fromEulerAnglesXYZ(-0.3,0.22,0.05)
 wait()
 end
 lw.C0 = CFrame.new(0,0,0)
 rw.C0 = CFrame.new(0,0,0)
 lw.Part1 = nil
 rw.Part1 = nil
 platlol = false
 grabbed = nil
 lolhum = nil
 attacking = false
 platlol = nil
 end
 end)
 mouse.KeyDown:connect(function(kai)
 key = kai:lower()
 if key == "q" then
 mode = "drop"
 inform("Mode: Drop",2)
 elseif key == "e" then
 mode = "throw"
 inform("Mode: Throw",2)
 elseif key == "f" then
 mode = "kill"
 inform("Mode: Kill",2)
 end
 end)
end
function desel()
 repeat wait() until attacking == false
 orr.Part1 = knife
 ar.Part1 = nil
end
bin.Selected:connect(select)
bin.Deselected:connect(desel)
char.Humanoid.Died:connect(function()
 pcall(function()
 grabweld:remove()
 grabweld = nil
 grabbed = nil
 platlol = false
 platlol = nil
 end)
end)
inform("Custom Knife Script by: Crypto",2)
end)
        end) 
------------------------------------------------------------------------------------

local glitch = Instance.new("TextButton",b)
		glitch.Size = UDim2.new(1,1,0,30)
		glitch.Position = UDim2.new(0,0,0,250)
		glitch.BorderSizePixel = go
		glitch.BackgroundTransparency = .2
		glitch.BackgroundColor3 = Color3.new(200, 0, 0) 
		glitch.ZIndex = 2
		glitch.Draggable = false
		glitch.Active = true
		glitch.Text = "Glitch"
		glitch.Parent = e
 		glitch.MouseButton1Down:connect(function()

local Player = game.Players.LocalPlayer
local User = Player.Character
local Cursor = Player:GetMouse()
  User.Archivable=true
local Glitch = User:clone()
  for i,v in pairs(Glitch:GetChildren()) do
if v:IsA'Script' or v:IsA'LocalScript' then v:Destroy() end
  if v:findFirstChild("face") then
    v.face:Destroy()
  end
    if v.Name=='Humanoid' or v:IsA'Hat' or v:IsA'Clothing' then
      v:Destroy() 
    end
    if v:IsA'BasePart' then v.CanCollide=false v.Transparency=0.5 end
end

for i,v in pairs(User:GetChildren()) do
    if v:IsA'Hat' or v:IsA'Clothing' or v:IsA'CharacterMesh' then v:Destroy() end
  end
local Click = false

local Modes = {"Teleport","Disturb","Run","SwapDeath"}

local Mode = Modes[1]

local Pressed = {}

Cursor.KeyDown:connect(function(Key)
  for i,v in pairs(Pressed) do Pressed[i]=false end
  if Pressed[Key] then Pressed[Key]=false else
Pressed[Key] = true end
end)


Cursor.Button1Down:connect(function()
Click = true
end)

Cursor.Button1Up:connect(function()
Click = false
end)
named=function(part,namez)
  for i,v in pairs(namez) do
    if part.Name:lower()==v:lower() then return true end
  end
  return nil
  end
local Teleporting = false

while wait(0) do
  if Pressed['t'] then
    Mode=Modes[1]
  end
  if Pressed['x'] then
    Mode=Modes[2]
  end
  if Pressed['v'] then
    Mode=Modes[3]
  end
  if Pressed['q'] then
    Mode=Modes[4]
    end
  if not Teleporting then
    if Click and Mode==Modes[1] then
    local spot = Cursor.Hit
    Teleporting=true
    local dir=CFrame.new(User.HumanoidRootPart.CFrame.p,spot.p)
    User.HumanoidRootPart.CFrame=dir
    local dist=(spot.p-dir.p).magnitude
    dist=dist<400 and dist or 400
    for i=1,dist,10 do
    User.HumanoidRootPart.CFrame=dir*CFrame.new(0,0,-dist/2)
    local glitch=Glitch:clone()
    glitch.Parent=workspace
    glitch.HumanoidRootPart.CFrame=dir*CFrame.new(0,3,-i)
    glitch.HumanoidRootPart.Anchored=true
    game.Debris:AddItem(glitch,1)
    wait(-1)
  end
  for i=1,10 do
    User.HumanoidRootPart.Anchored=true
    User.HumanoidRootPart.CFrame=dir*CFrame.new(0,2,-dist)
    wait(0)
    User.HumanoidRootPart.Anchored=false
    end
    wait(0)
    Teleporting=false
    end
end
if Mode==Modes[2] then
  if Click then
    User.HumanoidRootPart.BrickColor=BrickColor.Black()
    User.Head.BrickColor=BrickColor.Gray()
    User['Right Arm'].BrickColor=BrickColor.Gray()
    User['Left Arm'].BrickColor=BrickColor.Gray()
    User['Left Leg'].BrickColor=BrickColor.Black()
    User['Right Leg'].BrickColor=BrickColor.Black()
    for i=1,math.random(2,7) do
      local tf=Glitch:Clone()
      tf.Parent=workspace
      tf.HumanoidRootPart.CFrame=User.HumanoidRootPart.CFrame
      *CFrame.new(math.random(-15,10),math.random(-10,10),math.random(-15,25))
      *CFrame.new(0,0,1)
      game.Debris:AddItem(tf,math.random(1,20)/7)
      tf.HumanoidRootPart.Anchored=true
      tf.HumanoidRootPart.Touched:connect(function(h)
        if not named(h,{'Head','Torso','Right Arm','Left Arm',"Right Leg","Left Leg","Base","HumanoidRootPart"}) then
          local dup=h:clone()
          local cf=h.CFrame
          local p = h.Parent
          h:Destroy()
          dup:clearAllChildren()
          dup.Anchored=true
          dup.Parent=p
          dup.CFrame=cf*CFrame.Angles(0,math.rad(180),0)
          dup.Anchored=false
          game.Debris:AddItem(dup,6)
          end
        end)
      end
    else for i,v in pairs(Glitch:children()) do pcall(function() User[v.Name].BrickColor=v.BrickColor end) end
    end
end
if not Click then User.Humanoid.WalkSpeed=20 end
if Mode==Modes[3] and Click then
  User.Humanoid.WalkSpeed=100
  local sp=User.HumanoidRootPart.CFrame
  wait(0)
  local spp=User.HumanoidRootPart.CFrame
  --if (sp.p-spp.p).magnitude>1 then
    local d=(sp.p-spp.p).magnitude
    
    local cl=Glitch:clone()
    cl.Parent=workspace
    cl.HumanoidRootPart.CFrame=sp*CFrame.new(0,0,3)
    cl.HumanoidRootPart.Anchored=true
    for i,v in pairs(cl:children()) do pcall(function() v.Transparency=0 end) end
    game.Debris:AddItem(cl,0.75)
    if math.random(4)==1 then
      cl.HumanoidRootPart.CFrame=cl.HumanoidRootPart.CFrame*CFrame.new(math.random(1,3)==math.random(1,3) and -10 or 10,0,-3)
      if math.random(3)==1 then
        cf1=User.HumanoidRootPart.CFrame
        cf2=cl.HumanoidRootPart.CFrame
        User.HumanoidRootPart.CFrame=cf2
        cl.HumanoidRootPart.CFrame=cf1
        wait(0.2)
        if Click then
        User.HumanoidRootPart.CFrame=cf1
        cl.HumanoidRootPart.CFrame=cf2
        end
      end
      wait(0)
      end
  --end
end
if Mode==Modes[4] and Click then
  if Cursor.Target and not Teleporting then
    local targ=Cursor.Target
    if targ.Parent:findFirstChild'Torso' then
      targ.Parent.Archivable=true
      local CC=targ.Parent:clone()
      local CCC=Instance.new("Model")
      CCC.Name='DeathClone'
      for i,v in pairs(CC:children()) do
        if v.Name~='Head' and v.Name~='Torso' and not v.Name:match'Arm' or v.Name:match'Leg' then
        else
          pcall(function()
          local cccc=v:clone()
          cccc.Parent=CCC
          cccc.CanCollide=false
          cccc.Transparency=0.5
          end)
        end
    end
    local die=targ.Parent
    die.HumanoidRootPart.CFrame=CFrame.new(die.HumanoidRootPart.Position,User.HumanoidRootPart.CFrame.p)
    User.HumanoidRootPart.CFrame=CFrame.new(User.HumanoidRootPart.Position,die.HumanoidRootPart.Position)
    Teleporting=true
    local spot1=die.HumanoidRootPart.CFrame
    local spot2=User.HumanoidRootPart.CFrame
    local d1=(spot1.p-spot2.p).magnitude
    local d2=(spot2.p-spot1.p).magnitude
    local D1=d1/2
    local D2=d2/2
    die.HumanoidRootPart.CFrame=spot1*CFrame.new(0,0,-D1)
    User.HumanoidRootPart.CFrame=spot2*CFrame.new(0,0,-D2)
    coroutine.wrap(function()
    for i=1,d1,5 do
      local gl=CCC:clone()
      gl:MakeJoints()
      gl.Parent=workspace
      gl:MakeJoints()
      
      
      gl.Torso.CFrame=spot1*CFrame.new(0,0,-i)
      gl.Torso.Anchored=true
      game.Debris:AddItem(gl,1)
      wait(0)
    end
    die.Torso.CFrame=spot1*CFrame.new(0,0,-d1)
    die.Torso:breakJoints()
  end)()
  for i=1,d2,5 do
    local gl=Glitch:clone()
    gl.Parent=workspace
    gl.Torso.CFrame=spot2*CFrame.new(0,0,-i)
    game.Debris:AddItem(gl,1)
    wait(0)
  end
  User.HumanoidRootPart.CFrame=spot1
  Teleporting=false
    end
  end
end
end
end)
























local reap = Instance.new("TextButton",b)
		reap.Size = UDim2.new(1,1,0,30)
		reap.Position = UDim2.new(0,0,0,290)
		reap.BorderSizePixel = go
		reap.BackgroundTransparency = .2
		reap.BackgroundColor3 = Color3.new(200, 0, 0) 
		reap.ZIndex = 2
		reap.Draggable = false
		reap.Active = true
		reap.Text = "Reaper"
		reap.Parent = e
 		reap.MouseButton1Down:connect(function()
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
MMouse=nil
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

mouse=Player:GetMouse()
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
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("Really red")
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
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new("Really red")
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

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
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

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(0.296501815, 5.18878126, 0.296499223))
Handleweld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.10050106, -1.63029861, -0.888347149, -1, 0, 0, 0, 0, -1, -0, -0.999999881, -0))
mesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really red","Hitbox",Vector3.new(0.200000003, 6.98600721, 2.19299841))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -3.93773937, 2.93521118, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Hitbox,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2.52026534, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -1.70486319, 3.70584869, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 0.815379143, 3.85409546, -0.999993443, -5.94257529e-007, -4.47034836e-008, -2.98022105e-008, -6.0737176e-007, -0.999998927, 5.9425787e-007, -0.999993384, 6.66978679e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(1.03775609, 0.311326832, 1.18599701))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.40932465, 3.81469727e-006, -6.91413879e-006, -2.98023295e-008, -1, -0, 1, -2.98023295e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501815, 0.889504969, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.86102295e-006, -1.34825706, -1.8123436, 0.999997854, 1.3482402e-007, 1.3200642e-007, -1.99253947e-009, 0.707105041, -0.707106531, -1.88677433e-007, 0.7071051, 0.707106531))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501815, 0.889504969, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.76837158e-006, 1.33309555, -1.79717827, 0.999997854, 7.14049833e-008, 2.88419812e-007, -2.54434127e-007, 0.707104981, 0.707106411, -1.53452262e-007, -0.707104921, 0.707106352))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -2.44612718, 3.85409546, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.296501756, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.37199664, -2.81639481, -0.999993324, -1.35600567e-006, 7.45057918e-008, -4.47034942e-008, -1.49011569e-007, 0.999998868, -1.34110451e-006, 0.999993265, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, 2.14962149, -2.81639862, 0.999993205, 5.96046448e-007, -4.47034836e-008, 2.98021234e-008, 6.07371646e-007, -0.999998927, -5.96046448e-007, 0.999993205, 6.66978679e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.593003511, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -1.18598497, 3.85409546, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.59437418, -2.81639481, -0.999993324, -1.35600567e-006, 7.45057918e-008, -4.47034942e-008, -1.49011569e-007, 0.999998868, -1.34110451e-006, 0.999993265, 2.08616129e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -1.55661559, 3.85409546, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.326151937, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.8536377, 0.000444412231, -6.91413879e-006, -2.9802333e-008, -0.999999762, -0, 1, -2.98023402e-008, 0, 0, 0, 0.999999523))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 2.0013752, 3.85409546, -0.999993443, -5.94257529e-007, -4.47034836e-008, -2.98022105e-008, -6.0737176e-007, -0.999998927, 5.9425787e-007, -0.999993384, 6.66978679e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.296501756, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -2.22374678, 3.85409546, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.296499103))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.80853271, 0.000414848328, 3.47587585, 1.29208814e-007, -0.866024733, -0.499999523, 1, 2.00156606e-007, -8.8263846e-008, 1.76517091e-007, -0.499999642, 0.866024554))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.889505386, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00040435791, -1.87283707, -3.30593491, 0.999993205, 3.10420091e-006, 4.20707329e-006, 5.11838152e-006, -0.500021577, -0.86601007, -5.17362992e-007, 0.86601001, -0.500015497))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.296499103))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.15766907, 0.000414848328, -0.0542945862, 1.73149076e-007, -0.866024733, 0.499999464, 1, 1.09283768e-007, -1.57012991e-007, 8.13355285e-008, 0.499999583, 0.866024554))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.444752693, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000381469727, 0.518871069, 4.00193787, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.15768051, 0.000414848328, 0.168071747, 1.73149047e-007, -0.866024673, 0.499999404, 1, 1.09283775e-007, -1.57012963e-007, 8.13355712e-008, 0.499999523, 0.866024494))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1.77899528))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.9568634, 0.000414848328, 4.06890678, 1.29209454e-007, -0.866017103, -0.499994904, 0.99999994, 2.00155014e-007, -8.82613804e-008, 1.7651513e-007, -0.499995023, 0.866016924))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.741247892))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.6042366, 0.000414848328, 1.40539384, 7.28354408e-008, -0.999999523, 2.98026634e-008, 1, 7.28354905e-008, -1.137834e-007, 1.13783528e-007, 2.9802635e-008, 0.999999285))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.741247892))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.15763474, 0.000415802002, -0.721405029, 8.67096972e-008, -0.866025329, 0.499999881, 1, 3.44270887e-008, -1.13789923e-007, 8.13314571e-008, 0.5, 0.86602515))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.741247892))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.95671082, 0.000415802002, 2.80871201, 4.27689706e-008, -0.86602515, -0.499999851, 0.999999762, 1.25296964e-007, -1.31482579e-007, 1.76515783e-007, -0.499999851, 0.866025209))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.592998326))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.15768814, 0.000414848328, 0.538698196, 1.73149076e-007, -0.866024733, 0.499999464, 1, 1.09283768e-007, -1.57012991e-007, 8.1335557e-008, 0.499999583, 0.866024554))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.593003631, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000418663025, -4.66182327, -2.80873108, 0.999993205, -2.08179517e-006, 4.68745384e-006, 5.02319881e-006, 0.499976099, -0.866036355, -4.73424905e-007, 0.866031289, 0.499978751))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.741247892))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.30587387, 0.000415802002, -0.721378326, 8.67091714e-008, -0.866024256, 0.499999464, 0.999999046, 3.4425458e-008, -1.13791891e-007, 8.13342709e-008, 0.499999762, 0.86602515))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.741247892))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.80846024, 0.000415802002, 2.8087101, 4.27693685e-008, -0.86602515, -0.499999851, 0.999999762, 1.25295941e-007, -1.31480022e-007, 1.76513069e-007, -0.499999851, 0.866025209))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.15765762, 0.000414848328, -0.27664566, 1.73148948e-007, -0.866023302, 0.499998629, 1, 1.09283704e-007, -1.57012749e-007, 8.13356706e-008, 0.499998748, 0.866023123))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.889505386, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000422477722, -5.40308189, -2.95698166, 0.999993205, -2.08179517e-006, 4.68745384e-006, 5.02319881e-006, 0.499976099, -0.866036355, -4.73424905e-007, 0.866031289, 0.499978751))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.593003631, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000400543213, -1.13156891, -3.15768433, 0.999993205, 3.10420091e-006, 4.20707329e-006, 5.11838152e-006, -0.500021577, -0.86601007, -5.17362992e-007, 0.86601001, -0.500015497))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.80859375, 0.000414848328, 3.69829178, 1.29208786e-007, -0.866024613, -0.499999523, 1, 2.00156563e-007, -8.82638247e-008, 1.76517119e-007, -0.499999642, 0.866024435))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.741254389, 0.296501786, 0.889497578))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.55724716, 0.000415802002, 0.593008757, -2.98023437e-008, -1, -0, 1, -2.98023437e-008, 0, 0, 0, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.80845261, 0.000414848328, 3.25345612, 1.29208672e-007, -0.866023123, -0.499998778, 0.999999762, 2.00156279e-007, -8.82637536e-008, 1.76517077e-007, -0.499998778, 0.866023183))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1.77899528))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.30587006, 0.000414848328, 0.538694382, 1.73149331e-007, -0.866016984, 0.499995172, 0.99999994, 1.09285118e-007, -1.57010405e-007, 8.13343917e-008, 0.499995291, 0.866016805))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.592998326))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.80862808, 0.000414848328, 4.06892586, 1.29208814e-007, -0.866024733, -0.499999523, 1, 2.00156606e-007, -8.8263846e-008, 1.76517119e-007, -0.499999642, 0.866024554))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, 2.89088011, 3.26107788, -0.999993324, -1.62995764e-006, 4.10754041e-007, -2.91542648e-007, 1.04308128e-007, -0.999998927, 1.61505602e-006, -0.999993324, -2.53319683e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.89087987, -3.26107788, -0.999993324, -1.35600567e-006, 7.45057918e-008, -4.47034942e-008, -1.49011569e-007, 0.999998868, -1.34110451e-006, 0.999993265, 2.08616129e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501815, 4.00277376, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -0.00343322754, -0.573273778, 0.999997854, 1.29937892e-008, 1.07842467e-007, -1.29937483e-008, 0.999997437, 0, -1.07842268e-007, 5.96046448e-008, 0.999999464))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.26012194, -2.81639481, -0.999993324, -1.35600567e-006, 7.45057918e-008, -4.47034942e-008, -1.49011569e-007, 0.999998868, -1.34110451e-006, 0.999993265, 2.08616129e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, 0.815383554, -2.81639481, 0.999993205, 5.96046448e-007, -4.47034836e-008, 2.98021234e-008, 6.07371646e-007, -0.999998927, -5.96046448e-007, 0.999993205, 6.66978679e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 1.18600714, 0.592998505))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -1.03774309, 3.33521271, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.296501756, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.0377425, -2.81639481, -0.999993324, -1.35600567e-006, 7.45057918e-008, -4.47034942e-008, -1.49011569e-007, 0.999998868, -1.34110451e-006, 0.999993265, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.592998505))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -1.70486319, 3.33521271, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.0377562, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -2.2978766, 3.26107407, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.48348236, 3.81469727e-006, -2.2978785, -2.98023224e-008, -0.999999821, -0, 0.999999821, -2.98023224e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.815379977, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -2.89088058, 3.48345947, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 1.18600726, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -2.37198853, 3.11284637, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.48348236, 3.81469727e-006, -2.00137448, -2.98023224e-008, -0.999999821, -0, 0.999999821, -2.98023224e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.815379977, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.48348236, 3.81469727e-006, -2.5943768, -2.98023224e-008, -0.999999821, -0, 0.999999821, -2.98023224e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.815379977, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 1.0377562, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -2.29787683, 3.48345947, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 2.07551241, 0.592998505))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -4.00276041, 3.33521271, 0.999993443, 1.45976469e-006, 1.94331719e-007, -7.51218181e-008, 1.49011612e-007, 0.999998868, 1.45976469e-006, -0.999993384, 2.23517361e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.815379918, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2.9650178, 0.889497638))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -4.4475174, 3.33521271, 0.999993443, 1.45976469e-006, 1.94331719e-007, -7.51218181e-008, 1.49011612e-007, 0.999998868, 1.45976469e-006, -0.999993384, 2.23517361e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.311326861, 0.296501487, 0.326149136))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 2.00148392, -6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.311326861, 1.33425784, 0.326149136))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 9.91821289e-005, -6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 2.9650178, 0.444748878))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.86102295e-006, -3.84435654, 4.01723862, 0.999993443, 1.59027059e-006, 2.6722384e-007, 2.68622188e-007, -0.258817196, 0.965924799, 1.57439217e-006, -0.965919495, -0.258818537))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.815379977, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.311326861, 0.296501487, 0.326149136))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -1.85279465, -6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2.52026534, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.70486307, 2.96461105, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 4.29927588, 0.741248131))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.86102295e-006, -4.5114727, 4.01726913, 0.999993443, 1.59027059e-006, 2.6722384e-007, 2.68622188e-007, -0.258817196, 0.965924799, 1.57439217e-006, -0.965919495, -0.258818537))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.326151937, 0.200000003, 0.355799079))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 9.91821289e-005, -6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.311326861, 0.200000003, 0.326149136))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 1.03784561, -6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.33425796, 0.296501786, 1.48249602))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.40934753, 3.81469727e-006, -6.91413879e-006, -2.98023224e-008, -0.999999821, -0, 0.999999821, -2.98023224e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.311326861, 0.200000003, 0.326149136))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -1.03752136, -6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.326151937, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.40927505, 2.95639038e-005, 0.444754362, -2.98023295e-008, -1, -0, 1, -2.98023295e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.326151937, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.40908051, 0.000387191772, -6.91413879e-006, -2.98023259e-008, -0.999999523, -0, 1, -2.98023402e-008, 0, 0, 0, 0.999999285))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.326151937, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.96453476, 4.67300415e-005, -6.91413879e-006, -2.98023295e-008, -1, -0, 1, -2.98023295e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.326151937, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.40927505, 2.95639038e-005, -0.444758654, -2.98023295e-008, -1, -0, 1, -2.98023295e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.296501786, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.00191879, 0.00050163269, 0.815378904, -2.98023437e-008, -0.999999642, -0, 0.999999642, -2.98023437e-008, 0, 0, 0, 0.999999762))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.444748729))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45595932, 0.000414848328, 1.25711417, 7.28358245e-008, -0.999999046, 2.98032496e-008, 1, 7.28358458e-008, -1.13780651e-007, 1.13780807e-007, 2.98032212e-008, 0.999998808))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.296501487, 0.296499223))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -2.74229431, -6.67572021e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999523))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.296501487, 0.296499223))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 2.74255371, -6.67572021e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999523))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.296501786, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.48226929e-005, 2.89077377, -2.43186951e-005, 0.999999642, 1.29942332e-008, 1.07873738e-007, -1.29943079e-008, 0.999999642, 7.15448891e-007, -1.07873717e-007, -7.15448834e-007, 0.999999762))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000374794006, -0.963628292, 4.00193787, -0.999993443, -3.16762635e-006, -1.49011381e-008, -1.49021755e-008, 8.47403953e-007, -0.999998868, 3.16762657e-006, -0.999993384, -7.8780505e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.296501786, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000382423401, -0.88951993, -3.11242676, 0.999993205, 1.42891167e-006, -3.27825433e-007, -4.32134527e-007, 1.02892602e-006, -0.999998927, -1.47361538e-006, 0.999993265, 9.69328653e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.444752693, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000383377075, 0.518874645, -3.11242294, -0.999993443, -1.32620335e-006, 2.76574696e-007, 3.95783559e-007, -9.85657607e-007, 0.999998868, -1.37090683e-006, 0.999993265, 9.26059613e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1.48249602))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.60424805, 0.000413894653, 2.51726198, 1.59275899e-007, -0.999999821, 1.49011584e-007, 1, 1.59275913e-007, -1.1378453e-007, 1.1378458e-007, 1.49011612e-007, 0.999999583))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.593003631, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000409126282, -2.96186352, -3.45602417, 0.999993205, 5.70906195e-007, 5.16308319e-006, 5.08593212e-006, -2.63005495e-005, -0.999997497, -5.03489844e-007, 0.999994576, -2.12490504e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45597839, 0.000414848328, 1.55362201, 1.59275089e-007, -0.999997139, -5.96043996e-008, 1, 1.59274975e-007, -1.13784445e-007, 1.13784942e-007, -5.96045808e-008, 0.999996901))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.592998326))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45598221, 0.000413894653, 2.36899614, 1.59275146e-007, -0.999998569, -2.98022584e-008, 1, 1.59275189e-007, -1.13784601e-007, 1.137849e-007, -2.98023508e-008, 0.999998331))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45597839, 0.000414848328, 1.99837613, 1.59275089e-007, -0.99999845, -5.96045027e-008, 1, 1.59275174e-007, -1.13784559e-007, 1.13784928e-007, -5.96046306e-008, 0.999998212))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.296499103))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45598602, 0.000414848328, 1.77599883, 1.59275174e-007, -0.999998808, -2.98022726e-008, 1, 1.59275203e-007, -1.13784644e-007, 1.13784857e-007, -2.98023366e-008, 0.999998569))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.889505386, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000412940979, -3.70311022, -3.60429001, 0.999993205, 5.70906195e-007, 5.16308319e-006, 5.08593212e-006, -2.63005495e-005, -0.999997497, -5.03489844e-007, 0.999994576, -2.12490504e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 1.90172958, -0.639986753, 0.999993563, 1.29944793e-008, 1.07850958e-007, -1.29944917e-008, 0.999992311, 1.25175063e-006, -1.0785029e-007, -1.07292954e-006, 0.999998868))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.593003571, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 0.0706977844, -0.573273659, 0.999997854, 1.29939313e-008, 1.07844173e-007, -1.29939162e-008, 0.999997437, 2.38420625e-007, -1.07843974e-007, -1.78815498e-007, 0.999999464))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.815372765))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -0.596420288, -0.57327354, 0.999997854, 1.29939313e-008, 1.07844173e-007, -1.29939162e-008, 0.999997437, 2.38420625e-007, -1.07843974e-007, -1.78815498e-007, 0.999999464))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.741254449, 0.815372765))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.741254449, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -1.18922043, -0.57327342, 0.999997854, 1.29939313e-008, 1.07844173e-007, -1.29939162e-008, 0.999997437, 2.38420625e-007, -1.07843974e-007, -1.78815498e-007, 0.999999464))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.815372765))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 0.737804413, -0.573273778, 0.999997854, 1.29939313e-008, 1.07844173e-007, -1.29939162e-008, 0.999997437, 2.38420625e-007, -1.07843974e-007, -1.78815498e-007, 0.999999464))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.741254449, 0.815372765))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.62124634e-005, -1.92287064, -0.639983892, 0.999997854, 1.29942155e-008, 1.07847583e-007, -1.29942519e-008, 0.999997437, 7.15275121e-007, -1.07847377e-007, -6.55669055e-007, 0.999999464))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.741254449, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 1.33082199, -0.573274136, 0.999993563, 1.2994124e-008, 1.07846695e-007, -1.29940725e-008, 0.999992311, 6.55663769e-007, -1.07846034e-007, -4.76846481e-007, 0.999998868))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.815372765))

function attackone()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,10,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
                swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(10),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(80), math.rad(-70), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0.2)*angles(math.rad(0),math.rad(40),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
        end
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.6) 
so("http://roblox.com/asset/?id=231917871",Hitbox,1,0.8) 
 for i=0,1,0.1 do
                swait()
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
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(5),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.5) * angles(math.rad(0), math.rad(-70), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(70), math.rad(-70), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0.2)*angles(math.rad(0),math.rad(40),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
        end
        attack=false
con1:disconnect()
scfr = nil
end

function attacktwo()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,10,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
                swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(90)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(-80)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(90),math.rad(90)),.1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(70), math.rad(-70), math.rad(0)), 0.3)

        end

for i=0,1,1 do
swait()
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.7) 
so("http://www.roblox.com/asset/?id=234365573",Hitbox,1,0.7)
for i=0,1,0.1 do
swait()
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
end
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*euler(0,0,-6*i),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(-50)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(-10),math.rad(90)),.1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,-0,0)*angles(math.rad(-50),math.rad(0),math.rad(0)),.3)
end
end
con1:disconnect()
attack=false
scfr = nil
end

function attackthree()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,10,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-10),math.rad(0),math.rad(00)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(00)),.3)
RW.C0=clerp(RW.C0,cf(1,0.8,-1)*angles(math.rad(150),math.rad(0),math.rad(-50)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.8,-1)*angles(math.rad(150),math.rad(0),math.rad(50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,.2)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(-1,0,-.2)*angles(math.rad(-20),math.rad(-20),math.rad(50)),.3)
        end
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.4) 
so("http://www.roblox.com/asset/?id=234365549",Hitbox,1,0.6)
for i=0,1,.1 do
swait()
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
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(-5),math.rad(00)),.3)
RW.C0=clerp(RW.C0,cf(1,0.2,-.5)*angles(math.rad(10),math.rad(0),math.rad(-50)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.2,-.5)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,.2)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(-1,0,-.2)*angles(math.rad(-20),math.rad(-20),math.rad(50)),.3)
        end
attack=false
con1:disconnect()
scfr = nil
end

function CyanMoon()
attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,10,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(120),math.rad(80)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-10),math.rad(0),math.rad(-10)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(-5),math.rad(0)),.3)
end
for i=1,4 do
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.5) 
so("http://roblox.com/asset/?id=28144425",Torso,1,0.8)
swait()
for i=0,1,0.1 do
swait()
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
end
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(-40),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-60)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,5)*euler(0,-1.5,-6*i),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(-5),math.rad(0)),.3)
end
end
attack=false
con1:disconnect()
scfr = nil
end

function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part("Custom",workspace,"SmoothPlastic",0,0,"Really red","Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
CF=Part.CFrame
Numbb=0
randnumb=math.random()-math.random()
for i=0,1,0.05 do
wait()
CF=CF*cf(0,1,0)
--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
Part.CFrame=CF*euler(Numbb,0,0)
Part.Transparency=i
Numbb=Numbb+randnumb
end
Part.Parent=nil
end),prt)
end

function Execution() --HEUAHUEHAUEHAUHUEAHUAEHUAHEUAHEUH
attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,90,100,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
for i=0,1,0.03 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(60)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-60)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(90),math.rad(120)),.1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(100), math.rad(0), math.rad(0)), 0.1)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.2)
Handleweld.C0=clerp(Handleweld.C0,cf(0,-0,.4)*angles(math.rad(0),math.rad(10),math.rad(0)),.1)
end
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.5) 
so("http://roblox.com/asset/?id=28144425",Torso,1,0.5)
 hitconasdf = Hitbox.Touched:connect(function(hit)
                local hum12 = hit.Parent:FindFirstChild("Humanoid")
                if hum12 and not hum12:IsDescendantOf(Character) then
                        so('http://roblox.com/asset/?id=154965973',Hitbox,1,0.8)
                        for i = 1,20 do
                        BreakEffect(BrickColor.new("Really red"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        end
                   hitconasdf:disconnect()
                end
        end)
for i=0,1,0.03 do
swait()
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
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(60)),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(-20),math.rad(70)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.2)
Handleweld.C0=clerp(Handleweld.C0,cf(0,-0,.4)*angles(math.rad(0),math.rad(10),math.rad(0)),.2)
end
attack=false
con1:disconnect()
scfr = nil
pcall(function()
        hitconasdf:disconnect()
        end)
end

mouse.Button1Down:connect(function()
        if attack==false then
                if attacktype==1 then
                        attack=true
                        attacktype=2
                        attackone()
                elseif attacktype==2 then
                        attack=true
                        attacktype=3
                        attacktwo()
               elseif attacktype==3 then
                        attack=true
                        attacktype=1
                        attackthree()
                end
        end
end)

mouse.KeyDown:connect(function(k)
	k=k:lower()
	if k=='q' then
		if attack==false then
			CyanMoon()
		end
	elseif k=='e' then
		if attack==false then
			Execution()
		end
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,-0,.4)*angles(math.rad(85),math.rad(10),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,-0,.4)*angles(math.rad(85),math.rad(10),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(60)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(5),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(70), math.rad(100), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(-70), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0.2)*angles(math.rad(0),math.rad(40),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(60)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(10),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(70), math.rad(100), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(-70), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-100),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
end
end
end
if #Effects>0 then
for e=1,#Effects do
if Effects[e]~=nil then
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
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Blood" then
Mesh=Thing[7]
Thing[1].CFrame=Thing[1].CFrame*cf(0,.5,0)
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
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
end)






















