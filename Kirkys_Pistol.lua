local plr = game.Players.LocalPlayer
local chr = plr.Character
local maus = plr:GetMouse()
local PGui=plr.PlayerGui
local lleg = chr["Left Leg"]
local rleg = chr["Right Leg"]
local larm = chr["Left Arm"]
local rarm = chr["Right Arm"]
local hed = chr.Head
local rutprt = chr.HumanoidRootPart
local torso = chr.Torso
local otheranims=false
local armmovement=false
local equipped=false
chr.Animate.Disabled=true
local RunSpeed=40
local WlkSpeed=20
local CrawlSpeed=10
local CrawlDashSpeed=20
local runnin=false
local tik=0
local fldb={['w']=false,['a']=false,['s']=false,['d']=false}
local Meows={"60871617","151742282","138093919"}
local leftnekoface="260195370"
local rightnekoface="260196558"
local swing="Right"
local armanim=""
local hitdb=false

local RightNekoColor=BrickColor.new("Really black")
local LeftNekoColor=BrickColor.new("Institutional white")



coroutine.wrap(function()
for i,x in pairs(hed:GetChildren()) do if x:IsA('Sound') then x:Destroy() end end end)()
function Lerp(a, b, i)
local com1 = {a.X, a.Y, a.Z, a:toEulerAnglesXYZ()}
local com2 = {b.X, b.Y, b.Z, b:toEulerAnglesXYZ()}
local calx = com1[1] + (com2[1] - com1[1]) * i
local caly = com1[2] + (com2[2] - com1[2]) * i
local calz = com1[3] + (com2[3] - com1[3]) * i
local cala = com1[4] + (com2[4] - com1[4]) * i
local calb = com1[5] + (com2[5] - com1[5]) * i
local calc = com1[6] + (com2[6] - com1[6]) * i
return CFrame.new(calx, caly, calz) * CFrame.Angles(cala, calb, calc)
end
function TwnSingleNumber(s,f,m)
local wot=s+(f-s)*m
return wot
end
function TwnVector3(q,w,e)
local begin={q.x,q.y,q.z}
local ending={w.x,w.y,w.z}
local bgx=begin[1]+(ending[1]-begin[1])*e
local bgy=begin[2]+(ending[2]-begin[2])*e
local bgz=begin[3]+(ending[3]-begin[3])*e
return Vector3.new(bgx,bgy,bgz)
end
newWeld = function(wld, wp0, wp1, wc0x, wc0y, wc0z)
wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
function Avg(a, b)
return CFrame.new((a.X+b.X)/2,(a.Y+b.Y)/2,(a.Z+b.Z)/2)
end

newWeld(law, torso, larm, -1.5, 0.5, 0)
newWeld(raw, torso, rarm, 1.5, 0.5, 0)
newWeld(llw, torso, lleg, -.5, -2, 0)
newWeld(rlw, torso, rleg, .5, -2, 0)
newWeld(hw, torso, hed, 0, 1.5, 0)
local rutwald=Instance.new('Weld',rutprt)
rutwald.Part0=rutprt
rutwald.Part1=torso
rutwald.C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
rleg.Weld.C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0)
lleg.Weld.C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0)


local anim = "Idling"
local lastanim = "Idling"
local val = 0
local syne = 0
local num = 0
local runtime = 0




local NekoNekoKnuckles=Instance.new("Model",chr)
NekoNekoKnuckles.Name="Neko Neko Knuckles"
local RightNeko=Instance.new("Model",NekoNekoKnuckles)
RightNeko.Name="Right Neko"
local LeftNeko=Instance.new("Model",NekoNekoKnuckles)
LeftNeko.Name="Left Neko"






--[[			Right Neko			]]--





local rn1=Instance.new("Part",RightNeko)
rn1.Name="RightHandle"
rn1.Material="SmoothPlastic"
rn1.TopSurface=10
rn1.BottomSurface=10
rn1.LeftSurface=10
rn1.RightSurface=10
rn1.FrontSurface=10
rn1.BackSurface=10
rn1.BrickColor=RightNekoColor
rn1.formFactor=3
rn1.Size=Vector3.new(1.1,1.3,1.1)
rn1.CanCollide=false
rn1:breakJoints''
local rn1w=Instance.new("Weld",rn1)
rn1w.Part0=rn1
rn1w.Part1=rarm
rn1w.C0=CFrame.new(0,.4,0)

local rn2=Instance.new("Part",RightNeko)
rn2.Name="RightHandle"
rn2.Material="SmoothPlastic"
rn2.TopSurface=10
rn2.BottomSurface=10
rn2.LeftSurface=10
rn2.RightSurface=10
rn2.FrontSurface=10
rn2.BackSurface=10
rn2.BrickColor=RightNekoColor
rn2.formFactor=3
rn2.Size=Vector3.new(1.2,.4,1.2)
rn2.CanCollide=false
rn2:breakJoints''
local rn2w=Instance.new("Weld",rn2)
rn2w.Part0=rn2
rn2w.Part1=rarm
rn2w.C0=CFrame.new(0,-.1,0)

local rnbell=Instance.new("Part",RightNeko)
rnbell.Name="RightBell"
rnbell.Material="SmoothPlastic"
rnbell.TopSurface=10
rnbell.BottomSurface=10
rnbell.LeftSurface=10
rnbell.RightSurface=10
rnbell.FrontSurface=10
rnbell.BackSurface=10
rnbell.BrickColor=BrickColor.new("New Yeller")
rnbell.Reflectance=.6
rnbell.formFactor=3
rnbell.Size=Vector3.new(.45,.45,.45)
rnbell.CanCollide=false
rnbell:breakJoints''
local rnbellw=Instance.new("Weld",rnbell)
rnbellw.Part0=rnbell
rnbellw.Part1=rarm
rnbellw.C0=CFrame.new(0,.3,.65)
local rnbellm=Instance.new("SpecialMesh",rnbell)
rnbellm.MeshType="Sphere"

local rnbf=Instance.new("PointLight",rnbell)
rnbf.Shadows=true
rnbf.Range=15
rnbf.Brightness=10

local rnding=Instance.new("Sound",rnbell)
rnding.SoundId="http://www.roblox.com/asset?id=138134386"
rnding.Volume=.2

local rn3=Instance.new("Part",RightNeko)
rn3.Name="RightHead"
rn3.Material="SmoothPlastic"
rn3.TopSurface=10
rn3.BottomSurface=10
rn3.LeftSurface=10
rn3.RightSurface=10
rn3.FrontSurface=10
rn3.BackSurface=10
rn3.BrickColor=RightNekoColor
rn3.formFactor=3
rn3.Size=Vector3.new(1.575,1.65,1.575)
rn3.CanCollide=false
rn3:breakJoints''
local rn3w=Instance.new("Weld",rn3)
rn3w.Part0=rn3
rn3w.Part1=rarm
rn3w.C0=CFrame.new(0,.95,0)
local rn3m=Instance.new("SpecialMesh",rn3)
rn3m.MeshType="Sphere"

local rnface=Instance.new("Decal",rn3)
rnface.Texture="http://www.roblox.com/asset?id="..rightnekoface
rnface.Face="Bottom"

local rnpunch=Instance.new("Sound",rn3)
rnpunch.SoundId="http://www.roblox.com/asset?id=146163534"
rnpunch.Volume=.3

rn3.Touched:connect(function(hit)
if hit and swing=="Right" and crawling and armmovement and crawldig then
local j=2
for jx=-j,j,4 do
for jy=-j,j,4 do
for jz=-j,j,4 do
local spot=workspace.Terrain:WorldToCell(rn3.CFrame*CFrame.new(0,0,-2).p+Vector3.new(jx,jy,jz))
workspace.Terrain:SetCell(spot.x,spot.y,spot.z,0,0,0)
end
end
end
end
coroutine.wrap(function()
if hit and swing=="Right" and armmovement then
coroutine.resume(coroutine.create(function()
local j=2
for jx=-j,j,4 do
for jy=-j,j,4 do
for jz=-j,j,4 do
local spot=workspace.Terrain:WorldToCell(rn3.CFrame*CFrame.new(0,0,-2).p+Vector3.new(jx,jy,jz))
workspace.Terrain:SetCell(spot.x,spot.y,spot.z,0,0,0)
end
end
end
end))
if hit.Parent then
for i,x in pairs(hit.Parent:GetChildren()) do if x:IsA('Humanoid') then hyoom=x end end
local hawm=hit.Parent and hyoom and hit.Parent.Parent
if hawm and hit.Parent.ClassName=='Model' and hit.Parent~=chr and not hitdb then
hitdb=true
local nyaa=Instance.new("Sound",rn3)
nyaa.SoundId="http://www.roblox.com/asset?id="..Meows[math.random(1,#Meows)]
nyaa:Play''
rnpunch:Play''
game:service'Debris':AddItem(nyaa,2)
if hyoom.Parent and hyoom.Parent:findFirstChild("Torso") then
local asd=Instance.new("BodyVelocity",hyoom.Parent.Torso)
asd.maxForce=Vector3.new(1/0,1/0,1/0)
asd.velocity=((rn3.CFrame.p-hyoom.Parent.Torso.CFrame.p).unit*-20)+Vector3.new(0,10,0)
game:service'Debris':AddItem(asd,.2)
end
hyoom.Sit=true
if crawling then
hyoom.Health=hyoom.Health-(math.random(15,20)*(hyoom.MaxHealth/100))
wait(.5)
hitdb=false
else
hyoom.Health=hyoom.Health-(math.random(20,40)*(hyoom.MaxHealth/100))
wait(1)
hitdb=false
end
end
end
end
end)()
end)

local rn4=Instance.new("Part",RightNeko)
rn4.Name="RightHandle"
rn4.Material="SmoothPlastic"
rn4.TopSurface=10
rn4.BottomSurface=10
rn4.LeftSurface=10
rn4.RightSurface=10
rn4.FrontSurface=10
rn4.BackSurface=10
rn4.BrickColor=RightNekoColor
rn4.formFactor=3
rn4.Size=Vector3.new(1.575,.2,1.575)
rn4.CanCollide=false
rn4:breakJoints''
local rn4w=Instance.new("Weld",rn4)
rn4w.Part0=rn4
rn4w.Part1=rn3
rn4w.C0=CFrame.new(0,-.75,.15)*CFrame.Angles(math.rad(90),0,0)
local rn4m=Instance.new("SpecialMesh",rn4)
rn4m.Scale=Vector3.new(1.2,1.2,1.2)
rn4m.MeshId="http://www.roblox.com/asset?id=1374148"
rn4m.TextureId="http://www.roblox.com/asset?id=1374132"











local ln1=Instance.new("Part",LeftNeko)
ln1.Name="LeftHandle"
ln1.Material="SmoothPlastic"
ln1.TopSurface=10
ln1.BottomSurface=10
ln1.LeftSurface=10
ln1.RightSurface=10
ln1.FrontSurface=10
ln1.BackSurface=10
ln1.BrickColor=LeftNekoColor
ln1.formFactor=3
ln1.Size=Vector3.new(1.1,1.3,1.1)
ln1.CanCollide=false
ln1:breakJoints''
local ln1w=Instance.new("Weld",ln1)
ln1w.Part0=ln1
ln1w.Part1=larm
ln1w.C0=CFrame.new(0,.4,0)

local ln2=Instance.new("Part",LeftNeko)
ln2.Name="LeftHandle"
ln2.Material="SmoothPlastic"
ln2.TopSurface=10
ln2.BottomSurface=10
ln2.LeftSurface=10
ln2.RightSurface=10
ln2.FrontSurface=10
ln2.BackSurface=10
ln2.BrickColor=LeftNekoColor
ln2.formFactor=3
ln2.Size=Vector3.new(1.2,.4,1.2)
ln2.CanCollide=false
ln2:breakJoints''
local ln2w=Instance.new("Weld",ln2)
ln2w.Part0=ln2
ln2w.Part1=larm
ln2w.C0=CFrame.new(0,-.1,0)

local lnbell=Instance.new("Part",LeftNeko)
lnbell.Name="LeftBell"
lnbell.Material="SmoothPlastic"
lnbell.TopSurface=10
lnbell.BottomSurface=10
lnbell.LeftSurface=10
lnbell.RightSurface=10
lnbell.FrontSurface=10
lnbell.BackSurface=10
lnbell.BrickColor=BrickColor.new("New Yeller")
lnbell.Reflectance=.6
lnbell.formFactor=3
lnbell.Size=Vector3.new(.45,.45,.45)
lnbell.CanCollide=false
lnbell:breakJoints''
local lnbellw=Instance.new("Weld",lnbell)
lnbellw.Part0=lnbell
lnbellw.Part1=larm
lnbellw.C0=CFrame.new(0,.3,.65)
local lnbellm=Instance.new("SpecialMesh",lnbell)
lnbellm.MeshType="Sphere"

local lnbf=Instance.new("PointLight",lnbell)
lnbf.Shadows=true
lnbf.Range=15
lnbf.Brightness=10

local lnding=Instance.new("Sound",lnbell)
lnding.SoundId="http://www.roblox.com/asset?id=138134386"
lnding.Volume=.2

local ln3=Instance.new("Part",LeftNeko)
ln3.Name="LeftHead"
ln3.Material="SmoothPlastic"
ln3.TopSurface=10
ln3.BottomSurface=10
ln3.LeftSurface=10
ln3.RightSurface=10
ln3.FrontSurface=10
ln3.BackSurface=10
ln3.BrickColor=LeftNekoColor
ln3.formFactor=3
ln3.Size=Vector3.new(1.575,1.65,1.575)
ln3.CanCollide=false
ln3:breakJoints''
local ln3w=Instance.new("Weld",ln3)
ln3w.Part0=ln3
ln3w.Part1=larm
ln3w.C0=CFrame.new(0,.95,0)
local ln3m=Instance.new("SpecialMesh",ln3)
ln3m.MeshType="Sphere"

local lnface=Instance.new("Decal",ln3)
lnface.Texture="http://www.roblox.com/asset?id="..leftnekoface
lnface.Face="Bottom"


local lnpunch=Instance.new("Sound",ln3)
lnpunch.SoundId="http://www.roblox.com/asset?id=146163534"
lnpunch.Volume=.3

ln3.Touched:connect(function(hit)
if hit and swing=="Left" and crawling and armmovement and crawldig then
local j=2
for jx=-j,j,4 do
for jy=-j,j,4 do
for jz=-j,j,4 do
local spot=workspace.Terrain:WorldToCell(ln3.CFrame*CFrame.new(0,0,-2).p+Vector3.new(jx,jy,jz))
workspace.Terrain:SetCell(spot.x,spot.y,spot.z,0,0,0)
end
end
end
end
coroutine.wrap(function()
if hit and swing=="Left" and armmovement then
coroutine.resume(coroutine.create(function()
local j=2
for jx=-j,j,4 do
for jy=-j,j,4 do
for jz=-j,j,4 do
local spot=workspace.Terrain:WorldToCell(ln3.CFrame*CFrame.new(0,0,-2).p+Vector3.new(jx,jy,jz))
workspace.Terrain:SetCell(spot.x,spot.y,spot.z,0,0,0)
end
end
end
end))
if hit.Parent then
for i,x in pairs(hit.Parent:GetChildren()) do if x:IsA('Humanoid') then hyoom=x end end
local hawm=hit.Parent and hyoom and hit.Parent.Parent
if hawm and hit.Parent.ClassName=='Model' and hit.Parent~=chr and not hitdb then

hitdb=true
local nyaa=Instance.new("Sound",rn3)
nyaa.SoundId="http://www.roblox.com/asset?id="..Meows[math.random(1,#Meows)]
nyaa:Play''
rnpunch:Play''
game:service'Debris':AddItem(nyaa,3)
if hyoom.Parent:findFirstChild("Torso") then
local asd=Instance.new("BodyVelocity",hyoom.Parent.Torso)
asd.maxForce=Vector3.new(1/0,1/0,1/0)
asd.velocity=((ln3.CFrame.p-hyoom.Parent.Torso.CFrame.p).unit*-20)+Vector3.new(0,10,0)
game:service'Debris':AddItem(asd,.2)
end
hyoom.Sit=true
if crawling then
hyoom.Health=hyoom.Health-(math.random(15,20)*(hyoom.MaxHealth/100))
wait(.5)
hitdb=false
else
hyoom.Health=hyoom.Health-(math.random(20,40)*(hyoom.MaxHealth/100))
wait(1)
hitdb=false
end
end
end
end
end)()
end)

local ln4=Instance.new("Part",LeftNeko)
ln4.Name="LeftHandle"
ln4.Material="SmoothPlastic"
ln4.TopSurface=10
ln4.BottomSurface=10
ln4.LeftSurface=10
ln4.RightSurface=10
ln4.FrontSurface=10
ln4.BackSurface=10
ln4.BrickColor=LeftNekoColor
ln4.formFactor=3
ln4.Size=Vector3.new(1.575,.2,1.575)
ln4.CanCollide=false
ln4:breakJoints''
local ln4w=Instance.new("Weld",ln4)
ln4w.Part0=ln4
ln4w.Part1=ln3
ln4w.C0=CFrame.new(0,-.75,.15)*CFrame.Angles(math.rad(90),0,0)
local ln4m=Instance.new("SpecialMesh",ln4)
ln4m.Scale=Vector3.new(1.2,1.2,1.2)
ln4m.MeshId="http://www.roblox.com/asset?id=1374148"
ln4m.TextureId="http://www.roblox.com/asset?id=59596104"







maus.KeyDown:connect(function(kei)
if string.byte(kei)==48 and not otheranims and not sitting and not disabled then
runnin=true
end
if string.byte(kei)==48 and crawling and not sitting and not disabled then
crawldash=true
end
if kei=='w' then fldb.w=true end
if kei=='a' then fldb.a=true end
if kei=='s' then fldb.s=true end
if kei=='d' then fldb.d=true end


if string.byte(kei)==50 and not crawling then
if crouching then
otheranims=false
crouching=false
chr.Humanoid.WalkSpeed=18
elseif not crouching and not otheranims then 
otheranims=true
crouching=true
anim="Crouching"
end
end

if kei=='j' and not otheranims and not armmovement and not disabled and not lit then
otheranims=true
anim="PreSuperJump"
chr.Humanoid.WalkSpeed=0
jumpcharge=true
end

if kei=='c' and not armmovement and not sitting and not disabled then
if (torso.Velocity*Vector3.new(1,0,1)).magnitude>=RunSpeed-2.5 and not otheranims and not crawling then
otheranims=true
anim="Sliding"
local tempvelocity=Instance.new('BodyVelocity',rutprt)
tempvelocity.Name="TemporaryVelocity"
tempvelocity.maxForce=Vector3.new(math.huge,0,math.huge)
tempvelocity.velocity=((rutprt.CFrame*CFrame.new(0,0,-1)).p-rutprt.CFrame.p).unit*RunSpeed
coroutine.resume(coroutine.create(function()
local totesvelocity=RunSpeed
repeat
if (tempvelocity.velocity*Vector3.new(1,1,1)).magnitude<=1 then otheranims=false tempvelocity:destroy''
elseif (tempvelocity.velocity*Vector3.new(1,1,1)).magnitude>1 then
totesvelocity=totesvelocity-(2.5*(RunSpeed/100))
tempvelocity.velocity=((rutprt.CFrame*CFrame.new(0,0,-1)).p-rutprt.CFrame.p).unit*totesvelocity
end
wait''
until tempvelocity.Parent==nil
end))
elseif (torso.Velocity*Vector3.new(1,0,1)).magnitude<=RunSpeed-2.5 then
if not crawling then otheranims=true anim='PreCrawl' wait'.2' crawling=true chr.Humanoid.WalkSpeed=8
elseif crawling then crawling=false otheranims=false chr.Humanoid.WalkSpeed=WlkSpeed end
end
end
end)
maus.KeyUp:connect(function(kei)
if string.byte(kei)==48 and not otheranims and not sitting and not disabled then
runnin=false
end
if string.byte(kei)==48 and crawling then
crawldash=false
end
if kei=='w' then fldb.w=false end
if kei=='a' then fldb.a=false end
if kei=='s' then fldb.s=false end
if kei=='d' then fldb.d=false end
if kei=="c" and rutprt:findFirstChild("TemporaryVelocity") and otheranims then
otheranims=false
rutprt["TemporaryVelocity"]:destroy''
end

if kei=='j' and otheranims and jumpcharge then
if running then chr.Humanoid.WalkSpeed=RunSpeed else chr.Humanoid.WalkSpeed=WlkSpeed end
chr.Humanoid.Jump=true
anim="SuperJump"
local aasdd=Instance.new("BodyVelocity",rutprt)
aasdd.maxForce=Vector3.new(0,1/0,0)
aasdd.velocity=Vector3.new(0,jumpheight,0)
game:service'Debris':AddItem(aasdd,.175)
jumpcharge=false
wait(.3)
otheranims=false
end
end)

maus.Button1Down:connect(function()
if not sitting and not disabled and not armmovement and equipped and crawling then
crawldig=true
armmovement=true
armanim="Digging"
end
if not otheranims and not sitting and not disabled and not armmovement and equipped then
armmovement=true
armanim=swing.."Swing1"
wait(.25)
armanim=swing.."Swing2"
if swing=="Right" then
rnding:Play()
coroutine.resume(coroutine.create(function()
wait(.65)
rnding:Stop()
end))
else
lnding:Play()
coroutine.resume(coroutine.create(function()
wait(.65)
lnding:Stop()
end))
end
wait(.3)
armmovement=false
if swing=="Right" then swing="Left"
else
swing="Right"
end
end
end)

maus.Button1Up:connect(function()
if armmovement and crawldig then
crawldig=false
armmovement=false
end
end)



chr.Humanoid.Changed:connect(function(chng)
if crouching or crawling or disabled then
if chng=='Jump' then
chr.Humanoid.Jump=false
end
end
end)














game:service'RunService'.RenderStepped:connect(function()
syne=syne+1
if not otheranims and not swimming then
if (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 1 and not dnc and not chr.Humanoid.Jump then-- and torso.Velocity.y<5 and torso.Velocity.y>-5
anim="Idling"

elseif (rutprt.Velocity*Vector3.new(1, 0, 1)).magnitude > 1 and (rutprt.Velocity*Vector3.new(1, 0, 1)).magnitude < RunSpeed-5 and not chr.Humanoid.Jump then-- and torso.Velocity.y<5 and torso.Velocity.y>-5
anim="Walking"
dnc=false

elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > RunSpeed-10 and not chr.Humanoid.Jump then-- and torso.Velocity.y<5 and torso.Velocity.y>-5
anim="Sprinting"
dnc=false

elseif torso.Velocity.y>5 and chr.Humanoid.Jump then
anim='Jumping'
dnc=false

elseif (torso.Velocity.y < -5) and chr.Humanoid.Jump then
anim='Falling'
dnc=false

end
end

if otheranims and crawling then
if (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 1 and not chr.Humanoid.Jump then
anim="IdleCrawl"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 1 and (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 12 and not chr.Humanoid.Jump then
anim="Crawling"
idled=false
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 1 and (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 12 and not chr.Humanoid.Jump then
anim="SpeedCrawling"
idled=false
end end

if anim~=lastanim then runtime=0 syne=0 end
lastanim=anim
idlesineinc=35
if anim=="Idling" then
if not armmovement and not equipped then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525+math.cos(syne/idlesineinc)/25,0)*CFrame.Angles(0,0,math.rad(10)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525+math.cos(syne/idlesineinc)/25,0)*CFrame.Angles(0,0,math.rad(-10)),.1)
elseif not armmovement and equipped then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.2,.4+math.cos(syne/idlesineinc)/25,.1)*CFrame.Angles(math.rad(105),math.rad(-15),math.rad(-20)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.1,.20+math.cos(syne/idlesineinc)/25,-.65)*CFrame.Angles(math.rad(90),math.rad(10),math.rad(15)),.1)
end
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.9-math.cos(syne/idlesineinc)/20,(math.cos(syne/idlesineinc)/35))*CFrame.Angles(-(math.cos(syne/idlesineinc)/35),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.9-math.cos(syne/idlesineinc)/20,(math.cos(syne/idlesineinc)/35))*CFrame.Angles(-(math.cos(syne/idlesineinc)/35),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5+math.cos(syne/idlesineinc)/50,0)*CFrame.Angles(math.cos(syne/idlesineinc)/40,0,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-.1+math.cos(syne/idlesineinc)/20,0)*CFrame.Angles(math.cos(syne/idlesineinc)/35+math.rad(0),math.rad(0),math.rad(0)),.1)
end

if anim=="Walking" then
if not armmovement and not equipped then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.cos(syne/6)/1.25,math.rad(5),-(math.cos(syne/6.75)/15)+math.rad(8)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(-(math.cos(syne/6)/1.25),0,-(math.cos(syne/6.75)/15)-math.rad(8)),.1)
elseif not armmovement and equipped then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.4,.425,-.2)*CFrame.Angles(math.rad(40),math.rad(10),math.rad(5)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.4,.425,-.2)*CFrame.Angles(math.rad(40),math.rad(-10),math.rad(-5)),.1)
end

lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.8-math.sin(syne/6)/8,-(math.cos(syne/6)/1.125))*CFrame.Angles(math.cos(syne/6)/1.125,0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.8+math.sin(syne/6)/8,math.cos(syne/6)/1.125)*CFrame.Angles(-(math.cos(syne/6)/1.125),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5+math.cos(syne/20)/50,0)*CFrame.Angles(-math.cos(syne/3)/20,0,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-.2+math.cos(syne/3.375)/20,math.cos(syne/3)/5)*CFrame.Angles(math.cos(syne/3)/20+math.rad(-3.5),math.cos(syne/6)/8,-math.cos(syne/6)/30+math.sin(rutprt.RotVelocity.y/2)/7.5),.1)
end

if anim=="Sprinting" then
if not armmovement and not equipped then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,math.cos(syne/4)/15)*CFrame.Angles(-math.cos(syne/2.5)/5+math.rad(-55),0,math.rad(12.5)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,-math.cos(syne/4)/15)*CFrame.Angles(-math.cos(syne/2.5)/5+math.rad(-55),0,math.rad(-12.5)),.1)
elseif not armmovement and equipped then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.4,.5,-.1)*CFrame.Angles(math.rad(-5),math.rad(10),math.rad(35)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.4,.5,-.1)*CFrame.Angles(math.rad(-5),math.rad(-10),math.rad(-35)),.1)
end
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55+math.cos(syne/4)/20,-1.5-math.sin(syne/4)/2.5,-(math.cos(syne/4)*2.5)-.05)*CFrame.Angles(math.cos(syne/4)*2+math.rad(-10),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55-math.cos(syne/4)/20,-1.5+math.sin(syne/4)/2.5,math.cos(syne/4)*2.5-.05)*CFrame.Angles(-(math.cos(syne/4)*2)+math.rad(-10),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.55+math.cos(syne/20)/50,0)*CFrame.Angles(-math.cos(syne/2.5)/10+math.rad(20),-math.cos(syne/2.5)/8,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-.3+math.cos(syne/2.5)/15,math.cos(syne/2.5))*CFrame.Angles(math.cos(syne/2.5)/8+math.rad(-25),math.cos(syne/2.5)/8,math.cos(syne/4)/15+math.sin(rutprt.RotVelocity.y/2)/4),.1)
end

if anim=="Jumping" then
if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(50)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(-50)),.1)
end
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.4,0)*CFrame.Angles(math.rad(-17.5),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.1,-.1)*CFrame.Angles(math.rad(-17.5),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5+math.cos(syne/20)/50,0)*CFrame.Angles(math.cos(syne/20)/40,0,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-.1+math.cos(syne/20)/20,0)*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),.1)
end

if anim=="Falling" then
if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(70)),.035)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(-70)),.035)
end
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.2,0)*CFrame.Angles(math.rad(-14),0,math.rad(-2.5)),.035)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.9,0)*CFrame.Angles(math.rad(0),0,math.rad(2.5)),.035)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,-.3)*CFrame.Angles(math.rad(-40),0,0),.035)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-.1+math.cos(syne/20)/20,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.035)
end

if anim=="Sliding" then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(-20),0,math.rad(60)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(-50)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1,-.1)*CFrame.Angles(math.rad(-17.5),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.95,0)*CFrame.Angles(math.rad(0),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-20),math.rad(-60),0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-1.2,0)*CFrame.Angles(math.rad(45),math.rad(85),math.rad(0)),.1)
end


if armmovement then
if armanim=="RightSwing1" then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.4,.25+math.cos(syne/idlesineinc)/25,1.2)*CFrame.Angles(math.rad(95),math.rad(-15),math.rad(15)),.2)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.2,.35+math.cos(syne/idlesineinc)/25,0)*CFrame.Angles(math.rad(45),math.rad(10),math.rad(10)),.2)
end
if armanim=="RightSwing2" then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(.8,.3+math.cos(syne/idlesineinc)/25,-.8)*CFrame.Angles(math.rad(95),math.rad(15),math.rad(-15)),.5)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.2,.45+math.cos(syne/idlesineinc)/25,0)*CFrame.Angles(math.rad(45),math.rad(10),math.rad(-10)),.5)
end
if armanim=="LeftSwing1" then
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.4,.25+math.cos(syne/idlesineinc)/25,1.2)*CFrame.Angles(math.rad(95),math.rad(10),math.rad(15)),.2)
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.2,.35+math.cos(syne/idlesineinc)/25,0)*CFrame.Angles(math.rad(45),math.rad(10),math.rad(10)),.2)
end
if armanim=="LeftSwing2" then
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-.8,.3+math.cos(syne/idlesineinc)/25,-.8)*CFrame.Angles(math.rad(95),math.rad(-15),math.rad(15)),.5)
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.2,.45+math.cos(syne/idlesineinc)/25,0)*CFrame.Angles(math.rad(45),math.rad(10),math.rad(10)),.5)
end
if armanim=="Digging" then
rarm.Weld.C0=Lerp(rarm.Weld.C0, CFrame.new(1.25, 1.1+math.cos(syne), -.1)* CFrame.Angles(math.rad(179), 0, math.rad(-25)), 0.5)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.25, 1.1-(math.cos(syne)), -.1) * CFrame.Angles(math.rad(179), 0, math.rad(25)), 0.5)
end
end

if jumpcharge and jumpheight<150 then jumpheight=jumpheight+3 elseif not jumpcharge then jumpheight=20 end

if anim=="PreSuperJump" then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(50)),.06)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(-50)),.06)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1,.3)*CFrame.Angles(math.rad(-40),0,math.rad(-2.5)),.06)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-.6,-.65)*CFrame.Angles(math.rad(10),0,math.rad(2.5)),.06)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,.3)*CFrame.Angles(math.rad(40),0,0),.06)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-1.6,.2)*CFrame.Angles(math.rad(-14),math.rad(0),math.rad(0)),.06)
end

if anim=="SuperJump" then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.4,.525,0)*CFrame.Angles(math.rad(-10),0,math.rad(20)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.4,.525,0)*CFrame.Angles(math.rad(-10),0,math.rad(-20)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.8,0)*CFrame.Angles(math.rad(-2.5),0,math.rad(-2.5)),.2)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.8,0)*CFrame.Angles(math.rad(-2.5),0,math.rad(2.5)),.2)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,.3)*CFrame.Angles(math.rad(30),0,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,0,0)*CFrame.Angles(math.rad(5),math.rad(0),math.rad(0)),.1)
chr.Humanoid.Jump=true
end

if anim=="Crouching" then
if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0, CFrame.new(1.4, .35, -.225) * CFrame.Angles(math.rad(70), 0, math.rad(-15)), 0.075)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4, .35, -.225) * CFrame.Angles(math.rad(70), 0, math.rad(15)), 0.075)
end
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -.55, -1) * CFrame.Angles(math.rad(40), 0, math.rad(0)), 0.075)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -.65, -1.275) * CFrame.Angles(math.rad(60), 0, math.rad(-0)), 0.075)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(5),0,0),.05)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-2,0)*CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),0.075)
end

if anim=="PreCrawl" then
if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0, CFrame.new(1.45, .75, -.15)* CFrame.Angles(math.rad(140), 0, math.rad(-25)), 0.15)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.45, .75, -.15) * CFrame.Angles(math.rad(140), 0, math.rad(25)), 0.15)
end
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1.6, -.1) * CFrame.Angles(math.rad(-5), 0, math.rad(0)), 0.15)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1.6, -.1) * CFrame.Angles(math.rad(-5), 0, math.rad(-0)), 0.15)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.35,.25)*CFrame.Angles(math.rad(72.5),0,0),.15)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-2.2,0)*CFrame.Angles(math.rad(-80),math.rad(0),math.rad(0)),0.15)
end

if crawling then



if anim=='Crawling' then
chr.Humanoid.WalkSpeed=CrawlSpeed-math.cos(syne/5)*5
if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0, CFrame.new(1.25, 1-math.cos(syne/10)/2, -.35+math.cos(syne/10)/8) * CFrame.Angles(math.rad(155)+math.sin(syne/10)/9, 0, math.rad(-25)+math.cos(syne/10)/13),.175)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.25, 1+math.cos(syne/10)/2, -.35-math.cos(syne/10)/8) * CFrame.Angles(math.rad(155)-math.sin(syne/10)/9, 0, math.rad(25)-math.cos(syne/10)/13), .175)
end
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.525, -1.5-math.cos(syne/10)/3, -.3+math.cos(syne/10)/10) * CFrame.Angles(math.rad(-5)-math.cos(syne/10)/9, 0, math.rad(0)-math.cos(syne/10)/15), .175)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.525, -1.5+math.cos(syne/10)/3, -.3-math.cos(syne/10)/10) * CFrame.Angles(math.rad(-5)+math.cos(syne/10)/9, 0, math.rad(-0)-math.cos(syne/10)/15), 0.175)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.35,math.cos(syne/30)/20+.25)*CFrame.Angles(math.cos(syne/30)/25+math.rad(75),math.rad(4),0),.175)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-2.2,0)*CFrame.Angles(math.rad(-82)+math.cos(syne/5)/12,math.cos(syne/10)/15,math.cos(syne/5)/15),0.15)
end

if anim=='SpeedCrawling' then
if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0, CFrame.new(1.25, 1-math.cos(syne/5)/2, -.35+math.cos(syne/5)/12) * CFrame.Angles(math.rad(155)-math.cos(syne/5)/14, 0, math.rad(-25)+math.cos(syne/5)/13),.175)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.25, 1+math.cos(syne/5)/2, -.35-math.cos(syne/5)/12) * CFrame.Angles(math.rad(155)+math.cos(syne/5)/14, 0, math.rad(25)-math.cos(syne/5)/13), .175)
end
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.525, -1.5-math.cos(syne/5)/3, -.3+math.cos(syne/5)/10) * CFrame.Angles(math.rad(-5)-math.cos(syne/5)/9, 0, math.rad(0)-math.cos(syne/5)/15), .175)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.525, -1.5+math.cos(syne/5)/3, -.3-math.cos(syne/5)/10) * CFrame.Angles(math.rad(-5)+math.cos(syne/5)/9, 0, math.rad(-0)-math.cos(syne/5)/15), 0.175)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.35,math.cos(syne/15)/20+.25)*CFrame.Angles(math.cos(syne/15)/25+math.rad(75),math.rad(4),0),.175)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-2.2,0)*CFrame.Angles(math.rad(-82)+math.cos(syne/2.5)/12,math.cos(syne/5)/15,math.cos(syne/2.5)/15),0.15)
end
end

if crouching then chr.Humanoid.WalkSpeed=0 end

chr.Humanoid.CameraOffset=(rutprt.CFrame:toObjectSpace(hed.CFrame)).p+Vector3.new(0,-1.25,0)

if runnin and not disabled and not otheranims and not sitting then
chr.Humanoid.WalkSpeed=RunSpeed
elseif not runnin and not disabled and not otheranims and not sitting then
chr.Humanoid.WalkSpeed=WlkSpeed
elseif not runnin and not disabled and otheranims and crawling and not crawldash and not sitting then
chr.Humanoid.WalkSpeed=CrawlSpeed
elseif not runnin and not disabled and otheranims and crawling and crawldash and not sitting then
chr.Humanoid.WalkSpeed=CrawlDashSpeed
end
end)

local hp=Instance.new("HopperBin",plr.Backpack)
hp.Name="Neko Neko Knuckles"
hp.Selected:connect(function()
equipped=true
end)
hp.Deselected:connect(function()
equipped=false
end)