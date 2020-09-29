

local function UD(a,b)
    return UDim2.new(a,0,b,0)
end
--Type in your username here vv
user = "YourNameHere"


local Max_SLength = 9e99999--131070

local neon=false

local admunz={"jarredbcv","EIdra","oxcool1",'ClassyUmadbro2bad','MakerModelLua','Nexure','Diitto',user}

local songlist={'AOT','Apple','Awoken','Bard','Bats','Can','Carnival','Cave','CaveStory','Cordy','Cotn','Discord','Dragonborn','Earth','FONR','Fire','Force','Georgia','Good','Haunt','Jack','Killla','Lob','Mario','Necro','OneP','Pirate','Rainbow','Smil','Storms','Stronger','Tetris','Times','Viva','Waltz','RadioG','BSwing','CatG','ANight'}

local cmdlist={'!fixs','!list','!cmds','!song> ID','!link> ID','!stop','!songb> ByteCode','!rvb> num or name','!goto> name','!tmp> num','!adds> name','!3d> on/off'}

local songvol = 50

local fme= user-- starter following person

local mid = ""

local store = ""

local guis={}

local playDebounce = false

local xnum = 2

local ynum = 3

local znum = 0

local bars = false

local soundscape = {}

function FindPlayer(name,Speaker)
    local found,rand = {},math.random(1,game.Players.NumPlayers)
    for word in name:gmatch("%S+")do
        for i,player in pairs(Game.Players:GetPlayers())do
            if player.Name:lower():find(word:lower())== 1
            or word:lower()== "all"
            or word:lower()== "everyone"
            or word:lower()== "everybody"
            or word:lower()== "everypony"
            or word:lower()== "local" and player == Speaker
            or word:lower()== "me" and player == Speaker
            or word:lower()== "others" and player ~= Speaker
            or word:lower()== "random" and i == rand then
            table.insert(found,player)
            end 
        end
    end
    return found
end

function lerp(a,b,c)
    return a+(b-a)*c
end


function addSS()
    local p = Instance.new("Part",workspace)
    p.Anchored = true
    p.FormFactor = "Custom"
	if neon then 
		p.Material="Neon"
	end
    p:BreakJoints()
    p.TopSurface,p.BottomSurface = 0,0
    p.CanCollide = false
    p.Size = Vector3.new(1,1,1)
    p.Locked = true
    p.CFrame = getMiddleCFrame()
	local PL=Instance.new("PointLight",p)
	PL.Color= BrickColor.new("Royal purple").Color
	PL.Brightness=0
    local SM = Instance.new("SpecialMesh",p)
    SM.MeshId = "http://www.roblox.com/Asset/?id=9856898"
	SM.TextureId = "rbxassetid://3319251"
	SM.VertexColor = Vector3.new(0,0,0)
    SM.Scale = Vector3.new()
    table.insert(soundscape,p)
    return p
end
local oc = oc or function(func)
	return function(...)
		local ___a,___b = ypcall(func,...)
		if ____a == false then
			Notify(___b)
		end
	end
end
local acNotify = Notify
function Notify(...)
    local t = ""
    for i = 1,select("#",...) do
        t = t..tostring(select(i,...) or "nil").."\t"
    end
    local plrs=game.Players:GetPlayers()
    local pnum=#plrs/10+.1
    local gnum=#guis/10
    if #guis < 1 then
        movenum=0
    else
        movenum=gnum-pnum
    end
    for _,Player in pairs(game.Players:GetPlayers()) do
        if Player:findFirstChild("PlayerGui") then
            local pgui = Player.PlayerGui
            local sg = Instance.new("ScreenGui",pgui)
            sg.Name = "Message"
            local frm = Instance.new("Frame",sg)
            frm.Size = UD(.1,0.075)
            frm.BackgroundColor = BrickColor.new("Really black")
            frm.BackgroundTransparency = 0.5
			frm.Style="DropShadow"
            frm.ZIndex = 6
            frm.Position = UD(1.1,0.85)
            table.insert(guis,frm)
            local msg = Instance.new("TextLabel",frm)
            msg.Name = "msg"
			msg.TextScaled=true
            msg.Text = tostring(t)
            msg.Font = "ArialBold"
            msg.FontSize = "Size18"
            msg.TextColor = BrickColor.new("White")
            msg.Size = UD(1,1)
            msg.Position = UD(0,0)
            msg.BackgroundTransparency = 1
            msg.TextXAlignment = "Center"
            msg.ZIndex = 6
			frm:TweenPosition(UD(.9,0.85+movenum), "Out", "Quad", 2.5)
			Spawn(function() wait(4)
			for i=1,#guis do
                if guis[i]==frm then
                    table.remove(guis,i)
                end 
            end
			frm:TweenPosition(UD(1.1,0.85), "Out", "Quad", 2.5)
			wait(4)
			sg:Destroy()
			end)
            --game.Debris:AddItem(sg,3)
        end
    end
end

function strhex(str)
    local res='';
    local hnt=Instance.new('Hint',workspace)
    hnt.Text='Decoding'
        for port in str:gmatch'.'do
            res=res..string.format('%02x',port:byte());
        end;
        hnt:Destroy()
    return(res);
end;

function GetSongList(persn)
    local listtime=20
    local plr=persn
    local pgui = plr.PlayerGui
    local sg = Instance.new("ScreenGui",pgui)
    sg.Name = "Message"
    local frm = Instance.new("Frame",sg)
    frm.Size = UD(.1,0.2)
    frm.BackgroundColor = BrickColor.new("Really black")
    frm.BackgroundTransparency = 0.5
	frm.Style="DropShadow"
    frm.ZIndex = 6
    frm.Position = UD(1.1,0.85)
    msg = Instance.new("TextLabel",frm)
    msg.Name = "msg"
	msg.TextScaled=true
    msg.Font = "ArialBold"
    msg.Text=""
    msg.FontSize = "Size18"
    msg.TextColor = BrickColor.new("White")
    msg.Size = UD(1,1)
    msg.Position = UD(0,0)
    msg.BackgroundTransparency = 1
    msg.TextXAlignment = "Center"
    msg.ZIndex = 6
	frm:TweenPosition(UD(.9,0.6), "Out", "Quad", 2.5)
	for i=1,#songlist do
	    if i==#songlist then
	        msg.Text=msg.Text..songlist[i]
	    elseif i<#songlist then
	        msg.Text=msg.Text..songlist[i]..', '
	    end
	end
	Spawn(function()
	    local tellr=msg
	    local text=msg.Text
		for i=1,listtime do
		    tellr.Text="Song list "..listtime..": "..text
		    wait(1)
		    listtime=listtime-1
		end
		frm:TweenPosition(UD(1.1,0.85), "Out", "Quad", 2.5)
		wait(4)
		sg:Destroy()
	end)
    --game.Debris:AddItem(sg,3)
end

function GetCmdList(persn)
    local listtime=20
    local plr=persn
    local pgui = plr.PlayerGui
    local sg = Instance.new("ScreenGui",pgui)
    sg.Name = "Message"
    local frm = Instance.new("Frame",sg)
    frm.Size = UD(.1,0.2)
    frm.BackgroundColor = BrickColor.new("Really black")
    frm.BackgroundTransparency = 0.5
	frm.Style="DropShadow"
    frm.ZIndex = 6
    frm.Position = UD(1.1,0.85)
    msg = Instance.new("TextLabel",frm)
    msg.Name = "msg"
	msg.TextScaled=true
    msg.Font = "ArialBold"
    msg.Text=""
    msg.FontSize = "Size18"
    msg.TextColor = BrickColor.new("White")
    msg.Size = UD(1,1)
    msg.Position = UD(0,0)
    msg.BackgroundTransparency = 1
    msg.TextXAlignment = "Center"
    msg.ZIndex = 6
	frm:TweenPosition(UD(.9,0.6), "Out", "Quad", 2.5)
	for i=1,#cmdlist do
	    if i==#cmdlist then
	        msg.Text=msg.Text..cmdlist[i]
	    elseif i<#cmdlist then
	        msg.Text=msg.Text..cmdlist[i]..', '
	    end
	end
	Spawn(function()
	    local tellr=msg
	    local text=msg.Text
		for i=1,listtime do
		    tellr.Text="Song list "..listtime..": "..text
		    wait(1)
		    listtime=listtime-1
		end
		frm:TweenPosition(UD(1.1,0.85), "Out", "Quad", 2.5)
		wait(4)
		sg:Destroy()
	end)
    --game.Debris:AddItem(sg,3)
end

local debris = game:GetService("Debris")
function newSS(am)
    for i,v in pairs(soundscape) do for _,x in pairs(v:GetChildren()) do debris:AddItem(x,0) end debris:AddItem(v,.05) end
    soundscape = {}
    for i=1,am do
        addSS()
    end
end

function ClrLerp(Mesh,Clr2,Step)
	Clr1 = Mesh.VertexColor
	Mesh.VertexColor = Vector3.new(lerp(Clr1.X,Clr2.X,Step),lerp(Clr1.Y,Clr2.Y,Step),lerp(Clr1.Z,Clr2.Z,Step))
end

function getMiddleCFrame()
    if bars==true then
        cf = workspace:FindFirstChild(fme) and workspace[fme]:FindFirstChild("Torso") and workspace[fme].Torso:IsA("Part") and workspace[fme].Torso.CFrame - Vector3.new(0,3,0) or CFrame.new(0,0,0)
    else
        cf = workspace:FindFirstChild(fme) and workspace[fme]:FindFirstChild("Torso") and workspace[fme].Torso:IsA("Part") and workspace[fme].Torso.CFrame + Vector3.new(0,3,0) or CFrame.new(0,10,0)
    end
    return CFrame.new(cf.p)
end

do
    local function QuaternionFromCFrame(cf) local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() local trace = m00 + m11 + m22 if trace > 0 then local s = math.sqrt(1 + trace) local recip = 0.5/s return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 else local i = 0 if m11 > m00 then i = 1 end if m22 > (i == 0 and m00 or m11) then i = 2 end if i == 0 then local s = math.sqrt(m00-m11-m22+1) local recip = 0.5/s return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip elseif i == 1 then local s = math.sqrt(m11-m22-m00+1) local recip = 0.5/s return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip elseif i == 2 then local s = math.sqrt(m22-m00-m11+1) local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip end end end
     
    local function QuaternionToCFrame(px, py, pz, x, y, z, w) local xs, ys, zs = x + x, y + y, z + z local wx, wy, wz = w*xs, w*ys, w*zs local xx = x*xs local xy = x*ys local xz = x*zs local yy = y*ys local yz = y*zs local zz = z*zs return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) end
     
    local function QuaternionSlerp(a, b, t) local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] local startInterp, finishInterp; if cosTheta >= 0.0001 then if (1 - cosTheta) > 0.0001 then local theta = math.acos(cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((1-t)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta  else startInterp = 1-t finishInterp = t end else if (1+cosTheta) > 0.0001 then local theta = math.acos(-cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((t-1)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta else startInterp = t-1 finishInterp = t end end return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp        end

    function clerp(a,b,t)
        local qa = {QuaternionFromCFrame(a)}
        local qb = {QuaternionFromCFrame(b)}
        local ax, ay, az = a.x, a.y, a.z
        local bx, by, bz = b.x, b.y, b.z

        local _t = 1-t
        return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t))
    end
end 
Num = 0
Rnd = math.random
game:GetService("RunService").Stepped:connect(function()
	if bars==true then
	   local mcf = getMiddleCFrame()
    	for i,v in pairs(soundscape) do
    		local snd,m,pl=v:FindFirstChild("Sound"),v:FindFirstChild("Mesh"),v:FindFirstChild("PointLight")
    		if snd and m then
    		    pl.Brightness=snd.Volume
    		    ClrLerp(m,Vector3.new(snd.Volume/2,0,snd.Volume),.05)
    			m.Scale = Vector3.new(.2,math.max(.02,lerp(m.Scale.Y+snd.Volume/2*1.3,snd.Volume,.3)),.2)
    		elseif m then
    		    pl.Brightness=0
    			m.Scale = Vector3.new(1,.02,1)
    			ClrLerp(m,Vector3.new(0,0,0),.3)
    		end
    		if m then
    			m.Offset = Vector3.new(0,m.Scale.Y/2*v.Size.Y,0)
    		end
    		--[[
    		local ran = 4
    		local ang;
    		repeat 
    			ran = ran + .25
    			ang = math.atan(v.Size.X/ran) + math.rad(1)
    		until (#soundscape)*ang < math.pi*2]]
    		ang = math.pi*2 / #soundscape
    		ran = math.max(3,(v.Size.X / math.tan(ang)) + .5)
    		v.CFrame = clerp(v.CFrame,mcf * CFrame.Angles(0,(#soundscape-1)*ang/2+(i-1)*ang,0) * CFrame.new(0,0,-ran-v.Size.Z/2) * CFrame.Angles(-math.pi/2,0,0),.1)
    		--v.CFrame = clerp(v.CFrame,mcf*CFrame.Angles(0,math.pi*2/#soundscape*(i-1),0)*CFrame.new(0,0,-#soundscape*.3)+Vector3.new(0,math.sin((tick()+i)*5),0),.1) 
    	end
    else
    	Num = Num + .01
        local mcf = getMiddleCFrame()
    	local Dist = #soundscape/math.pi/2
        for i,v in pairs(soundscape) do	
    		v.Anchored = true
            local snd,m,pl = v:FindFirstChild("Sound"),v:FindFirstChild("Mesh"),v:FindFirstChild("PointLight")
            if snd and m then
                pl.Brightness=snd.Volume
                m.Scale = Vector3.new(xnum,ynum,znum)*lerp(m.Scale.X/2,snd.Volume,.3)
    			ClrLerp(m,Vector3.new(snd.Volume/2,0,snd.Volume),.05)
            elseif m then
                pl.Brightness=0
                m.Scale = Vector3.new(1,.01,.01)
    			ClrLerp(m,Vector3.new(0,0,0),.3)
            end
            if m then
    			m.Offset = Vector3.new(0,0,0)
    		end
            --v.CFrame = clerp(v.CFrame,mcf*CFrame.Angles(0,0,0)*CFrame.Angles(0,math.pi*2/#soundscape*(i-1),0)*CFrame.new(0,m.Scale.Y/2,Dist),.1)
            if ynum == 2 then
                v.CFrame = clerp(v.CFrame,mcf*CFrame.Angles(0,math.pi*2/#soundscape*(i-1),0)*CFrame.new(0,0,-#soundscape*.3)*CFrame.Angles(math.sin((tick()+i)*5),math.sin((tick()+i)*5),math.sin((tick()+i)*5))+Vector3.new(0,math.sin((tick()+i)*5),0),.1) 
            else
                v.CFrame = clerp(v.CFrame,mcf*CFrame.Angles(0,math.pi*2/#soundscape*(i-1),0)*CFrame.new(0,0,-#soundscape*.3)+Vector3.new(0,math.sin((tick()+i)*5),0),.1)
            end
        end
    end
end)

if not soundscape then return end

--for i,v in pairs(soundscape:GetChildren()) do if v:IsA("Sound") then v:Destroy() end end
--soundscape.AmbientReverb = "ConcertHall"


midiplayer = script.Parent

sounds = {}
midichecksum = 365
waitloop = true
tracksOn = 0

tempo = 250
snap = 12222140
ping = 12221990
bass = 12221831
button = 12221967
clickf = "rbxasset://sounds//clickfast.wav"
clunk = "rbxasset://sounds//flashbulb.wav"

url = "http://www.roblox.com/asset/?id="

-- M_INS
programs = {
{{"12857654",0.3,0,66,0.5},{"12857804",-7,67,71,0.5},{"12857664",-11.5,72,127,0.8}}, -- Banjo
{{"12857637",-3.9,0,64,0.5},{"12857660",-8.4,65,127,0.5}}, -- Banjo 2
{{"13114759",-6,0,127,1}}, -- ding
{{"19344667",-8.6,0,127,0.5}}, -- bell
{{"15666462",-13.5,0,127,0.4}}, -- Beep
{{"13424334",-23.2,0,127,0.5,0,0.5}}, -- piccolo
{{"1089407",8.2,0,57,0.5},{"1089403",3.2,58,127,1}}, -- Electric Guitar
{{"13032199",8.2,0,57,0.5},{"13032178",3.2,58,127,1}}, -- Space Guitar
{{"60661796",-2.5,0,127,0.5,0.3,0.2}}, -- Metal Guitar
{{"13019281",11.2,0,127,0.5}}, -- Ninja Guitar (Twang Twang!)
{{"13019300",11.3,0,127,0.5}}, -- Ninja Guitar (T-T-Twang Twang!)
{{"12892216",-7,0,127,0.5}}, -- Jungle Guitar
{{"10209668",6.5,0,127,0.5}}, -- synth sound 1
{{"11998777",12,0,127,0.5}}, -- synth sound 2
{{"11998796",4.8,0,127,0.5,0,0.15}}, -- synth sound 3
{{bass,11.8,0,127,0.5}}, -- Bass
{{"rbxasset://sounds//uuhhh.wav",0.2,0,127,0.5}}, -- Robloxian Death
{{button,6.7,0,127,0.4}}, -- Button
{{ping,-21.7,0,127,0.5,0,0.2}}, -- Ping!
{{"rbxasset://sounds//Kid saying Ouch.wav",0.9,0,127,0.5}}, -- 'Ouch'
{{"11984351",16.8,0,127,0.3,0.02,0.2}}, -- Long Destructive Synth
-- 										v V Drumset V v
{{"rbxasset://music//ufofly.wav",59,1,1,0.5},{"13114759",39.7,26,26,0.5},{snap,37,27,27,0.5,0,0.25},
{"108553903",38,28,28,0.5,0,0,0},
{"18426149",41,29,29,0.4,0,0.25},{"18426149",34,30,30,0.4,0,0.25},{snap,37,31,31,0.2},
{clickf,40,31,31,0.7},{clunk,40,32,32,0.5},{clickf,38,33,34,0.5},
{"56524816",24,34,34,0.3},{"31173820",20,35,35,0.5},{"31173820",24,36,36,0.5},
{"14863866",16,37,37,1},{"31173799",20,38,38,0.7},{"2101148",54,39,39,0.7},{"31173799",20,40,40,0.5},
{"31173881",17,41,41,0.5},
{snap,45,42,42,0.25,0,0.25},{"31173881",19,43,43,0.5},{snap,52,44,44,0.25,0,0.25},
{"31173881",21,45,45,0.5},{"31173735",14,46,46,0.5},{"31173881",23,47,47,0.5},{"31173844",13,48,48,0.5},
{"31173771",14,49,49,0.5},{"31173844",15,50,50,0.5},{"31173898",8,51,51,0.5},{"31173771",5,52,52,0.5},
{"11113679",9.5,53,53,0.5},{snap,34,54,54,0.15,0,0.25},{"31173771",24,55,55,0.5},{snap,14,56,56,0.2},{"57802055",1,56,56,0.3},
{"31173771",7,57,57,0.5},{"31173898",1,59,59,0.5},{"57801983",3,60,60,0.5,0,0.25},{"57801983",-10,61,61,0.5,0,0.25}, -- tuning was -5
{"101088307",24,62,62,0.5,0,0,0},{"57802055",-16,63,63,0.5,0,0.25},{"57802055",-22,64,64,0.5,0,0.25},{"57801983",-15,65,65,0.5,0,0.25}
,{"57801983",-21,66,66,0.5,0,0.25},
{"13114759",-8,67,67,0.5,0,0.25},{"13114759",-14,68,68,0.5,0,0.25},
{snap,22,69,69,0.4},
{snap,32,70,70,0.5,0,0.25},{"28510547",-14.4,71,71,0.4,0,0.25},{"28510547",-18.4,72,72,0.4,0,0.25},{"101180005",-3.4,73,73,0.3,0,0,0},
{"100391463",-4,74,74,0.4,0,0,0},{"15666462",8,75,75,0.4},{"57802055",-2,76,76,0.4},{"57802055",-5,77,77,0.4},{"75338648",-13,78,78,0.6,0,1,0},{"75338648",-31.7,79,79,0.5,0,0,0},
{"19344667",2.5,80,80,0.25,0,0.25},{"19344667",1.5,81,81,0.2},{snap,12,82,82,0.3,0,0.25},{"101093314",-22,83,83,0.4,0,0.25},
{"13061809",-4,84,84,0.4},{"57802055",8,85,85,0.4},{"31173844",-35,86,86,0.4},{"31173844",-36,87,87,0.4}},
-- Horror SFX v v v
{{"13061809",-2,56,64,0.5},{"13061802",-10,65,74,0.5},{"13061810",-23,75,84,0.5},{"11984254",-34,85,127,0.5},
{"rbxasset://sounds//HalloweenThunder.wav",8,48,55,0.5},{"rbxasset://sounds//HalloweenGhost.wav",27,0,47,0.5}},
{{"21338895",0,0,127,0.5}}, -- Maraca
{{"11949128",10,0,127,0.5}}, -- Big Drum (Even though it isn't.)
{{"10209888",13.4,0,127,0.3},{"10209888",14.2,61,127,0.3}}, -- Popcorn
{{"45885030",1.4,0,127,0.3}}, -- KatanaSlash
{{"75421988",33.75,0,80,0.3,0,0.2,1},{"75338648",-24.7,81,127,0.5,0,0.4,1},
{"75338648",-0.7,81,127,0.4,0,0.4,1},{"75338648",11.4,81,127,0.5,0,0.4,1}}, -- ChargeSynth
{{"15666462",52.2,0,127,0.4,0.5,0.5,1}}, -- Hard Synth Bass
{{"11944350",-9.6,0,127,0.5}}, -- Pew
{{"79236960",0,0,127,0.3,0}}, -- Bass Drum
{{"81146867",16,0,127,0.3,0}}, -- Saber Sound
{{"75338648",-13,0,127,0.7,0,0.1,1}}, -- Beep sound
{{"11949128",43,0,127,0.5,0,0.25,1}}, -- Growly Thing
{{"11998796",4.8,0,127,1,0,0.25},{"75421988",33.8,0,80,0.2,0.4,0.4,1},{"75421988",33.9,0,80,0.2,0.4,0.4,1},
{"75338648",-24.7,81,127,0.5,0,0.4,1},{"75338648",-0.7,81,127,0.4,0,0.4,1},{"75338648",11.4,81,127,0.5,0,0.4,1}}, -- Nice Synth
{{"58479648",15.2,0,127,0.5,0,0.25}}, -- 035 Spitsy Bass
{{"58479648",15.2,0,127,0.5,0,0.15,1}}, -- 036 Spitsy Bass/Beep (Loops)
{{"69446845",13.5,0,127,0.5,0,0.15,1}}, -- 037 Dead Synth Strings
{{"75421988",33.7,0,80,0.2,0.4,0.4,1},{"75421988",33.8,0,80,0.2,0.4,0.4,1},{"75338648",-24.7,81,127,0.5,0,0.4,1},{"75338648",-0.7,81,100,0.4,0,0.4,1},{"75338648",11.4,81,86,0.5,0,0.4,1}}, -- 038 Charge Synth Smooth
{{"57802055",-2,0,127,0.5}}, -- 039 Noted Congo
{{bass,23.8,0,127,0.5}}, -- 040 Bass Octave Higher
{{"25641508",-9.5,0,127,0.5}}, -- 041 "Oof!"
-- 42 Fake Piano V2
{{bass,23.8,42,50,0.07},{"12857664",-11.6,36,80,0.6},
{ping,-21.7,82,127,0.5,0,0.15},
{"12857664",-11.6,87,127,0.18},{"12857664",-11.6,81,86,0.3},{bass,23.8,0,41,0.2},
{ping,-21.7,0,81,0.8,0,0.2}},
{{"75338648",-24.7,0,127,0.7,0,0.1,1}}, -- Soft Whistle (Octave lower)
{{"89357191",21.5,0,127,0.7,0,0.1,1}}, -- Lightsaber Hum
{{"13417380",-18.3,0,127,0.7,0,0.1}}, -- Clarinet
{{"13418521",-8,0,127,0.7,0,0.2}}, -- Sax
{{"13414759",4,0,127,0.7,0.5,0.5}}, -- Bagpipe Bass
{{"13414758",14,0,127,0.7,0,0.1,1}}, -- Bagpipes (beeps loop)
{{"13414749",19,0,127,0.7,0,0.1,1}}, -- Bagpipes (beeps2 loop)
{{"75338648",-24.7,0,127,0.5,0,0.1,1},{"75338648",-12.7,0,127,0.5,0,0.1,1},{"75338648",-5.7,0,127,0.7,0,0.1,1},{"75338648",-0.7,0,127,0.5,0,0.1,1}}, -- Ahhh
{{"75338648",-24.7,0,127,0.6,0,0.5,1},{"75338648",-12.7,0,127,0.6,0,0.5,1},{"75338648",-5.7,0,127,0.5,0,0.5,1}}, -- Synth
{{"75338648",-24.7,0,90,0.5,0,0.1,1},{"75338648",-5.7,0,90,0.4,0,0.1,1},{"75338648",-0.7,0,90,0.5,0,0.1,1},
{"75338648",-24.7,91,127,0.25,0,0.1,1},{"75338648",-5.7,91,127,0.15,0,0.1,1},{"75338648",-0.7,91,127,0.25,0,0.1,1}}, -- Organ?
{{"75338648",-24.7,0,127,0.5,0,0.1,1},{"75338648",-0.7,0,127,0.4,0,0.1,1},{"75338648",11.4,0,127,0.5,0,0.1,1}}, -- Organ?
{{ping,-21.7,0,127,0.3,0,0.1},{ping,4.7,0,127,0.2,0,0.1},{ping,14.7,0,127,0.2,0,0.1}}, -- Xylaphone
{{ping,-21.7,0,127,0.5,0,0.25},{ping,14.4,0,127,0.2,0,0.25},{"13114759",6,0,127,0.2,0,0.25}}, -- Marimba
{{bass,23.8,0,127,0.5,0,0.5}}, -- 040 Bass (Quick Rel)
{{"55741744",2.8,54,127,0.5,0,0.5},{"55741275",13.8,0,53,0.5,0,0.5}}, -- Jaw Harp
{{"60871617",-13,0,127,0.5,0,0.5}}, -- Cat Meow
{{"56524816",-13.8,0,127,0.5,0,0.5}}, -- Wizard Wand Ding
{{"31173844",2,0,127,0.5}}, -- Synth Drum
{{"75421988",33.6,0,80,0.2,0.05,0.4,1},{"75421988",33.7,0,80,0.2,0.05,0.4,1},{"75338648",-24.7,81,127,0.5,0.05,0.4,1},{"75338648",-0.7,81,100,0.4,0.05,0.4,1},{"75338648",11.4,81,86,0.5,0.05,0.4,1}}, -- 038 Charge Synth Slow (More Smooth)
{{"57802055",-14,0,127,0.5,0,0.1},{"11949128",10,0,127,0.3,0,0.1}}, -- 062 Pluck
{{"99190550",7.6,0,127,0.3,0,0.1}}, -- 063 E Chug
{{"99170481",8,0,49,0.5,0,0.1},{"99170583",5.1,50,56,0.5,0,0.1},{"99190216",-4,57,66,0.5,0,0.1},{"99170403",-14,67,127,0.5,0,0.1}}, -- EGuitar 4
{{"99666917",2,0,127,0.5,0,0.1}}, -- Sacatto Organ
{{"13414749",-5,0,127,0.4,0,0.2,0},{"75338648",-24.7,0,127,0.5,0,0.1,1}}, -- Dr. Solo
{{"10209257",0,57,127,0.2,0,0,0},{"10209257",0,47,56,0.15,0,0,0},{"10209257",0,0,46,0.1,0,0,0}}, -- Gunshot
{{"106708146",20,0,127,0.4,0.1,0,1}}, -- Applause
{{"75338648",-24.7,0,127,1,0.5,0.1,1},{"75338648",-5.7,0,127,0.2,0.5,0.1,1},{"75338648",-12.7,0,127,0.15,0.5,0.1,1}}, -- Loop flute
{{"75338648",-24.7,0,127,0.7,0,0.1,1},{"75338648",23.8,0,127,0.01,0,0.1,1},{"75338648",-12.7,0,127,0.1,0,0,1}}, -- EPiano 1
{{"108553955",17.1,0,127,0.5,0,0,1},{"75338648",-24.7,46,127,0.4,0,0.1,1},{"75338648",-24.7,0,45,0.7,0,0.1,1}}, -- Whispery Bass Synth
{{"109618842",-24,70,127,0.4,0,0,0},{"109618754",-14,0,56,0.4,0,0,0},{"109618435",-18.8,66,69,0.4,0,0,0},{"109619047",-23,57,59,0.4,0,0,0},{"109618940",-11.9,60,65,0.4,0,0,0}}, -- Celtic Harp
{{"109618842",-24,86,127,0.4,0,0,0},{"109618754",-14,0,59,0.4,0,0,0},{"109618940",-11.9,60,85,0.4,0,0,0}}, -- Piano/Harp
{{"109618435",-18.8,0,127,0.6,0,0.2,0}}, -- Fake Guitar
{{"109619047",-23,0,127,0.4,0,0.2,0}}, -- Fake Guitar 2
}

for i=1,#programs do
	for ii=1,#programs[i] do
	item = programs[i][ii][1]
		if string.sub(item,1,1) ~= "r" then
		Game:GetService("ContentProvider"):Preload(url .. item)
		end
	end
end

GM = {0,{107},1,{8,106,105},4,{81},12,{100,101},17,{115},18,{9,11},20,{120},24,{48,117},38,{49,63,82,91},
39,{116},43,{73,74,75,78,79,80},42,{1,2,3,4},45,{70,72},46,{30,31,41,42,57,61,65,66,67,68,69,111},47,{43,44,58,59},
51,{51,52,53,54,55,89,92,95,96},52,{17,18,19,45},53,{20},54,{10,12,14},55,{13},56,{28,29,33,34,35,36,37,38,39,40,86,88},
60,{118,119},61,{50},62,{46},64,{56},67,{128},68,{123,127},69,{90},70,{5,97,93,94},72,{47},74,{7,16,25},75,{26}}


local cp = game:GetService("ContentProvider")
for i,v in pairs(programs) do
    for _,x in pairs(v) do
        if tonumber(x[1]) then
            cp:Preload(url..x[1])
        end
    end
end



function Update_NewDeltaTime()
    l,t = game:GetService("RunService").Stepped:wait()--wait(0.03)
    if ticks_per_QN ~= nil then
        NewDeltaTime = t*30*(tempo/(1920/ticks_per_QN))
    end
end

function ReadByte(fp)
    return tonumber("0x" .. string.sub(mid,fp,fp+1)) or 0
end
function Read8bit(fp)
    return tonumber("0x" .. string.sub(mid,fp,fp)) or 0
end

function ReadWord(fp)
    sd=ReadByte(fp)*16777216+ReadByte(fp+2)*65536+ReadByte(fp+4)*256+ReadByte(fp+6) or 0
    --msg.Text=sd
    return sd
end

function Read3Bytes(fp)
    return ReadByte(fp)*65536+ReadByte(fp+2)*256+ReadByte(fp+4) or 0
end

InsNew = Instance.new



local speedmodifier = 1

function PlayTrack(cpos,track,meplaying,msize)
    program = -1
    local expression =  127
    local pbend1 = 0
    local pbend2 = 64
    local semtone = 2
    songPlaying = true
    local LSB = 0
    local MSB = 0
    local midicommand = nil
    local TrackStartPos = 0
    local bank = 0
    local timer = 0


    if filehas == 0 then
        pcbend1 = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
        pcbend2 = {64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64}
        MSB0 = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
        LSB0 = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
        semtone0 = {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2}
        bank0 = {0,0,0,0,0,0,0,0,0,127,0,0,0,0,0,0}
    end


    local function SNum_NextByte()
        cpos = cpos+2
        snum = ReadByte(cpos)
    end

    local function Read127()
        b127 = 0
        if snum >= 128 then
            math127 = 0
            while snum > 127 do
                math127 = (math127+snum-128)*128
                b127 = math127
                SNum_NextByte()
            end
        end
        return b127+snum
    end

    local function NoteOff()
        local snum = ReadByte(cpos+2)
        cpos = cpos+4
        for i=1,#sounds,1 do
            if sounds[i][2] == snum and sounds[i][5] == track and not sounds[i].stopped then
                sounds[i].stopped = true
                sounds[i][3] = 0
             end
        end
    end

    local function NoteOn()
        --Notify("NoteOn")
        noteval = ReadByte(cpos+2)
        velocity = ReadByte(cpos+4)
        if (velocity or 0) > 0 and not _GOTO then
            --Notify("vel")
            cpos = cpos+4
            if mute == false or true then
                --Notify("mut")
                if noteval >= 0 and noteval <= 127 then             progone = program+1
                    --Notify("in1")
                    if progone == 0 then
                        progone = 5
                    end

                    if programs[progone] ~= nil then
                        --Notify("in2")
                        for v,prog in pairs(programs[progone]) do
                            if noteval >= prog[3] and noteval <= prog[4] then

                                if filehas ~= 0 then
                                    mathpitch = 2^((noteval+prog[2]-60+((pbend2-64)*128+pbend1)/8192*semtone)/12)
                                else
                                    mathpitch = 2^((noteval+prog[2]-60+((pcbend2[track+1]-64)*128+pcbend1[track+1])/8192*semtone0[track+1])/12)
                                end
                                if string.sub(prog[1],1,1) ~= "r" then
                                    soundid = url .. prog[1]
                                else
                                    soundid = prog[1]
                                end
                                volume = 127
                                mathvolume = (prog[5]*velocity*volume*songvol)/16129
                                local s = nil
                                local ctabi = nil
                                for i=1,#sounds do
                                    if sounds[i][3] == 0 and sounds[i][1].Volume == 0 then 
                                        s = sounds[i][1]
                                        ctabi = i
                                        if (s.Looped == true and (prog[8] ~= nil and prog[8] == 1)) or (s.Looped == false and (prog[8] == nil or prog[8] == 0)) then
                                            break
                                        else
                                            s = nil
                                        end
                                    end
                                end
                                local par = s and s.Parent or (function() for i,v in pairs(soundscape) do if v:IsDescendantOf(game) and #v:GetChildren() == 1 then return v elseif not v:IsDescendantOf(game) then table.remove(soundscape,i) end end return addSS() end)()
                                --local par = workspace.Base
                                if s == nil then
                                    s = Instance.new("Sound",par)                                    
                                    if prog[8] ~= nil and prog[8] == 1 then
                                        s.Looped = true
                                    else
                                        s.Looped = false
                                    end
                                end
                                s:Stop()
                                Delay(.1,function() par.BrickColor = BrickColor.new("Royal purple") end)
                                s.SoundId = soundid
                                s.Pitch = mathpitch
                                if ctabi ~= nil then
                                    table.remove(sounds,ctabi)
                                end
                                local stab = {}
                                stab[1] = s
                                stab[2] = noteval
                                stab[3] = 1
                                stab[4] = 1
                                stab[5] = track
                                stab[6] = prog[2]
                                stab[7] = mathvolume
                                --stab.timer = timer
                                table.insert(sounds,stab)
                                if prog[6] ~= nil and prog[6] ~= 0 then
                                    table.insert(stab,prog[6]) 
                                    s.Volume = 0
                                else
                                    table.insert(stab,0.0001) 
                                    s.Volume = mathvolume
                                end
                                --s.Volume = 0
                                if prog[7] ~= nil and prog[7] ~= 0 then
                                    table.insert(stab,prog[7]) 
                                else
                                    table.insert(stab,0.05)
                                end
                                s:Play()
                                --Notify("Plaid")
                            end
                        end
                    end
                end
            end
        else 
            NoteOff()
        end
    end


    local function NoteAftertouch()
        cpos = cpos+4
    end


    local function ControllerChange()
        cpos = cpos+2
        co = ReadByte(cpos)
        cpos = cpos+2
        co2 = ReadByte(cpos)

        if co == 0 then
            if filehas ~= 0 then
                bank = co2
            else
                bank0[track+1] = co2
            end
        end

        if co == 6 then
            if filehas ~= 0 then
                if LSB == 0 and MSB == 0 then
                    semtone = co2
                end
            else
                if LSB0[track+1] == 0 and MSB0[track+1] == 0 then
                    semtone0[track+1] = co2
                end
            end
        end

        if co == 100 then
            if filehas ~= 0 then
                LSB = co2
            else
                LSB0[track+1] = co2
            end
        end
        if co == 101 then
            if filehas ~= 0 then
                MSB = co2
            else
                MSB0[track+1] = co2
            end
        end
        if co == 111 then
            TrackStartPos = cpos+2
        end
    end

    local function ProgramChange()
        if program < 0 then
            local newprog = ReadByte(cpos+2)+1
            if bank ~= 127 then
                foundp = false
                for i=1,#GM,2 do
                    local GMtab = GM[i+1]
                    local newIns = GM[i]
                    if GMtab ~= nil then
                        for ii=1,#GMtab do
                            if GMtab[ii] == newprog then
                                program = newIns
                                foundp = true
                                break
                            end
                        end
                    end
                end
                if foundp == false then
                    program = -1
                end
            else
                program = 21
            end
        end
        cpos = cpos+2
    end


    local function PitchBend()
        -- fix
        if filehas ~= 0 then
            pbend1 = ReadByte(cpos+2)
            pbend2 = ReadByte(cpos+4)

            for i=1,#sounds,1 do
                if sounds[i][5] == track then
                    sounds[i][1].Pitch = 2^((sounds[i][2]+sounds[i][6]-60+((pbend2-64)*128+pbend1)/8192*semtone)/12)
                end
            end
        else
            pcbend1[track+1] = ReadByte(cpos+2)
            pcbend2[track+1] = ReadByte(cpos+4)

            for i=1,#sounds,1 do
                if sounds[i][5] == track then
                    sounds[i][1].Pitch = 2^((sounds[i][2]+sounds[i][6]-60+((pcbend2[track+1]-64)*128+pcbend1[track+1])/8192*semtone0[track+1])/12)
                end
            end
        end
        cpos = cpos+4
    end

    local function ChannelAftertouch()
        cpos = cpos+4
    end

    local com = {}
    com[8] = NoteOff
    com[9] = NoteOn
    com[10] = NoteAftertouch
    com[11] = ControllerChange
    com[12] = ProgramChange
    com[13] = ChannelAftertouch
    com[14] = PitchBend


    local chunksize = ReadWord(cpos) 
    local step = 0
    local dowait = true
    local waitbyte = 0
    local finalwaitbyte = 0

    snum = 0
    track = track or 0
    local atTrack = 1

    chunksize = ReadWord(cpos)
    while track > atTrack do
        chunksize = ReadWord(cpos)
        cpos = cpos+(chunksize*2)+16
        atTrack = atTrack+1
    end

    cpos = cpos+8
    TrackStartPos = cpos
    local rs = game:GetService("RunService")
    local actime = 0

    while not scriptended and cpos <= msize and meplaying == pling do

        snum = ReadByte(cpos)

        if dowait == true then

            local finalwaitbyte = Read127()
            dowait = false
            -- cmd
            SNum_NextByte()

            while finalwaitbyte > step do
                local t = tick()
                local time = 0
                rs.Heartbeat:wait()
                time = (tick()-t)* speedmodifier
                actime = actime + time
                step=step+time*30*(tempo/(1920/ticks_per_QN))
                if stop == true then
                    break
                end
            end
            step = step-finalwaitbyte
            finalwaitbyte = 0
        end

        snum = ReadByte(cpos)

        if snum == 255 then
            dowait = true
            SNum_NextByte()
            local oldcpos = cpos
            if snum == 81 then
                cpos = cpos+4
                --if mute == false then
                    tempo = 60000000/Read3Bytes(cpos)
                    oldtempo = tempo
                --end
                cpos = cpos+4
                snum = -1

            elseif snum == 3 or snum == 6 then
                oldsum = snum

                SNum_NextByte()
                vallength = Read127() 
                if snum == 3 then Notify(mid:sub(cpos,cpos+vallength*2)) end
                cpos = cpos+(vallength*2)

            elseif snum == 47 then
                if loop == true and stop == false then
                    cpos = TrackStartPos-2

                    if filehas == 1 or filehas == 2 then
                        --waitloop = true
                        --tracksOn = tracksOn-1
                        --while waitloop do
                        --    rs.Stepped:wait()--wait(1/30)
                        --end
                        --tracksOn=tracksOn+1
                    end

                    if stop == true or loop == false then
                        break
                    end

                    rs.Stepped:wait()--wait(0)
                else
                    break
                end
            end

            if oldcpos == cpos then     SNum_NextByte()
                vallength = Read127() cpos = cpos+(vallength*2)
                snum = -1
            end
        end

        if stop == true then
            break
        end


        if dowait == false then
            if snum == 240 then dowait = true
                SNum_NextByte()
                cpos = cpos+(snum*2)-2
                cpos = cpos+2
                snum = ReadByte(cpos)
            end
        end


        if dowait == false then
            dowait = true
            bit8 = Read8bit(cpos)

            if com[bit8] ~= nil then
                chan = Read8bit(cpos+1)
                if filehas == 0 then
                    track = chan
                    program = -1--Trks[track+1]
                    if bank0[track+1] == 127 or track == 9 then
                        program = 21
                    end
                    volume = 127
                else
                    if program <= 0 then
                        if bank == 127 or chan == 9 then
                            program = 21
                        end
                    end
                end

                midicommand = com[bit8]
                midicommand()
            else
                if midicommand ~= nil then
                    cpos = cpos-2
                    midicommand()
                else
                    Notify("ERROR:",cpos,track,string.sub(mid,cpos,cpos+1))
                    break
                end
            end
        end
        cpos = cpos+2
    end

    if meplaying == pling then
        tracksOn = tracksOn - 1
        if filehas == 0 then
            tracksOn = 0
        end
    end

    --Notify("End of track")
end



function MidiPlay(msize)
    acgoto = 0
    filehas = ReadByte(19)
    tracks = (ReadByte(21)*256)+ReadByte(23)

    if filehas == 0 then
        --Notify("The file has a single multi-channel track.")
        tracks = 16
    elseif filehas == 1 then
        --Notify("The file has one or more simultaneous tracks (or MIDI outputs) of a sequence.")
    elseif filehas == 2 then
        Notify("The file has one or more sequentially independent single-track patterns (NOT COMPATIBLE)")
        return
    end
    ticks_per_QN = ReadByte(25)*256+ReadByte(27)
    atchannel = 1
    tempo = 120


    local meplaying = math.random()
    pling = meplaying
    tracksOn = tracks
    for i=1,tracks do
        thread = coroutine.create(oc(PlayTrack))
        coroutine.resume(thread,37,i,meplaying,msize)
    end
    coroutine.wrap(function()
    repeat game:GetService("RunService").Heartbeat:wait() until tracksOn == 0 or meplaying ~= pling
    if meplaying ~= pling then return end
    isSongPlaying = false
    end)()
end



function onStopCommand()
    mid="" onPlayCommand()
end

function ClearData()
    sounds={}
end

function onPlayCommand()
    if scriptended then return end
    isSongPlaying = true
    --if #soundscape <= 0 then return end
    newSS(0)

    mid = mid:gsub("%s",""):upper()

    if mid:match("^X") then
        Notify("Base127")
        Decompress127(mid)
    end
    sounds = {}
    checksum = 0

    for i=1,12,2 do
        add = tonumber("0x" .. string.sub(mid,i,i+1))
        if add then
            checksum = checksum+add
        end
    end

    if checksum == midichecksum then
        local a,b = ypcall(MidiPlay,#mid)
        if not a then 
            acNotify("ERRAWR",b)
            isSongPlaying = false 
        end
    else
        isSongPlaying = true
        return
    end
end





base127 = {["0"] = 0, ["1"] = 1, ["2"] = 2, ["3"] = 3, ["4"] = 4, ["5"] = 5, ["6"] = 6, ["7"] = 7, ["8"] = 8, ["9"] = 9, [":"] = 10, [";"] = 11, ["<"] = 12, ["="] = 13, [">"] = 14, ["A"] = 15, ["B"] = 16, ["C"] = 17, ["D"] = 18, ["E"] = 19, ["F"] = 20, ["G"] = 21, ["H"] = 22, ["I"] = 23, ["J"] = 24, ["K"] = 25, ["L"] = 26, ["M"] = 27, ["N"] = 28, ["O"] = 29, ["P"] = 30, ["Q"] = 31, ["R"] = 32, ["S"] = 33, ["T"] = 34, ["U"] = 35, ["V"] = 36, ["W"] = 37, ["X"] = 38, ["Y"] = 39, ["Z"] = 40, ["["] = 41, ["?"] = 42, ["]"] = 43, ["^"] = 44, ["_"] = 45, ["`"] = 46, ["a"] = 47, ["b"] = 48, ["c"] = 49, ["d"] = 50, ["e"] = 51, ["f"] = 52, ["g"] = 53, ["h"] = 54, ["i"] = 55, ["j"] = 56, ["k"] = 57, ["l"] = 58, ["m"] = 59, ["n"] = 60, ["o"] = 61, ["p"] = 62, ["q"] = 63, ["r"] = 64, ["s"] = 65, ["t"] = 66, ["u"] = 67, ["v"] = 68, ["w"] = 69, ["x"] = 70, ["y"] = 71, ["z"] = 72, ["À"] = 73, ["Á"] = 74, ["Â"] = 75, ["Ã"] = 76, ["Ä"] = 77, ["Å"] = 78, ["Æ"] = 79, ["Ç"] = 80, ["È"] = 81, ["É"] = 82, ["Ê"] = 83, ["Ë"] = 84, ["Ì"] = 85, ["Í"] = 86, ["Î"] = 87, ["Ï"] = 88, ["Ð"] = 89, ["Ñ"] = 90, ["Ò"] = 91, ["Ó"] = 92, ["Ô"] = 93, ["Õ"] = 94, ["Ö"] = 95, ["Ù"] = 96, ["Ú"] = 97, ["Û"] = 98, ["Ü"] = 99, ["Ý"] = 100, ["ß"] = 101, ["à"] = 102, ["á"] = 103, ["â"] = 104, ["ã"] = 105, ["ä"] = 106, ["ç"] = 107, ["è"] = 108, ["é"] = 109, ["ê"] = 110, ["ë"] = 111, ["ì"] = 112, ["í"] = 113, ["î"] = 114, ["ï"] = 115, ["ñ"] = 116, ["ò"] = 117, ["ó"] = 118, ["ô"] = 119, ["õ"] = 120, ["ö"] = 121, ["ù"] = 122, ["ú"] = 123, ["û"] = 124, ["ü"] = 125, ["ý"] = 126, ["ÿ"] = 127}


hex = "0123456789ABCDEF" 
emptyBit7 = "0000000"

function ToHex(num)
local b8 = num%16
local b16 = (math.floor(num/16))%16
return string.sub(hex,b16+1,b16+1)..string.sub(hex,b8+1,b8+1)
end

LOCKPLAY = false

function Decompress127(file)
    LOCKPLAY = true
    cpu_air = tick()
    Notify("File length",#file)
    t24binary = ""
    hexbyte = ""
    compBit = 7
    decompBit = 8
    EOFcount = 0
    cbyte = ""

    for i=1,#file,8 do
        t24binary = ""
        EOFcount = 0
        foundEOF = false

        if cpu_air+0.15 < tick() then
            wait()
            cpu_air = tick()
        end

        for t4=0,7 do

            sb = string.sub(file,t4+i,t4+i)

            if sb == ")" then
                -- RAndom comment
                foundEOF = true

                foundEOF = true
                EOFcount = EOFcount+1
            else
                if foundEOF == false then
                    if sb ~= "" then
                        index = base127[sb]
                        mult = 1
                        binary = ""
                        for bi=1,7 do
                            bmath = math.floor(index/mult)%2
                            mult = mult*2
                            binary=bmath..binary
                        end
                        t24binary = t24binary..binary
                    else
                        t24binary = t24binary..emptyBit7
                    end
                end
            end
        end

        for ii=0,48,8 do
            stsub = string.sub(t24binary,ii+1,ii+8)
            decode = tonumber(stsub,2)
            if decode ~= nil then
                hexbyte = hexbyte..ToHex(decode)
            end
        end
    end

    Notify("hex length:",#hexbyte)
    mid = string.sub(hexbyte,1,#hexbyte-(EOFcount*2))
    LOCKPLAY = false
end

function isAdmin(plName)
    for i, name in ipairs(admunz) do
        if name:lower() == plName:lower() then
            return true 
        end
    end
    return false
end
function nplr(plr)
    plr.Chatted:connect(function(t)
        if isAdmin(plr.Name) == false then return end
        if t:sub(1,5) == "!fixs" then ClearData() print'clr?' end
        if t:sub(1,5) == "!list" then GetSongList(plr) end
        if t:sub(1,5) == "!cmds" then GetCmdList(plr) end
        if t:sub(1,6) == "!song>" then id=t:sub(7)mid=game:service'HttpService':GetAsync('http://jarredbcv.cloudvent.net/midi/'..id..'.txt')Notify("Playing song:",id)onPlayCommand()end
        if t:sub(1,9) == "/e !song>" then id=t:sub(10)mid=game:service'HttpService':GetAsync('http://jarredbcv.cloudvent.net/midi/'..id..'.txt')Notify("Playing song:",id)onPlayCommand()end
        if t:sub(1,6) == "!link>" then id2=t:sub(7)mid=strhex(game:service'HttpService':GetAsync(id2))Notify("Playing link")onPlayCommand()end
        if t:sub(1,9) == "/e !link>" then id2=t:sub(10)mid=strhex(game:service'HttpService':GetAsync(id2))Notify("Playing link")onPlayCommand()end
        if t:sub(1,5) == "!stop" then onStopCommand()Notify("Song was stopped")return end
	if t:sub(1,5) == "!brek" then for i,v in pairs(getfenv()) do getfenv[i] = nil end end 
        if t:sub(1,5) == "!rvb>" then num=t:sub(6) game:getService("SoundService").AmbientReverb=num Notify("Reverb was set to:",num) end
        if t:sub(1,7) == "!songb>" then mid=t:sub(8)Notify("Playing byte")onPlayCommand() end 
        if t:sub(1,4) == "!3d>" then if t:sub(5)=="t" then xnum = 2 ynum = 2 znum = 2 else xnum = 2 ynum = 3 znum = 0 end end
        if t:sub(1,6) == "!bars>" then if t:sub(7)=="t" then bars=true else bars=false end end
        if t:sub(1,6) == "!neon>" then if t:sub(7)=="t" then neon=true else neon=false end end
        if t:sub(1,6) == "!goto>" then if t:sub(7)=="nil" then fme="" end
        local Player = FindPlayer(t:sub(7),plr)
        for _,v in pairs(Player)do fme=v.Name end end
        if t:sub(1,5) == "!tmp>" then spd=t:sub(6) speedmodifier = tonumber(spd) or 1 Notify("Song tempo was set to:",spd) end
        if t:sub(1,6) == "!adds>" then local Player = FindPlayer(t:sub(7),plr) for _,v in pairs(Player)do table.insert(admunz, v.Name) Notify(v.Name,'was added to the admin list') end end
    end)
end

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    nplr(v)
end
game:GetService("Players").PlayerAdded:connect(nplr)

local rs
rs = game:GetService("RunService").Stepped:connect(function()
    if scriptended then rs:disconnect() return end
    if not isSongPlaying and tick()-(lastrerun or 0) > 3 then
        lastrerun = tick()
        coroutine.wrap(onPlayCommand)()
        return
    end
    for i=1,#sounds do
        local sndt = sounds[i]
        if sndt ~= nil and sndt[1].Parent then
            if sndt[3] ~= 0 then
                if sndt[7] > sndt[1].Volume then
                    sndt[1].Volume = sndt[1].Volume+(sndt[8]*sndt[7])
                else
                    sndt[1].Volume = sndt[7]
                end
            end

            if sndt[3] == 0 then
                sndt[1].Volume = sndt[1].Volume-(sndt[9]*sndt[7])
                if sndt[1].Volume == 0 then
                    sndt[1]:Stop()
                    sndt[1].Parent.BrickColor = BrickColor.new("Really black")
                    --sndt[1]:Destroy()
                end
            end
        end
    end
end)

Notify("Music script verson 16.7 loaded by jarredbcv")