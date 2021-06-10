local plr = game:service'Players'.LocalPlayer
local m = plr:GetMouse()
local char = plr.Character
local runservice = game:service'RunService'
local modelScale = 1/5


pcall(function() local a = script.Parent.FaerieScript if a ~= script then a:Destroy() end end)
pcall(function() local a = char.Animate if a ~= script then a.Disabled = true a:Destroy() end end)
script.Name = "FaerieScript"

function weld(a,b,c,d)
        local w = Instance.new("Weld",a)
        w.Part0 = a
        w.Part1 = b
        w.C0 = c or CFrame.new()
        w.C1 = d or CFrame.new()
        return w
end

function lerp(a,b,c)
    return a+(b-a)*c
end

do  -- Ignore my clerp stuff stolen from stravvy
        local function QuaternionFromCFrame(cf) 
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
        local function QuaternionToCFrame(px, py, pz, x, y, z, w) 
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
        local function QuaternionSlerp(a, b, t) 
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
        function clerp(a,b,t) 
                local qa = {QuaternionFromCFrame(a)}
                local qb = {QuaternionFromCFrame(b)} 
                local ax, ay, az = a.x, a.y, a.z 
                local bx, by, bz = b.x, b.y, b.z  
                local _t = 1-t 
                return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
        end 
end

for i,v in pairs(char:GetChildren()) do
	if v:IsA("Hat") or v:IsA("BodyColors") or v:IsA("Clothing") or v:IsA("ShirtGraphic") then
		v:Destroy()
	end
end
Instance.new("Hat",char)
local root = char.HumanoidRootPart
local tw = root.RootJoint
local tor = char.Torso
local hd = char.Head
local hum = char.Humanoid
hum.Health = 40
hum.MaxHealth = 40
hum.WalkSpeed = 12
local rl,ll = char["Right Leg"],char["Left Leg"]
local ra,la = char["Right Arm"],char["Left Arm"]

local c0 = {
	rs = CFrame.new(1,.5,0),
	ls = CFrame.new(-1,.5,0),
	rh = CFrame.new(.5,-1,0),
	lh = CFrame.new(-.5,-1,0),
	nk = CFrame.new(0,1,0),
	tw = CFrame.new(0,0,0)*CFrame.Angles(0,0,0),
}
local c1 = {
	rs = CFrame.new(-.5,.5,0),
	ls = CFrame.new(.5,.5,0),
	rh = CFrame.new(0,1,0),
	lh = CFrame.new(0,1,0),
	nk = CFrame.new(0,-.5,0),
	tw = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
}

local rs = tor["Right Shoulder"]
local ls = tor["Left Shoulder"]
local rh = tor["Right Hip"]
local lh = tor["Left Hip"]
local nk = tor["Neck"]
for i,v in pairs(tor:GetChildren()) do
	if v:IsA("Motor6D") then
		v.DesiredAngle = 0
		v.MaxVelocity = 0
		v.CurrentAngle = 0
	end
end




pcall(function() tor.roblox:Destroy() end)

pcall(function() char.Faerie:Destroy() end)
local model = Instance.new("Model",char)
model.Name = "Faerie"

local BasePart = Instance.new("Part")
BasePart.CanCollide = false
BasePart.Anchored = false
BasePart.FormFactor = "Custom"
BasePart.Locked = true
BasePart.Size = Vector3.new()
BasePart.TopSurface,BasePart.BottomSurface,BasePart.LeftSurface,BasePart.RightSurface,BasePart.FrontSurface,BasePart.BackSurface = 10,10,10,10,10,10
BasePart:BreakJoints()

function NP(par)
    local p = BasePart:Clone()
    p.Parent = par or model
    return p
end

local w1 = NP()
w1.Transparency = .1
local w1m = Instance.new("SpecialMesh",w1)
w1m.MeshId = "rbxassetid://19367766"
w1m.TextureId = "rbxassetid://9854798"
w1m.Scale = Vector3.new(1.05, 1.05, 1.05)
local w1 = weld(tor,w1,CFrame.new(-.1,0.55,1.6))

local w2 = NP()
w2.Transparency = .1
local w2m = Instance.new("SpecialMesh",w2)
w2m.MeshId = "rbxassetid://19367766"
w2m.TextureId = "rbxassetid://9854798"
w2m.Scale = Vector3.new(1.05, 1.05, 1.05)
local w2 = weld(tor,w2,CFrame.new(.1,0.55,1.6))

local h = NP()
local hm = Instance.new("SpecialMesh",h)
hm.MeshId = "rbxassetid://154820214"
hm.TextureId = "rbxassetid://91740209"
hm.Scale = Vector3.new(1, 1, 1)
weld(hd,h,CFrame.new(0,0.2,0))

for i,v in pairs(char:GetChildren()) do
	if v:IsA("BasePart") then
		v.Material = "SmoothPlastic"
		v.TopSurface,v.BottomSurface,v.FrontSurface,v.BackSurface,v.LeftSurface,v.RightSurface = 10,10,10,10,10,10
	end
end

do
	if modelScale ~= 1 then
		for i,v in pairs(c0) do
			c0[i] = (v-v.p) + v.p*modelScale
		end
		for i,v in pairs(c1) do
			c1[i] = (v-v.p) + v.p*modelScale
		end
		local Joints = {}
	    local gtJoints,gtParts;

	    local function gtCFrame(cf)
	        return (cf-cf.p) + cf.p * modelScale
	    end

	    function gtJoints(p)
	        for i,v in pairs(p:GetChildren()) do
	            if v:IsA("JointInstance") then
	                table.insert(Joints,{v,v.Part0,v.Part1})
	                v.Part0 = nil
	                v.Part1 = nil
	                v.C0 = (v.C0-(v.C0.p)) + (v.C0.p * modelScale) 
	                v.C1 = (v.C1-(v.C1.p)) + (v.C1.p * modelScale) 
	            end
	            gtJoints(v)
	        end 
	    end

	    function gtParts(p)
	        for i,v in pairs(p:GetChildren()) do
	            if v:IsA("BasePart") then
	                pcall(function() v.FormFactor = "Custom" end)
	                local oldz = v.Size
	                local cf = tor.CFrame:toObjectSpace(v.CFrame)
	                v.Size = v.Size * modelScale
	                v.CFrame = tor.CFrame * gtCFrame(cf)
	                local mesh = nil
	                for i,t in pairs(v:GetChildren()) do 
	                    if t:IsA("DataModelMesh") then 
	                        mesh = t 
	                    end 
	                end
	                if mesh == nil and v:IsA("Part") and v.Shape == Enum.PartType.Ball then 
	                    mesh = Instance.new("SpecialMesh",v) 
	                    mesh.MeshType = Enum.MeshType.Sphere 
	                end
	                if mesh == nil and ((v:IsA("Part") and v.Shape == Enum.PartType.Block) or v:IsA("Seat") or v:IsA("VehicleSeat")) then 
	                    mesh = Instance.new("BlockMesh",v) 
	                end
	                if mesh ~= nil then
	                	if mesh:IsA("SpecialMesh") and mesh.MeshType == Enum.MeshType.FileMesh then
	                		mesh.Scale = mesh.Scale * modelScale
	                	else
	                    	mesh.Scale = mesh.Scale*(oldz*modelScale)/v.Size
	                    end
	                end
	            end
	            gtParts(v)
	        end 
	    end
	    gtJoints(char)
	    gtParts(char)
	    for i,v in pairs(Joints) do
	        v[1].Part0 = v[2]
	        v[1].Part1 = v[3]
	    end
	end
end
rs.C0,rs.C1 = c0.rs,c1.rs
ls.C0,ls.C1 = c0.ls,c1.ls
rh.C0,rh.C1 = c0.rh,c1.rh
lh.C0,lh.C1 = c0.lh,c1.lh
nk.C0,nk.C1 = c0.nk,c1.nk
tw.C0,tw.C1 = c0.tw,c1.tw

local w10,w20 = w1.C0,w2.C0

local pl = tor:FindFirstChild("FairyLight") or Instance.new("PointLight",tor)
pl.Name = "FairyLight"
pl.Shadows = false
pl.Range = 8
pl.Brightness = 10

local sparkles = tor:FindFirstChild("FairySparkles") or Instance.new("Sparkles",tor)
sparkles.Name = "FairySparkles"


local outfit = 0
local outfitparts = {ra,la,rl,ll,tor}
local outfits = {
	{{106705109},{106705077},{106703301},{106703213},{106705037}}
}


local mycolor = ll.BrickColor.Color
local mycolor2 = ll.BrickColor.Color

function setOutfit()
	local of = outfits[outfit]
	if of then
		for i,v in pairs(outfitparts) do
			local mesh = v:FindFirstChild("outfitMesh")
			local meshdata = outfits[outfit][i]
			if not mesh then
				mesh = Instance.new("SpecialMesh",v)
				mesh.Name = "outfitMesh"
				mesh.TextureId = "rbxassetid://9854798"
			end
			mesh.Scale =(meshdata[2] or Vector3.new(1,1,1)) * modelScale
			mesh.MeshId = "rbxassetid://"..meshdata[1]
			mesh.VertexColor = Vector3.new(mycolor2.r,mycolor2.g,mycolor2.b)
		end
	else
		for i,v in pairs(outfitparts) do
			pcall(function() v.outfitMesh:Destroy() end)
		end
	end
end
setOutfit()

local senabled = true
local lenabled = true
function changeColor()
	for i,v in pairs(char:GetChildren()) do
		if v:IsA("BasePart") then
			v.BrickColor = BrickColor.new(mycolor)
		end
	end
	local mc1 = Vector3.new(mycolor.r,mycolor.g,mycolor.b)
	local mc2 = Vector3.new(mycolor2.r,mycolor2.g,mycolor2.b)
	w1m.VertexColor,w2m.VertexColor,hm.VertexColor = mc1,mc1,mc2
	for i,v in pairs(outfitparts) do
		local mesh = v:FindFirstChild("outfitMesh")
		if mesh then
			mesh.VertexColor = mc2
		end
	end
	pl.Color = mycolor
	sparkles.SparkleColor = mycolor
end
changeColor()

do
	pcall(function() plr.PlayerGui.fairyColoring:Destroy() end)
	local scr = Instance.new("ScreenGui",plr.PlayerGui)
	scr.Name = "fairyColoring"
	local fr = Instance.new("Frame",scr)
	fr.Size = UDim2.new(0,-150,0,-65)
	fr.BackgroundColor3 = Color3.new(1,1,1)
	fr.BorderColor3 = Color3.new(.05,.05,.05)
	fr.BackgroundTransparency = .8
	fr.Position = UDim2.new(1,0,1,scr.Parent:FindFirstChild("PandaHelpNotify") and -20 or 0)
	fr.ZIndex = 9
	local am = 75
	local rval,gval,bval = mycolor.r,mycolor.g,mycolor.b
	local r = Instance.new("TextButton",fr)
	r.BackgroundTransparency = 1
	r.Size = UDim2.new(0,75,0,15)
	r.Position = UDim2.new(0,5,0,5)
	r.TextColor3 = Color3.new(1,1,1)
	r.TextStrokeTransparency = .4
	for i=1,am do
		local t = Instance.new("ImageLabel",r)
		t.BorderSizePixel = 0
		t.Size = UDim2.new(1/am,0,1,0)
		t.Position = UDim2.new((i-1)/am,0,0,0)
		t.Name = i
		t.ZIndex = 10
	end
	local rb = Instance.new("ImageLabel",r)
	rb.ZIndex = 10
	rb.Size = UDim2.new(0,2,1,-2)
	rb.BackgroundColor3 = Color3.new(0,0,0)
	rb.BackgroundTransparency = .5
	rb.BorderColor3 = Color3.new(.4,.4,.4)
	rb.Name = "b"
	local g = r:Clone()
	g.Parent = fr
	g.Position = UDim2.new(0,5,0,25)
	local b = r:Clone()
	b.Parent = fr
	b.Position = UDim2.new(0,5,0,45)
	r.ZIndex,g.ZIndex,b.ZIndex = 10,10,10
	local prev = Instance.new("TextButton",fr)
	prev.Size = UDim2.new(0,55,0,45)
	prev.Position = UDim2.new(0,90,0,5)
	prev.ZIndex = 10
	prev.BorderColor3 = Color3.new(.2,.2,.2)
	prev.TextColor3 = Color3.new(1,1,1)
	prev.TextStrokeTransparency = .4
	prev.TextYAlignment = "Bottom"
	prev.FontSize = "Size8"
	prev.TextWrapped = true
	local res = Instance.new("TextButton",fr)
	res.Size = UDim2.new(0,55,0,9)
	res.Position = UDim2.new(0,90,0,51)
	res.ZIndex = 10
	res.BorderColor3 = Color3.new(.2,.2,.2)
	res.BackgroundColor3 = Color3.new(.5,0,0)
	res.TextColor3 = Color3.new(1,1,1)
	res.Text = "reset"
	res.FontSize = "Size8"
	local mode = 0
	local function update(set)
		r.b.Position = UDim2.new(rval,-1,0,1)
		g.b.Position = UDim2.new(gval,-1,0,1)
		b.b.Position = UDim2.new(bval,-1,0,1)
		local col = Color3.new(rval,gval,bval)
		prev.BackgroundColor3 = mode == 1 and mycolor2 or mycolor
		prev.Text = ""
		r.Text = math.floor(rval*255+.5)
		g.Text = math.floor(gval*255+.5)
		b.Text = math.floor(bval*255+.5)
		for i,v in pairs(r:GetChildren()) do
			local n = tonumber(v.Name)
			if n then
				local sc = n/am
				v.BackgroundColor3 = Color3.new(sc,gval,bval)
			end
		end
		for i,v in pairs(g:GetChildren()) do
			local n = tonumber(v.Name)
			if n then
				local sc = n/am
				v.BackgroundColor3 = Color3.new(rval,sc,bval)
			end
		end
		for i,v in pairs(b:GetChildren()) do
			local n = tonumber(v.Name)
			if n then
				local sc = n/am
				v.BackgroundColor3 = Color3.new(rval,gval,sc)
			end
		end
		if set ~= false then
			if mode == 0 then
				mycolor = col
			end
			if mode == 1 then
				mycolor2 = col
			end
			changeColor()
		end
	end
	update()
	local rd,gd,bd = false,false,false
	r.MouseButton1Down:connect(function(x,y) rd = true rval = (x-r.AbsolutePosition.X)/r.AbsoluteSize.X update()  end)
	r.MouseButton1Up:connect(function() rd = false end)
	r.MouseLeave:connect(function() rd = false end)
	r.MouseMoved:connect(function(x,y) if not rd then return end rval = (x-r.AbsolutePosition.X)/r.AbsoluteSize.X update() end)
	g.MouseButton1Down:connect(function(x,y) gd = true gval = (x-g.AbsolutePosition.X)/g.AbsoluteSize.X update() end)
	g.MouseButton1Up:connect(function() gd = false end)
	g.MouseLeave:connect(function() gd = false end)
	g.MouseMoved:connect(function(x,y) if not gd then return end gval = (x-g.AbsolutePosition.X)/g.AbsoluteSize.X update() end)
	b.MouseButton1Down:connect(function(x,y) bd = true bval = (x-b.AbsolutePosition.X)/b.AbsoluteSize.X update() end)
	b.MouseButton1Up:connect(function() bd = false end)
	b.MouseLeave:connect(function() bd = false end)
	b.MouseMoved:connect(function(x,y) if not bd then return end bval = (x-b.AbsolutePosition.X)/b.AbsoluteSize.X update() end)
	res.MouseButton1Click:connect(function()
		rval,gval,bval = themeColor.Color.r,themeColor.Color.g,themeColor.Color.b
		update()
	end)

	local modebtn = Instance.new("TextButton",fr)
	modebtn.Position = UDim2.new(1,-150,0,-15)
	modebtn.Size = UDim2.new(0,49,0,14)
	modebtn.BackgroundColor3 = Color3.new(1,1,0)
	modebtn.BackgroundTransparency = .6
	modebtn.TextScaled = true
	modebtn.Font = 4
	modebtn.TextColor3 = Color3.new(1,1,1)
	modebtn.TextStrokeTransparency = .7
	modebtn.Text = "Body"
	modebtn.MouseButton1Click:connect(function()
		mode = (mode+1)%2
		local col = mode == 1 and mycolor2 or mycolor
		rval,gval,bval = col.r,col.g,col.b
		modebtn.Text = mode == 0 and "Body" or "Clothes"
		update(false)
	end)

	local outfitbtn = Instance.new("TextButton",fr)
	outfitbtn.Position = UDim2.new(1,-150,0,-30)
	outfitbtn.Size = UDim2.new(0,49,0,14)
	outfitbtn.BackgroundColor3 = Color3.new(1,1,0)
	outfitbtn.BackgroundTransparency = .6
	outfitbtn.TextScaled = true
	outfitbtn.Font = 4
	outfitbtn.TextColor3 = Color3.new(1,1,1)
	outfitbtn.TextStrokeTransparency = .7
	outfitbtn.Text = "Outfit"
	outfitbtn.MouseButton1Click:connect(function()
		outfit = (outfit+1)%(#outfits+1)
		setOutfit()
	end)

	local sparklebtn = Instance.new("TextButton",fr)
	sparklebtn.Position = UDim2.new(1,-100,0,-15)
	sparklebtn.Size = UDim2.new(0,100,0,14)
	sparklebtn.BackgroundColor3 = Color3.new(0,1,0)
	sparklebtn.BackgroundTransparency = .6
	sparklebtn.TextScaled = true
	sparklebtn.Font = 4
	sparklebtn.TextColor3 = Color3.new(1,1,1)
	sparklebtn.TextStrokeTransparency = .7
	sparklebtn.Text = "Sparkles"
	sparklebtn.MouseButton1Click:connect(function()
		senabled = not senabled
		sparklebtn.BackgroundColor3 = senabled and Color3.new(0,1,0) or Color3.new(1,0,0)
	end)
	local lightbtn = Instance.new("TextButton",fr)
	lightbtn.Position = UDim2.new(1,-100,0,-30)
	lightbtn.Size = UDim2.new(0,100,0,14)
	lightbtn.BackgroundColor3 = Color3.new(0,1,0)
	lightbtn.BackgroundTransparency = .6
	lightbtn.TextScaled = true
	lightbtn.Font = 4
	lightbtn.TextColor3 = Color3.new(1,1,1)
	lightbtn.TextStrokeTransparency = .7
	lightbtn.Text = "Light"
	lightbtn.MouseButton1Click:connect(function()
		lenabled = not lenabled
		lightbtn.BackgroundColor3 = lenabled and Color3.new(0,1,0) or Color3.new(1,0,0)
	end)
end


local gyro = root:FindFirstChild("RootGyro") or Instance.new("BodyGyro",root)
gyro.maxTorque = Vector3.new()
gyro.Name = "RootGyro"

local vel = root:FindFirstChild("RootVel") or Instance.new("BodyVelocity",root)
vel.maxForce = Vector3.new()
vel.Name = "RootVel"
vel.P = 4000

local flying = false
local state = "idle"
local kd = {}
local humspd = 0
local flyspeed = 0
local flystop = 0
local sitting = false
local holding = false

m.KeyDown:connect(function(k)
	local now = tick()
	kd[k] = now
	if k == " " and not flying then
		pcall(function() sitting:Destroy() end)
		sitting = nil
		state = "fly"
		flying = true
		flydir = (root.CFrame.lookVector*Vector3.new(1,0,1)).unit
	elseif k == " " and state == "fly" then
		flying = false
		state = "idle"
		flystop = tick()
	elseif k == "x" and m.Target and (root.Position-m.Hit.p).magnitude < 20*modelScale then
		local tar = m.Target
		local cf = tar.CFrame:toObjectSpace(m.Hit)
		local siz = tar.Size/2
		local cfr
		local rx,ry,rz = 0,0,0
		local lv = tar.CFrame:vectorToObjectSpace(root.CFrame.lookVector)
		if math.abs(cf.Y-siz.Y) < .03 then
			cfr = CFrame.new(cf.p + Vector3.new(0,3*modelScale,0)) * CFrame.Angles(0,math.atan2(-lv.X,-lv.Z),0)
		elseif math.abs(-cf.Y-siz.Y) < .03 then
			cfr = CFrame.new(cf.p - Vector3.new(0,3*modelScale,0)) * CFrame.Angles(0,math.atan2(-lv.X,-lv.Z),math.pi)
		elseif math.abs(cf.X-siz.X) < .03 then
			cfr = CFrame.new(cf.p + Vector3.new(3*modelScale,0,0)) * CFrame.Angles(0,0,-math.pi/2) * CFrame.Angles(0,math.atan2(-lv.X,-lv.Z),0)
		elseif math.abs(-cf.X-siz.X) < .03 then
			cfr = CFrame.new(cf.p - Vector3.new(3*modelScale,0,0)) * CFrame.Angles(0,0,math.pi/2) * CFrame.Angles(0,math.atan2(-lv.X,-lv.Z),0)
		elseif math.abs(cf.Z-siz.Z) < .03 then
			cfr = CFrame.new(cf.p + Vector3.new(0,0,3*modelScale)) * CFrame.Angles(math.pi/2,0,0) * CFrame.Angles(0,math.atan2(-lv.X,-lv.Z),0)
		elseif math.abs(-cf.Z-siz.Z) < .03 then
			cfr = CFrame.new(cf.p - Vector3.new(0,0,3*modelScale)) * CFrame.Angles(-math.pi/2,0,0) * CFrame.Angles(0,math.atan2(-lv.X,-lv.Z),0)
		end
		if cfr then
			pcall(function() sitting:Destroy() end)
			flying = false
			state = "sit"
			if m.Target.Anchored then
				sitting = {tar = tar, cf = cfr}
			else
				sitting = weld(tar,root,cfr)
			end
		end
	end
end)
m.KeyUp:connect(function(k)
	kd[k] = nil
end)

hum.Running:connect(function(spd)
	if state ~= "idle" and state ~= "walk" and state ~= "inair" then return end
	humspd = spd
	state = flying and "fly" or (spd < 1 and "idle" or "walk")
end)
hum.Climbing:connect(function(spd)
	if state ~= "idle" and state ~= "walk" and state ~= "inair" then return end
	humspd = spd
	state = flying and "fly" or (spd < 1 and "idle" or "walk")
end)
hum.Seated:connect(function(a)
	state = a and "sit" or humspd > 0 and "idle" or "walk"
end)

hum.Changed:connect(function()
	if hum.Jump then
		hum.Jump = false
	end
end)

hum.FreeFalling:connect(function()
	if state ~= "idle" and state ~= "walk" and state ~= "inair" then return end
	state = math.abs(tor.Velocity.Y) > 1 and "inair" or state
end)

hum.FallingDown:connect(function(a)
	if not a then return end
	state = "inair"
end)



while true do
	runservice.RenderStepped:wait()
	local cam = workspace.CurrentCamera
	local alpha = .2
	sparkles.Enabled = senabled and flying and tor.Velocity.magnitude > 3
	pl.Enabled = lenabled
	if state ~= "fly" then
		if type(sitting) == "table" then
			gyro.maxTorque = Vector3.new(1,1,1)*4e6
			vel.maxForce = Vector3.new(1,1,1)*4e5
			gyro.cframe = sitting.tar.CFrame * sitting.cf
			vel.velocity = (gyro.cframe.p-root.Position)*10
		else
			gyro.maxTorque,vel.maxForce = Vector3.new(),Vector3.new()
		end
	end
	if sitting then
		state = "sit"
	end
	tw.MaxVelocity,rh.MaxVelocity,lh.MaxVelocity,rs.MaxVelocity,ls.MaxVelocity,nk.MaxVelocity = 0,0,0,0,0,0
	tw.CurrentAngle,rh.CurrentAngle,lh.CurrentAngle,rs.CurrentAngle,ls.CurrentAngle,nk.CurrentAngle = 0,0,0,0,0,0

	local hasRobe = outfit == 1

	if state == "idle" then
		hum.PlatformStand = false
		local breathing = math.sin(tick()*2)
		local tilt = .02 + breathing*.03
		w1.C0 = clerp(w1.C0,w10*CFrame.Angles(0,-.01+breathing*.01,0),alpha)
		w2.C0 = clerp(w2.C0,w20*CFrame.Angles(0,.01-breathing*.01,0),alpha)

		tw.C0 = clerp(tw.C0,c0.tw*CFrame.Angles(tilt,0,0),alpha)
		rh.C0 = clerp(rh.C0,c0.rh*CFrame.Angles(-tilt,hasRobe and 0 or -.1,hasRobe and 0 or .06),alpha)
		lh.C0 = clerp(lh.C0,c0.lh*CFrame.Angles(-tilt,hasRobe and 0 or .1,hasRobe and 0 or -.06),alpha)
		rs.C0 = clerp(rs.C0,c0.rs*CFrame.Angles(-tilt,0,.1),alpha)
		ls.C0 = clerp(ls.C0,c0.ls*CFrame.Angles(-tilt,0,-.1),alpha)
		nk.C0 = clerp(nk.C0,c0.nk*CFrame.Angles(-tilt+breathing*.05-.03,0,0),alpha)
	elseif state == "inair" then
		hum.PlatformStand = false
		local wings = math.sin(tick()*80)
		w1.C0 = clerp(w1.C0,w10*CFrame.Angles(0,-.15+wings*.3,0),.6)
		w2.C0 = clerp(w2.C0,w20*CFrame.Angles(0,.15-wings*.3,0),.6)
		local alpha = .15
		local tilt = .05
		local wavey = math.sin(tick()*3)
		tw.C0 = clerp(tw.C0,c0.tw*CFrame.Angles(tilt,0,0),alpha)
		rh.C0 = clerp(rh.C0,c0.rh*CFrame.Angles(-tilt+wavey*.1,0,hasRobe and 0 or .02),alpha)
		lh.C0 = clerp(lh.C0,c0.lh*CFrame.Angles(-tilt-wavey*.1,0,hasRobe and 0 or -.02),alpha)
		rs.C0 = clerp(rs.C0,c0.rs*CFrame.Angles(-tilt-wavey*.07,0,.01),alpha)
		ls.C0 = clerp(ls.C0,c0.ls*CFrame.Angles(-tilt+wavey*.07,0,-.01),alpha)
		nk.C0 = clerp(nk.C0,c0.nk*CFrame.Angles(-tilt+.2,0,0),alpha)
	elseif state == "walk" then
		hum.PlatformStand = false
		local walking = math.sin(tick()*25) 
		local breathing = math.sin(tick()*2)
		local tilt = -.03-breathing*.02+walking*.01
		alpha = .6
		w1.C0 = clerp(w1.C0,w10*CFrame.Angles(0,-.05+breathing*.01+walking*.05,0),alpha)
		w2.C0 = clerp(w2.C0,w20*CFrame.Angles(0,.05-breathing*.01+walking*.05,0),alpha)

		tw.C0 = clerp(tw.C0,c0.tw*CFrame.Angles(tilt,-walking*.08,0),alpha)
		rh.C0 = clerp(rh.C0,c0.rh*CFrame.Angles(-tilt+walking*.3,0,hasRobe and 0 or .02),alpha)
		lh.C0 = clerp(lh.C0,c0.lh*CFrame.Angles(-tilt-walking*.3,0,hasRobe and 0 or -.02),alpha)
		rs.C0 = clerp(rs.C0,c0.rs*CFrame.Angles(-tilt+.05-walking*.25,0,.01),alpha)
		ls.C0 = clerp(ls.C0,c0.ls*CFrame.Angles(-tilt+.05+walking*.25,0,-.01),alpha)
		nk.C0 = clerp(nk.C0,c0.nk*CFrame.Angles(-tilt+breathing*.04,walking*.07,0),alpha)
	elseif state == "sit" then
		hum.Sit = false
		hum.PlatformStand = true
		local breathing = math.sin(tick()*2)
		local upvec = root.CFrame:vectorToWorldSpace(Vector3.new(0,1,0))
		if upvec.Y > .4 then
			local tilt = -.55+breathing*.015
			w1.C0 = clerp(w1.C0,w10*CFrame.Angles(0,-.01+breathing*.01,0),alpha)
			w2.C0 = clerp(w2.C0,w20*CFrame.Angles(0,.01-breathing*.01,0),alpha)
			tw.C0 = clerp(tw.C0,c0.tw*CFrame.Angles(tilt,0,0)+Vector3.new(0,-1.7,0)*modelScale,alpha)
			rh.C0 = clerp(rh.C0,c0.rh*CFrame.Angles(-tilt+1.57,0,hasRobe and 0 or .6),alpha)
			lh.C0 = clerp(lh.C0,c0.lh*CFrame.Angles(-tilt+1.57,0,hasRobe and 0 or -.6),alpha)
			rs.C0 = clerp(rs.C0,c0.rs*CFrame.Angles(-tilt+.3,0,-.1)*CFrame.Angles(hasRobe and .3 or 0,hasRobe and .2 or 0,hasRobe and -.2 or 0)+(hasRobe and 0 or 1)*Vector3.new(-.85,-.25,-.25)*modelScale,alpha)
			ls.C0 = clerp(ls.C0,c0.ls*CFrame.Angles(-tilt+.3,0,.1)*CFrame.Angles(hasRobe and .3 or 0,hasRobe and -.2 or 0,hasRobe and .2 or 0)+(hasRobe and 0 or 1)*Vector3.new(.85,-.25,-.25)*modelScale,alpha)
			nk.C0 = clerp(nk.C0,c0.nk*CFrame.Angles(-tilt+breathing*.04-.03,0,math.sin(tick()*4)*.06),alpha)
		else -- wallhug
			local breathing = math.sin(tick()*5)
			local tilt = -1.55+breathing*.015
			w1.C0 = clerp(w1.C0,w10*CFrame.Angles(0,-.01+breathing*.01,0),alpha)
			w2.C0 = clerp(w2.C0,w20*CFrame.Angles(0,.01-breathing*.01,0),alpha)
			tw.C0 = clerp(tw.C0,c0.tw*CFrame.Angles(tilt,0,0)+Vector3.new(0,-2.5,0)*modelScale,alpha)
			rh.C0 = clerp(rh.C0,c0.rh*CFrame.Angles(.2,0,hasRobe and 0 or .5)+Vector3.new(0,hasRobe and 0 or .2,0)*modelScale,alpha)
			lh.C0 = clerp(lh.C0,c0.lh*CFrame.Angles(.2,0,hasRobe and 0 or -.5)+Vector3.new(0,hasRobe and 0 or .2,0)*modelScale,alpha)
			rs.C0 = clerp(rs.C0,c0.rs*CFrame.Angles(2.9,0,.8)+Vector3.new(-.2,.4,0)*modelScale,alpha)
			ls.C0 = clerp(ls.C0,c0.ls*CFrame.Angles(2.9,0,-.8)+Vector3.new(.2,.4,0)*modelScale,alpha)
			nk.C0 = clerp(nk.C0,c0.nk*CFrame.Angles(breathing*.04+.7,0,0),alpha)
		end
	elseif state == "fly" then
		hum.PlatformStand = true
		gyro.maxTorque = Vector3.new(1,1,1)*4e6
		vel.maxForce = Vector3.new(1,1,1)*4e5

		local velocity = Vector3.new((kd.d and 1 or 0)+(kd.a and -1 or 0),0,(kd.s and 1 or 0)+(kd.w and -1 or 0))
		velocity = cam.CoordinateFrame:vectorToWorldSpace(velocity)
		local maxspeed = 40-(velocity.magnitude > 0 and velocity.unit.Y*20 or 0)
		if velocity.magnitude > 0 then
			flyspeed = lerp(flyspeed,maxspeed,.1)
			flydir = flydir:Lerp(velocity.unit,.4).unit
			hoverheight = nil
		else
			flyspeed = lerp(flyspeed,0,.3)
			flydir = (flydir*Vector3.new(1,0,1)).unit
			hoverheight = hoverheight or root.Position.Y
		end
		vel.velocity = flydir.unit * flyspeed
		if hoverheight then
			vel.velocity = vel.velocity + Vector3.new(0,hoverheight-root.Position.Y,0)
		end
		gyro.cframe = CFrame.new(Vector3.new(),flydir*Vector3.new(1,0,1))

		rl.CanCollide,ll.CanCollide = true,true

		local wings = math.sin(tick()*80)
		w1.C0 = clerp(w1.C0,w10*CFrame.Angles(0,-.15+wings*.3,0),.6)
		w2.C0 = clerp(w2.C0,w20*CFrame.Angles(0,.15-wings*.3,0),.6)
		local alpha = .15
		local flytilt = (flyspeed/maxspeed)
		local tilt = flytilt*-1.4 + math.asin(gyro.cframe:vectorToObjectSpace(flydir).unit.Y)
		local wavey = math.sin(tick()*6)
		tw.C0 = clerp(tw.C0,c0.tw*CFrame.Angles(tilt,0,0),alpha)
		rh.C0 = clerp(rh.C0,c0.rh*CFrame.Angles(wavey*.1,hasRobe and 0 or -.08,hasRobe and 0 or .1),alpha)
		lh.C0 = clerp(lh.C0,c0.lh*CFrame.Angles(-wavey*.1,hasRobe and 0 or .08,hasRobe and 0 or -.1),alpha)
		rs.C0 = clerp(rs.C0,c0.rs*CFrame.Angles(-wavey*.15,-.08,.1),alpha)
		ls.C0 = clerp(ls.C0,c0.ls*CFrame.Angles(wavey*.15,.08,-.1),alpha)
		nk.C0 = clerp(nk.C0,c0.nk*CFrame.Angles(-tilt*.8,0,0),alpha)
	end
end