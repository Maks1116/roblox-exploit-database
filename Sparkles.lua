--[[
    Smith and Wesson M&P 45, chambered in .45 ACP ammunition.
    The standard magazine holds 10 rounds, although magazines that could hold 14 rounds were also made but looked incredibly stupid.
    Credit to litozinnamon for the crosshairs and bullethole decals. I used them without permission. Not like I asked him, anyhow.
]]

plr=game:service'Players'.LocalPlayer
ch,char=plr.Character,plr.Character
hum=ch.Humanoid
tor,torso,rootpart,rj=ch.Torso,ch.Torso,ch.HumanoidRootPart,ch.HumanoidRootPart.RootJoint
m,mouse=plr:GetMouse(),plr:GetMouse()
cfn,ang,mr,int=CFrame.new,CFrame.Angles,math.rad,Instance.new
bc=BrickColor.new
head=ch.Head
cam=workspace.CurrentCamera

rj.C0=cfn()
rj.C1=cfn()

sheathed=false
jammed=false











local minimumsize = Vector3.new(0.7,0.7,0.7) --Minimumsize for a part to get divided,higher numbers = less detailed and bigger/less bricks
local surface_between_splitted_parts = 'SmoothNoOutlines' --the surface between splitted parts
--local fragmented = workspace:FindFirstChild("Fragmented")
local fragmentable = workspace --all fragmentable objects should be stored in here
local list = {}
local brickcount = 0
--local m = Instance.new("Hint",workspace)
local storage = {}
local fillup = 1000 --it constantly generates new parts until it reaches this number(hacky way to prevent lagspikes if there is a large explosion),change it to 0 if you don´t want it to generate (useless) parts.
local maximumstorage = 2000 --it will recycle parts if the number of parts in the storage doesnt exceed this number
local storage_position = Vector3.new(0,0,5000) --place them somewhere off the map
local stored_partsize = Vector3.new(1,1,1) --make them small
local parts_created_per_frame = 5 --number of parts being created per frame to fill up the storage


function fragmentate(cframe,size,color,explosion_position,explosion_blastradius,backsurface,bottomsurface,frontsurface,leftsurface,rightsurface,topsurface,transparency,reflectance)
	local xi = size.X >= minimumsize.X*(1+explosion_blastradius/16) and 2 or 1 --to reduce the lagg in large explosions we increase minimumsize based on the explosionradius...
	local yi = size.Y >= minimumsize.Y*(1+explosion_blastradius/16) and 2 or 1
	local zi = size.Z >= minimumsize.Z*(1+explosion_blastradius/16) and 2 or 1
	if xi == 1 and yi == 1 and zi == 1 or (cframe.p-explosion_position).magnitude > size.magnitude/2 + explosion_blastradius then --don´t fragmentate parts, that are too small to fragmentate or too far away from the explosion
		if xi == 1 and yi == 1 and zi == 1 then return end --optional
		if #storage > 0 then
			local p = storage[1]
			p.BrickColor = color
			p.Size = size
			p.BackSurface = backsurface
			p.BottomSurface = bottomsurface
			p.FrontSurface = frontsurface
			p.LeftSurface = leftsurface
			p.RightSurface = rightsurface
			p.TopSurface = topsurface
			p.Transparency = transparency
			p.CFrame = cframe
			p.Reflectance = reflectance
			table.remove(storage,1)
		else
			local p = Instance.new("Part",fragmentable)
			p.BrickColor = color
			p.FormFactor = "Custom"
			p.Size = size
			p.BackSurface = backsurface
			p.BottomSurface = bottomsurface
			p.FrontSurface = frontsurface
			p.LeftSurface = leftsurface
			p.RightSurface = rightsurface
			p.TopSurface = topsurface
			p.Transparency = transparency
		    if p.Transparency>0.285 then
			    p.Anchored = false
			else
			    p.Anchored=true
			    p.Material='Wood'
			end
			p.CFrame = cframe
			p.Reflectance = reflectance
		end
		--p:MakeJoints()
--		m.Text = m.Text+1
		return --stop the function
	end
	local mody = math.random(-125,125)/1000 --some randomization
	for y = 1,yi do
		if math.random()> 0.5 then
			local modx = math.random(-125,125)/1000
			for x = 1,xi do
				local modz = math.random(-125,125)/1000
				for z = 1,zi do --offset = x/xi-0.75+modx)
					fragmentate(cframe*CFrame.new(size.X*(xi==1 and 0 or x/xi-0.75+modx),size.Y*(yi==1 and 0 or y/yi-0.75+mody),size.Z*(zi==1 and 0 or z/zi-0.75+modz)), --maths
					Vector3.new(xi == 2 and size.X*(1-2*math.abs(x/xi-0.75+modx)) or size.X,yi == 2 and size.Y*(1-2*math.abs(y/yi-0.75+mody)) or size.Y,
					zi == 2 and size.Z*(1-2*math.abs(z/zi-0.75+modz)) or size.Z or agent767_was_here),color,explosion_position,explosion_blastradius,
					z~=zi and surface_between_splitted_parts or backsurface,y==2 and surface_between_splitted_parts or bottomsurface,
					z==2 and surface_between_splitted_parts or frontsurface,x==2 and surface_between_splitted_parts or leftsurface,x~=xi and surface_between_splitted_parts or rightsurface,
					y~=yi and surface_between_splitted_parts or topsurface,transparency,reflectance) 
				end
				
			end
		else
			local modz = math.random(-125,125)/1000
			for z = 1,zi do
				local modx = math.random(-125,125)/1000
				for x = 1,xi do
					fragmentate(cframe*CFrame.new(size.X*(xi==1 and 0 or x/xi-0.75+modx),size.Y*(yi==1 and 0 or y/yi-0.75+mody),size.Z*(zi==1 and 0 or z/zi-0.75+modz)),
					Vector3.new(xi == 2 and size.X*(1-2*math.abs(x/xi-0.75+modx)) or size.X,yi == 2 and size.Y*(1-2*math.abs(y/yi-0.75+mody)) or size.Y,
					zi == 2 and size.Z*(1-2*math.abs(z/zi-0.75+modz)) or size.Z),color,explosion_position,explosion_blastradius,
					z~=zi and surface_between_splitted_parts or backsurface,y==2 and surface_between_splitted_parts or bottomsurface,
					z==2 and surface_between_splitted_parts or frontsurface,x==2 and surface_between_splitted_parts or leftsurface,x~=xi and surface_between_splitted_parts or rightsurface,
					y~=yi and surface_between_splitted_parts or topsurface,transparency,reflectance)
				end
			end
		end
	end				
end

function start_fragmentation(position,radius)
	local search = Region3.new(position-Vector3.new(radius,radius,radius)*1.1,position+Vector3.new(radius,radius,radius)*1.1)
	repeat
	local finish = false
	local parts = workspace:FindPartsInRegion3WithIgnoreList(search,list,100) --maximum number of parts that FindPartsInRegion3 can find is 100, so we have to do this to find them all
	for i = 1,#parts do
		table.insert(list,1,parts[i])
	end
	finish = true
	until #parts < 100 and finish
	print(#list)
	local t = tick()
	for i = 1,#list do
		local p = list[i]
		if p:IsDescendantOf(fragmentable) and p:GetMass()<3000 and p.Transparency>0.285 and p.Name~='Base' and p:IsDescendantOf(ch)==false then
			fragmentate(p.CFrame,p.Size,p.BrickColor,position,radius,p.BackSurface,p.BottomSurface,p.FrontSurface,p.LeftSurface,p.RightSurface,p.TopSurface,p.Transparency,p.Reflectance)
			if #storage < maximumstorage and p.Shape == "Block" then --recycle them
				p.Anchored = false
				p.FormFactor = "Custom"
				p.Size = stored_partsize
				p.Position = storage_position
				table.insert(storage,1,p)
			else --storage is full
				p:Destroy()
			end
--			m.Text = m.Text-1
	    end
		if p:IsDescendantOf(fragmentable) and p:GetMass()<53000 and p.Transparency<0.05 and p.Name~='Base' and tostring(p.Material)=='Enum.Material.Wood' and p:IsDescendantOf(ch)==false then
			fragmentate(p.CFrame,p.Size,p.BrickColor,position,radius,p.BackSurface,p.BottomSurface,p.FrontSurface,p.LeftSurface,p.RightSurface,p.TopSurface,p.Transparency,p.Reflectance)
			if #storage < maximumstorage and p.Shape == "Block" then --recycle them
				p.Anchored = true
				p.Material='Wood'
				p.FormFactor = "Custom"
				p.Size = stored_partsize
				p.Position = storage_position
				table.insert(storage,1,p)
			else --storage is full
				p:Destroy()
			end
--			m.Text = m.Text-1
		end
	end	
	list = {}
--	print(tick()-t)
end

--[[
spawn(function()
    while wait() do --oh noes,a loop! So inefficient!
    	if #storage < fillup then
    		for i = 1, parts_created_per_frame do --creates parts to fill up the storage
    			local p = Instance.new("Part",fragmentable)
    			p.Anchored = false
    			p.FormFactor = "Custom"
    			p.Size = stored_partsize
    			p.Position = storage_position
    			table.insert(storage,1,p)
    		end
    	end
    end
end)
]]























--local blankn=22416261

--172121567

crosshairs={
    {38140824};
    {38140833};
    {38140839};
    {38140843};
    {38140852};
    {38140910};
    {38140915};
    {38140923};
    {38140928};
    {38140931};
    {38208259};
    {38208275};
    {38208284};
    {38208303};
    {38208310};
    {38208325};
    {38208330};
    {38208352};
    {38208359};
    {38208377}
}

bulletholes={
    172274695;
    172274721
}

for _,v in pairs(crosshairs) do
    game:service'ContentProvider':Preload('rbxassetid://' .. tostring(v[1]-1)) 
end

currentIco=2
switchIco=function(num)
    if num<20 then
    else
        num=20
    end
    mouse.Icon='rbxassetid://' .. tostring(crosshairs[num][1]-1)
    currentIco=num
end

switchIco(currentIco)

heldDown=false

spreadint=1
--[[Settings]]--
recoil=false -- Set to true for added realism
magCapacity=20 -- How much a magazine can hold at once
magAmmo=20 -- How much ammo is in the mag
crosshairSpread=5
spread=1
pAmmunition=true -- more damage if true


jamRate=500 -- How often the gun jams(the more the less) (no less than 1)

primaryColor='Really black'
secondaryColor='Really black'

slideReflectance=0.01
slideMaterial='Plastic'

--[[Attachments]]--

silencer=true
highCapMag=false -- High capacity magazine
laser=true
automatic=false
grip=true


getSound=function(id)
    game:service'ContentProvider':Preload('rbxassetid'..tostring(id))
    local s=int("Sound",ch.Head)
    s.SoundId='rbxassetid://' .. tostring(id)
    s.Volume=1
    return s
end

local fireSound=getSound(151997297--[[10209842]])
fireSound.Pitch=1.3
--1.8

local releaseSound=getSound(10209813)
releaseSound.Pitch=4

local reloadSound=getSound(10209636)
reloadSound.Pitch=3

local magazinelockSound=getSound(152206337)
magazinelockSound.Pitch=1.4

local slideBackSound=getSound(152206263)
slideBackSound.Pitch=2.5

local slideForwardSound=getSound(152206302)
slideForwardSound.Pitch=2.5

local emptySound=getSound(2697295)
emptySound.Pitch=5

local glassBreakSound=getSound(144884907)

local woodImpact=getSound(142082171)

local fleshImpact=getSound(144884872)
fleshImpact.Pitch=1.7

if ch:findFirstChild("Tec-99") then
    ch['Tec-99']:Destroy()
end

local tube=int("Model",ch)
tube.Name='Tec-99'
local hopper=Instance.new('HopperBin',plr.Backpack)
hopper.Name=tube.Name
Weld = function(p0,p1,x,y,z,rx,ry,rz,par)--recommend to use this with my weld. use this function only with arm lockers.
    p0.Position = p1.Position
    local w = Instance.new('Motor',par or p0)
    w.Part0 = p1
    w.Part1 = p0
    w.C0 = CFrame.new(x or 0,y or 0,z or 0)*CFrame.Angles(rx or 0,ry or 0,rz or 0)
    w.MaxVelocity = .1
    return w
end
function clerp(c1,c2,sp)
    local R1,R2,R3 = c1:toEulerAnglesXYZ()
    local R21,R22,R23 = c2:toEulerAnglesXYZ()
    return CFrame.new(
    c1.X + (c2.X-c1.X)*sp,
    c1.Y + (c2.Y-c1.Y)*sp,
    c1.Z + (c2.Z-c1.Z)*sp)*CFrame.Angles(
    R1 + (R21-R1)*sp,
    R2 + (R22-R2)*sp,
    R3 + (R23-R3)*sp
    )
end

tweenTable={}
Tween = function(Weld, Stop, Step,a)
ypcall(function()
    local func = function()
        local Start = Weld.C1
        local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
        local Stop = Stop
        local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()
        if not Step then Step=0.1 end
        table.insert(tweenTable,{th=0,Weld=Weld,Step=Step,Start=Start,X1=X1,Y1=Y1,Z1=Z1,Stop=Stop,X2=X2,Y2=Y2,Z2=Z2}) 
    end
        if a then coroutine.wrap(func)() else func() end
end)
end
weld=function(p0,p1,c0)
    local w=Instance.new("Weld",p0)
    w.Part0=p0
    w.Part1=p1
    w.C0=c0
    return w
end
cp=function(parent,color,size,anchored,cancollide)
    local newp=Instance.new("Part",parent)
    newp.TopSurface='SmoothNoOutlines'
    newp.BottomSurface='SmoothNoOutlines'
    newp.FrontSurface='SmoothNoOutlines'
    newp.BackSurface='SmoothNoOutlines'
    newp.RightSurface='SmoothNoOutlines'
    newp.LeftSurface='SmoothNoOutlines'
    newp.FormFactor="Custom"
    newp.BrickColor=bc(color)
    newp.Size=size
    newp.Anchored=anchored
    newp.CanCollide=cancollide
    newp:BreakJoints()
    return newp
end

initializeJoints=function()
    rabr = cp(tube,'White',Vector3.new(1,1,1),false,false) rabr.Transparency = 1 rabr.Name='Locker'
    rabr.Position = torso.Position
    rw = Weld(rabr,torso,1.5,.5,0,0,0,0) rw.Parent = tube rw.Name = 'rw'
    w = Instance.new("Weld",tube)
    w.Part0,w.Part1 = ch['Right Arm'],rabr
    w.C1 = CFrame.new(0,-.5,0)
    labr = cp(tube,'White',Vector3.new(1,1,1),false,false) labr.Transparency = 1 labr.Name='Locker'
    labr.Position = torso.Position
    lw = Weld(labr,torso,-1.5,.5,0,0,0,0) lw.Parent = tube lw.Name = 'lw'
    ww = Instance.new("Weld",tube)
    ww.Part0,ww.Part1 = ch['Left Arm'],labr
    ww.C1 = CFrame.new(0,-.5,0)
end

initializeJoints()

--[[ leg locks
rabl = cp(tube,'White',Vector3.new(1,1,1),false,false) rabl.Transparency = 1 rabl.Name='Locker'
rabl.Position = torso.Position
rwl = Weld(rabl,torso,0.5,-1.5,0,0,0,0) rwl.Parent = tube rwl.Name = 'rwl'
wl = Instance.new("Weld",tube)
wl.Part0,wl.Part1 = ch['Right Leg'],rabl
wl.C1 = CFrame.new(0,-.5,0)
labl = cp(tube,'White',Vector3.new(1,1,1),false,false) labl.Transparency = 1 labl.Name='Locker'
labl.Position = torso.Position
lwl = Weld(labl,torso,-0.5,-1.5,0,0,0,0) lwl.Parent = tube lwl.Name = 'lwl'
wwl = Instance.new("Weld",tube)
wwl.Part0,wwl.Part1 = ch['Left Leg'],labl
wwl.C1 = CFrame.new(0,-.5,0)
]]
--weld(ch['HumanoidRootPart'],torso,cfn())


local counter=Instance.new('ScreenGui',plr.PlayerGui)
local frame=Instance.new('Frame',counter)
frame.Size=UDim2.new(0.25,0,0.3,0)

frame.Position=UDim2.new(0.1,0,0.4,0)
frame.BackgroundTransparency=1

local ammocounter=Instance.new('TextLabel',frame)
ammocounter.Size=UDim2.new(1,0,0.3,0)
ammocounter.Position=UDim2.new(0,0,0.2,0)
ammocounter.BackgroundTransparency=1
ammocounter.TextColor3=BrickColor.new('White').Color
ammocounter.Font='SourceSansBold'
ammocounter.FontSize='Size18'
ammocounter.Text=''
ammocounter.TextXAlignment='Left'


local bg = Instance.new("BodyGyro",rootpart)
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
bg.P = 10000
bg.D = 100


cyl=function(prt)
    local c=int("CylinderMesh",prt)
    return c
end
blo=function(prt)
    local c=int("BlockMesh",prt)
    return c
end

if laser then
    aLaser=cp(tube,'Really red',Vector3.new(0.2,0.2,0.2))
    aLaser.Transparency=1
    cyl(aLaser).Scale=Vector3.new(0.25,1,0.25)
    aLaser.Anchored=true
end

local handle=cp(tube,primaryColor,Vector3.new(0.2,0.6,0.3))
blo(handle).Scale=Vector3.new(1.15,0.9,1)
local mw=weld(ch['Right Arm'],handle,cfn(-0.4,-1,-0.19)*ang(mr(-101.5),0,0)*cfn()*ang(0,mr(-30),mr(-5)))

local framepiece1=cp(tube,primaryColor,Vector3.new(0.2,0.2,0.9))
blo(framepiece1).Scale=Vector3.new(1.15,0.5,1)
weld(handle,framepiece1,cfn(0,0.354,-0.3)*ang(mr(11.5),0,0))

local barrel=cp(tube,'Medium stone grey',Vector3.new(0.2,0.2,0.2))
cyl(barrel).Scale=Vector3.new(0.7,1.2,0.7)
weld(framepiece1,barrel,cfn(0,0.15,-0.1)*ang(mr(-90),0,0))
    
local sbarrel=cp(tube,'Really black',Vector3.new(0.2,0.3,0.2))
cyl(sbarrel).Scale=Vector3.new(0.7,1.5,0.7)
weld(barrel,sbarrel,cfn(0,0.35,0))
local hole=cp(tube,'White',Vector3.new(0.2,0.2,0.2))
hole.Transparency=1
weld(sbarrel,hole,cfn(0,0.2,0))
local flash=int('PointLight',hole)
flash.Enabled=false
flash.Range=10
flash.Color=BrickColor.new('Neon orange').Color

    
local slide1=cp(tube,secondaryColor,Vector3.new(0.2,0.2,0.4))
slide1.CanCollide=false
blo(slide1).Scale=Vector3.new(0.7,1,1.1)
slideweld1=weld(framepiece1,slide1,cfn(0,0.15,0.23))
slide1.Reflectance=slideReflectance
slide1.Material=slideMaterial

local slide2=cp(tube,secondaryColor,Vector3.new(0.2,0.2,0.4))
slide2.CanCollide=false
blo(slide2).Scale=Vector3.new(0.7,1,1.1)
slideweld2=weld(slide1,slide2,cfn(0,0,-0.666))
slide2.Reflectance=slideReflectance
slide2.Material=slideMaterial
    
local slideside1=cp(tube,secondaryColor,Vector3.new(0.2,0.2,1.1))
slideside1.CanCollide=true
blo(slideside1).Scale=Vector3.new(0.25,1,1)
weld(slide1,slideside1,cfn(-0.09,0,-0.335))
slideside1.Reflectance=slideReflectance
slideside1.Material=slideMaterial

local slideside2=cp(tube,secondaryColor, Vector3.new(0.2,0.2,0.4))
slideside2.CanCollide=true
blo(slideside2).Scale=Vector3.new(0.25,1,1.1)
weld(slide1,slideside2,cfn(0.09,0,0))
slideside2.Reflectance=slideReflectance
slideside2.Material=slideMaterial

local slideside3=cp(tube,secondaryColor, Vector3.new(0.2,0.2,0.3))
slideside3.CanCollide=true
blo(slideside3).Scale=Vector3.new(0.25,0.6,0.78)
weld(slideside2,slideside3,cfn(0,-0.04,-0.335))
slideside3.Reflectance=slideReflectance
slideside3.Material=slideMaterial

local slideside4=cp(tube,secondaryColor, Vector3.new(0.2,0.2,0.4))
blo(slideside4).Scale=Vector3.new(0.25,1,1.1)
weld(slide2,slideside4,cfn(0.09,0,0))
slideside4.Reflectance=slideReflectance
slideside4.Material=slideMaterial

local mgs=cp(tube,primaryColor,Vector3.new(0.2,0.2,0.2))
blo(mgs).Scale=Vector3.new(1.15,0.425,0.245)
weld(handle,mgs,cfn(0,-0.3,0.125))

--[[Trigger]]--
local tp1=cp(tube,primaryColor,Vector3.new(0.2,0.2,0.2))
blo(tp1).Scale=Vector3.new(0.6,0.1,0.8)
weld(framepiece1,tp1,cfn(0,-0.22,0.13))

local tp2=cp(tube,primaryColor,Vector3.new(0.2,0.2,0.2))
blo(tp2).Scale=Vector3.new(0.6,0.1,1.19)
weld(framepiece1,tp2,cfn(0,-0.14,-0.0265)*ang(mr(45),0,0))

local trigger1=cp(tube,'Really black',Vector3.new(0.2,0.2,0.2))
blo(trigger1).Scale=Vector3.new(0.3,0.4,0.16)
weld(framepiece1,trigger1,cfn(0,-0.07,0.09))
    
local trigger2=cp(tube,'Really black',Vector3.new(0.2,0.2,0.2))
blo(trigger2).Scale=Vector3.new(0.3,0.3,0.16)
weld(trigger1,trigger2,cfn(0,-0.06,-0.015)*ang(mr(30),0,0))
    
    
--[[Magazine]]--

local magh=cp(tube,'Really black',Vector3.new(0.2,0.5,0.2))
blo(magh).Scale=Vector3.new(0.6,1,1)
local magweld=weld(handle,magh,cfn(0,-0.025,0))
    
local bottom=cp(tube,'Really black',Vector3.new(0.2,0.2,0.3))
blo(bottom).Scale=Vector3.new(1.15,0.385,0.8)
bottomweld=weld(magh,bottom,cfn(0,-0.28,-0.015))
    
if highCapMag then
    magweld:Destroy()    
    magh.Size=Vector3.new(0.2,0.7,0.2)
    magweld=weld(handle,magh,cfn(0,-0.125,0))
    bottomweld:Destroy()
    bottomweld=weld(magh,bottom,cfn(0,-0.38,-0.015))
    magCapacity=magCapacity+23
    magAmmo=magAmmo+23
end
    
--[[Sights]]--
local backsight1=cp(tube,'Black',Vector3.new(0.2,0.2,0.2))
blo(backsight1).Scale=Vector3.new(0.3,0.3,0.3)
weld(slide1,backsight1,cfn(0.06,0.1,0.13))
local backsight2=cp(tube,'Black',Vector3.new(0.2,0.2,0.2))
blo(backsight2).Scale=Vector3.new(0.3,0.3,0.3)
weld(slide1,backsight2,cfn(-0.06,0.1,0.13))

local frontsight=cp(tube,'Black',Vector3.new(0.2,0.2,0.2))
blo(frontsight).Scale=Vector3.new(0.3,0.3,0.3)
weld(slide1,frontsight,cfn(0,0.1,-0.85))
    
local dot1=cp(tube,'Lime green',Vector3.new(0.2,0.2,0.2))
cyl(dot1).Scale=Vector3.new(0.1,0.31,0.1)
weld(backsight1,dot1,cfn(0,0.014,0)*ang(mr(-90),0,0))
    
local dot2=cp(tube,'Lime green',Vector3.new(0.2,0.2,0.2))
cyl(dot2).Scale=Vector3.new(0.1,0.31,0.1)
weld(backsight2,dot2,cfn(0,0.014,0)*ang(mr(-90),0,0))
    
local dot3=cp(tube,'Lime green',Vector3.new(0.2,0.2,0.2))
cyl(dot3).Scale=Vector3.new(0.1,0.31,0.1)
weld(frontsight,dot3,cfn(0,0.014,0)*ang(mr(-90),0,0))

local ba=cp(tube,secondaryColor,Vector3.new(0.2,0.2,0.2))
blo(ba).Scale=Vector3.new(1.15,0.5,1)
weld(framepiece1,ba,cfn(0,0,-0.55))
ba.Reflectance=slideReflectance
ba.Material=slideMaterial

local weirdholethatpistolshave=cp(tube,'Really black', Vector3.new(0.2,0.2,0.2))
cyl(weirdholethatpistolshave).Scale=Vector3.new(0.4,1.01,0.4)
weld(ba,weirdholethatpistolshave,cfn(0,0,0)*ang(mr(-90),0,0))

--[[Tactical Rails]]--

local r1=cp(tube,primaryColor,Vector3.new(0.2,0.2,0.2))
blo(r1).Scale=Vector3.new(1.15,0.2,0.25)
weld(framepiece1,r1,cfn(0,-0.05,-0.17))

local r2=cp(tube,primaryColor,Vector3.new(0.2,0.2,0.2))
blo(r2).Scale=Vector3.new(1.15,0.2,0.25)
weld(framepiece1,r2,cfn(0,-0.05,-0.27))
    
local r3=cp(tube,primaryColor,Vector3.new(0.2,0.2,0.2))
blo(r3).Scale=Vector3.new(1.15,0.2,0.25)
weld(framepiece1,r3,cfn(0,-0.05,-0.37))
    
if laser then
    local base=cp(tube,primaryColor,Vector3.new(0.2,0.2,0.3))
    blo(base).Scale=Vector3.new(1.15,1,1)
    weld(r2,base,cfn(0,-0.05,0))
    basehole=cp(tube,'White',Vector3.new(0.2,0.2,0.2))
    cyl(basehole).Scale=Vector3.new(0.4,0.4,0.4)
    weld(base,basehole,cfn(0,0,-0.13)*ang(mr(-90),0,0))
end

if silencer then
    local sil=cp(tube,'Really black',Vector3.new(0.2,0.3,0.2))
    fireSound.SoundId='rbxassetid://153230595'
    fireSound.Pitch=1
    cyl(sil).Scale=Vector3.new(0.94,1.8,0.94)
    weld(hole,sil,cfn(0,0.29,0))
end

if grip then
    local base=cp(tube,primaryColor,Vector3.new(0.2,0.2,0.3))
    blo(base).Scale=Vector3.new(1.15,1,1)
    weld(r2,base,cfn(0,-0.05,0))
    local hd=cp(tube,primaryColor,Vector3.new(0.2,0.6,0.2))
    cyl(hd)
    weld(base,hd,cfn(0,-0.3,0))
    crosshairSpread=3
    spreadint=spreadint-0.3
end

--[[Test Functions]]--

local debounce=false
local out=false
local bs=false
cockSlide=function() -- hahaha yes i know
    slideBackSound:Play()
    if magAmmo<1 and out==true and bs==false then
        wait()
        slideweld1.C0=slideweld1.C0*cfn(0,0,0.22) 
    else
        for i=1,2 do
            wait()
            slideweld1.C0=slideweld1.C0*cfn(0,0,0.22) 
        end
    end
    local ajar=false
    if magAmmo==1 then
        ajar=true 
    end
    if magAmmo>0 then
        createShell()
        --magAmmo=magAmmo-1
        ammocounter.Text=''
        for i=1,magAmmo do
           ammocounter.Text=ammocounter.Text .. 'I' 
        end
    end
    wait(0.15)
    slideForwardSound:Play()
    for i=1,2 do
        wait()
        slideweld1.C0=slideweld1.C0*cfn(0,0,-0.22) 
    end
    if ajar==true then
        out=true
        slideweld1.C0=cfn(0,0.15,0.23)
        slideweld1.C0=slideweld1.C0*cfn(0,0,0.22) 
    end
end

--fx
local firefx=cp(tube,'Neon orange',Vector3.new(0.7,1.1,0.7))
firefx.Transparency=1
local mesh=Instance.new('SpecialMesh',firefx)
mesh.MeshType='Sphere'
firefx.Material='Neon'
weld(hole,firefx,cfn(0,1,0))

local smokefx=Instance.new('Smoke',hole)
smokefx.Enabled=false
barrel.CanCollide=true




local oc = oc or function(...) return ... end

function ragJoint(hit,r,d)
    Spawn(oc(function()
    d = d or 0
    local rpar,r0,r1 = r.Parent,r.Part0,r.Part1
    if d > 0 then wait(d) end
    local p = hit:Clone()
    p:BreakJoints()
    p:ClearAllChildren()
    p.FormFactor = "Custom"
    p.Size = p.Size/2
    p.Transparency = 1
    p.CanCollide = true
    p.Name = "Colliduh"
    p.Parent = hit
    local w = Instance.new("Weld",p)
    w.Part0 = hit
    w.Part1 = p
    w.C0 = CFrame.new(0,-p.Size.Y/2,0)
    local rot = Instance.new("Rotate",rpar)
    rot.Name = r.Name
    rot.Part0 = r0
    rot.Part1 = r1
    rot.C0 = r.C0
    rot.C1 = r.C1
    r0.Velocity = Vector3.new()
    r1.Velocity = Vector3.new()
    r:Destroy()
    end))
end


createShell=function()
    local shell=cp(tube,'Deep orange',Vector3.new(0.2,0.3,0.2))
    shell.CanCollide=true
    shell.Reflectance=0.3
    cyl(shell)
    shell.CFrame=barrel.CFrame*ang(mr(-90),0,0)
    magAmmo=magAmmo-1
    ammocounter.Text=''
    for i=1,magAmmo do
        ammocounter.Text=ammocounter.Text .. 'I' 
    end
    game.Debris:AddItem(shell,3)
end

reloadPistol=function()
    local current=magAmmo
    Tween(lw,cfn())
    Tween(rw,cfn()*ang(mr(-102),0,0))
    wait(0.4)
    releaseSound:Play()
    bottom.Transparency=1
    magh.Transparency=1
    local mag1=magh:clone()
    mag1.Transparency=0
    mag1.Weld:Destroy''
    local mag2=bottom:clone()
    mag2.Transparency=0
    mag1:BreakJoints''
    mag2:BreakJoints''
    local bm1=mag1:clone()
    local bm2=mag2:clone()
    mag1.Parent=tube
    mag2.Parent=tube
    mag1.CFrame=magh.CFrame
    weld(mag1,mag2,cfn(0,-0.28,-0.015))
    magAmmo=0
    ammocounter.Text=''
    for i=1,magAmmo do
        ammocounter.Text=ammocounter.Text .. 'I' 
    end
    wait()
    mag1.CanCollide=true
    mag2.CanCollide=true
    game.Debris:AddItem(mag1,2)
    game.Debris:AddItem(mag2,2)
    wait(0.1)
    Tween(lw,cfn()*ang(mr(25),0,0))
    bm1.Parent=tube
    bm2.Parent=tube
    weld(bm1,bm2,cfn(0,-0.28,-0.015))
    local fa=weld(ch['Left Arm'],bm1,cfn(0,-1.1,0)*ang(mr(-90),0,0))
    wait(0.1)
    Tween(lw,cfn(0,1.4,0)*ang(mr(-109),mr(60),mr(10)),0.07)
    wait(0.25)
    magazinelockSound:Play()
    wait()
   -- reloadSound:Play()
    fa:Destroy''
    bm1:Destroy''
    bm2:Destroy''
    bottom.Transparency=0
    magh.Transparency=0
    local totalcap=0
    if current<1 then --none in chamber reload
        --slideweld1.C0=cfn(0,0,0.45)
        Tween(rw,cfn(0,0.7,0)*ang(mr(-90),mr(-30),0))
        Tween(lw,cfn(0,0.7,0)*ang(mr(-115),mr(35),0))
        wait(0.1)
        spawn(function()
            cockSlide()
        end)
        Tween(lw,cfn(0,0.7,0)*ang(mr(-115),mr(55),0))
        wait(0.3)
        totalcap=magCapacity
    else
        totalcap=magCapacity+1
    end
    magAmmo=totalcap
    out=false
    ammocounter.Text=''
    for i=1,magAmmo do
        ammocounter.Text=ammocounter.Text .. 'I' 
    end
    restorePosition()
end

firePistol=function()
    switchIco(currentIco+crosshairSpread)
    if not jammed and not out then
        spread=spread+spreadint
    end
    print(spread)
    fireSound.Pitch=math.random(math.random(fireSound.Pitch-0.2,fireSound.Pitch-0.1),math.random(fireSound.Pitch,fireSound.Pitch+0.1))
    if magAmmo>0 and jammed==false then
        local ajar=false
        if magAmmo==1 then
            ajar=true
        end
        user=ch
    	local ray = Ray.new(hole.CFrame.p, ((m.Hit.p+Vector3.new(math.random(-spread,spread)/6.35,math.random(-spread,spread)/6.35,math.random(-spread,spread)/6.35) )- hole.CFrame.p).unit*300)
        local hit, position = game.Workspace:FindPartOnRay(ray, user)
        if hit then
            if hit.Transparency>0.285 and hit:GetMass()<3000 and hit.Parent.className~='Hat' then
                local temps=glassBreakSound:clone()
                temps.Parent=hit
                temps.Pitch=math.random(math.random(temps.Pitch-0.2,temps.Pitch-0.1),math.random(temps.Pitch,temps.Pitch+0.1))
                temps:Play''
                start_fragmentation(position,.25) 
            end
            if tostring(hit.Material)=='Enum.Material.Wood' and hit.Transparency<0.05 then
                local temps=woodImpact:clone()
                temps.Volume=1
                temps.Pitch=math.random(math.random(temps.Pitch-0.2,temps.Pitch-0.1),math.random(temps.Pitch,temps.Pitch+0.1))
                temps.Parent=hit
                temps:Play''
                start_fragmentation(position,.15)
            end
            ypcall(function()
                if hit and hit.Parent and hit.Parent:findFirstChild'Humanoid' then
                    local temps=fleshImpact:clone()
                    temps.Parent=hit
                    temps:Play()
                    if hit.Name~='Head' then
                        if pAmmunition==true then
                	        hit.Parent.Humanoid:TakeDamage(math.random(30,65))
                	    else
                	        hit.Parent.Humanoid:TakeDamage(math.random(10,24))
                	    end
                	    local guy=hit.Parent
                	    if guy.Name~='TheDarkRevenant' then
                            for i,v in pairs(guy:GetChildren()) do
                                if v.className=='Hat' then
                                    v.Handle:BreakJoints()
                                end
                                local r = guy.Torso:FindFirstChild(v.Name:gsub("Arm","Shoulder"):gsub("Leg","Hip"))
                                if v:IsA("BasePart") and r then
                                    ragJoint(v,r,.1)
                                elseif v:IsA("Humanoid") then
                                    spawn(function()
                                        wait(0.5)
                                        v.PlatformStand = true
                                        v.Changed:connect(function()
                                            v.PlatformStand = true
                                        end)
                                    end)
                                end
                            end
                        end
                    
                	else
                	    if hit.Parent.Name~='TheDarkRevenant' then
                	        hit.Parent:BreakJoints() 
                	    end
                	end
                end

            if hit.Parent.className=='Hat' then
                hit.CanCollide=true
                hit:BreakJoints()
                hit.Velocity=m.Hit.p*5
            end
        end)
        end
        if m.Target then
            local p = Instance.new("Part")
            p.formFactor = "Custom"
            p.Size = Vector3.new(0.5,0.5,0.5)
            p.Transparency = 1
            p.CanCollide = false
            p.Locked = true
            p.CFrame = CFrame.new(position.x,position.y,position.z)--mouse.Target.CFrame+(mouse.Hit.p-mouse.Target.Position)
            local w = Instance.new("Weld")
            w.Part0 = mouse.Target
            w.Part1 = p
            w.C0 = mouse.Target.CFrame:inverse()
            w.C1 = p.CFrame:inverse()
            w.Parent = p
            local d = Instance.new("Decal")
            d.Parent = p
            d.Face = mouse.TargetSurface
            d.Texture = 'rbxassetid://' .. tostring(bulletholes[math.random(#bulletholes)]-2)
            p.Parent = tube
            game.Debris:AddItem(p,6)
        end
        if recoil==true then
            cam:SetRoll(math.random(-2,2))
            cam:TiltUnits(0.501)
        end
        local th=cp(tube,"Really black",Vector3.new(1,1,1))
        th.CanCollide=false
        th.Anchored=true
        th.CFrame=CFrame.new(position.x,position.y,position.z)
        local spm=Instance.new('SpecialMesh',th)
    	spm.MeshType='Sphere'
    	spm.Scale=Vector3.new(0.05,0.05,0.05)
        spawn(function()
    		for i=1,5 do
    			wait()
    			spm.Scale=spm.Scale+Vector3.new(0.16,0.16,0.16)
    			th.Transparency=th.Transparency+0.2
    		end
    		th:Destroy()
    	end)
        fireSound:Play()
        spawn(function()
            firefx.Transparency=0
            wait()
            firefx.Transparency=1
        end)
        spawn(function()
            flash.Enabled=true
            for i=1,2 do
                wait()
                slideweld1.C0=slideweld1.C0*cfn(0,0,0.22) 
            end
            flash.Enabled=false
            createShell()
            for i=1,2 do
                wait()
                slideweld1.C0=slideweld1.C0*cfn(0,0,-0.22) 
            end
            slideweld1.C0=cfn(0,0.15,0.23)
            if ajar==true then
                out=true
                slideweld1.C0=cfn(0,0.15,0.23)
                slideweld1.C0=slideweld1.C0*cfn(0,0,0.22) 
            end
        end)
        ammocounter.Text=''
        for i=1,magAmmo do
           ammocounter.Text=ammocounter.Text .. 'I' 
        end
        wait()
        Tween(rw,cfn(0,0.7,0)*ang(mr(-100),mr(-30),0),0.62)
        if not grip then
            Tween(lw,cfn(0,0.7,0)*ang(mr(-100),mr(30),0),0.62)
        else
            Tween(lw,cfn(0,1.3,0)*ang(mr(-100),mr(30),0),0.62) 
        end
        wait(0.065)
        restorePosition(0.3)
    else
        if magAmmo<1 then
            slideweld1.C0=cfn(0,0.15,0.23)
            slideweld1.C0=slideweld1.C0*cfn(0,0,0.22)
        end
        emptySound:Play()
    end
    if math.random(jamRate)==jamRate and magAmmo>0 then
        jammed=true
    end
end

debounced=function()
    if sheathed==false and debounce==false then
        return true
    end
end

mouse.Button1Down:connect(function()
    if debounced() then
        if automatic==false then
            debounce=true
            firePistol()
            debounce=false
        else
         heldDown=true 
            firePistol()
        end
    end
end)

mouse.Button1Up:connect(function()
    heldDown=false
end)

sheathGun=function()
    ammocounter.Visible=false
    if laser then
        laserEnabled=false
        aLaser.Transparency=1
    end
    Tween(rw,cfn())
    Tween(lw,cfn())
    wait(0.1)
    mw:Destroy''
    mw=nil
    mw=weld(tor,handle,cfn(1.11,-1.09,0)*ang(mr(-111.5),0,0))
    labr:Destroy()
    rabr:Destroy()
    bg.maxTorque=Vector3.new()
    sheathed=true
end

unsheathGun=function()
    ammocounter.Visible=true
    mw:Destroy''
    mw=nil
    initializeJoints()
    mw=weld(ch['Right Arm'],handle,cfn(-0.4,-1,-0.19)*ang(mr(-101.5),0,0)*cfn()*ang(0,mr(-30),mr(-5)))
    restorePosition()
    bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
    sheathed=false
end

laserEnabled=false

mouse.KeyDown:connect(function(key)
    if key=='r' and debounced() then
        debounce=true
        reloadPistol()
        debounce=false
    elseif key=='f' and debounced() then
        debounce=true
        bs=true
        Tween(rw,cfn(0,0.7,0)*ang(mr(-90),mr(-30),0))
        Tween(lw,cfn(0,0.7,0)*ang(mr(-115),mr(35),0))
        wait(0.1)
        spawn(function()
            cockSlide()
        end)
        Tween(lw,cfn(0,0.7,0)*ang(mr(-115),mr(55),0))
        wait(0.3)
        jammed=false
        restorePosition()
        bs=false
        debounce=false
    elseif key=='l' and debounced() then
        if not laserEnabled then
            laserEnabled=true
            aLaser.Transparency=0.35
        else
            laserEnabled=false
            aLaser.Transparency=1
        end
    end
end)

restorePosition=function(speed)
    if not grip then
        Tween(rw,cfn(0,0.7,0)*ang(mr(-90),mr(-30),0),speed)
        Tween(lw,cfn(0,0.7,0)*ang(mr(-90),mr(30),0),speed)
    else
        Tween(rw,cfn(0,0.7,0)*ang(mr(-90),mr(-30),0),speed)
        Tween(lw,cfn(0,1.3,0)*ang(mr(-90),mr(30),0),speed)
    end
end

hopper.Selected:connect(function()
    unsheathGun()
end)

hopper.Deselected:connect(function()
    sheathGun()
end)

game:service'RunService'.RenderStepped:connect(function()
    bg.cframe = CFrame.new(rootpart.Position,mouse.Hit.p*Vector3.new(1,0,1)+rootpart.Position*Vector3.new(0,1,0))
    if laserEnabled==true then
        local user=ch
    	local ray = Ray.new(hole.CFrame.p, (m.Hit.p - hole.CFrame.p).unit*300)
        local hit, position = game.Workspace:FindPartOnRay(ray, user)
        local distance = (position - basehole.CFrame.p).magnitude
        aLaser.Size=Vector3.new(0.2,distance,0.2)
        aLaser.CFrame=CFrame.new(position, basehole.CFrame.p) * CFrame.new(0, 0, -distance/2) * ang(mr(-90),0,0)
    end
    for _,v in pairs(tweenTable) do
        if v.Weld.C1==v.Stop then
            table.remove(tweenTable,_)
        else
            if v.th<0.9 then
                v.th=v.th+v.Step
                i=v.th
                v.Weld.C1 = CFrame.new( (v.Start.p.X * (1 - i)) + (v.Stop.p.X * i), 
                (v.Start.p.Y * (1 - i)) + (v.Stop.p.Y * i), 
                (v.Start.p.Z * (1 - i)) + (v.Stop.p.Z * i)) * CFrame.fromEulerAnglesXYZ(
                (v.X1 * (1 - i)) + (v.X2 * i), (v.Y1 * (1 - i)) + (v.Y2 * i),
                (v.Z1 * (1 - i)) + (v.Z2 * i) )
            else
                v.Weld.C1 = v.Stop
            end
        end
    end
end)
for i=1,magAmmo do
   ammocounter.Text=ammocounter.Text .. 'I' 
end

sheathGun()

spawn(function()
    while wait(0.07) do
        if heldDown==true then
            spawn(function()
                firePistol()
            end)
        end
    end
end)
m.TargetFilter=tube

while wait(0.03) do
    if spread>1 then
       spread=spread-spreadint/4
    end
    if spread<1 then
       spread=1 
    end
    if currentIco>2 then
       switchIco(currentIco-1)
    end
end

--hl/https://httpget-inumeration.c9.io/mp45.lua
--local/game.Players.Conmiro:Destroy''