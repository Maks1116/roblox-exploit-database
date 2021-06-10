wait(1)
---------------------------
local MaxMana = 5000000 -- Max Mana You Can Get
local Mana = 5000000 -- Mana You Start With
local ManaGain = 100000 -- How Much Mana You Gain Per Second
---------------------------
repeat game:GetService('RunService').Stepped:wait() until game:GetService('Players').LocalPlayer.Character
----190470714
----
sit = true
cn = CFrame.new
v3 = Vector3.new
c3 = Color3.new
bn = BrickColor.new
ca2 = CFrame.Angles
ca = function(x,y,z) return ca2(math.rad(x),math.rad(y),math.rad(z)) end
ud2 = UDim2.new
----
----
local Player = game:GetService('Players').LocalPlayer
local Char = Player.Character
local Human = Char.Humanoid
local Mouse = Player:GetMouse()
----
----
Human.WalkSpeed = 0
print ('Loading...')
wait(0)
----
----
local mananum=0
la = Char['Left Arm']
ra = Char['Right Arm']
ll = Char['Left Leg']
rl = Char['Right Leg']
tr = Char['Torso']
hd = Char['Head']
rp = Char['HumanoidRootPart']
----
----
ram = tr['Right Shoulder']
lam = tr['Left Shoulder']
llm = tr['Left Hip']
rlm = tr['Right Hip']
hm = tr['Neck']
rj = rp['RootJoint']
----
----
InputService = game:GetService('UserInputService')
RunService = game:GetService('RunService')
----
----
it=Instance.new
Torso=Char.Torso
local fengui=it("GuiMain") 
fengui.Parent=Player.PlayerGui 
fengui.Name="WeaponGUI" 
local fenframe=it("Frame") 
fenframe.Parent=fengui
fenframe.BackgroundColor3=Color3.new(255,255,255) 
fenframe.BackgroundTransparency=1 
fenframe.BorderColor3=Color3.new(17,17,17) 
fenframe.Size=UDim2.new(0.0500000007, 0, 0.100000001, 0)
fenframe.Position=UDim2.new(0.4,0,0.1,0)
local fenbarmana1=it("TextLabel") 
fenbarmana1.Parent=fenframe 
fenbarmana1.Text=" " 
fenbarmana1.BackgroundTransparency=0 
fenbarmana1.BackgroundColor3=Color3.new(0,0,0) 
fenbarmana1.SizeConstraint="RelativeXY" 
fenbarmana1.TextXAlignment="Center" 
fenbarmana1.TextYAlignment="Center" 
fenbarmana1.Position=UDim2.new(0,0,0,0)
fenbarmana1.Size=UDim2.new(4,0,0.2,0)
local fenbarmana2=it("TextLabel") 
fenbarmana2.Parent=fenframe 
fenbarmana2.Text=" " 
fenbarmana2.BackgroundTransparency=0 
fenbarmana2.BackgroundColor3=Torso.Color
fenbarmana2.SizeConstraint="RelativeXY" 
fenbarmana2.TextXAlignment="Center" 
fenbarmana2.TextYAlignment="Center" 
fenbarmana2.Position=UDim2.new(0,0,0,0)
fenbarmana2.Size=UDim2.new(4*Mana/MaxMana,0,0.2,0)
local fenbarmana3=it("TextLabel") 
fenbarmana3.Parent=fenframe 
fenbarmana3.Text=" " 
fenbarmana3.BackgroundTransparency=0 
fenbarmana3.BackgroundColor3=Color3.new(Col1,Col2,Col3)
fenbarmana3.SizeConstraint="RelativeXY" 
fenbarmana3.TextXAlignment="Center" 
fenbarmana3.TextYAlignment="Center" 
fenbarmana3.Position=UDim2.new(0,0,0,0)
fenbarmana3.Size=UDim2.new(0,0,0.2,0)
local fenbarmana4=it("TextLabel") 
fenbarmana4.Parent=fenframe 
fenbarmana4.Text="Energy("..Mana..")"
fenbarmana4.BackgroundTransparency=1 
fenbarmana4.BackgroundColor3=Color3.new(0,0,0) 
fenbarmana4.SizeConstraint="RelativeXY" 
fenbarmana4.TextXAlignment="Center" 
fenbarmana4.TextYAlignment="Center" 
fenbarmana4.Position=UDim2.new(0,0,-0.3,0)
fenbarmana4.Size=UDim2.new(4,0,0.2,0)
fenbarmana4.FontSize="Size9"
fenbarmana4.TextStrokeTransparency=0
fenbarmana4.TextColor=BrickColor.new("White")

LastMade = nil

xNew=function(Table)
	local Obj=Instance.new(Table[1])
	for Ind,Val in pairs(Table) do
		if Ind~=1 and Ind~=2 then 
			Obj[Ind] = Val
		end
	end
	Obj.Parent=Table[2]
	LastMade= Obj
	return Obj
end

xPart=function(tab)
	local v=Instance.new(tab.type or "Part")
	if tab.type~="CornerWedgePart" then v.formFactor="Custom" end
	v.CanCollide=false
	v.TopSurface=10 v.BottomSurface=10 v.RightSurface=10 v.LeftSurface=10 v.FrontSurface=10 v.BackSurface=10
	v.Size=v3(tab[2],tab[3],tab[4])
	if tab.co then v.BrickColor=bn(tab.co) end
	if tab.tr then v.Transparency=tab.tr end
	if tab.rf then v.Reflectance=tab.rf end
	if tab.cf then v.CFrame=tab.cf end
	if tab.an then v.Anchored=tab.an end
	if tab.mt then v.Material=tab.mt end
	if tab.ca then v.CanCollide=tab.ca end
	v.Parent=tab[1]
	LastMade= v
	return v
end

xWeld = function(a,b,between,type)
	local Weld = xNew{type or 'Weld',a,Part0 = a,Part1 = b, C0 = cn()}
	if between then
		Weld.C1 = b.CFrame:inverse() * a.CFrame
	else
		Weld.C1 = cn()
	end
	return Weld
end

function xSound(id,parent,pitch)
	local s = xNew{'Sound', PlayOnRemove = true, SoundId = 'http://roblox.com/asset/?id='..id,Pitch = pitch}
	s.Parent = parent
	s:Destroy()
	if id == 190470714 then
		s.Looped = true
		s.Name = "Music"
	end
end

----
xSound(190470714,workspace,1.5)
----
do local function QuaternionFromCFrame(cf) local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() local trace = m00 + m11 + m22 if trace > 0 then local s = math.sqrt(1 + trace) local recip = 0.5/s return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 else local i = 0 if m11 > m00 then i = 1 end if m22 > (i == 0 and m00 or m11) then i = 2 end if i == 0 then local s = math.sqrt(m00-m11-m22+1) local recip = 0.5/s return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip elseif i == 1 then local s = math.sqrt(m11-m22-m00+1) local recip = 0.5/s return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip elseif i == 2 then local s = math.sqrt(m22-m00-m11+1) local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip end end end local function QuaternionToCFrame(px, py, pz, x, y, z, w) local xs, ys, zs = x + x, y + y, z + z local wx, wy, wz = w*xs, w*ys, w*zs local xx = x*xs local xy = x*ys local xz = x*zs local yy = y*ys local yz = y*zs local zz = z*zs return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) end local function QuaternionSlerp(a, b, t) local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] local startInterp, finishInterp; if cosTheta >= 0.0001 then if (1 - cosTheta) > 0.0001 then local theta = math.acos(cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((1-t)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta else startInterp = 1-t finishInterp = t end else if (1+cosTheta) > 0.0001 then local theta = math.acos(-cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((t-1)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta else startInterp = t-1 finishInterp = t end end return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp end function clerp(a,b,t) local qa = {QuaternionFromCFrame(a)} local qb = {QuaternionFromCFrame(b)} local ax, ay, az = a.x, a.y, a.z local bx, by, bz = b.x, b.y, b.z local _t = 1-t return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) end end
function xlerp(weld,to,tim)
	if weld.C1 ~= to then
	--weld.C1 = clerp(weld.C1,to,tim)
	weld.C1 = weld.C1:lerp(to,tim)
	end
end
function lerp(a,b,c)return a+(b-a)*c end
----
----
if Char:findFirstChild("Health") then
	Char.Health:Destroy()
end
wait(0)
----
--hd.Mesh.Scale = Vector3.new(hd.Mesh.Scale.X * 3,hd.Mesh.Scale.Y * 3,hd.Mesh.Scale.Z * 3)
ra.Size = ra.Size * 3
la.Size = la.Size * 3
ll.Size = ll.Size * 3
rl.Size = rl.Size * 3
tr.Size = tr.Size * 3
hd.Size = hd.Size * 3
rp.Size = rp.Size * 3
--
local tw = xWeld(rp,tr)
tw.C1 = cn(0,0,0)
local law = xWeld(tr,la)
law.C0 = cn(-4.5,.5,0)
law.C1 = cn(0,.5,0)
local raw = xWeld(tr,ra)
raw.C0 = cn(4.5,.5,0)
raw.C1 = cn(0,.5,0)
local llw = xWeld(tr,ll)
llw.C0 = cn(-1.5,-5,0)
llw.C1 = cn(0,1,0)
local rlw = xWeld(tr,rl)
rlw.C0 = cn(1.5,-5,0)
rlw.C1 = cn(0,1,0)
local hw = xWeld(tr,hd)
hw.C1 = cn(0,-4.5,0)
ras = raw.C1
las = law.C1
lls = llw.C1
rls = rlw.C1
ts = tw.C1
hs = hw.C1
-----
for _,Part in pairs(Char:GetChildren()) do
	if Part:IsA('BasePart') then
		Part.CustomPhysicalProperties = PhysicalProperties.new(0, .3, .5)
	end
end
--------------------------------------------------------
--------------------------------------------------------
-----------------------CONSTANTS------------------------
--------------------------------------------------------
--------------------------------------------------------
REGEN_SPEED = 5
WEAPON_NAME = 'Grandark'
----------------------------------------------------
----------------------------------------------------
-----------------------MODEL------------------------
----------------------------------------------------
----------------------------------------------------
local Handle
local Blade
local haw
Pack = Instance.new('Model', Char)
Pack.Name = WEAPON_NAME
do
	Handle = xPart{Pack,0.54285717, 4.96428585, 1.02857149} Handle.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic; haw = xWeld(ra,Handle); LastMade.C1 = ca(90,0,180)*cn(0,3,0) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'BlockMesh',Handle,Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 1.8714298} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -3.22142696, 1.4642868, -1, 0, -5.96046377e-008, 0, 1, 0, 5.96046377e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.521428645, 0.1, 4.92857265} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -2.59285641, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'BlockMesh',Part,Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.864285767, 0.221428677, 5.65714407} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -2.57142735, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'BlockMesh',Part,Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.54285717, 1.01428556, 1.02857149} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -1.4428587, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.FileMesh, MeshId = 'http://www.roblox.com/Asset/?id=9756362', TextureId = '', Scale = v3(0.714285731, 1.42857146, 0.714285731), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.54285717, 0.657142878, 1.02857149} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 2.81071377, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'BlockMesh',Part,Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.54285717, 0.657142937, 1.02857149} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 2.81071377, 1.02857018, 1, 0, 0, 0, 1, 0, 0, 0, 1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.54285717, 0.657142937, 1.02857149} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 2.81071377, 1.02857208, -1, 0, 8.74227695e-008, 0, 1, 0, -8.74227695e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.54285717, 1.11428583, 0.371428579} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 2.23928523, 0.699998856, 1, -8.74227695e-008, 8.74227837e-008, 8.74227766e-008, 1, -8.74227695e-008, -8.74227766e-008, 8.74227766e-008, 1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.54285717, 1.11428583, 0.371428579} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 2.23928547, 0.700000763, -1, 8.74227695e-008, 8.74227837e-008, 8.74227766e-008, 1, 8.74227695e-008, -8.74227695e-008, 8.74227766e-008, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.342857182, 0.585714281, 0.514285684} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(2.91071415, 0, 0.257143021, -5.96046377e-008, 1, 1.49781926e-007, -1, -5.96046306e-008, -3.92309403e-008, -3.92309296e-008, -1.49781926e-007, 1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'CylinderMesh',Part,Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.342857182, 0.585714281, 0.514285684} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(2.91071415, 0, -0.257143021, -5.96046377e-008, 1, 1.49781926e-007, -1, -5.96046306e-008, -3.92309403e-008, -3.92309296e-008, -1.49781926e-007, 1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'CylinderMesh',Part,Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.564285755, 0.257142901, 0.514285743} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 2.35357094, 0.257143021, -1, 8.74227695e-008, 8.74227837e-008, 8.74227766e-008, 1, 8.74227695e-008, -8.74227695e-008, 8.74227766e-008, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.564285755, 0.257142901, 0.514285743} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 2.35357118, 0.257141113, 1, 3.51124925e-008, -2.6822093e-007, -3.51123965e-008, 1, 3.53819075e-007, 2.6822093e-007, -3.53819075e-007, 1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.564285755, 1.73571444, 0.200000003} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 1.50000012, 0.0714263916, 1, 3.51124925e-008, -2.6822093e-007, -3.51123965e-008, 1, 3.53819075e-007, 2.6822093e-007, -3.53819075e-007, 1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 0.714285672), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.564285755, 1.73571444, 0.200000003} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 1.49999988, 0.0714321136, -1, 6.27284535e-008, 3.87430191e-007, 6.27285388e-008, 1, 2.26830267e-007, -3.87430163e-007, 2.26830295e-007, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 0.714285672), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.54285717, 0.657142937, 1.02857149} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 2.81071377, 1.02857208, -1, 0, 8.74227695e-008, 0, 1, 0, -8.74227695e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.864285767, 0.657142937, 1.02857149} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 2.48571396, -1.96071529, 1, -4.47536763e-009, -5.65906291e-008, -5.65906291e-008, -1.58996982e-023, -1, 4.47536763e-009, 1, -2.53263884e-016) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.864285767, 0.657142937, 1.02857149} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 2.48571205, -1.96071529, -1, -1.90377425e-009, 5.96046377e-008, 5.96046377e-008, 6.53269716e-010, 1, -1.90377425e-009, 1, -6.53269605e-010) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	Blade = xPart{Pack,0.285714328, 12.2071428, 2.38571548} Blade.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Blade) LastMade.C1 = CFrame.new(0, -8.56428432, 0.649999619, 1, 0, 0, 0, 1, 0, 0, 0, 1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'BlockMesh',Blade,Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 1.8714298} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -4.22142696, 1.4642868, -1, 0, -5.96046377e-008, 0, 1, 0, 5.96046377e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 1.8714298} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -5.22142696, 1.4642868, -1, 0, -5.96046377e-008, 0, 1, 0, 5.96046377e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 1.8714298} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -6.22142696, 1.4642868, -1, 0, -5.96046377e-008, 0, 1, 0, 5.96046377e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 1.8714298} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -7.22142696, 1.4642868, -1, 0, -5.96046377e-008, 0, 1, 0, 5.96046377e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 1.8714298} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -11.221427, 1.4642868, -1, 0, -5.96046377e-008, 0, 1, 0, 5.96046377e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 1.8714298} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -8.22142696, 1.4642868, -1, 0, -5.96046377e-008, 0, 1, 0, 5.96046377e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 1.8714298} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -9.22142696, 1.4642868, -1, 0, -5.96046377e-008, 0, 1, 0, 5.96046377e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 1.8714298} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -10.221427, 1.4642868, -1, 0, -5.96046377e-008, 0, 1, 0, 5.96046377e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 1.8714298} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -12.221427, 1.4642868, -1, 0, -5.96046377e-008, 0, 1, 0, 5.96046377e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 1.8714298} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, -13.2214279, 1.4642868, -1, 0, -5.96046377e-008, 0, 1, 0, 5.96046377e-008, 0, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 2.01428699} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 14.1928558, 1.5357151, 1, 1.06776947e-016, 2.85758261e-009, 1.39271539e-016, -1, -1.13713643e-008, 2.85758261e-009, 1.13713643e-008, -1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
	local Part = xPart{Pack,0.285714328, 0.949999154, 1.15714407} Part.BrickColor = BrickColor.new('Really black') Handle.Material = Enum.Material.Plastic xWeld(Handle,Part) LastMade.C1 = CFrame.new(0, 14.1928558, 2.3214283, -1, 2.33221598e-009, 0, -2.33221553e-009, -1, -4.92687668e-010, 0, -4.92687668e-010, 1) LastMade.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	xNew{'SpecialMesh',Part,MeshType = Enum.MeshType.Wedge, MeshId = '', TextureId = '', Scale = v3(1, 1, 1), Offset = v3(0, 0, 0)}
end
has = haw.C1

for _,v in pairs(Pack:GetChildren()) do
	v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
end
--------------------------------------------------------
--------------------------------------------------------
-----------------------VARIABLES------------------------
--------------------------------------------------------
--------------------------------------------------------
State = 'Idle'
FallTime = 0
Walk = 0
WalkReverse = false
StompDB = false
JumpDB = false
--
function NewHitbox(Radius,Position)
	local Returning = {}
	for _,v in pairs(workspace:GetChildren()) do
		if v~=Char and v:FindFirstChild('Humanoid') and v:FindFirstChild('Torso') then
			local Mag = (v.Torso.Position - Position).magnitude
			if Mag < Radius then
				table.insert(Returning,v)
			end
		end
	end
	return Returning
end
--
function UpdateState()
	if (rp.Velocity*v3(1, 0, 1)).magnitude > 5 then
		if State == 'Idle' then State = 'Walking' end
	else
		if State == 'Walking' then State = 'Idle'; end
	end
	if WalkReverse then
		Walk = Walk - .5
	else
		Walk = Walk + .5
	end
	if Walk >= 10 then
		WalkReverse = true
	elseif Walk <= -10 then
		WalkReverse = false
	end
end
--
function JumpExplode()
	local Hit = NewHitbox(35,Char.Torso.Position)
	for _,v in pairs(Hit) do
		v.Humanoid.MaxHealth = 100
		v.Humanoid.Health = v.Humanoid.Health - 1000000000
		if sit then
			v.Humanoid.Sit = true
		end
	end
	xSound('2233908',tr,1)
	coroutine.wrap(function()
		local Explosion = xNew{'Part',Char,Anchored = true,CanCollide = false,FormFactor = 'Custom',BrickColor = bn('Earth green')}
		local Mesh = xNew{'SpecialMesh', Explosion,MeshType = 'FileMesh', MeshId = 'http://www.roblox.com/asset/?id=20329976'}
		Explosion.CFrame = Char.Torso.CFrame * cn(0,-20,0)
		Mesh.Scale = v3(1,7,1)
		repeat
			Mesh.Scale = Mesh.Scale + v3(1,0,1)
			Explosion.Transparency = Explosion.Transparency + .025
			wait()
		until Explosion.Transparency >= 1
		Explosion:Destroy()
	end)()
end
--
function Stomp()
	if State == 'Walking' or State == 'Idle' then
		if StompDB == false then
			StompDB = true
			State = 'Attacking'
			Human.WalkSpeed = 0
			--
			xSound('138186576',Char.Head,1)
			for _=0,1,.05 do
				xlerp(tw,ts,.2)
				xlerp(hw,hs*ca(40,0,0)*cn(0,-1,-1.5),.2)
				xlerp(rlw,rls*ca(20,0,0),.2)
				xlerp(llw,lls*cn(0,-2,1.25),.2)
				xlerp(raw,ras*ca(20,0,-20)*cn(-.5,-.5,0),.2)
				xlerp(law,las*ca(20,0,0),.2)
				wait()
			end
			coroutine.wrap(function()
				local Explosion = xNew{'Part',Char,Anchored = true,CanCollide = false,FormFactor = 'Custom',BrickColor = bn('Earth green')}
				local Mesh = xNew{'SpecialMesh', Explosion,MeshType = 'FileMesh', MeshId = 'http://www.roblox.com/asset/?id=3270017'}
				Explosion.CFrame = rp.CFrame * cn(0,-7,0)*ca(90,0,0)
				Mesh.Scale = v3(5,5,10)
				repeat
					Mesh.Scale = Mesh.Scale + v3(2,2,.5)
					Explosion.Transparency = Explosion.Transparency + .01
					wait()
				until Explosion.Transparency >= 1
				Explosion:Destroy()
			end)()
			coroutine.wrap(function()
				local Already = {}
				for i=1,50,2 do
					wait(.1)
					local Hit = NewHitbox(i*2,Char.Torso.Position)
					for _,v in pairs(Hit) do
						if not Already[v] then
							v.Humanoid.MaxHealth = 100
							v.Humanoid.Health = v.Humanoid.Health - 300000000000
							if sit then
								v.Humanoid.Sit = true
							end
							Already[v] = true
						end
					end
				end
			end)()
			--attack
			for _=0,1,.05 do
				xlerp(tw,ts,.3)
				xlerp(hw,hs*ca(40,0,0)*cn(0,-1,-1.5),.3)
				xlerp(rlw,rls*ca(20,0,0),.3)
				xlerp(llw,lls*cn(0,0,1.25),.3)
				xlerp(raw,ras*ca(20,0,-20)*cn(-.5,-.5,0),.3)
				xlerp(law,las*ca(20,0,0),.3)
				wait()
			end
			State = 'Idle'
			Human.WalkSpeed = 50
			coroutine.wrap(function()
				wait(0)
				StompDB = false
			end)()
		end
	end
end
--
function Charge()
	if State == 'Walking' or State == 'Idle' then
		State = 'Charge'
		for _, controller in pairs(game:GetService("ControllerService"):GetChildren()) do
			controller.Parent = workspace
		end
		local function Exp()
			local Explosion = xNew{'Part',Char,Anchored = true,CanCollide = false,FormFactor = 'Custom',BrickColor = bn('White')}
			local Mesh = xNew{'SpecialMesh', Explosion,MeshType = 'FileMesh', MeshId = 'http://www.roblox.com/asset/?id=20329976'}
			Explosion.CFrame = rp.CFrame * cn(0,0,-15)*ca(70,0,0)
			Mesh.Scale = v3(1,6,1)
			repeat
				Char.Head.Velocity=Char.Head.CFrame.lookVector*100
				Mesh.Scale = Mesh.Scale + v3(1,.5,1)
				Explosion.Transparency = Explosion.Transparency + .05
				wait()
			until Explosion.Transparency >= 1
			Explosion:Destroy()
		end
		coroutine.wrap(function()
			wait(0)
			Human.WalkSpeed = 80
			Char.Head.Velocity=Char.Head.CFrame.lookVector*200
			for _=1, 10 do
				coroutine.wrap(Exp)()
				local Hit = NewHitbox(10,Char.Torso.Position)
				for _,v in pairs(Hit) do
					v.Humanoid.MaxHealth = 100
					v.Humanoid.Health = v.Humanoid.Health - 100000000000
				end
				wait(0)
				xSound('10730819',tr,.8)
				Char.Head.Velocity=Char.Head.CFrame.lookVector*100
			end
			Human.WalkSpeed = 50
			State = 'Idle'
		end)()
		--
		for _=0,1,.05 do
			Char.Head.Velocity=Char.Head.CFrame.lookVector*100
			xlerp(tw,ts*ca(0,-90,0),.4)
			xlerp(hw,hs*ca(0,90,0),.4)
			xlerp(raw,ras*ca(-90,0,-90)*cn(0,-1,0),.4)
			xlerp(law,las*ca(0,0,40)*cn(1,-.5,0),.4)
			xlerp(rlw,rls*ca(0,0,10)*cn(1,0,0),.4)
			xlerp(llw,lls*ca(0,0,10)*cn(1,0,0),.4)
			wait()
		end
		--
	end
end
function Combo()
	if State == 'Idle' or State == 'Walking' then
		State = 'Attacking'
		Human.WalkSpeed = 3
		for _=0,1,.2 do
			xlerp(tw,ts*ca(0,20,0),.4)
			xlerp(hw,hs*ca(0,30,0),.4)
			xlerp(raw,ras*ca(0,180,-90)*cn(-1,-1,0),.4)
			xlerp(law,las*ca(0,0,40)*cn(1,-.5,0),.4)
			xlerp(rlw,rls*ca(20,0,0)*cn(0,0,-1),.4)
			xlerp(llw,lls*cn(0,0,1.25),.4)
			wait()
		end
		local Already = {}
		xSound('231731980',tr,1.3)
		for _=0,1,.1 do
			xlerp(tw,ts*ca(0,-30,0),.4)
			xlerp(hw,hs*ca(0,-50,0),.4)
			xlerp(raw,ras*ca(160,180,-130)*cn(2,-1,1),.4)
			xlerp(law,las*ca(0,0,40)*cn(1,-.5,0),.4)
			xlerp(rlw,rls*ca(20,0,0)*cn(0,0,-1),.4)
			xlerp(llw,lls*cn(0,0,1.25),.4)
			xlerp(haw,has*ca(40,0,0),.4)
			wait()
			local Hit = NewHitbox(15,(Blade.CFrame).p)
			for _,v in pairs(Hit) do
				if not Already[v] then
					v.Humanoid.MaxHealth = 100
					v.Humanoid.Health = v.Humanoid.Health - 300000000000
					Already[v] = true
				end
			end
		end
		----Combo2
		for _=0,1,.2 do
			xlerp(tw,ts*ca(0,-35,0),.4)
			xlerp(haw,has,.4)
			xlerp(hw,hs*ca(0,-30,0),.4)
			xlerp(raw,ras*ca(-120,0,-70)*cn(1,-1,0),.4)
			xlerp(law,las*ca(0,0,40)*cn(1,-.5,0),.4)
			xlerp(rlw,rls*ca(20,0,0)*cn(0,0,-1),.4)
			xlerp(llw,lls*cn(0,0,1.25),.4)
			wait()
		end
		xSound('231731980',tr,1)
		local Already = {}
		for _=0,1,.1 do
			xlerp(tw,ts*ca(0,20,0),.4)
			xlerp(hw,hs*ca(0,30,0),.4)
			xlerp(raw,ras*ca(30,0,-90)*cn(0,-1,0),.4)
			xlerp(law,las*ca(0,0,40)*cn(1,-.5,0),.4)
			xlerp(rlw,rls*ca(20,0,0)*cn(0,0,-1),.4)
			xlerp(llw,lls*cn(0,0,1.25),.4)
			wait()
			local Hit = NewHitbox(15,(Blade.CFrame).p)
			for _,v in pairs(Hit) do
				if not Already[v] then
					v.Humanoid.MaxHealth = 100
					v.Humanoid.Health = v.Humanoid.Health - 3000000000000
					Already[v] = true
				end
			end
		end
		--Combo 3
		for _=0,1,.1 do
			xlerp(tw,ts,.3)
			xlerp(hw,hs,.3)
			xlerp(haw,has,.3)
			xlerp(raw,ras*ca(-140,0,0)*cn(0,-1.5,0),.3)
			xlerp(law,las*ca(0,0,40)*cn(1,-.5,0),.3)
			xlerp(rlw,rls*ca(20,0,0)*cn(0,0,-1),.3)
			xlerp(llw,lls*cn(0,0,1.25),.4)
			wait()
		end
		xSound('231731980',tr,.8)
		local Already = {}
		for _=0,1,.1 do
			xlerp(tw,ts*ca(15,0,0)*cn(0,1.5,0),.4)
			xlerp(hw,hs,.4)
			xlerp(raw,ras*ca(-20,0,0)*cn(0,0,0),.4)
			xlerp(law,las*ca(0,0,40)*cn(1,-.5,0),.4)
			xlerp(haw,has*ca(20,0,0),.4)
			wait()
			local Hit = NewHitbox(10,(Blade.CFrame).p)
			for _,v in pairs(Hit) do
				if not Already[v] then
					v.Humanoid.MaxHealth = 100
					v.Humanoid.Health = v.Humanoid.Health - 300000000000
					Already[v] = true
				end
			end
		end
		wait(.2)
		State = 'Idle'
		Human.WalkSpeed = 50
	end
end
--
function SwordSlam()
	if State == 'Walking' or State == 'Idle' then
		State = 'Attacking'
		Human.WalkSpeed = 0
		for _=0,1,.05 do
			xlerp(tw,ts,.2)
			xlerp(hw,hs,.2)
			xlerp(raw,ras*ca(-140,0,0)*cn(0,-1.5,0),.2)
			xlerp(law,las*ca(0,0,40)*cn(1,-.5,0),.2)
			xlerp(rlw,rls*ca(20,0,0)*cn(0,0,-1),.2)
			xlerp(llw,lls*cn(0,0,1.25),.2)
			wait()
		end
		coroutine.wrap(function()
		wait()
		xSound('10730819',tr,.5)
		local Explosion = xNew{'Part',Char,Anchored = true,CanCollide = false,FormFactor = 'Custom',BrickColor = bn('dsasda')}
		local Mesh = xNew{'SpecialMesh', Explosion,MeshType = 'FileMesh', MeshId = 'http://www.roblox.com/asset/?id=20329976'}
		Explosion.CFrame = rp.CFrame * cn(0,-5,-20)
		Mesh.Scale = v3(1,5,1)
		repeat
			Mesh.Scale = Mesh.Scale + v3(1,1,1)
			Explosion.Transparency = Explosion.Transparency + .025
			wait()
		until Explosion.Transparency >= 1
		Explosion:Destroy()
		end)()
		for _=0,1,.15 do
			xlerp(tw,ts*ca(15,0,0)*cn(0,1.5,0),.4)
			xlerp(hw,hs,.4)
			xlerp(raw,ras*ca(-20,0,0)*cn(0,0,0),.4)
			xlerp(law,las*ca(0,0,40)*cn(1,-.5,0),.4)
			xlerp(haw,has*ca(20,0,0),.4)
			wait()
		end
		local Hit = NewHitbox(40,(rp.CFrame * cn(0,-5,-20)).p)
		for _,v in pairs(Hit) do
		v.Humanoid.MaxHealth = 100
		v.Humanoid.Health = v.Humanoid.Health - 100000000000
		if sit then
			v.Humanoid.Sit = true
		end
		end
		wait(0)
		State = 'Idle'
		Human.WalkSpeed = 50
	end
end
--
CanBoom = true
function Fire(Part)
	local Flame = Instance.new("ParticleEmitter",Part)
	Flame.LightEmission = 0.21
	Flame.Size = NumberSequence.new(15)
	Flame.Texture = "http://www.roblox.com/asset/?id=366803190"
	Flame.Transparency = NumberSequence.new(0.5)
	Flame.LockedToPart = true
	Flame.Lifetime = NumberRange.new(0.1,0.8)
	Flame.Rate = 40
	Flame.VelocitySpread = 2
end
Mouse.KeyDown:connect(function(key)
	if key == ' ' then
		if State == 'Walking' or State == 'Idle' then
			if JumpDB == false then
				JumpDB = true
				State = 'Jumping'
				Human.Jump = true
				Human.WalkSpeed = 50
				wait(0)
				State = 'Falling'
				coroutine.wrap(function()
					wait(0)
					JumpDB = false
				end)()
			end
		end
	elseif key == 'z' and Mana >= 400 then
		Mana = Mana-400
		Combo()
	elseif key == 'x' and Mana >= 300 then
		Mana = Mana-300
		Charge()
	elseif key == 'c' and Mana >= 250 then
		Mana = Mana-250
		SwordSlam()
	elseif key == 'v' and Mana >= 100 then
		Mana = Mana-100
		Stomp()
	elseif key == "p" and Mana >= 1000 then
		Mana = Mana-1000
		Stomp()
		wait()
		SwordSlam()
		wait()
		Combo()
		wait()
		Combo()
	elseif key == "f" and Mana >= 800 and CanBoom then
		Mana = Mana - 800
		CanBoom = false
		local P = Instance.new("Part",Char)
		P.Name = "Boom"
		P.Anchored = true
		P.Transparency = 1
		Fire(P)
		P.Material = "Neon"
		P.BrickColor = BrickColor.new("Crimson")
		P.TopSurface = "Smooth"
		P.CFrame = Torso.CFrame
		P.CanCollide = false
		xSound(161451748,workspace,0.9)
		function Hit(hit)
			if hit.Parent and hit.Parent:findFirstChild("Humanoid") then
				if hit.Parent:findFirstChild("Torso") and hit.Parent.Name ~= Player.Character.Name and hit.Parent:findFirstChild("Flamed") == nil then
					local Z = Instance.new("StringValue",hit.Parent)
					Z.Name = "Flamed"
					local Torsoo = hit.Parent:findFirstChild("Torso")
					Torsoo.Anchored = true
					for i,v in pairs(hit.Parent:GetChildren()) do
						Fire(v)
					end
					if hit.Parent:findFirstChild("Humanoid") then
						local H = hit.Parent:findFirstChild("Humanoid")
						H.MaxHealth = math.huge
						H.WalkSpeed = 0
						H.JumpPower = 0
						wait()
						Torsoo.Anchored = false
						H:remove()
						if hit.Parent then
							hit.Parent:BreakJoints()
						end
					end
				end
			end
		end
		P.Touched:connect(Hit)
		for i=1,100 do
			wait(0.1)
			P.CFrame = Torso.CFrame
			P.Size = Vector3.new(P.Size.X + 0.5,P.Size.Y + 0.5,P.Size.Z + 0.5)
			P.CFrame = Torso.CFrame
		end
		P:remove()
		wait(0)
		CanBoom = true
		
	end
end)
--
Human.Changed:connect(function()
	if State ~= 'Jumping' then
		Human.Jump = false
	end
end)

Human.FreeFalling:connect(function(a)
	if a then
		if State == 'Walking' or State == 'Idle' then
			State = 'Falling'
		end
	elseif State == 'Jumping' or State == 'Falling' then
		State = 'Idle'
		if FallTime > 10 then
			print('Boom!')
			JumpExplode()
		end
		Human.WalkSpeed = 50
		FallTime = 0
	end
end)
--
wait(0)
game:GetService('RunService').RenderStepped:connect(function()
	UpdateState()
	if State == 'Jumping' or State == 'Falling' then
		FallTime = FallTime + .1
		xlerp(tw,ts,.3)
		xlerp(hw,hs*ca(40,0,0)*cn(0,-1,-1.5),.2)
		xlerp(raw,ras*ca(0,0,-90)*cn(-1,-1,0),.2)
		xlerp(law,las*ca(0,0,90)*cn(1,-1,0),.2)
		xlerp(rlw,rls*ca(20,0,0),.2)
		xlerp(llw,lls*cn(0,-.5,1.25),.2)
	elseif State == 'Idle' then
		xlerp(tw,ts*ca(0,25,0),.1)
		xlerp(hw,hs*ca(0,-25,0),.1)
		xlerp(raw,ras*ca(20,0,-20)*cn(-.5,-.5,0),.1)
		xlerp(law,las*ca(20,0,0),.1)
		xlerp(rlw,rls*ca(20,0,0)*cn(0,0,-1),.1)
		xlerp(llw,lls*cn(0,0,1.25),.1)
		xlerp(haw,has,.4)
	elseif State == 'Walking' then
		xlerp(tw,ts,.15)
		xlerp(hw,hs,.15)
		--xlerp(law,las*ca(30,0,0),.3)
		--xlerp(raw,ras*ca(20,0,-40)*cn(-1,-.5,0),.15)
		xlerp(raw,ras*ca(20,0,-20)*cn(-.5,-.5,0),.1)
		xlerp(law,las*ca(20,0,0),.1)
		if WalkReverse then
			xlerp(rlw,rls*ca(30,0,0)*cn(0,-1,-1.5),.05)
			xlerp(llw,lls*ca(-30,0,0)*cn(0,-1,1.5),.05)
		else
			xlerp(rlw,rls*ca(-30,0,0)*cn(0,-1,1.5),.05)
			xlerp(llw,lls*ca(30,0,0)*cn(0,-1,-1.5),.05)
		end
	end
	fenbarmana2:TweenSize(UDim2.new(4*Mana/MaxMana,0,0.2,0),nil,1,0.4,true)
	fenbarmana4.Text="[Mana]->                   [->  "..Mana.." <-]                    <-[Mana]"
	if Mana>=MaxMana then
		Mana=MaxMana
	else
		if mananum<=8 then
			mananum=mananum+1
		else
			mananum=0
			Mana=Mana+ManaGain
			Char.Humanoid.Health = Char.Humanoid.Health + 1000
		end
	end
	if Mana <= MaxMana/2 then
		fenbarmana2.BackgroundColor = BrickColor.new("Bright red")
		Char.Humanoid.MaxHealth = 40000
		Human.Health = Human.MaxHealth
	else
		fenbarmana2.BackgroundColor = BrickColor.new("Royal purple")
		Char.Humanoid.MaxHealth = 50000
		Human.Health = Human.MaxHealth
	end
end)
--
Char.Humanoid.WalkSpeed = 50
Char.Humanoid.JumpPower = 190

Human.Health = Human.MaxHealth

---------------------------------------------------------------ExtraMorphing
Create = function(itemClass,tabl)
local item = Instance.new(itemClass)
for i,v in pairs(tabl) do
local a,b = ypcall(function() return item[i] end)
if a then
item[i] = tabl[i]
end
end
return item
end
function runDummyScript(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CPM"
o1 = Create("Model",{
["Name"] = "TheRevenant",
["Parent"] = mas,
})
o2 = Create("Part",{
["Name"] = "Head",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(20.5426197, -1139.87634, 782.213928),
["Rotation"] = Vector3.new(-180, 0, -180),
["Anchored"] = true,
["CFrame"] = CFrame.new(20.5426197, -1139.87634, 782.213928, -1, 0, 0, 0, 1, 0, 0, 0, -1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(0.686592042, 0.686592281, 0.6865924),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o3 = Create("Script",{
["Name"] = "Arm1",
["Parent"] = o2,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function onTouched(hit)
	if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:findFirstChild("Arm1") == nil then
		local g = script.Parent.Parent.Arm1:clone()
		g.Parent = hit.Parent
		local C = g:GetChildren()
		for i=1, #C do
			if C[i].className == "Part" then
				local W = Instance.new("Weld")
				W.Part0 = g.Middle
				W.Part1 = C[i]
				local CJ = CFrame.new(g.Middle.Position)
				local C0 = g.Middle.CFrame:inverse()*CJ
				local C1 = C[i].CFrame:inverse()*CJ
				W.C0 = C0
				W.C1 = C1
				W.Parent = g.Middle
			end
				local Y = Instance.new("Weld")
				Y.Part0 = hit.Parent["Left Arm"]
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, 0, 0)
				Y.Parent = Y.Part0
		end

		local h = g:GetChildren()
		for i = 1, # h do
			if h[i].className == "Part" then
				h[i].Anchored = false
				h[i].CanCollide = false
			end
		end
		
	end

end

script.Parent.Touched:connect(onTouched)
end,o3)
end))
o4 = Create("Script",{
["Name"] = "Leg1",
["Parent"] = o2,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function onTouched(hit)
	if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:findFirstChild("Leg1") == nil then
		local g = script.Parent.Parent.Leg1:clone()
		g.Parent = hit.Parent
		local C = g:GetChildren()
		for i=1, #C do
			if C[i].className == "Part" then
				local W = Instance.new("Weld")
				W.Part0 = g.Middle
				W.Part1 = C[i]
				local CJ = CFrame.new(g.Middle.Position)
				local C0 = g.Middle.CFrame:inverse()*CJ
				local C1 = C[i].CFrame:inverse()*CJ
				W.C0 = C0
				W.C1 = C1
				W.Parent = g.Middle
			end
				local Y = Instance.new("Weld")
				Y.Part0 = hit.Parent["Left Leg"]
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, 0, 0)
				Y.Parent = Y.Part0
		end

		local h = g:GetChildren()
		for i = 1, # h do
			if h[i].className == "Part" then
				h[i].Anchored = false
				h[i].CanCollide = false
			end
		end
		
	end

end

script.Parent.Touched:connect(onTouched)
end,o4)
end))
o5 = Create("Script",{
["Name"] = "WalkSpeed Script",
["Parent"] = o2,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
local debounce = false 

function onTouch(part) 

local human = part.Parent:findFirstChild("Humanoid") 
if (human ~= nil) and debounce == false then 

debounce = true 

human.WalkSpeed = 16-- or whatever number 

wait(2) 
debounce = false 
end 
end 


script.Parent.Touched:connect(onTouch) 

end,o5)
end))
o6 = Create("Script",{
["Name"] = "Leg2",
["Parent"] = o2,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function onTouched(hit)
	if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:findFirstChild("Leg2") == nil then
		local g = script.Parent.Parent.Leg2:clone()
		g.Parent = hit.Parent
		local C = g:GetChildren()
		for i=1, #C do
			if C[i].className == "Part" then
				local W = Instance.new("Weld")
				W.Part0 = g.Middle
				W.Part1 = C[i]
				local CJ = CFrame.new(g.Middle.Position)
				local C0 = g.Middle.CFrame:inverse()*CJ
				local C1 = C[i].CFrame:inverse()*CJ
				W.C0 = C0
				W.C1 = C1
				W.Parent = g.Middle
			end
				local Y = Instance.new("Weld")
				Y.Part0 = hit.Parent["Right Leg"]
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, 0, 0)
				Y.Parent = Y.Part0
		end

		local h = g:GetChildren()
		for i = 1, # h do
			if h[i].className == "Part" then
				h[i].Anchored = false
				h[i].CanCollide = false
			end
		end
		
	end

end

script.Parent.Touched:connect(onTouched)
end,o6)
end))
o7 = Create("Script",{
["Name"] = "Arm2",
["Parent"] = o2,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function onTouched(hit)
	if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:findFirstChild("Arm2") == nil then
		local g = script.Parent.Parent.Arm2:clone()
		g.Parent = hit.Parent
		local C = g:GetChildren()
		for i=1, #C do
			if C[i].className == "Part" then
				local W = Instance.new("Weld")
				W.Part0 = g.Middle
				W.Part1 = C[i]
				local CJ = CFrame.new(g.Middle.Position)
				local C0 = g.Middle.CFrame:inverse()*CJ
				local C1 = C[i].CFrame:inverse()*CJ
				W.C0 = C0
				W.C1 = C1
				W.Parent = g.Middle
			end
				local Y = Instance.new("Weld")
				Y.Part0 = hit.Parent["Right Arm"]
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, 0, 0)
				Y.Parent = Y.Part0
		end

		local h = g:GetChildren()
		for i = 1, # h do
			if h[i].className == "Part" then
				h[i].Anchored = false
				h[i].CanCollide = false
			end
		end
		
	end

end

script.Parent.Touched:connect(onTouched)
end,o7)
end))
o8 = Create("Script",{
["Name"] = "Torso",
["Parent"] = o2,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function onTouched(hit)
	if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:findFirstChild("Chest") == nil then
		local g = script.Parent.Parent.Chest:clone()
		g.Parent = hit.Parent
		local C = g:GetChildren()
		for i=1, #C do
			if C[i].className == "Part" then
				local W = Instance.new("Weld")
				W.Part0 = g.Middle
				W.Part1 = C[i]
				local CJ = CFrame.new(g.Middle.Position)
				local C0 = g.Middle.CFrame:inverse()*CJ
				local C1 = C[i].CFrame:inverse()*CJ
				W.C0 = C0
				W.C1 = C1
				W.Parent = g.Middle
			end
				local Y = Instance.new("Weld")
				Y.Part0 = hit.Parent.Torso
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, 0, 0)
				Y.Parent = Y.Part0
		end

		local h = g:GetChildren()
		for i = 1, # h do
			if h[i].className == "Part" then
				h[i].Anchored = false
				h[i].CanCollide = false
			end
		end
		
	end
end

script.Parent.Touched:connect(onTouched)

end,o8)
end))
o9 = Create("Script",{
["Parent"] = o2,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function onTouch(part) 
local human = part.Parent:findFirstChild("Humanoid") 
if human ~= nil then 
part.Parent:findFirstChild("Head").Transparency = 0.98
part.Parent:findFirstChild("Torso").Transparency = 1
part.Parent:findFirstChild("Left Arm").Transparency = 1
part.Parent:findFirstChild("Right Arm").Transparency = 1
part.Parent:findFirstChild("Left Leg").CanCollide = true
part.Parent:findFirstChild("Left Leg").Transparency = 1
part.Parent:findFirstChild("Right Leg").CanCollide = true
part.Parent:findFirstChild("Right Leg").Transparency = 1
end 
end 
script.Parent.Touched:connect(onTouch) 

--COLORS

--1 = white
--208 = Light stone grey
--194 = Medium stone grey
--199 = Dark stone grey
--26 = Black
--21 = Bright red
--24 = Bright yellow
--226 = Cool yellow
--23 = Bright blue
--107 = Bright bluish green
--102 = Medium blue
--11 = Pastel blue
--45 = Light blue
--135 = Sand blue
--106 = Bright orange
--105 = Br. yellowish orange
--141 = Earth green
--28 = Dark green
--37 = Bright green
--119 = Br. yellowish green
--29 = Medium green
--151 = Sand green
--38 = Dark orange
--192 = Reddish brown
--104 = Bright violet
--9 = Light reddish violet
--101 = Medium red
--5 = Brick Yellow
--153 = Sand red
--217 = Brown
--18 = Nougat
--125 = Light orange


end,o9)
end))
o10 = Create("Script",{
["Name"] = "HatRemover",
["Parent"] = o2,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function onTouched(hit) 
	local d = hit.Parent:GetChildren() 
	for i=1, #d do 
		if (d[i].className == "Hat") then 
			d[i].Handle.Transparency = 1
		end 
	end
end 

script.Parent.Touched:connect(onTouched) 
end,o10)
end))
o11 = Create("Script",{
["Name"] = "Cframe",
["Parent"] = o2,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()

wait(2)

local p = script.Parent
local me = game.Players.LocalPlayer.Character


p.Shape = "Ball"

game:GetService('RunService').Stepped:connect(function()
	p.CFrame = me.Torso.CFrame * CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
end)

wait(0.5)

me.Head.Transparency = 1

p:Remove()
end,o11)
end))
o12 = Create("Model",{
["Name"] = "Arm2",
["Parent"] = o1,
})
o13 = Create("Part",{
["Name"] = "Middle",
["Parent"] = o12,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(19.1694355, -1129.92078, 794.572571),
["Anchored"] = true,
["CFrame"] = CFrame.new(19.1694355, -1129.92078, 794.572571, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.43296003, 6.86592293, 3.43296194),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o14 = Create("Fire",{
["Parent"] = o13,
["Size"] = 30,
["Color"] = Color3.new(1, 0.815686, 0),
["Enabled"] = false,
["Heat"] = 25,
["SecondaryColor"] = Color3.new(1, 0, 0),
})
o15 = Create("Script",{
["Parent"] = o14,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function Spread(part)
	check = part:findFirstChild("Fire")
		if check == nil then 
	script.Parent:Clone().Parent = part
	
		elseif check ~= nil then
	check.Size = check.Size + 1
	check.Heat = check.Heat  +1
	end
end


script.Parent.Parent.Touched:connect(Spread)


end,o15)
end))
o16 = Create("Model",{
["Name"] = "Chest",
["Parent"] = o1,
})
o17 = Create("Part",{
["Name"] = "Middle",
["Parent"] = o16,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(14.0199928, -1129.92078, 794.572571),
["Anchored"] = true,
["CFrame"] = CFrame.new(14.0199928, -1129.92078, 794.572571, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(6.86592007, 6.86592293, 3.43296194),
["LeftSurface"] = Enum.SurfaceType.Weld,
["RightSurface"] = Enum.SurfaceType.Weld,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o18 = Create("Fire",{
["Parent"] = o17,
["Size"] = 30,
["Color"] = Color3.new(1, 0.815686, 0),
["Enabled"] = false,
["Heat"] = 25,
["SecondaryColor"] = Color3.new(1, 0, 0),
})
o19 = Create("Script",{
["Parent"] = o18,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function Spread(part)
	check = part:findFirstChild("Fire")
		if check == nil then 
	script.Parent:Clone().Parent = part
	
		elseif check ~= nil then
	check.Size = check.Size + 1
	check.Heat = check.Heat  +1
	end
end


script.Parent.Parent.Touched:connect(Spread)


end,o19)
end))
o20 = Create("Part",{
["Parent"] = o16,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(14.0199928, -1124.77136, 794.572571),
["Velocity"] = Vector3.new(0, -1, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(14.0199928, -1124.77136, 794.572571, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(6.86592007, 3.43296146, 3.43296194),
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o21 = Create("SpecialMesh",{
["Parent"] = o20,
["Scale"] = Vector3.new(1.20000005, 1.20000005, 1.20000005),
})
o22 = Create("Fire",{
["Parent"] = o20,
["Size"] = 30,
["Color"] = Color3.new(1, 0.815686, 0),
["Enabled"] = false,
["Heat"] = 25,
["SecondaryColor"] = Color3.new(1, 0, 0),
})
o23 = Create("Script",{
["Parent"] = o22,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function Spread(part)
	check = part:findFirstChild("Fire")
		if check == nil then 
	script.Parent:Clone().Parent = part
	
		elseif check ~= nil then
	check.Size = check.Size + 1
	check.Heat = check.Heat  +1
	end
end


script.Parent.Parent.Touched:connect(Spread)


end,o23)
end))
o24 = Create("Part",{
["Name"] = "Hat",
["Parent"] = o16,
["Material"] = Enum.Material.Concrete,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(14.0199928, -1124.01611, 794.572571),
["Anchored"] = true,
["CFrame"] = CFrame.new(14.0199928, -1124.01611, 794.572571, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(6.86592007, 3.43296146, 3.43296194),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o25 = Create("Fire",{
["Parent"] = o24,
["Size"] = 30,
["Color"] = Color3.new(1, 0.815686, 0),
["Enabled"] = false,
["Heat"] = 25,
["SecondaryColor"] = Color3.new(1, 0, 0),
})
o26 = Create("Script",{
["Parent"] = o25,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function Spread(part)
	check = part:findFirstChild("Fire")
		if check == nil then 
	script.Parent:Clone().Parent = part
	
		elseif check ~= nil then
	check.Size = check.Size + 1
	check.Heat = check.Heat  +1
	end
end


script.Parent.Parent.Touched:connect(Spread)


end,o26)
end))
o27 = Create("SpecialMesh",{
["Parent"] = o24,
["MeshId"] = "http://www.roblox.com/asset/?id=16150814",
["Scale"] = Vector3.new(3.60460806, 3.60460901, 3.60460973),
["TextureId"] = "http://www.roblox.com/asset/?id=16150799",
["VertexColor"] = Vector3.new(0.200000003, 0.200000003, 0.200000003),
["MeshType"] = Enum.MeshType.FileMesh,
})
o28 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(91.8079071, -3.89169359, 131.856094),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.665723264, -0.74310571, -0.0678706542, 0.0217668079, 0.0715781152, -0.997199297, 0.7458812, -0.66533494, -0.0314760283),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o29 = Create("ParticleEmitter",{
["Parent"] = o28,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o30 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(85.7094498, 5.97641565e-006, -1.68086683e-006),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 1, 2.93366611e-008, 1.04308128e-007, -1.04308128e-007, 0.0748144686, -0.997199237, 3.20142135e-008, 0.997197449, 0.0748144463),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o31 = Create("ParticleEmitter",{
["Parent"] = o30,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o32 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(88.6520844, 4.07365465, -46.3612671),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.6883654, 0.721877038, 0.0710387975, 0.031986922, 0.0676305369, -0.997199357, -0.72465837, 0.688708603, 0.0234639738),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o33 = Create("ParticleEmitter",{
["Parent"] = o32,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o34 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(88.6522293, 4.07362413, -60.6914787),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.488275468, 0.869793534, 0.0710382611, 0.0142543819, 0.0734416321, -0.997199357, -0.872573256, 0.487919807, 0.0234614406),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o35 = Create("ParticleEmitter",{
["Parent"] = o34,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o36 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(88.652298, 4.07355118, -54.170784),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.583892345, 0.808717191, 0.0710370019, 0.0225025266, 0.0713460743, -0.997199595, -0.811519146, 0.583854675, 0.023460323),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o37 = Create("ParticleEmitter",{
["Parent"] = o36,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o38 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(92.5079422, 3.48240304, -100.481056),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.181574538, 0.981499434, 0.0607419871, 0.031988997, 0.0676312596, -0.997199178, -0.98285675, -0.179122493, -0.0436771102),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o39 = Create("ParticleEmitter",{
["Parent"] = o38,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o40 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(88.6522217, 4.07366323, -71.6749725),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.313612849, 0.946889937, 0.0710389465, 7.52419567e-007, 0.0748128816, -0.997199416, -0.949550927, 0.312734067, 0.0234616306),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o41 = Create("ParticleEmitter",{
["Parent"] = o40,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o42 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(88.6522217, 4.07363415, -54.7600021),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.575544894, 0.814678848, 0.0710384399, 0.0217674468, 0.0715756118, -0.997199476, -0.817480505, 0.575478315, 0.0234615691),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o43 = Create("ParticleEmitter",{
["Parent"] = o42,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o44 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(88.6522293, 4.07363319, -64.9099731),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.422970563, 0.903354645, 0.071038425, 0.00881337654, 0.0742913932, -0.997199476, -0.90610069, 0.422411412, 0.0234615393),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o45 = Create("ParticleEmitter",{
["Parent"] = o44,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o46 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(85.7858124, 0.805993795, 6.10579872),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.994228899, -0.106354184, 0.0140667818, 0.0217652507, 0.0715764016, -0.997199416, 0.105049394, 0.99174881, 0.0734781027),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o47 = Create("ParticleEmitter",{
["Parent"] = o46,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o48 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(90.5981674, 4.24854565, -80.5159073),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.164320961, 0.983621061, 0.0740831718, 0.0225036014, 0.0713462606, -0.997199535, -0.986150265, 0.165527821, -0.0104111936),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o49 = Create("ParticleEmitter",{
["Parent"] = o48,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o50 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(92.5080032, 3.48228145, -108.879791),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.322986245, 0.944452524, 0.0607398674, 0.021769356, 0.07157664, -0.997199357, -0.946153343, -0.32075882, -0.0436782129),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o51 = Create("ParticleEmitter",{
["Parent"] = o50,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o52 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(90.5981445, 4.24865246, -91.2550812),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.0218434073, 0.997012675, 0.0740850344, 0.0088143833, 0.0742918178, -0.997199416, -0.999722719, -0.0211290903, -0.0104107056),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o53 = Create("ParticleEmitter",{
["Parent"] = o52,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o54 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(90.5981445, 4.2486515, -81.1051102),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.15419735, 0.985258758, 0.0740850121, 0.0217685215, 0.071575813, -0.997199357, -0.9878003, 0.155377954, -0.0104107037),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o55 = Create("ParticleEmitter",{
["Parent"] = o54,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o56 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(92.5080032, 3.48227262, -114.811272),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.418855935, 0.906019092, 0.0607397109, 0.0142561644, 0.0734429136, -0.997199357, -0.907940924, -0.416816145, -0.0436781682),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o57 = Create("ParticleEmitter",{
["Parent"] = o56,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o58 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(92.5080185, 3.48230243, -125.794777),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.583803773, 0.809619486, 0.0607402325, 2.25007534e-006, 0.0748144388, -0.997199237, -0.811894834, -0.582167447, -0.0436785743),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o59 = Create("ParticleEmitter",{
["Parent"] = o58,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o60 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(90.5981445, 4.24864292, -87.0365982),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.0515560172, 0.995918393, 0.0740848705, 0.0142553989, 0.0734420046, -0.997199357, -0.998568416, 0.0524677485, -0.0104107074),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o61 = Create("ParticleEmitter",{
["Parent"] = o60,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o62 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(90.5980301, 4.24873638, -72.7063599),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.296452016, 0.952169955, 0.0740864947, 0.0319880433, 0.0676306561, -0.997199297, -0.95451194, 0.297991157, -0.0104086772),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o63 = Create("ParticleEmitter",{
["Parent"] = o62,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o64 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(90.5981522, 4.24868107, -98.0200729),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.139136612, 0.987498105, 0.0740855336, 1.6912818e-006, 0.0748133883, -0.997199357, -0.990273178, -0.13874647, -0.0104108211),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o65 = Create("ParticleEmitter",{
["Parent"] = o64,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o66 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(86.5763168, 2.58728242, -20.1215248),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.938007891, 0.343661755, 0.0451412499, 0.0217661932, 0.0715755075, -0.997199476, -0.345929593, 0.93636179, 0.0596581995),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o67 = Create("ParticleEmitter",{
["Parent"] = o66,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o68 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(88.1726608, 3.88256121, -39.4587975),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.770309925, 0.634064615, 0.067711629, 0.0319868773, 0.0676303059, -0.997199357, -0.636866927, 0.770317078, 0.0318146087),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o69 = Create("ParticleEmitter",{
["Parent"] = o68,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o70 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(86.5764236, 2.58725405, -19.5322876),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.941492617, 0.33399722, 0.0451407582, 0.0225012712, 0.0713459849, -0.997199714, -0.336281836, 0.93987, 0.0596563518),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o71 = Create("ParticleEmitter",{
["Parent"] = o70,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o72 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(85.7859116, 0.806017935, 6.69499683),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.993082643, -0.116572484, 0.0140672028, 0.0225003324, 0.0713469088, -0.997199535, 0.115242243, 0.990616262, 0.0734762773),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o73 = Create("ParticleEmitter",{
["Parent"] = o72,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o74 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(85.78582, 0.805994451, 0.174329057),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.999896467, -0.00304231024, 0.014066793, 0.0142521039, 0.0734422281, -0.997199416, 0.00200076075, 0.997294903, 0.0734779537),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o75 = Create("ParticleEmitter",{
["Parent"] = o74,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o76 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(86.5761871, 2.58722425, -11.7227564),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.978144228, 0.202969119, 0.0451402366, 0.0319857337, 0.067630738, -0.997199416, -0.205453068, 0.976846695, 0.0596604981),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o77 = Create("ParticleEmitter",{
["Parent"] = o76,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o78 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(85.7857819, 0.806004465, -10.809165),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.982160211, 0.187519893, 0.0140669681, -1.57952309e-006, 0.0748129785, -0.997199416, -0.188046604, 0.979407728, 0.073478587),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o79 = Create("ParticleEmitter",{
["Parent"] = o78,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o80 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(85.7858124, 0.805993795, -4.04415083),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.99741137, 0.0705181807, 0.0140667818, 0.00881107524, 0.0742917582, -0.997199416, -0.0713654235, 0.994740188, 0.0734780729),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o81 = Create("ParticleEmitter",{
["Parent"] = o80,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o82 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(86.5763245, 2.5872798, -26.05299),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.897472501, 0.438754529, 0.0451412052, 0.0142531395, 0.0734415054, -0.997199476, -0.440840036, 0.895600855, 0.0596581101),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o83 = Create("ParticleEmitter",{
["Parent"] = o82,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o84 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(86.5763168, 2.58728147, -30.271471),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.862766325, 0.503583789, 0.045141235, 0.00881213322, 0.07429111, -0.997199476, -0.505526066, 0.860746384, 0.0596582144),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o85 = Create("ParticleEmitter",{
["Parent"] = o84,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o86 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(85.7857132, 0.805881739, 14.504549),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.968032002, -0.250432104, 0.0140648261, 0.0319848694, 0.0676316917, -0.997199297, 0.248779178, 0.965768933, 0.0734796599),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o87 = Create("ParticleEmitter",{
["Parent"] = o86,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o88 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(88.1727982, 3.88255501, -58.0075073),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.528592288, 0.846171021, 0.0677115172, 0.00881337747, 0.0742911473, -0.997199416, -0.848830044, 0.527707875, 0.03181215),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o89 = Create("ParticleEmitter",{
["Parent"] = o88,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o90 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(92.5079803, 3.48217797, -108.290573),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.3132568, 0.947724164, 0.0607380643, 0.0225044452, 0.0713471472, -0.997199416, -0.949401677, -0.311012, -0.0436778031),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o91 = Create("ParticleEmitter",{
["Parent"] = o90,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o92 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(88.1727982, 3.88255286, -47.8575058),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.669436872, 0.73977679, 0.06771148, 0.0217674114, 0.0715753064, -0.997199416, -0.742550015, 0.669034898, 0.0318121836),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o93 = Create("ParticleEmitter",{
["Parent"] = o92,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o94 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(88.1727905, 3.88258696, -64.7724915),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.42523545, 0.902546406, 0.067712076, 7.84173608e-007, 0.074812673, -0.997199357, -0.905082703, 0.424043894, 0.0318123475),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o95 = Create("ParticleEmitter",{
["Parent"] = o94,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o96 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(88.1728058, 3.88254642, -53.78899),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.589404881, 0.80499506, 0.0677113682, 0.0142543623, 0.0734413564, -0.997199476, -0.807711899, 0.588718295, 0.0318120643),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o97 = Create("ParticleEmitter",{
["Parent"] = o96,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o98 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(92.5080032, 3.48228097, -119.029747),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.484367788, 0.872753441, 0.0607398599, 0.00881505013, 0.0742927566, -0.997199357, -0.874820292, -0.482474804, -0.043678198),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o99 = Create("ParticleEmitter",{
["Parent"] = o98,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o100 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(86.5762939, 2.58730626, -37.0364799),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.797438562, 0.601709425, 0.0451416671, -4.47034836e-007, 0.0748125091, -0.997199535, -0.603400409, 0.795203745, 0.0596586503),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o101 = Create("ParticleEmitter",{
["Parent"] = o100,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o102 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(88.1728821, 3.88248229, -47.2683334),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.67700851, 0.732853889, 0.0677102506, 0.022502467, 0.0713458061, -0.997199595, -0.735631049, 0.676635146, 0.0318107568),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o103 = Create("ParticleEmitter",{
["Parent"] = o102,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o104 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(94.2613144, -0.499827653, -175.694702),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.997140229, 0.0750680491, -0.00872352719, 0.0142532885, 0.0734430179, -0.997199416, -0.0742171258, -0.994470239, -0.0743027255),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o105 = Create("ParticleEmitter",{
["Parent"] = o104,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o106 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(94.261322, -0.499826789, -179.913193),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.999960899, 0.00151503831, -0.00872351229, 0.00881218165, 0.0742927045, -0.997199416, -0.000862813671, -0.997235537, -0.0743029192),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o107 = Create("ParticleEmitter",{
["Parent"] = o106,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o108 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(94.2613602, -0.499834061, 173.321823),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.993177116, -0.116288163, -0.00872363895, -5.81145287e-007, 0.0748140141, -0.997199237, 0.116614863, -0.990393817, -0.0743034109),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o109 = Create("ParticleEmitter",{
["Parent"] = o108,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o110 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(92.5135651, 3.47827554, -114.90554),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.42034781, 0.905332446, 0.0606700778, 0.014252793, 0.07344383, -0.997199297, -0.907251179, -0.41830501, -0.0437752716),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o111 = Create("ParticleEmitter",{
["Parent"] = o110,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o112 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(93.6014633, -2.333462, 147.101608),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.838938951, -0.542700648, -0.0407153368, -1.86264515e-008, 0.0748138502, -0.997199237, 0.544225812, -0.836587727, -0.0627640337),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o113 = Create("ParticleEmitter",{
["Parent"] = o112,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o114 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(92.1031647, -3.74052405, 119.376282),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.489498109, -0.869560719, -0.0652380958, 5.23403287e-007, 0.0748140067, -0.997199237, 0.87200439, -0.488126427, -0.0366207063),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o115 = Create("ParticleEmitter",{
["Parent"] = o114,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o116 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(93.6014328, -2.33343935, 158.085083),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.926969826, -0.372919947, -0.0407149419, 0.01425381, 0.073442772, -0.997199357, 0.374865085, -0.924952507, -0.0627634823),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o117 = Create("ParticleEmitter",{
["Parent"] = o116,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o118 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(92.1031418, -3.74048948, 130.359772),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.646205604, -0.760369897, -0.0652374923, 0.0142543968, 0.0734428242, -0.997199357, 0.763030291, -0.645324588, -0.0366203785),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o119 = Create("ParticleEmitter",{
["Parent"] = o118,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o120 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(92.1032867, -3.74049091, 144.690002),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.814298451, -0.576768756, -0.0652375147, 0.0319872722, 0.067631647, -0.997199297, 0.579564393, -0.814103067, -0.0366229154),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o121 = Create("ParticleEmitter",{
["Parent"] = o120,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o122 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(93.6015625, -2.33337355, 172.415314),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.990429044, -0.131882057, -0.0407137945, 0.0319866985, 0.0676317811, -0.997199297, 0.134265944, -0.988955557, -0.062765792),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o123 = Create("ParticleEmitter",{
["Parent"] = o122,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o124 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(92.1031494, -3.7404964, 136.291245),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.721321881, -0.689520895, -0.0652376115, 0.0217675827, 0.0715767443, -0.997199416, 0.692257822, -0.72072053, -0.0366205126),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o125 = Create("ParticleEmitter",{
["Parent"] = o124,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o126 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(93.6013336, -2.33342433, 164.605774),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.963322699, -0.265238851, -0.0407146811, 0.0225021094, 0.0713472068, -0.997199535, 0.267400384, -0.961539388, -0.0627617538),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o127 = Create("ParticleEmitter",{
["Parent"] = o126,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o128 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(93.6014404, -2.33344245, 164.016571),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.960544229, -0.275131136, -0.0407149941, 0.0217670128, 0.071576722, -0.997199357, 0.277274162, -0.958738506, -0.0627636239),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o129 = Create("ParticleEmitter",{
["Parent"] = o128,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o130 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(93.6014404, -2.33344316, 153.866592),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.897026539, -0.440097481, -0.040715009, 0.00881273672, 0.0742924362, -0.997199357, 0.441888869, -0.894871473, -0.0627636313),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o131 = Create("ParticleEmitter",{
["Parent"] = o130,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o132 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(92.5135727, 3.47828579, -108.974068),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.324541301, 0.943923831, 0.0606702566, 0.0217660815, 0.0715779364, -0.997199297, -0.945621192, -0.322310954, -0.0437753312),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o133 = Create("ParticleEmitter",{
["Parent"] = o132,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o134 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(94.2613297, -0.499825507, -169.763214),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.984044254, 0.177709699, -0.00872348994, 0.0217664987, 0.0715771168, -0.997199357, -0.176587358, -0.981476426, -0.0743029416),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o135 = Create("ParticleEmitter",{
["Parent"] = o134,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o136 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(94.2614059, -0.499709398, -161.364487),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.947534502, 0.31953451, -0.00872146338, 0.0319862142, 0.0676321536, -0.997199357, -0.318049282, -0.945157945, -0.0743042678),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o137 = Create("ParticleEmitter",{
["Parent"] = o136,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o138 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(94.2612228, -0.499854535, -169.174011),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.982164741, 0.187819839, -0.00872399658, 0.0225015879, 0.0713475794, -0.997199476, -0.186671242, -0.979608715, -0.0743010864),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o139 = Create("ParticleEmitter",{
["Parent"] = o138,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o140 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(92.1030655, -3.74043012, 136.880478),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.7283746, -0.682066679, -0.0652364641, 0.0225026757, 0.0713472888, -0.997199476, 0.684809685, -0.727801323, -0.0366190374),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o141 = Create("ParticleEmitter",{
["Parent"] = o140,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o142 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(93.7929153, 2.0070765, -152.154175),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.883665204, 0.466807544, 0.0350229293, -9.01520252e-007, 0.0748142153, -0.997199297, -0.468119651, -0.881188631, -0.0661100745),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o143 = Create("ParticleEmitter",{
["Parent"] = o142,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o144 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(93.7928925, 2.00720692, -126.840439),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.599220753, 0.799817324, 0.0350252055, 0.031986054, 0.067632474, -0.997199237, -0.79994458, -0.596421063, -0.0661095679),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o145 = Create("ParticleEmitter",{
["Parent"] = o144,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o146 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(92.513504, 3.47841239, -100.575317),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.18318972, 0.981203556, 0.060672462, 0.0319859311, 0.0676330775, -0.997199237, -0.982557118, -0.180735588, -0.0437742099),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o147 = Create("ParticleEmitter",{
["Parent"] = o146,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o148 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(93.7928848, 2.00706434, -135.239212),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.709617138, 0.703716636, 0.035022717, 0.0217662603, 0.0715773031, -0.997199297, -0.704251409, -0.706866026, -0.0661095232),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o149 = Create("ParticleEmitter",{
["Parent"] = o148,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o150 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(92.5135727, 3.47828293, -119.124016),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.485805035, 0.87195915, 0.0606702045, 0.00881163031, 0.0742934197, -0.997199297, -0.874022782, -0.483909011, -0.0437753089),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o151 = Create("ParticleEmitter",{
["Parent"] = o150,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o152 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(93.7928848, 2.00706506, -145.38916),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.822523952, 0.567651212, 0.0350227281, 0.00881189853, 0.0742928758, -0.997199297, -0.568662286, -0.819910288, -0.0661095232),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o153 = Create("ParticleEmitter",{
["Parent"] = o152,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o154 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(94.2905273, 0.0145034799, -154.495163),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.902548909, 0.430587351, 0.000253133476, 0.0319863558, 0.0676319897, -0.997199237, -0.429397821, -0.90001142, -0.0748138651),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o155 = Create("ParticleEmitter",{
["Parent"] = o154,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o156 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(93.7928162, 2.00698066, -134.649948),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.70234257, 0.710977197, 0.0350212567, 0.0225013494, 0.0713477731, -0.997199535, -0.711483479, -0.699586332, -0.0661083013),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o157 = Create("ParticleEmitter",{
["Parent"] = o156,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o158 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(93.7928848, 2.00705934, -141.17067),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.7785393, 0.626618087, 0.0350226313, 0.0142530277, 0.0734432712, -0.997199297, -0.627434313, -0.775858164, -0.0661094338),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o159 = Create("ParticleEmitter",{
["Parent"] = o158,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o160 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(92.5135956, 3.47830582, -125.889046),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.585137486, 0.808661342, 0.0606706068, -1.21444464e-006, 0.074814707, -0.997199297, -0.810934246, -0.583497524, -0.0437757187),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o161 = Create("ParticleEmitter",{
["Parent"] = o160,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o162 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(92.5135498, 3.47817874, -108.384872),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.314817429, 0.947211266, 0.0606683902, 0.022501193, 0.0713484362, -0.997199476, -0.948885441, -0.312570006, -0.0437749177),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o163 = Create("ParticleEmitter",{
["Parent"] = o162,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o164 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(94.2904892, 0.0143754138, -179.808853),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.999994397, 0.00333616044, 0.000250898302, -4.09781933e-007, 0.0748139843, -0.997199297, -0.00334567297, -0.997191966, -0.0748133287),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o165 = Create("ParticleEmitter",{
["Parent"] = o164,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o166 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(94.290451, 0.0143788289, -168.825333),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.981041014, 0.193800449, 0.000250957906, 0.0142534375, 0.0734428689, -0.997199416, -0.193275839, -0.978288114, -0.0748125464),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o167 = Create("ParticleEmitter",{
["Parent"] = o166,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o168 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(92.1031494, -3.7404964, 126.141289),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.588522196, -0.805844843, -0.0652376115, 0.00881329924, 0.0742925704, -0.997199416, 0.808432996, -0.587447941, -0.0366205201),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o169 = Create("ParticleEmitter",{
["Parent"] = o168,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o170 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(94.2903519, 0.0143369939, -162.304688),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.952686429, 0.303955168, 0.000250227749, 0.022501722, 0.0713474005, -0.997199476, -0.303121299, -0.950010955, -0.0748109668),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o171 = Create("ParticleEmitter",{
["Parent"] = o170,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o172 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(94.2904587, 0.014379683, -173.043854),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.992639124, 0.12110962, 0.000250972807, 0.00881235301, 0.0742925704, -0.997199416, -0.120788924, -0.989854991, -0.0748127401),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o173 = Create("ParticleEmitter",{
["Parent"] = o172,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o174 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(94.2904587, 0.0143822441, -162.89386),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.955761433, 0.294142872, 0.000251017511, 0.0217666402, 0.0715769008, -0.997199416, -0.29333657, -0.953077495, -0.0748127103),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o175 = Create("ParticleEmitter",{
["Parent"] = o174,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o176 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(89.8953552, -4.28925848, 105.515739),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.266753852, -0.960858285, -0.0747917816, 0.0217667986, 0.0715778098, -0.997199297, 0.963518798, -0.267634332, 0.00182124786),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o177 = Create("ParticleEmitter",{
["Parent"] = o176,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o178 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(89.8953171, -4.28915977, 106.104965),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.276620984, -0.958064437, -0.0747900605, 0.0225019082, 0.0713483319, -0.997199476, 0.960715652, -0.277528822, 0.00182191283),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o179 = Create("ParticleEmitter",{
["Parent"] = o178,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o180 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(91.8080521, -3.89170218, 140.254837),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.767122865, -0.637899756, -0.0678708032, 0.0319866836, 0.0676331818, -0.997199178, 0.640702367, -0.767143786, -0.031478513),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o181 = Create("ParticleEmitter",{
["Parent"] = o180,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o182 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(91.8078308, -3.89162207, 132.445297),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.67332983, -0.736220598, -0.0678694025, 0.0225019008, 0.0713486224, -0.997199476, 0.738999724, -0.672970235, -0.0314746276),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o183 = Create("ParticleEmitter",{
["Parent"] = o182,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o184 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(87.9093552, -3.74753022, 71.7991714),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.311680853, -0.947936237, -0.065360114, 0.0142536219, 0.0734435916, -0.997199297, 0.950079978, 0.309875667, 0.0364025161),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o185 = Create("ParticleEmitter",{
["Parent"] = o184,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o186 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(87.9093552, -3.74753881, 67.5806808),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.380566627, -0.922440886, -0.065360263, 0.00881247222, 0.0742932856, -0.997199237, 0.924711466, 0.378924072, 0.0364025608),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o187 = Create("ParticleEmitter",{
["Parent"] = o186,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o188 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(87.9093399, -3.74756861, 60.8156891),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.486577958, -0.871188819, -0.0653607845, -3.83704901e-007, 0.0748147219, -0.997199297, 0.873637259, 0.485214263, 0.0364029035),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o189 = Create("ParticleEmitter",{
["Parent"] = o188,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o190 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(89.8953552, -4.28925848, 95.3657913),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.0932519436, -0.992829502, -0.0747917816, 0.00881233905, 0.0742934793, -0.997199297, 0.995603502, -0.0936497822, 0.00182124041),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o191 = Create("ParticleEmitter",{
["Parent"] = o190,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o192 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(89.8954849, -4.28933144, 113.914505),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.404237568, -0.911590993, -0.0747930482, 0.0319866538, 0.067632921, -0.997199178, 0.914094567, -0.405497104, 0.00181907415),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o193 = Create("ParticleEmitter",{
["Parent"] = o192,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o194 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(89.8953552, -4.28925085, 99.5842743),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.166031793, -0.983280063, -0.0747916475, 0.0142535102, 0.07344383, -0.997199297, 0.986017346, -0.166632652, 0.00182126649),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o195 = Create("ParticleEmitter",{
["Parent"] = o194,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o196 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(89.8953476, -4.2892952, 88.6007767),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.0243502744, -0.99690181, -0.0747924149, -5.30853868e-007, 0.0748149008, -0.997199297, 0.999703526, 0.0242818799, 0.0018213205),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o197 = Create("ParticleEmitter",{
["Parent"] = o196,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o198 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(87.9094315, -3.74766088, 86.1293869),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.0673592016, -0.99558562, -0.0653623864, 0.0319867022, 0.0676326752, -0.997199178, 0.997216046, 0.065079622, 0.0364012159),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o199 = Create("ParticleEmitter",{
["Parent"] = o198,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o200 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(87.9093704, -3.74743366, 78.3198776),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.202014804, -0.977199256, -0.0653584376, 0.0225019958, 0.0713481307, -0.997199476, 0.979124069, 0.199977919, 0.036402341),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o201 = Create("ParticleEmitter",{
["Parent"] = o200,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o202 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(87.9093552, -3.7475431, 77.7306519),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.212053299, -0.975070119, -0.0653603375, 0.0217668973, 0.0715776533, -0.997199237, 0.977015674, 0.210036218, 0.0364025459),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o203 = Create("ParticleEmitter",{
["Parent"] = o202,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o204 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(91.8079071, -3.89169359, 121.706116),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.524350643, -0.848793328, -0.0678706542, 0.00881229527, 0.0742937326, -0.997199297, 0.851456881, -0.523479283, -0.0314760059),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o205 = Create("ParticleEmitter",{
["Parent"] = o204,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o206 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(91.8079071, -3.89168763, 125.924606),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.585367382, -0.807922482, -0.0678705499, 0.0142534673, 0.0734440908, -0.997199297, 0.810642779, -0.584694326, -0.0314759463),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o207 = Create("ParticleEmitter",{
["Parent"] = o206,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o208 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(85.7094803, 3.41509462e-006, 6.7649889),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.99303776, -0.117797188, 5.96046448e-008, 0.00881272554, 0.0742930025, -0.997199297, 0.117467135, 0.9902547, 0.0748138353),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o209 = Create("ParticleEmitter",{
["Parent"] = o208,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o210 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(85.7094879, 5.12264205e-006, 10.98349),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.981682122, -0.190526128, 8.94069672e-008, 0.014253851, 0.0734433234, -0.997199416, 0.189992264, 0.978931069, 0.0748137087),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o211 = Create("ParticleEmitter",{
["Parent"] = o210,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o212 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(85.7094803, 1.70754731e-006, 16.9149685),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.956737638, -0.290952176, 2.98023224e-008, 0.0217670985, 0.0715773255, -0.997199297, 0.290136814, 0.954056323, 0.07481388),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o213 = Create("ParticleEmitter",{
["Parent"] = o212,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o214 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(85.7095795, 4.39693431e-005, 17.5041828),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.953695059, -0.300775439, 7.67409801e-007, 0.0225021988, 0.0713478252, -0.997199476, 0.299932599, 0.951022446, 0.074812144),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o215 = Create("ParticleEmitter",{
["Parent"] = o214,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o216 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(85.7094116, -0.000123370293, 25.3137016),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.903980315, -0.427574009, -2.15321779e-006, 0.0319868661, 0.0676323473, -0.997199237, 0.426376015, 0.9014467, 0.0748150349),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o217 = Create("ParticleEmitter",{
["Parent"] = o216,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o218 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(86.2003632, -1.99434543, 27.6544552),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.885226369, -0.463856965, -0.0348008648, -3.94880772e-007, 0.0748145506, -0.997199237, 0.465160698, 0.882745445, 0.0662276074),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o219 = Create("ParticleEmitter",{
["Parent"] = o218,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o220 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(86.2003937, -1.99432755, 38.6379433),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.780633986, -0.624018788, -0.0348005518, 0.0142535642, 0.0734434575, -0.997199297, 0.624826014, 0.777950108, 0.0662269443),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o221 = Create("ParticleEmitter",{
["Parent"] = o220,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o222 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(86.200386, -1.99447691, 52.9681625),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.601893902, -0.797817409, -0.0348031595, 0.031986624, 0.067632556, -0.997199178, 0.797935426, 0.599093735, 0.0662271008),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o223 = Create("ParticleEmitter",{
["Parent"] = o222,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o224 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(86.200386, -1.99433267, 34.4194527),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.824422002, -0.56490469, -0.0348006412, 0.00881243497, 0.0742931217, -0.997199237, 0.565907061, 0.821804762, 0.0662270635),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o225 = Create("ParticleEmitter",{
["Parent"] = o224,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o226 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(86.200386, -1.99433351, 44.5694199),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.711969256, -0.701347888, -0.0348006561, 0.0217668451, 0.0715774819, -0.997199237, 0.701873243, 0.709216297, 0.0662270635),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o227 = Create("ParticleEmitter",{
["Parent"] = o226,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o228 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(86.2004547, -1.99425054, 45.1586418),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.704719126, -0.708632469, -0.0347992107, 0.022501938, 0.0713479817, -0.997199416, 0.709129572, 0.70196116, 0.0662258714),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o229 = Create("ParticleEmitter",{
["Parent"] = o228,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o230 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(87.4747849, -3.46971107, 71.4232864),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.317990065, -0.946160436, -0.0605208725, 0.0225017648, 0.0713482797, -0.997199416, 0.947826922, 0.315737069, 0.0439783558),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o231 = Create("ParticleEmitter",{
["Parent"] = o230,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o232 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(87.474823, -3.469944, 79.232811),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.186476216, -0.980593324, -0.060524933, 0.0319864899, 0.0676328763, -0.997199237, 0.981938541, 0.184017584, 0.0439776927),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o233 = Create("ParticleEmitter",{
["Parent"] = o232,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o234 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(87.474762, -3.46981502, 60.6841011),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.488726914, -0.870335042, -0.060522683, 0.00881221518, 0.074293375, -0.997199237, 0.872392356, 0.486823827, 0.0439787731),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o235 = Create("ParticleEmitter",{
["Parent"] = o234,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o236 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(87.4747696, -3.4698081, 64.9025879),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.423380911, -0.903927863, -0.0605225638, 0.0142533705, 0.0734437481, -0.997199237, 0.905839682, 0.421331614, 0.0439787284),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o237 = Create("ParticleEmitter",{
["Parent"] = o236,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o238 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(87.4747391, -3.469841, 53.9191055),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.587847352, -0.806704819, -0.0605231375, -6.44475222e-007, 0.0748147741, -0.997199237, 0.808971882, 0.58619982, 0.0439791642),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o239 = Create("ParticleEmitter",{
["Parent"] = o238,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o240 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(87.474762, -3.46981668, 70.8340683),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, 0.327703208, -0.942840219, -0.0605227128, 0.02176667, 0.0715778098, -0.997199237, 0.944529951, 0.325467318, 0.0439787768),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o241 = Create("ParticleEmitter",{
["Parent"] = o240,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o242 = Create("Part",{
["Parent"] = o16,
["Transparency"] = 1,
["Position"] = Vector3.new(13.6292343, -1140.07751, 791.16803),
["Rotation"] = Vector3.new(91.8079224, -3.89172578, 114.941132),
["Anchored"] = true,
["CFrame"] = CFrame.new(13.6292343, -1140.07751, 791.16803, -0.420714408, -0.904650569, -0.067871213, -6.10947609e-007, 0.0748151317, -0.997199237, 0.907193065, -0.419535309, -0.0314762108),
["CanCollide"] = false,
["Locked"] = true,
["Size"] = Vector3.new(2.23000002, 0.200000003, 0.200000003),
})
o243 = Create("ParticleEmitter",{
["Parent"] = o242,
["Size"] = NumberSequence.new(2.7999999523163,2.7999999523163),
["Color"] = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.129412, 0.129412, 0.129412)),
["Texture"] = "rbxasset://textures/particles/explosion01_implosion_main.dds",
["Acceleration"] = Vector3.new(0, -0.899999976, 0),
["Speed"] = NumberRange.new(10,10),
})
o244 = Create("Model",{
["Name"] = "Arm1",
["Parent"] = o1,
})
o245 = Create("Part",{
["Name"] = "Middle",
["Parent"] = o244,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(8.8705492, -1129.92078, 794.572571),
["Anchored"] = true,
["CFrame"] = CFrame.new(8.8705492, -1129.92078, 794.572571, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.43296003, 6.86592293, 3.43296194),
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o246 = Create("Fire",{
["Parent"] = o245,
["Size"] = 30,
["Color"] = Color3.new(1, 0.815686, 0),
["Enabled"] = false,
["Heat"] = 25,
["SecondaryColor"] = Color3.new(1, 0, 0),
})
o247 = Create("Script",{
["Parent"] = o246,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function Spread(part)
	check = part:findFirstChild("Fire")
		if check == nil then 
	script.Parent:Clone().Parent = part
	
		elseif check ~= nil then
	check.Size = check.Size + 1
	check.Heat = check.Heat  +1
	end
end


script.Parent.Parent.Touched:connect(Spread)


end,o247)
end))
o248 = Create("Model",{
["Name"] = "Leg2",
["Parent"] = o1,
})
o249 = Create("Part",{
["Name"] = "Middle",
["Parent"] = o248,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(15.736475, -1136.78674, 794.572571),
["Velocity"] = Vector3.new(0, -1, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(15.736475, -1136.78674, 794.572571, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.43296003, 6.86592293, 3.43296194),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o250 = Create("Fire",{
["Parent"] = o249,
["Size"] = 30,
["Color"] = Color3.new(1, 0.815686, 0),
["Enabled"] = false,
["Heat"] = 25,
["SecondaryColor"] = Color3.new(1, 0, 0),
})
o251 = Create("Script",{
["Parent"] = o250,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function Spread(part)
	check = part:findFirstChild("Fire")
		if check == nil then 
	script.Parent:Clone().Parent = part
	
		elseif check ~= nil then
	check.Size = check.Size + 1
	check.Heat = check.Heat  +1
	end
end


script.Parent.Parent.Touched:connect(Spread)


end,o251)
end))
o252 = Create("Model",{
["Name"] = "Leg1",
["Parent"] = o1,
})
o253 = Create("Part",{
["Name"] = "Middle",
["Parent"] = o252,
["Material"] = Enum.Material.Granite,
["BrickColor"] = BrickColor.new("Really black"),
["Position"] = Vector3.new(12.3035145, -1136.78674, 794.572571),
["Velocity"] = Vector3.new(0, -1, 0),
["Anchored"] = true,
["CFrame"] = CFrame.new(12.3035145, -1136.78674, 794.572571, 1, 0, 0, 0, 1, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3.43296003, 6.86592293, 3.43296194),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o254 = Create("Fire",{
["Parent"] = o253,
["Size"] = 30,
["Color"] = Color3.new(1, 0.815686, 0),
["Enabled"] = false,
["Heat"] = 25,
["SecondaryColor"] = Color3.new(1, 0, 0),
})
o255 = Create("Script",{
["Parent"] = o254,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function Spread(part)
	check = part:findFirstChild("Fire")
		if check == nil then 
	script.Parent:Clone().Parent = part
	
		elseif check ~= nil then
	check.Size = check.Size + 1
	check.Heat = check.Heat  +1
	end
end


script.Parent.Parent.Touched:connect(Spread)


end,o255)
end))
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = workspace 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end


game.Players.LocalPlayer.Character.Head.face:Remove()
game.Players.LocalPlayer.Character.Head.Transparency = 0