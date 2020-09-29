script.Parent = nil
Character = game.Players.localPlayer.Character
Humanoid = Character.Humanoid
if Humanoid:findFirstChild("Animate") then
  Humanoid:findFirstChild("Animate"):Destroy()
end
Meshes = {Blast = "20329976", Crown = "1323306", Ring = "3270017", Claw = "10681506", Crystal = "9756362", Coil = "9753878", Cloud = "1095708"}
clangsounds = {"199149119", "199149109", "199149072", "199149025", "199148971"}
hitsounds = {"199149137", "199149186", "199149221", "199149235", "199149269", "199149297"}
blocksounds = {"199148933", "199148947"}
armorsounds = {"199149321", "199149338", "199149367", "199149409", "199149452"}
woosh = {Heavy1 = "320557353", Heavy2 = "320557382", Heavy3 = "320557453", Heavy4 = "199144226", Heavy5 = "203691447", Heavy6 = "203691467", Heavy7 = "203691492", Light1 = "320557413", Light2 = "320557487", Light3 = "199145095", Light4 = "199145146", Light5 = "199145887", Light6 = "199145913", Light7 = "199145841", Medium1 = "320557518", Medium2 = "320557537", Medium3 = "320557563", Medium4 = "199145204"}
music = {Breaking = "179281636", FinalReckoning = "357375770", NotDeadYet = "346175829", Intense = "151514610", JumpP1 = "160536628", JumpP2 = "60536666", SonsOfWar = "158929777", WrathOfSea = "165520893", ProtectorsOfEarth = "160542922", SkyTitans = "179282324", ArchAngel = "144043274", Anticipation = "168614529", TheMartyred = "186849544", AwakeP1 = "335631255", AwakeP2 = "335631297", ReadyAimFireP1 = "342455387", ReadyAimFireP2 = "342455399", DarkLordP1 = "209567483", DarkLordP2 = "209567529", BloodDrainP1 = "162914123", BloodDrainP2 = "162914203", DanceOfSwords = "320473062", Opal = "286415112", Calamity = "190454307", Hypnotica = "155968128", Nemisis = "160453802", Breathe = "276963903", GateToTheRift = "270655227", InfernalBeserking = "244143404", Trust = "246184492", AwakeningTheProject = "245121821", BloodPain = "242545577", Chaos = "247241693", NightmareFictionHighStake = "248062278", TheWhiteWeapon = "247236446", Gale = "256851659", ImperialCode = "256848383", Blitzkrieg = "306431437", RhapsodyRage = "348690251", TheGodFist = "348541501", BattleForSoul = "321185592", TheDarkColossus = "305976780", EmpireOfAngels = "302580452", Kronos = "302205297", Exorcist = "299796054", CrimsonFlames = "297799220", UltimatePower = "295753229", DrivingInTheDark = "295753229", AscendToPower = "293860654", GodOfTheSun = "293612495", DarkRider = "293861765", Vengeance = "293375555", SoundOfWar = "293376196", HellsCrusaders = "293012202", Legend = "293011823", RisingSouls = "290524959"}
misc = {GroundSlam = "199145477", LaserSlash = "199145497", RailGunFire = "199145534", Charge1 = "199145659", Charge2 = "169380469", Charge3 = "169380479", EmptyGun = "203691822", GunShoot = "203691837", Stomp1 = "200632875", Stomp2 = "200632561", TelsaCannonCharge = "169445572", TelsaCannonShoot = "169445602", AncientHymm = "245313442"}
images = {}
wait(0.016666666666667)
equipc0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
unequipc0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local player = game.Players.localPlayer
local char = player.Character
local mouse = player:GetMouse()
local weldBetween = function(a, b)
  local weldd = Instance.new("ManualWeld")
  weldd.Part0 = a
  weldd.Part1 = b
  weldd.C0 = CFrame.new()
  weldd.C1 = b.CFrame:inverse() * a.CFrame
  weldd.Parent = a
  return weldd
end
local m = Instance.new("Model", char)
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = char.HumanoidRootPart
local equipped = false
local attack = false
local Anim = "Idle"
local idle = 0
local sprint = false
local battlestance = false
local attacktype = 1
local state = "none"
local torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local on = false
local grabbed = false
local skill1 = false
local skill2 = false
local skill3 = false
local skill4 = false
local cooldown1 = 0
local cooldown2 = 0
local cooldown3 = 0
local cooldown4 = 0
local co1 = 10
local co2 = 15
local co3 = 20
local co4 = 35
local inputserv = game:GetService("UserInputService")
local typing = false
local crit = false
local critchance = 2
local critdamageaddmin = 3
local critdamageaddmax = 7
local maxstamina = 100
local stamina = 0
local skill1stam = 10
local skill2stam = 20
local skill3stam = 35
local skill4stam = 50
local recovermana = 5
local defensevalue = 1
local speedvalue = 1
local mindamage = 5
local maxdamage = 7
local damagevalue = 1
local maramistcutterchance = 25
local cn = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local skillcolorscheme = c3(1, 0.23921568627451, 0.96470588235294)
local sounds = {152828706, 263970261, 345340161, 194434237, 238551071}
local select = 3
local ContentProvider = game:GetService("ContentProvider")
local LoadAssets = function(AssetList)
  for _,AssetId in pairs(AssetList) do
    ContentProvider:Preload("http://www.roblox.com/asset/?id=" .. AssetId)
  end
end
LoadAssets(sounds)
weld = function(part0, part1, c0)
  local wld = Instance.new("Weld", part1)
  wld.Part0 = part0
  wld.Part1 = part1
  wld.C0 = c0
  return wld
end
weld(torso, larm, cn(-1.5, 0.5, 0))
larm.Weld.C1 = cn(0, 0.65, 0)
weld(torso, rarm, cn(1.5, 0.5, 0))
rarm.Weld.C1 = cn(0, 0.65, 0)
weld(torso, hed, cn(0, 1.5, 0))
weld(torso, lleg, cn(-0.5, -1, 0))
lleg.Weld.C1 = cn(0, 1, 0)
weld(torso, rleg, cn(0.5, -1, 0))
rleg.Weld.C1 = cn(0, 1, 0)
weld(RootPart, torso, cn(0, -1, 0))
torso.Weld.C1 = cn(0, -1, 0)
local scrn = Instance.new("ScreenGui", player.PlayerGui)
makeframe = function(par, trans, pos, size, color)
  local frame = Instance.new("Frame", par)
  frame.BackgroundTransparency = trans
  frame.BorderSizePixel = 0
  frame.Position = pos
  frame.Size = size
  frame.BackgroundColor3 = color
  return frame
end
makelabel = function(par, text)
  local label = Instance.new("TextLabel", par)
  label.BackgroundTransparency = 1
  label.Size = ud(1, 0, 1, 0)
  label.Position = ud(0, 0, 0, 0)
  label.TextColor3 = c3(255, 255, 255)
  label.TextStrokeTransparency = 0
  label.FontSize = Enum.FontSize.Size32
  label.Font = Enum.Font.SourceSansBold
  label.BorderSizePixel = 0
  label.TextScaled = true
  label.Text = text
end
framesk1 = makeframe(scrn, 0.5, ud(0.23, 0, 0.93, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
framesk2 = makeframe(scrn, 0.5, ud(0.5, 0, 0.93, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
framesk3 = makeframe(scrn, 0.5, ud(0.5, 0, 0.86, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
framesk4 = makeframe(scrn, 0.5, ud(0.23, 0, 0.86, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
bar1 = makeframe(framesk1, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar2 = makeframe(framesk2, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar3 = makeframe(framesk3, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar4 = makeframe(framesk4, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
text1 = makelabel(framesk1, "[3] Meme Aura")
text2 = makelabel(framesk2, "[4] Absorb the Memes")
text3 = makelabel(framesk3, "[2] The Based God")
text4 = makelabel(framesk4, "[1] Reality Check")
staminabar = makeframe(scrn, 0.5, ud(0.23, 0, 0.82, 0), ud(0.26, 0, 0.03, 0), c3(1, 0.23921568627451, 0.96470588235294))
staminacover = makeframe(staminabar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(1, 0.23921568627451, 0.96470588235294))
staminatext = makelabel(staminabar, "Memes")
healthbar = makeframe(scrn, 0.5, ud(0.5, 0, 0.82, 0), ud(0.26, 0, 0.03, 0), c3(1, 1, 0))
healthcover = makeframe(healthbar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(1, 0.18039215686275, 0.1921568627451))
healthtext = makelabel(healthbar, "Health")
local stats = Instance.new("Folder", char)
stats.Name = "Stats"
local block = Instance.new("BoolValue", stats)
block.Name = "Block"
block.Value = false
local stun = Instance.new("BoolValue", stats)
stun.Name = "Stun"
stun.Value = false
local defense = Instance.new("NumberValue", stats)
defense.Name = "Defence"
defense.Value = defensevalue
local speed = Instance.new("NumberValue", stats)
speed.Name = "Speed"
speed.Value = speedvalue
local damagea = Instance.new("NumberValue", stats)
damagea.Name = "Damage"
damagea.Value = damagevalue
atktype = function(s, e)
  coroutine.resume(coroutine.create(function()
    attacktype = e
    wait(1.5)
    attacktype = s
  end))
end
turncrit = function()
  coroutine.resume(coroutine.create(function()
    print("CRITICAL!")
    crit = true
    wait(1)
    crit = false
  end))
end
subtractstamina = function(k)
  if k <= stamina then
    stamina = stamina - k
  end
end

local weldBetween = function(a, b)
  local weldd = Instance.new("ManualWeld")
  weldd.Part0 = a
  weldd.Part1 = b
  weldd.C0 = CFrame.new()
  weldd.C1 = b.CFrame:inverse() * a.CFrame
  weldd.Parent = a
  return weldd
end


swait = function(num)
  if num == 0 or num == nil then
    game:service("RunService").Heartbeat:wait(0)
  else
    for i = 0, num do
      game:service("RunService").Heartbeat:wait(0)
    end
  end
end
Lerp = function(a, b, i)
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
local Lerp = CFrame.new().lerp
randomizer = function(percent)
  local randomized = math.random(0, 100)
  if randomized <= percent then
    return true
  else
    if percent <= randomized then
      return false
    end
  end
end
begoneoutlines = function(part)
  part.BottomSurface = 10
end
rayCast = function(pos, dir, maxl, ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(pos, dir.unit * (maxl or 999.999)), ignore)
end
makeeffect = function(par, size, pos1, trans, trans1, howmuch, delay1, id, type)
  local p = Instance.new("Part", par or workspace)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = trans
  p.FormFactor = "Custom"
  begoneoutlines(p)
  local mesh = Instance.new("SpecialMesh", p)
  mesh.Scale = size
  if id ~= nil and type == nil then
    mesh.MeshId = "rbxassetid://" .. id
  else
    if id == nil and type ~= nil then
      mesh.MeshType = type
    else
      if id == nil and type == nil then
        mesh.MeshType = "Brick"
      end
    end
  end
  coroutine.wrap(function()
    for i = 0, delay1, 0.1 do
      wait(0.016666666666667)
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + howmuch
      p.Transparency = p.Transparency + trans1
    end
    p:Destroy()
  end)()
  return p
end
clangy = function(cframe)
  wait(0.016666666666667)
  local clang = {}
  local dis = 0
  local part = Instance.new("Part", nil)
  part.CFrame = cframe
  part.Anchored = true
  part.CanCollide = false
  part.BrickColor = BrickColor.new("New Yeller")
  part.FormFactor = "Custom"
  part.Name = "clanger"
  part.Size = Vector3.new(0.2, 0.2, 0.2)
  part.TopSurface = 10
  part.BottomSurface = 10
  part.RightSurface = 10
  part.LeftSurface = 10
  part.BackSurface = 10
  part.FrontSurface = 10
  part:BreakJoints()
  local mesh = Instance.new("BlockMesh", part)
  coroutine.wrap(function()
    for i = 1, 7 do
      do
        wait(0.016666666666667)
        dis = dis + 0.2
        local partc = part:clone()
        partc.Parent = workspace
        partc.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(dis, 0, 0)
        partc.CFrame = partc.CFrame * CFrame.new(0, dis, 0)
        table.insert(clang, partc)
      end
    end
    for i,v in pairs(clang) do
      coroutine.wrap(function()
      for i = 1, 10 do
        wait(0.01)
        v.Transparency = v.Transparency + 0.1
      end
      v:destroy()
    end)()
    end
  end)()
end
circle = function(color, pos1)
  local p = Instance.new("Part", m)
  p.BrickColor = BrickColor.new(color)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = 0.35
  p.FormFactor = "Custom"
  local mesh = Instance.new("CylinderMesh", p)
  mesh.Scale = Vector3.new(0, 0, 0)
  coroutine.wrap(function()
    for i = 0, 5, 0.1 do
      wait(0.016666666666667)
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + Vector3.new(0.5, 0, 0.5)
      p.Transparency = p.Transparency + 0.025
    end
    p:Destroy()
  end)()
end
firespaz1 = function(color, pos1)
  local p = Instance.new("Part", m)
  p.BrickColor = BrickColor.new(color)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = 0.5
  p.FormFactor = "Custom"
  local mesh = Instance.new("BlockMesh", p)
  mesh.Scale = Vector3.new(1, 1, 1)
  coroutine.wrap(function()
    for i = 0, 15, 0.1 do
      wait(0.033333333333333)
      p.CFrame = p.CFrame * CFrame.new(0, 0.1, 0)
      mesh.Scale = mesh.Scale - Vector3.new(0.1, 0.1, 0.1)
      p.Transparency = p.Transparency + 0.025
    end
    p:Destroy()
  end)()
end
pickrandom = function(tablesa)
  local randomized = tablesa[math.random(1, #tablesa)]
  return randomized
end
sound = function(id, pitch, volume, par, last)
  local s = Instance.new("Sound", par or torso)
  s.SoundId = "rbxassetid://" .. id
  s.Pitch = pitch or 1
  s.Volume = volume or 1
  s.PlayOnRemove = false
  s.Looped = true
  wait()
  s:Play()
  s.Pitch = 0
  if last then
    game.Debris:AddItem(s, last)
  end
  return s
end
local lol = sound("263970261", 1, 1, torso)
clangy = function(cframe)
  wait(0.016666666666667)
  local clang = {}
  local dis = 0
  local part = Instance.new("Part", nil)
  part.CFrame = cframe
  part.Anchored = true
  part.CanCollide = false
  part.BrickColor = BrickColor.new("New Yeller")
  part.FormFactor = "Custom"
  part.Name = "clanger"
  part.Size = Vector3.new(0.2, 0.2, 0.2)
  part.TopSurface = 10
  part.BottomSurface = 10
  part.RightSurface = 10
  part.LeftSurface = 10
  part.BackSurface = 10
  part.FrontSurface = 10
  part:BreakJoints()
  local mesh = Instance.new("BlockMesh", part)
  coroutine.wrap(function()
    for i = 1, 7 do
      do
        wait(0.016666666666667)
        dis = dis + 0.2
        local partc = part:clone()
        partc.Parent = workspace
        partc.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(dis, 0, 0)
        partc.CFrame = partc.CFrame * CFrame.new(0, dis, 0)
        table.insert(clang, partc)
      end
    end
    for i,v in pairs(clang) do
      coroutine.wrap(function()
      for i = 1, 10 do
        wait(0.01)
        v.Transparency = v.Transparency + 0.1
      end
      v:destroy()
    end)()
    end
  end)()
end
so = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    wait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end))
end
getclosest = function(obj, dis, player)
  if player.Torso.CFrame.p - obj.magnitude >= dis then
    do return not player end
    do
      local list = {}
      for i,v in pairs(workspace:GetChildren()) do
        if v:IsA("Model") and v:findFirstChild("Torso") and v ~= char and v.Torso.Position - obj.magnitude <= dis then
          table.insert(list, v)
        end
      end
      do return list end
      -- DECOMPILER ERROR: 3 unprocessed JMP targets
    end
  end
end
makegui = function(cframe, text)
  local a = math.random(-10, 10) / 100
  local c = Instance.new("Part")
  c.Transparency = 1
  Instance.new("BodyGyro").Parent = c
  c.Parent = m
  c.CFrame = CFrame.new(cframe.p + Vector3.new(0, 1.5, 0))
  local f = Instance.new("BodyPosition")
  f.P = 2000
  f.D = 100
  f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
  f.position = c.Position + Vector3.new(0, 3, 0)
  f.Parent = c
  game:GetService("Debris"):AddItem(c, 6.5)
  c.CanCollide = false
  m.Parent = workspace
  c.CanCollide = false
  local bg = Instance.new("BillboardGui", m)
  bg.Adornee = c
  bg.Size = UDim2.new(1, 0, 1, 0)
  bg.StudsOffset = Vector3.new(0, 0, 0)
  bg.AlwaysOnTop = false
  local tl = Instance.new("TextLabel", bg)
  tl.BackgroundTransparency = 1
  tl.Size = UDim2.new(1, 0, 1, 0)
  tl.Text = text
  tl.Font = "SourceSansBold"
  tl.FontSize = "Size42"
  if crit == true then
    tl.TextColor3 = Color3.new(0.70588235294118, 0, 0)
  else
    tl.TextColor3 = Color3.new(255, 0.70588235294118, 0.2)
  end
  tl.TextStrokeTransparency = 0
  tl.TextScaled = true
  tl.TextWrapped = true
  coroutine.wrap(function()
    wait(2)
    for i = 1, 10 do
      swait()
      tl.TextTransparency = tl.TextTransparency + 0.1
    end
  end)()
end
tag = function(hum, player)
  local creator = Instance.new("ObjectValue", hum)
  creator.Value = player
  creator.Name = "creator"
end
untag = function(hum)
  if hum ~= nil then
    local tag = hum:findFirstChild("creator")
    if tag ~= nil then
      tag.Parent = nil
    end
  end
end
tagplayer = function(h)
  coroutine.wrap(function()
    tag(h, player)
    wait(1)
    untag(h)
  end)()
end
damage = function(hit, mind, maxd, knock, type, prop)
  do
    if hit.Name:lower() == "hitbox" then
      local pos = CFrame.new(0, 0, -1)
      do
        sound(pickrandom(clangsounds), math.random(100, 150) / 100, 0.25, torso, 6)
        coroutine.wrap(function()
    for i = 1, 4 do
      clangy(torso.CFrame * pos * CFrame.Angles(0, math.rad(math.random(0, 360)), 0))
    end
  end)()
      end
    end
    if hit.Parent == nil then
      return 
    end
    local h = hit.Parent:FindFirstChild("Humanoid")
    for i,v in pairs(hit.Parent:children()) do
      if v:IsA("Humanoid") then
        h = v
      end
    end
    if hit.Parent.Parent:FindFirstChild("Torso") ~= nil then
      h = hit.Parent.Parent:FindFirstChild("Humanoid")
    end
    if hit.Parent:IsA("Hat") then
      hit = hit.Parent.Parent:findFirstChild("Head")
    end
    local D = math.random(mind, maxd) * damagea.Value
    if h then
      if h.Parent:FindFirstChild("Stats") then
        D = D / h.Parent:FindFirstChild("Stats").Defence.Value
      else
      end
    end
    if h.Parent:FindFirstChild("Stats") or h then
      makegui(h.Parent.Head.CFrame, tostring(math.floor(D + 0.5)))
    end
    if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
      if type == 1 then
        tagplayer(h)
        local asd = randomizer(critchance)
        if asd == true then
          turncrit()
        end
        if crit == false then
          h.Health = h.Health - D
        else
          h.Health = h.Health - (D + math.random(critdamageaddmin, critdamageaddmax))
        end
        so("http://www.roblox.com/asset/?id=169462037", hit, 1, math.random(150, 200) / 100)
        local vp = Instance.new("BodyVelocity")
        vp.P = 500
        vp.maxForce = Vector3.new(math.huge, 0, math.huge)
        vp.velocity = prop.CFrame.lookVector * knock + prop.Velocity / 1.05
        if knock > 0 then
          vp.Parent = hit.Parent.Torso
        end
        game:GetService("Debris"):AddItem(vp, 0.5)
      else
        do
          if type == 2 then
            so("http://www.roblox.com/asset/?id=169462037", hit, 1, math.random(150, 200) / 100)
            local asd = randomizer(critchance)
            if asd == true then
              turncrit()
            end
            if crit == false then
              h.Health = h.Health - D
            else
              h.Health = h.Health - (D + math.random(critdamageaddmin, critdamageaddmax))
            end
            tagplayer(h)
          else
            do
              if type == 3 then
                tagplayer(h)
                local asd = randomizer(critchance)
                if asd == true then
                  turncrit()
                end
                if crit == false then
                  h.Health = h.Health - D
                else
                  h.Health = h.Health - (D + math.random(critdamageaddmin, critdamageaddmax))
                end
                char.Humanoid.Health = char.Humanoid.Health + D / 2
                so("http://www.roblox.com/asset/?id=206083232", hit, 1, 1.5)
                for i = 1, 10 do
                  firespaz1("Bright red", hit.CFrame * CFrame.Angles(math.random(0, 3), math.random(0, 3), math.random(0, 3)))
                end
              else
                do
                  if type == 4 then
                    h.Health = h.Health + D
                    so("http://www.roblox.com/asset/?id=186883084", hit, 1, 1)
                    circle("Dark green", h.Parent.Torso.CFrame * CFrame.new(0, -2.5, 0))
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
subtrackstamina = function(k)
  if k <= stamina then
    stamina = stamina - k
  end
end
mouse.Button1Down:connect(function()
  if attack ~= false or equipped == true then
  end
end)
mouse.KeyDown:connect(function(k)
  k = k:lower()
  if k == "f" then
    if equipped == false then
      equipped = true
      lol.Pitch = 1
    else
      if equipped then
        equipped = false
        lol.Pitch = 0
      end
    end
  end
  if k == "e" then
    if equipped == false then
      lol:Stop()
      lol = sound(sounds[select], 1, 1, torso)
      if select == #sounds then
        select = 1
      else
        select = select + 1
      end
    else
      if equipped then
        lol:Stop()
        lol = sound(sounds[select], 1, 1, torso)
        if select == #sounds then
          select = 1
        else
          select = select + 1
        end
        lol.Pitch = 1
      end
    end
  end
end)
inputserv.InputBegan:connect(function(k)
  if k.KeyCode == Enum.KeyCode.One and equipped == true and attack == false and typing == false and co1 <= cooldown1 and skill1stam <= stamina then
    subtractstamina(skill1stam)
    cooldown1 = 0
  else
    if k.KeyCode == Enum.KeyCode.Two and equipped == true and attack == false and typing == false and co2 <= cooldown2 and skill2stam <= stamina then
      subtractstamina(skill2stam)
      cooldown2 = 0
    else
      if k.KeyCode == Enum.KeyCode.Three and equipped == true and attack == false and typing == false and co3 <= cooldown3 and skill3stam <= stamina then
        subtractstamina(skill3stam)
        cooldown3 = 0
      else
        if k.KeyCode == Enum.KeyCode.Four and equipped == true and attack == false and typing == false and co4 <= cooldown4 and skill4stam <= stamina then
          subtractstamina(skill4stam)
          cooldown4 = 0
        end
      end
    end
  end
end)
inputserv.InputBegan:connect(function(k)
  if k.KeyCode == Enum.KeyCode.Slash then
    local fin = nil
    do
      typing = true
      fin = inputserv.InputBegan:connect(function(k)
    if k.KeyCode == Enum.KeyCode.Return or k.UserInputType == Enum.UserInputType.MouseButton1 then
      typing = false
      fin:disconnect()
    end
  end)
    end
  end
end)
updateskills = function()
  if cooldown1 <= co1 then
    cooldown1 = cooldown1 + 0.033333333333333
  end
  if cooldown2 <= co2 then
    cooldown2 = cooldown2 + 0.033333333333333
  end
  if cooldown3 <= co3 then
    cooldown3 = cooldown3 + 0.033333333333333
  end
  if cooldown4 <= co4 then
    cooldown4 = cooldown4 + 0.033333333333333
  end
  if stamina <= maxstamina then
    stamina = stamina + recovermana / 30
  end
end
game:GetService("RunService").Heartbeat:connect(function()
  updateskills()
  healthcover:TweenSize(ud(1 * (Character.Humanoid.Health / Character.Humanoid.MaxHealth), 0, 1, 0), "Out", "Quad", 0.5)
  staminacover:TweenSize(ud(1 * (stamina / maxstamina), 0, 1, 0), "Out", "Quad", 0.5)
  bar4:TweenSize(ud(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
  bar3:TweenSize(ud(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
  bar1:TweenSize(ud(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
  bar2:TweenSize(ud(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
  torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
  velocity = RootPart.Velocity.y
  sine = sine + change
  hit = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, char)
  char.Humanoid.WalkSpeed = 16 * speed.Value
  if equipped == true or equipped == false then
    if RootPart.Velocity.y > 1 and hit == nil and stun.Value ~= true then
      Anim = "Jump"
      if attack == false then
        torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1, 0) * angles(0.3, 0, 0), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(0.3, 0, 0), 0.2)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.65, 0) * angles(-0.4, 0, 0.3), 0.2)
        larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1.5, 0.65, 0) * angles(-0.4, 0, -0.3), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, cn(-0.5, -1, 0) * angles(-0.4, 0, -0.3), 0.2)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, cn(0.5, -1, 0) * angles(-0.4, 0, 0.3), 0.2)
      end
    else
      if RootPart.Velocity.y < -1 and hit == nil and stun.Value ~= true then
        Anim = "Fall"
        if attack == false then
          torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1, 0) * angles(-0.1, 0, 0), 0.2)
          hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(-0.1, 0, 0), 0.2)
          rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.65, 0) * angles(0, 0, 0.7), 0.2)
          larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1.5, 0.65, 0) * angles(0, 0, -0.7), 0.2)
          lleg.Weld.C0 = Lerp(lleg.Weld.C0, cn(-0.5, -1, 0) * angles(0, 0, -0.1), 0.2)
          rleg.Weld.C0 = Lerp(rleg.Weld.C0, cn(0.5, -1, 0) * angles(0, 0, 0.1), 0.2)
        end
      else
        if torsovelocity < 1 and hit ~= nil then
          Anim = "Idle"
          if attack == false then
            if equipped == true then
              change = 1
              torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1.5, 0) * angles(-0.25 + 0.1 * math.cos(sine / 22), 0, 0), 0.2)
              hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(0.25 - 0.1 * math.cos(sine / 22), 0, 0), 0.2)
              rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.5, 0) * angles(1.55 - 0.1 * math.cos(sine / 22), 0, 0.8 + 0.1 * math.cos(sine / 22)), 0.2)
              larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1.5, 0.5, 0) * angles(1.55 - 0.1 * math.cos(sine / 22), 0, -0.8 - 0.1 * math.cos(sine / 22)), 0.2)
              lleg.Weld.C0 = Lerp(lleg.Weld.C0, cn(-0.55, -0.5, -0.25) * angles(0.25 - 0.1 * math.cos(sine / 22), 0.25, -0.1), 0.2)
              rleg.Weld.C0 = Lerp(rleg.Weld.C0, cn(0.55, -0.5, -0.25) * angles(0.25 - 0.1 * math.cos(sine / 22), -0.25, 0.1), 0.2)
            else
              if equipped == false then
                change = 1
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(5 * math.cos(sine / 25)), math.rad(0), 0), 0.2)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.65, 0) * CFrame.Angles(math.rad(10) + math.sin(sine / 22) / 5, 0, 0), 0.2)
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.65, 0) * CFrame.Angles(math.rad(10) + math.sin(sine / 22) / 5, 0, 0), 0.2)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.2)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.2)
              end
            end
          end
        else
          if torsovelocity > 2 and torsovelocity < 22 and hit ~= nil then
            Anim = "Walk"
            if attack == false then
              if equipped == true then
                change = 1
                torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1.5, 0) * angles(-0.25, 0.25 * math.cos(sine / 3), 0), 0.2)
                hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(0.25 - 0.1 * math.cos(sine / 22), 0, 0), 0.2)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.25, 0.5, 0) * angles(1.55, 0, 0.9 - 1.4 * math.cos(sine / 3)), 0.2)
                larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1.25, 0.5, 0) * angles(1.55, 0, -0.9 - 1.4 * math.cos(sine / 3)), 0.2)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, cn(-0.55, -0.5, -0.25) * angles(1 * math.cos(sine / 3), -0.25 * math.cos(sine / 3), 0), 0.2)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, cn(0.55, -0.5, -0.25) * angles(-1 * math.cos(sine / 3), -0.25 * math.cos(sine / 3), 0), 0.2)
              else
                if equipped == false then
                  change = 2
                  torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.2)
                  hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.2)
                  rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.65, 0) * CFrame.Angles(math.rad(85 * math.cos(sine / 5)), math.rad(0), 0), 0.2)
                  larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.65, 0) * CFrame.Angles(math.rad(-85 * math.cos(sine / 5)), math.rad(0), 0), 0.2)
                  lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(85 * math.cos(sine / 5)), 0, 0), 0.2)
                  rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-85 * math.cos(sine / 5)), 0, 0), 0.2)
                end
              end
            end
          else
            if torsovelocity > 2 and torsovelocity < 18 and hit ~= nil then
              Anim = "Run"
              if attack == false then
                torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1, 0) * angles(0, 0, 0), 0.2)
                hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(0, 0, 0), 0.2)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.65, 0) * angles(0, 0, 0), 0.2)
                larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1.5, 0.65, 0) * angles(0, 0, 0), 0.2)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, cn(-0.5, -1, 0) * angles(0, 0, 0), 0.2)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, cn(0.5, -1, 0) * angles(0, 0, 0), 0.2)
              end
            else
              if stun.Value == true and attack == false then
                char.Humanoid.WalkSpeed = 0
                torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -3, 0) * angles(mr(40), 0, 0), 0.2)
                hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(mr(-20), 0, 0), 0.2)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.5, 0) * angles(mr(-50), 0, 0), 0.2)
                larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1.5, 0.5, 0) * angles(mr(-50), 0, 0), 0.2)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, cn(-0.5, -0.3, -0.7) * angles(mr(-10), 0, 0), 0.2)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, cn(0.5, -1, 0) * angles(mr(50), 0, 0), 0.2)
              end
            end
          end
        end
      end
    end
  end
  if sprint == true and stun.Value ~= true and equipped == false and on == false then
    char.Humanoid.WalkSpeed = 20
  else
    if sprint == false and stun.Value ~= true and attack ~= true then
      char.Humanoid.WalkSpeed = 16 * speed.Value
    end
  end
end)