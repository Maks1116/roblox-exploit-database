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
necko = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
necko2 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
LHC0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
attack = false
attackdebounce = false
MMouse = Player:GetMouse()
combo = 0
local hitfloor, posfloor = nil, nil
local idle = 0
local Anim = "Idle"
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
local cooldowns = {}
local cooldown1 = 100
table.insert(cooldowns, cooldown1)
local cooldown2 = 100
table.insert(cooldowns, cooldown2)
local cooldown3 = 100
table.insert(cooldowns, cooldown3)
local cooldown4 = 100
table.insert(cooldowns, cooldown4)
local cooldownsadd = {}
local cooldownadd1 = 0.16
table.insert(cooldownsadd, cooldownadd1)
local cooldownadd2 = 0.14
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 0.12
table.insert(cooldownsadd, cooldownadd3)
local cooldownadd4 = 0.1
table.insert(cooldownsadd, cooldownadd4)
local cooldownmax = 100
player = nil
RSH = nil
LSH = nil
RW = Instance.new("Motor")
LW = Instance.new("Motor")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
NewCol = BrickColor.new("Ghost grey").Color
NewCol2 = BrickColor.new("Smoky grey").Color
NewCol3 = BrickColor.new("Pearl").Color

  local mdec = Instance.new("NumberValue", Decrease)
  mdec.Name = "DecreaseDef"
  mdec.Value = 0.4
  local mdec2 = Instance.new("NumberValue", Decrease)
  mdec2.Name = "DecreaseMvmt"
  mdec2.Value = 0.1
  local Neons = {BrickColor.new("Bright red"), BrickColor.new("Bright orange"), BrickColor.new("Bright yellow"), BrickColor.new("Bright green"), BrickColor.new("Bright blue"), BrickColor.new("Royal purple"), BrickColor.new("Bright violet")}
  local Animate = Humanoid.Animator
  local canjump = true

  removeControl = function()
  canjump = false
end

  resumeControl = function()
  canjump = true
end

  Player.Character.Humanoid.Changed:connect(function()
  if canjump == false then
    Player.Character.Humanoid.Jump = false
  end
end
)

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

  createpassgui = function(parent)
  print("makegui111")
  local g = Instance.new("ScreenGui", parent)
  local f = Instance.new("Frame", g)
  f.Position = UDim2.new(0.3, 0, 0.25, 0)
  f.Size = UDim2.new(0.4, 0, 0.4, 0)
  f.Style = "DropShadow"
  local t = Instance.new("TextBox", f)
  t.BackgroundColor3 = Color3.new(0, 0, 0)
  t.BackgroundTransparency = 0.5
  t.BorderSizePixel = 0
  t.Position = UDim2.new(0.15, 0, 0.2, 0)
  t.Size = UDim2.new(0.7, 0, 0.2, 0)
  t.Font = "SourceSansLight"
  t.Text = "Enter Access Code."
  t.TextScaled = true
  t.TextColor3 = Color3.new(1, 1, 1)
  t.TextStrokeTransparency = 0
  local t2 = Instance.new("TextButton", f)
  t2.BackgroundColor3 = Color3.new(0, 0, 0)
  t2.BackgroundTransparency = 0.5
  t2.BorderSizePixel = 0
  t2.Position = UDim2.new(0.3, 0, 0.5, 0)
  t2.Size = UDim2.new(0.4, 0, 0.15, 0)
  t2.TextScaled = true
  t2.Font = "SourceSansLight"
  t2.Text = "Submit"
  t2.TextColor3 = Color3.new(1, 1, 1)
  t2.TextStrokeTransparency = 0
  print("done1")
  return t2
end

  if Character:findFirstChild("Handles", true) ~= nil then
    Character:findFirstChild("Handles", true).Parent = nil
  end
  if Character:findFirstChild("Chaos Saber", true) ~= nil then
    Character:findFirstChild("Chaos Saber", true).Parent = nil
  end
  if Character:findFirstChild("Chaos Buster", true) ~= nil then
    Character:findFirstChild("Chaos Buster", true).Parent = nil
  end
  if Character:findFirstChild("Chaos Buster Rainbow", true) ~= nil then
    Character:findFirstChild("Chaos Buster Rainbow", true).Parent = nil
  end
  if Character:findFirstChild("Effects", true) ~= nil then
    Character:findFirstChild("Effects", true).Parent = nil
  end
  if Player.PlayerGui:findFirstChild("WeaponGUI", true) ~= nil then
    Player.PlayerGui:findFirstChild("WeaponGUI", true).Parent = nil
  end
  if Character:findFirstChild("Stats", true) ~= nil then
    Character:findFirstChild("Stats", true).Parent = nil
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
  fp.Material = "SmoothPlastic"
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

  gui = function(GuiType, parent, text, backtrans, backcol, pos, size)
  local gui = it(GuiType)
  gui.Parent = parent
  gui.Text = text
  gui.BackgroundTransparency = backtrans
  gui.BackgroundColor3 = backcol
  gui.SizeConstraint = "RelativeXY"
  gui.TextXAlignment = "Center"
  gui.TextYAlignment = "Center"
  gui.Position = pos
  gui.Size = size
  gui.Font = "SourceSans"
  gui.FontSize = "Size14"
  gui.TextWrapped = false
  gui.TextStrokeTransparency = 0
  gui.TextColor = BrickColor.new("White")
  return gui
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

  local Color1 = Torso.BrickColor
  local fengui = it("GuiMain")
  fengui.Parent = Player.PlayerGui
  fengui.Name = "WeaponGUI"
  local fenframe = it("Frame")
  fenframe.Parent = fengui
  fenframe.BackgroundColor3 = Color3.new(255, 255, 255)
  fenframe.BackgroundTransparency = 1
  fenframe.BorderColor3 = Color3.new(17, 17, 17)
  fenframe.Size = UDim2.new(0.1, 0, 0.1, 0)
  fenframe.Position = UDim2.new(0.95, 0, 0.7, 0)
  local fenframe2 = it("Frame")
  fenframe2.Parent = fengui
  fenframe2.BackgroundColor3 = Color3.new(255, 255, 255)
  fenframe2.BackgroundTransparency = 1
  fenframe2.BorderColor3 = Color3.new(17, 17, 17)
  fenframe2.Size = UDim2.new(0.2, 0, 0.1, 0)
  fenframe2.Position = UDim2.new(0.4, 0, 0.85, 0)
  local fenframe3 = it("Frame")
  fenframe3.Parent = fengui
  fenframe3.BackgroundColor3 = Color3.new(255, 255, 255)
  fenframe3.BackgroundTransparency = 1
  fenframe3.BorderColor3 = Color3.new(17, 17, 17)
  fenframe3.Size = UDim2.new(0.2, 0, 0.2, 0)
  fenframe3.Position = UDim2.new(0.8, 0, 0.8, 0)
  local fenframe4 = it("Frame")
  fenframe4.Parent = fengui
  fenframe4.BackgroundColor3 = Color3.new(255, 255, 255)
  fenframe4.BackgroundTransparency = 1
  fenframe4.BorderColor3 = Color3.new(17, 17, 17)
  fenframe4.Size = UDim2.new(0.1, 0, 0.1, 0)
  fenframe4.Position = UDim2.new(0, 0, 0.7, 0)
  local pressedf = false
  local fenframe5 = it("Frame")
  fenframe5.Parent = fengui
  fenframe5.Parent = nil
  fenframe5.BackgroundColor3 = Color3.new(0, 0, 0)
  fenframe5.BackgroundTransparency = 1
  fenframe5.BorderColor3 = Color3.new(0, 0, 0)
  fenframe5.Size = UDim2.new(1, 0, 1, 0)
  fenframe5.Position = UDim2.new(0, 0, 0, 0)
  fenframe5.ZIndex = 2
  local tellbar = gui("TextLabel", fenframe5, "Press \'F\' to equip your weapon.", 1, Color3.new(0, 0, 0), UDim2.new(0.25, 0, 0.25, 0), UDim2.new(0.5, 0, 0.5, 0))
  tellbar.Font = "Arial"
  tellbar.TextScaled = true
  tellbar.TextTransparency = 1
  tellbar.TextStrokeTransparency = 1
  tellbar.ZIndex = 2
  local fnumb = 0
  local fenbarmana1 = gui("TextLabel", fenframe, "", 0, Color3.new(0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, -4, 0))
  local fenbarmana2 = gui("TextLabel", fenframe, "", 0, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
  local fenbarmana4 = gui("TextLabel", fenframe, "Mana(" .. mana.Value .. ")", 1, Color3.new(0, 0, 0), UDim2.new(0, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
  local fenbardamage = gui("TextLabel", fenframe2, "Damage", 0.55, Color3.new(0.6078431372549, 0, 0), UDim2.new(-0.23, 0, 0, 0), UDim2.new(0.2, 0, 1, 0))
  local fenbardef = gui("TextLabel", fenframe2, "Defense", 0.55, Color3.new(0, 0, 0.6078431372549), UDim2.new(-0.46, 0, 0, 0), UDim2.new(0.2, 0, 1, 0))
  local fenbarmove = gui("TextLabel", fenframe2, "Walkspeed", 0.55, Color3.new(0, 0.6078431372549, 0), UDim2.new(1.03, 0, 0, 0), UDim2.new(0.2, 0, 1, 0))
  local fenbarhp1 = gui("TextLabel", fenframe2, "", 0, Color3.new(0, 0, 0), UDim2.new(-0.46, 0, 1, 0), UDim2.new(1.92, 0, 0.4, 0))
  local fenbarhp2 = gui("TextLabel", fenbarhp1, "", 0, Color3.new(1, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
  local fenbarhp3 = gui("TextLabel", fenbarhp1, "(100)", 1, Color3.new(0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0))
  local fenbarstun1 = gui("TextLabel", fenframe4, "", 0, Color3.new(0, 0, 0), UDim2.new(0.2, 0, 0, 0), UDim2.new(0.4, 0, -4, 0))
  local fenbarstun2 = gui("TextLabel", fenframe4, "", 0, Color3.new(0.960784, 0.803922, 0.188235), UDim2.new(0.2, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
  local fenbarstun3 = gui("TextLabel", fenframe4, "Stun(" .. Stun.Value .. ")", 1, Color3.new(0.960784, 0.803922, 0.188235), UDim2.new(0.2, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
  local fenbarmove1 = gui("TextButton", fenframe3, move1, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.1, 0, 0.1, 0), UDim2.new(0.4, 0, 0.4, 0))
  fenbarmove1.ZIndex = 2
  local fenbarmove1b = gui("TextLabel", fenbarmove1, "", 0.55, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
  local fenbarmove2 = gui("TextButton", fenframe3, move2, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.6, 0, 0.1, 0), UDim2.new(0.4, 0, 0.4, 0))
  fenbarmove2.ZIndex = 2
  local fenbarmove2b = gui("TextLabel", fenbarmove2, "", 0.55, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
  local fenbarmove3 = gui("TextButton", fenframe3, move3, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.1, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
  fenbarmove3.ZIndex = 2
  local fenbarmove3b = gui("TextLabel", fenbarmove3, "", 0.55, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
  local fenbarmove4 = gui("TextButton", fenframe3, move4, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.6, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
  fenbarmove4.ZIndex = 2
  local fenbarmove4b = gui("TextLabel", fenbarmove4, "", 0.55, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
  local handles = Instance.new("Model")
  handles.Parent = Character
  handles.Name = "Handles"
  local modelzorz = Instance.new("Model")
  modelzorz.Parent = Character
  modelzorz.Name = "Chaos Saber"
  local model2 = Instance.new("Model")
  model2.Parent = Character
  model2.Name = "Chaos Buster"
  local model3 = Instance.new("Model")
  model3.Parent = Character
  model3.Name = "Chaos Buster Rainbow"
  handle = part(3, handles, 0, 1, BrickColor.new(NewCol), "Handle", vt())
  local handle2 = part(3, handles, 0, 1, BrickColor.new(NewCol), "Handle2", vt())
  local handle3 = part(3, handles, 0, 1, BrickColor.new(NewCol3), "Handle3", vt())
  local handle3a = part(3, handles, 0, 1, BrickColor.new(NewCol3), "Handle3a", vt())
  local handle4 = part(3, model2, 0, 1, BrickColor.new(NewCol3), "Handle4", vt())
  local handle5 = part(3, model2, 0, 1, BrickColor.new(NewCol3), "Handle5", vt())
  local handle6 = part(3, model2, 0, 1, BrickColor.new(NewCol3), "Handle6", vt())
  local handle7 = part(3, model2, 0, 1, BrickColor.new(NewCol3), "Handle7", vt())
  local handle8 = part(3, model2, 0, 1, BrickColor.new(NewCol3), "Handle8", vt())
  local handle9 = part(3, model2, 0, 1, BrickColor.new(NewCol3), "Handle9", vt())
  local handle10 = part(3, model2, 0, 1, BrickColor.new(NewCol3), "Handle10", vt())
  hmsh3 = mesh("BlockMesh", handle3, "", "", vt(0, 0, 0), vt(25, 3, 1))
  hmsh4 = mesh("BlockMesh", handle4, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
  hmsh5 = mesh("BlockMesh", handle5, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
  hmsh6 = mesh("BlockMesh", handle6, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
  hmsh7 = mesh("BlockMesh", handle7, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
  hmsh8 = mesh("BlockMesh", handle8, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
  hmsh9 = mesh("BlockMesh", handle9, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
  hmsh10 = mesh("BlockMesh", handle10, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
  local handlewld = weld(handle, handle, Torso, euler(0, 3.14, -2.6) * cf(0, 0, -0.6))
  local handlewld2 = weld(handle2, handle2, Torso, euler(0, 3.14, -2.6) * euler(0, 3.14, 0) * cf(0, 0, -0.6))
  local handlewld3 = weld(handle3, handle3, Torso, euler(1.57, 0, 0) * cf(-0.5, 0, 0) * euler(0, 0, -0.5) * cf(0, 0, -0.8))
  local handlewld3a = weld(handle3a, handle3a, handle3, cf(0, 0, 0))
  local handlewld4 = weld(handle4, handle4, handle3a, euler(0, 0, 0) * cf(0, 0, 0))
  local handlewld5 = weld(handle5, handle5, handle3a, euler(0, 0, 0) * cf(0, 0, 0))
  local handlewld6 = weld(handle6, handle6, handle5, cf(3.35, 0, -0.075))
  local handlewld7 = weld(handle7, handle7, handle4, cf(3.35, 0, 0.075))
  local handlewld8 = weld(handle8, handle8, handle6, cf(0.291, 0, 0))
  local handlewld9 = weld(handle9, handle9, handle7, cf(0.291, 0, 0))
  local handlewld10 = weld(handle10, handle10, handle3a, euler(0, mr(-90), 0) * cf(3.141, 0, 0))
  local main1, mmsh1, mwld1 = AesthPart(modelzorz, handle, 0, 0, NewCol, "Main1", "Neon", "BlockMesh", "nil", "nil", 0.8, 7, 0.65, cf(0, 0, 0))
  local main2, mmsh2, mwld2 = AesthPart(modelzorz, handle2, 0, 0, NewCol, "Main2", "Neon", "BlockMesh", "nil", "nil", 0.8, 7, 0.65, cf(0, 0, 0))
  local core1, cmsh1, cwld1 = AesthPart(modelzorz, main1, 0, 0, NewCol2, "Core1", "Neon", "SpecialMesh", "Sphere", "nil", 1.25, 0.75, 1, euler(0, 0, 0) * cf(0, -0.8, 0))
  local core2, cmsh2, cwld2 = AesthPart(modelzorz, main2, 0, 0, NewCol2, "Core2", "Neon", "SpecialMesh", "Sphere", "nil", 1.25, 0.75, 1, euler(0, 0, 0) * cf(0, -0.8, 0))
  local upper1, umsh1, uwld1 = AesthPart(modelzorz, core1, 0, 0, NewCol, "Upper1", "Neon", "SpecialMesh", "Sphere", "nil", 1.75, 0.9, 0.55, euler(0, 0, 0) * cf(0, -0.05, 0))
  local upper2, umsh2, uwld2 = AesthPart(modelzorz, core2, 0, 0, NewCol, "Upper1", "Neon", "SpecialMesh", "Sphere", "nil", 1.75, 0.9, 0.55, euler(0, 0, 0) * cf(0, -0.05, 0))
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
  local rw1 = 0.32
  local rw2 = 0.395
  local rw3 = 0.295
  local rs1 = 3
  local rs2 = 3.75
  local rs3 = 4
  local rs4 = 2.99
  rmsh1.Scale = vt(2.5, 2.25, rs1 - rs1)
  rmsh1a.Scale = vt(2.5, 2.25, rs1 - rs1)
  rwld1.C0 = euler(0, mr(90), 0) * cf(-1.55 + rw1, 0, 0.1)
  rwld1a.C0 = euler(0, mr(90), 0) * cf(-1.55 + rw1, 0, -0.1)
  rmsh2.Scale = vt(2.5, 2.25, rs2 - rs2)
  rmsh2a.Scale = vt(2.5, 2.25, rs2 - rs2)
  rwld2.C0 = euler(0, mr(90), 0) * cf(-0.875 + rw2, 0, 0.1)
  rwld2a.C0 = euler(0, mr(90), 0) * cf(-0.875 + rw2, 0, -0.1)
  rmsh3.Scale = vt(2.5, 2.25, rs2 - rs2)
  rmsh3a.Scale = vt(2.5, 2.25, rs2 - rs2)
  rwld3.C0 = euler(0, mr(90), 0) * cf(-0.125 + rw2, 0, 0.1)
  rwld3a.C0 = euler(0, mr(90), 0) * cf(-0.125 + rw2, 0, -0.1)
  rmsh4.Scale = vt(2.5, 2.25, rs3 - rs3)
  rmsh4a.Scale = vt(2.5, 2.25, rs3 - rs3)
  rwld4.C0 = euler(0, mr(90), 0) * cf(0.65 + rw2, 0, 0.1)
  rwld4a.C0 = euler(0, mr(90), 0) * cf(0.65 + rw2, 0, -0.1)
  rmsh5.Scale = vt(2.5, 2.25, rs2 - rs2)
  rmsh5a.Scale = vt(2.5, 2.25, rs2 - rs2)
  rwld5.C0 = euler(0, mr(90), 0) * cf(1.425 + rw2, 0, 0.1)
  rwld5a.C0 = euler(0, mr(90), 0) * cf(1.425 + rw2, 0, -0.1)
  rmsh6.Scale = vt(2.5, 2.25, rs2 - rs2)
  rmsh6a.Scale = vt(2.5, 2.25, rs2 - rs2)
  rwld6.C0 = euler(0, mr(90), 0) * cf(2.175 + rw2, 0, 0.1)
  rwld6a.C0 = euler(0, mr(90), 0) * cf(2.175 + rw2, 0, -0.1)
  rmsh7.Scale = vt(2.5, 2.25, rs4 - rs4)
  rmsh7a.Scale = vt(2.5, 2.25, rs4 - rs4)
  rwld7.C0 = euler(0, mr(90), 0) * cf(2.85 + rw3, 0, 0.1)
  rwld7a.C0 = euler(0, mr(90), 0) * cf(2.85 + rw3, 0, -0.1)
  mwld1.C0 = cf(0, 2, 0)
  mwld2.C0 = cf(0, 2, 0)
  for i = -1, 1, 2 do
    thprt = main1
    thprt2 = core1
    thprt3 = upper1
    thprt4 = handle4
    thprt5 = handle6
    thprt6 = handle8
    if i == 1 then
      thprt = main2
      thprt2 = core2
      thprt3 = upper2
      thprt4 = handle5
      thprt5 = handle7
      thprt6 = handle9
    end
    prt = AesthPart(modelzorz, thprt, 0, 0, NewCol, "Part01", "Neon", "BlockMesh", "nil", "nil", 0.8, 7, 0.65, cf(0, 0, 0))
    prt = AesthPart(modelzorz, thprt, 0, 0, NewCol, "Part02", "Neon", "SpecialMesh", "Wedge", "nil", 0.65, 1.05, 0.5, euler(mr(90), mr(-90), 0) * cf(-0.025, 0.75, 0))
    prt = AesthPart(modelzorz, thprt, 0, 0, NewCol, "Part03", "Neon", "SpecialMesh", "Wedge", "nil", 0.65, 1.2, 0.25, euler(mr(-90), mr(-90), 0) * cf(-0.2, 0.675, 0))
    prt = AesthPart(modelzorz, thprt, 0, 0, NewCol, "Part04", "Neon", "SpecialMesh", "Wedge", "nil", 0.65, 0.95, 0.5, euler(mr(90), mr(90), 0) * cf(-0.225, 0.75, 0))
    for d = -1, 1, 2 do
      prt = AesthPart(modelzorz, thprt, 0, 0, NewCol, "Part05", "Neon", "SpecialMesh", "Wedge", "nil", 0.65, 2, 0.25, euler(mr(180.04), mr(90) * d, 0) * cf(0.075 * d, -0.5, 0))
      prt = AesthPart(modelzorz, thprt, 0, 0, NewCol, "Part06", "Neon", "SpecialMesh", "Wedge", "nil", 0.65, 1, 0.25, euler(mr(73), mr(-90) * d, 0) * cf(0.149 * d, -0.688, 0))
    end
    prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol2, "Part07", "Neon", "SpecialMesh", "Sphere", "nil", 2, 1, 0.65, euler(0, 0, 0) * cf(0, -0.025, 0))
    prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part08", "Neon", "BlockMesh", "nil", "nil", 0.5, 0.5, 0.75, euler(0, 0, 0) * cf(0, 0.025, 0))
    prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part09", "Neon", "BlockMesh", "nil", "nil", 0.5, 0.25, 0.75, euler(0, 0, 0) * cf(0, -0.05, 0))
    for d = -1, 1, 2 do
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part10", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.25, 1, euler(0, mr(90) * d, 0) * cf(-0.15 * d, -0.05, 0))
    end
    for d = -1, 1, 2 do
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part11", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.25, 0.75, euler(mr(180), mr(90) * d, 0) * cf(0.125 * d, 0.05, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part12", "Neon", "BlockMesh", "nil", "nil", 0.75, 0.25, 0.75, euler(mr(0), mr(90) * d, 0) * cf(0.125 * d, 0, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part13", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.25, 0.5, euler(mr(180), mr(90) * d, 0) * cf(0.25 * d, 0, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part14", "Neon", "BlockMesh", "nil", "nil", 0.5, 0.25, 0.75, euler(mr(0), mr(0) * d, 0) * cf(0.25 * d, -0.05, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part15", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.5, 0.5, euler(mr(180), mr(90) * d, 0) * cf(0.35 * d, -0.075, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part16", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.75, 0.25, euler(mr(180), mr(90) * d, 0) * cf(0.425 * d, -0.2, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part17", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.75, 0.25, euler(mr(0), mr(-90) * d, 0) * cf(0.425 * d, -0.35, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part18", "Neon", "BlockMesh", "nil", "nil", 0.5, 0.5, 0.75, euler(mr(0), mr(0) * d, 0) * cf(0.35 * d, -0.175, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part19", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.5, 0.25, euler(mr(0), mr(-90) * d, 0) * cf(0.375 * d, -0.475, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part20", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.375, 0.5, euler(mr(180), mr(-90) * d, 0) * cf(0.3 * d, -0.462, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part21", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.125, 0.5, euler(mr(0), mr(90) * d, 0) * cf(0.3 * d, -0.512, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part22", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.25, 1.5, euler(mr(90), mr(90) * d, 0) * cf(0.375 * d, -0.275, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part23", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 1, 0.5, euler(mr(0), mr(90) * d, 0) * cf(0.35 * d, -0.325, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part24", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.75, 0.5, euler(mr(0), mr(90) * d, 0) * cf(0.25 * d, -0.15, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part25", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.25, 1, euler(mr(0), mr(90) * d, 0) * cf(0.1 * d, -0.05, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part26", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.25, 1, euler(mr(65), mr(-90) * d, 0) * cf(0.294 * d, 0.035, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part27", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.25, 0.5, euler(mr(115), mr(90) * d, 0) * cf(0.217 * d, -0.012, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part28", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.25, 1.25, euler(mr(155), mr(90) * d, 0) * cf(0.431 * d, -0.205, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part29", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.25, 1.25, euler(mr(25), mr(-90) * d, 0) * cf(0.498 * d, -0.229, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part30", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.25, 0.75, euler(mr(195), mr(90) * d, 0) * cf(0.434 * d, -0.387, 0))
    end
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part31", "Neon", "SpecialMesh", "Torso", "nil", 1, 3, 0.35, euler(mr(180), 0, 0) * cf(0, -0.35, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part32", "Neon", "BlockMesh", "nil", "nil", 2, 7, 0.35, euler(0, 0, 0) * cf(0.1, -1.35, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part33", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 1.5, euler(mr(180), mr(90), 0) * cf(0.15, -0.625, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part34", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 1.5, euler(mr(0), mr(90), 0) * cf(0.05, -2.075, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part35", "Neon", "BlockMesh", "nil", "nil", 1, 2, 0.35, euler(0, 0, 0) * cf(0.2, -2.25, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part36", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 2, euler(mr(-90), mr(90), 0) * cf(0.275, -2.65, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part37", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 1.5, euler(mr(-90), mr(90), 0) * cf(0.225, -3, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part38", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.5, 1.5, euler(mr(-90), mr(90), 0) * cf(0.15, -3.3, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part39", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.5, 1, euler(mr(-90), mr(90), 0) * cf(0.05, -3.55, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part40", "Neon", "BlockMesh", "nil", "nil", 0.25, 2, 0.35, euler(0, 0, 0) * cf(0.225, -2.65, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part41", "Neon", "BlockMesh", "nil", "nil", 0.25, 1.5, 0.35, euler(0, 0, 0) * cf(0.175, -3, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part42", "Neon", "BlockMesh", "nil", "nil", 0.25, 0.75, 0.35, euler(0, 0, 0) * cf(0.075, -3.375, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part43", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.5, 1, euler(mr(-90), mr(-90), 0) * cf(0.15, -2.55, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part44", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 2, euler(mr(90), mr(90), 0) * cf(0.175, -2.65, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part45", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 1.5, euler(mr(90), mr(90), 0) * cf(0.125, -3, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part46", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 0.75, euler(mr(90), mr(90), 0) * cf(0.075, -3.225, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part47", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 0.75, euler(mr(90), mr(90), 0) * cf(0.025, -3.375, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part48", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.5, 1, euler(mr(-90), mr(-90), 0) * cf(-0.025, -3.475, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part49", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 1, euler(mr(-90), mr(-90), 0) * cf(-0.1, -3.275, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part50", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 1.5, euler(mr(-90), mr(-90), 0) * cf(-0.15, -3.025, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part51", "Neon", "BlockMesh", "nil", "nil", 0.25, 1, 0.35, euler(0, mr(0), 0) * cf(-0.15, -2.775, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part52", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.5, 0.75, euler(mr(90), mr(90), 0) * cf(-0.125, -2.6, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part53", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 1.25, 1, euler(mr(90), mr(90), 0) * cf(0.05, -2.425, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part54", "Neon", "BlockMesh", "nil", "nil", 0.5, 0.5, 0.35, euler(0, mr(0), 0) * cf(-0.025, -2.575, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part55", "Neon", "BlockMesh", "nil", "nil", 0.25, 0.75, 0.35, euler(0, mr(0), 0) * cf(-0.1, -3.1, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part56", "Neon", "BlockMesh", "nil", "nil", 0.25, 0.75, 0.35, euler(0, mr(0), 0) * cf(-0.05, -3.3, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part57", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 1.25, 0.5, euler(mr(-90), mr(90), 0) * cf(0.15, -2.575, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part58", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.5, 0.25, euler(mr(-90), mr(90), 0) * cf(-0.025, -2.65, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part59", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.5, 2, euler(mr(-90), mr(90), 0) * cf(-0.075, -2.85, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part60", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 2, euler(mr(90), mr(-90), 0) * cf(-0.1, -2.825, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part61", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 1, euler(mr(90), mr(-90), 0) * cf(-0.05, -3.125, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part62", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 0.75, euler(mr(90), mr(-90), 0) * cf(0, -3.3, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part63", "Neon", "BlockMesh", "nil", "nil", 0.25, 1.75, 0.25, euler(0, mr(0), mr(90)) * cf(0.05, -2.75, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part64", "Neon", "BlockMesh", "nil", "nil", 0.25, 1.75, 0.25, euler(0, mr(0), mr(90)) * cf(0.05, -2.925, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part65", "Neon", "BlockMesh", "nil", "nil", 0.25, 1.5, 0.25, euler(0, mr(0), mr(90)) * cf(0.05, -3.1, 0))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part01", "Neon", "BlockMesh", "nil", "nil", 1.75, 2.5, 0.25, euler(0, mr(90), 0) * cf(2.55, 0, -0.175 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part02", "Neon", "BlockMesh", "nil", "nil", 1.75, 2.5, 0.25, euler(0, mr(90), 0) * cf(1.8, 0, -0.175 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part03", "Neon", "BlockMesh", "nil", "nil", 1.75, 2.5, 0.25, euler(0, mr(90), 0) * cf(1.05, 0, -0.175 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part04", "Neon", "BlockMesh", "nil", "nil", 1.75, 2.5, 0.25, euler(0, mr(90), 0) * cf(0.25, 0, -0.175 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part05", "Neon", "BlockMesh", "nil", "nil", 1.75, 2.5, 0.25, euler(0, mr(90), 0) * cf(-0.5, 0, -0.175 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part06", "Neon", "BlockMesh", "nil", "nil", 1.75, 2.5, 0.25, euler(0, mr(90), 0) * cf(-1.25, 0, -0.175 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part07", "Neon", "BlockMesh", "nil", "nil", 25, 3, 1, euler(0, 0, 0) * cf(0.65, 0, -0.45 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part08", "Neon", "SpecialMesh", "Wedge", "nil", 3, 0.5, 5, euler(0, mr(-90), 0) * euler(mr(-90) * i, 0, 0) * cf(2.65, 0, -0.6 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part09", "Neon", "BlockMesh", "nil", "nil", 15, 3, 0.5, euler(0, 0, 0) * cf(0.65, 0, -0.6 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part10", "Neon", "SpecialMesh", "Wedge", "nil", 3, 0.5, 5, euler(0, mr(90), 0) * euler(mr(-90) * i, 0, 0) * cf(-1.35, 0, -0.6 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part11", "Neon", "SpecialMesh", "Wedge", "nil", 3, 0.25, 5, euler(0, mr(-90), 0) * euler(mr(-90) * i, 0, 0) * cf(1.65, 0, -0.675 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part12", "Neon", "BlockMesh", "nil", "nil", 5, 3, 0.25, euler(0, 0, 0) * cf(0.65, 0, -0.675 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part13", "Neon", "SpecialMesh", "Wedge", "nil", 3, 0.25, 5, euler(0, mr(90), 0) * euler(mr(-90) * i, 0, 0) * cf(-0.35, 0, -0.675 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part14", "Neon", "SpecialMesh", "Wedge", "nil", 3, 0.25, 5, euler(0, mr(90), 0) * euler(mr(90) * i, 0, 0) * cf(1.65, 0, -0.325 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part15", "Neon", "SpecialMesh", "Wedge", "nil", 3, 0.75, 5, euler(0, mr(90), 0) * euler(mr(90) * i, 0, 0) * cf(2.65, 0, -0.225 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part16", "Neon", "SpecialMesh", "Wedge", "nil", 3, 1.5, 2.5, euler(0, mr(90), 0) * euler(mr(90) * i, 0, 0) * cf(2.9, 0, -0.15 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part17", "Neon", "BlockMesh", "nil", "nil", 5, 3, 0.25, euler(0, 0, 0) * cf(2.65, 0, -0.325 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part18", "Neon", "SpecialMesh", "Wedge", "nil", 3, 0.75, 5, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * cf(-1.35, 0, -0.225 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part19", "Neon", "SpecialMesh", "Wedge", "nil", 3, 0.25, 5, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * cf(-0.35, 0, -0.325 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part20", "Neon", "SpecialMesh", "Wedge", "nil", 3, 1.5, 2.5, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * cf(-1.6, 0, -0.15 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part21", "Neon", "BlockMesh", "nil", "nil", 5, 3, 0.25, euler(0, 0, 0) * cf(-1.35, 0, -0.325 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part22", "Neon", "BlockMesh", "nil", "nil", 3, 1.05, 1.05, euler(mr(45), 0, mr(90)) * cf(3.15, 0, -0.15 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part23", "Neon", "CylinderMesh", "nil", "nil", 1.5, 3, 1.5, euler(0, 0, 0) * cf(3.05, 0, -0.5 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part24", "Neon", "BlockMesh", "nil", "nil", 1.25, 3, 1.25, euler(0, 0, 0) * cf(3.175, 0, -0.525 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part25", "Neon", "SpecialMesh", "Wedge", "nil", 3, 1.25, 1.25, euler(0, mr(-90), 0) * euler(mr(-90) * i, 0, 0) * cf(3.425, 0, -0.525 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part26", "Neon", "CylinderMesh", "nil", "nil", 5.5, 3, 0.5, euler(mr(90), 0, 0) * cf(2.925, 0, -0.8 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part27", "Neon", "CylinderMesh", "nil", "nil", 5.5, 0.5, 0.5, euler(mr(90), 0, 0) * euler(0, mr(-45) * i, 0) * cf(2.89, 0, -1.135 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part28", "Neon", "CylinderMesh", "nil", "nil", 5.5, 1.5, 0.5, euler(mr(90), 0, 0) * euler(0, mr(-90), 0) * cf(2.725, 0, -1.15 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part29", "Neon", "BlockMesh", "nil", "nil", 3, 1.75, 1, euler(mr(90), 0, mr(90)) * cf(-1.95, 0, -0.175 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part30", "Neon", "SpecialMesh", "Wedge", "nil", 3, 1, 1, euler(0, mr(90), 0) * euler(mr(-90) * i, 0, 0) * cf(-1.95, 0, -0.45 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part31", "Neon", "SpecialMesh", "Wedge", "nil", 1.5, 0.25, 0.25, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * cf(-1.375, 0, -0.7 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part32", "Neon", "BlockMesh", "nil", "nil", 0.25, 1.5, 1.5, euler(0, mr(90), 0) * cf(-1.55, 0, -0.7 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part33", "Neon", "SpecialMesh", "Wedge", "nil", 1.5, 0.5, 2.5, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * euler(0, mr(-90) * i, 0) * cf(-1.65, 0, -0.7 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part34", "Neon", "BlockMesh", "nil", "nil", 0.25, 1.5, 1.5, euler(0, mr(90), 0) * cf(-1.55, 0, -0.825 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part35", "Neon", "SpecialMesh", "Wedge", "nil", 1.5, 0.25, 0.25, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * cf(-1.375, 0, -0.825 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part36", "Neon", "BlockMesh", "nil", "nil", 0.25, 1.5, 1.5, euler(0, mr(90), 0) * cf(-1.65, 0, -0.95 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part37", "Neon", "SpecialMesh", "Torso", "nil", 2.5, 1, 1.5, euler(mr(90), mr(90), 0) * cf(-1.8, 0, -0.725 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part38", "Neon", "SpecialMesh", "Wedge", "nil", 1.5, 0.25, 0.25, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * cf(-1.475, 0, -0.95 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part39", "Neon", "SpecialMesh", "Wedge", "nil", 1.5, 0.5, 0.5, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * cf(-1.6, 0, -1.2 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part40", "Neon", "SpecialMesh", "Wedge", "nil", 1.5, 0.5, 1.5, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * euler(0, mr(-90) * i, 0) * cf(-1.75, 0, -1.1 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part41", "Neon", "SpecialMesh", "Torso", "nil", 2.5, 1, 1.5, euler(mr(90), mr(90), 0) * cf(-1.9, 0, -1.05 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part42", "Neon", "SpecialMesh", "Wedge", "nil", 1.5, 0.5, 1, euler(0, mr(-90), 0) * euler(mr(-90) * i, 0, 0) * euler(0, mr(-150) * i, 0) * cf(-2.034, 0, -1.221 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part43", "Neon", "SpecialMesh", "Wedge", "nil", 1.5, 0.25, 0.25, euler(0, mr(-90), 0) * euler(mr(-90) * i, 0, 0) * cf(-1.775, 0, -1.275 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part44", "Neon", "BlockMesh", "nil", "nil", 0.5, 0.75, 1.5, euler(mr(90), mr(90), 0) * cf(-1.725, 0, -1.2 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part45", "Neon", "SpecialMesh", "Wedge", "nil", 1.5, 0.5, 3, euler(0, mr(90), 0) * euler(mr(-90) * i, 0, 0) * euler(0, mr(55) * i, 0) * cf(-2.387, 0, -0.631 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part46", "Neon", "BlockMesh", "nil", "nil", 1.5, 0.5, 2.5, euler(mr(90), 0, mr(90)) * cf(-2, 0, -0.4 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part47", "Neon", "BlockMesh", "nil", "nil", 3, 0.75, 1.25, euler(mr(90), 0, mr(90)) * cf(-2.175, 0, -0.225 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part48", "Neon", "SpecialMesh", "Wedge", "nil", 3, 0.75, 0.75, euler(0, mr(90), 0) * euler(mr(-90) * i, 0, 0) * cf(-2.375, 0, -0.225 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part49", "Neon", "BlockMesh", "nil", "nil", 3, 0.5, 2.5, euler(mr(90), 0, mr(90)) * cf(-2.3, 0, -0.05 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part50", "Neon", "SpecialMesh", "Wedge", "nil", 3, 0.5, 0.5, euler(0, mr(90), 0) * euler(mr(-90) * i, 0, 0) * cf(-2.6, 0, -0.05 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part51", "Neon", "BlockMesh", "nil", "nil", 3, 0.25, 0.5, euler(0, 0, mr(90)) * cf(-2.125, 0, -0.15 * i))
    prt = AesthPart(model2, thprt5, 0, 0, NewCol3, "Part52", "Neon", "SpecialMesh", "Wedge", "nil", 1, 0.75, 0.75, euler(0, mr(90), 0) * euler(mr(-90) * i, 0, 0) * cf(0, 0, 0))
    prt = AesthPart(model2, thprt5, 0, 0, NewCol3, "Part53", "Neon", "SpecialMesh", "Wedge", "nil", 1, 0.25, 0.25, euler(0, mr(90), 0) * euler(mr(90) * i, 0, 0) * euler(0, mr(-45) * i, 0) * cf(0.212, 0, 0.212 * i))
    prt = AesthPart(model2, thprt5, 0, 0, NewCol3, "Part54", "Neon", "BlockMesh", "nil", "nil", 1, 0.255, 0.5, euler(0, 0, mr(90)) * euler(0, mr(-45) * i, 0) * cf(0.088, 0, 0.053 * i))
    prt = AesthPart(model2, thprt5, 0, 0, NewCol3, "Part55", "Neon", "SpecialMesh", "Wedge", "nil", 1, 0.2, 0.2, euler(0, mr(90), 0) * euler(mr(90) * i, 0, 0) * euler(0, mr(45) * i, 0) * cf(0.141, 0, -0.038 * i))
    prt = AesthPart(model2, thprt5, 0, 0, NewCol3, "Part56", "Neon", "SpecialMesh", "Wedge", "nil", 1, 0.5, 0.5, euler(0, mr(-90), 0) * euler(mr(-90) * i, 0, 0) * euler(0, mr(45) * i, 0) * cf(0.141, 0, 0))
    prt = AesthPart(model2, thprt6, 0, 0, NewCol3, "Part57", "Neon", "CylinderMesh", "nil", "nil", 0.7, 1, 0.7, euler(0, 0, 0) * cf(0, 0, 0))
    prt = AesthPart(model2, thprt6, 0, 0, NewCol3, "Part58", "Neon", "SpecialMesh", "Wedge", "nil", 0.5, 0.5, 0.5, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * euler(0, mr(45) * i, 0) * cf(-0.029, 0, 0.026 * i))
    prt = AesthPart(model2, thprt5, 0, 0, NewCol3, "Part59", "Neon", "BlockMesh", "nil", "nil", 1, 1, 0.25, euler(0, mr(45) * i, 0) * cf(0.124, 0, 0.124 * i))
    prt = AesthPart(model2, thprt5, 0, 0, NewCol3, "Part60", "Neon", "BlockMesh", "nil", "nil", 1, 0.75, 0.2, euler(0, 0, mr(90)) * cf(0.216, 0, -0.05 * i))
    prt = AesthPart(model2, thprt6, 0, 0, NewCol3, "Part61", "Neon", "SpecialMesh", "Wedge", "nil", 0.5, 0.5, 0.5, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * cf(0, 0, 0.1 * i))
    prt = AesthPart(model2, thprt6, 0, 0, NewCol3, "Part62", "Neon", "SpecialMesh", "Wedge", "nil", 0.5, 0.4, 0.4, euler(0, mr(90), 0) * euler(mr(90) * i, 0, 0) * cf(0.15, 0, 0))
    prt = AesthPart(model2, thprt6, 0, 0, NewCol3, "Part63", "Neon", "SpecialMesh", "Wedge", "nil", 0.5, 0.4, 0.4, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * cf(0.325, 0, 0))
    prt = AesthPart(model2, thprt6, 0, 0, NewCol3, "Part64", "Neon", "SpecialMesh", "Wedge", "nil", 0.5, 0.225, 1.5, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * cf(0.475, 0, -0.038 * i))
    prt = AesthPart(model2, thprt6, 0, 0, NewCol3, "Part65", "Neon", "BlockMesh", "nil", "nil", 0.5, 1.5, 0.1, euler(0, 0, mr(90)) * cf(0.175, 0, -0.05 * i))
  end
  for _,c in pairs(modelzorz:children()) do
    table.insert(Weapon, c)
    table.insert(Saber, c)
  end
  for _,c in pairs(model2:children()) do
    table.insert(Weapon, c)
    table.insert(Buster, c)
  end
  for _,c in pairs(model3:children()) do
    c.Transparency = 1
  end
  rmwld1.C0 = cf(0, 0, 0)
  rmwld1a.C0 = cf(0, 0, 0)
  for _,c in pairs(handle:children()) do
    if c.className == "Motor" then
      table.insert(Welds, c)
    end
  end
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
    Tool = Instance.new("HopperBin")
    Tool.Parent = Backpack
    Tool.Name = "Dreamer"
    Bin = Tool
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

  hideanim = function()
  equipped = false
  if Mode == "Sabers" then
    UnSword()
  end
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.3)
  end
  mdec2.Parent = nil
  mdec.Parent = Decrease
  Humanoid.JumpPower = 50
end

  mdec.Parent = Decrease
  equipanim = function()
  equipped = true
  floating = false
  Humanoid.JumpPower = 60
  local dec = Instance.new("NumberValue", Decrease)
  dec.Name = "DecreaseMvmt"
  dec.Value = 10
  so("341336144", LeftArm, 1, 1)
  so("341336144", RightArm, 1, 1)
  rara = 4
  local col = 1
  local colnum = 0
  for i = 0, 1, 0.1 do
    swait()
    colnum = colnum + 1

    if #Neons - 1 < col and (colnum) % 2 == 0 then
      col = 1
    end
    if (colnum) % 2 == 0 then
      col = col + 1
    end
    MagicBlock2(Neons[col], LeftArm.CFrame * cf(0, -1, 0), 4, 4, 4, 2, 2, 2, 0.2, 1)
    MagicBlock2(Neons[col], RightArm.CFrame * cf(0, -1, 0), 4, 4, 4, 2, 2, 2, 0.2, 1)
    rara = rara + 1
    if rara % 6 == 0 then
      hitfloor2, posfloor2 = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
      if hitfloor2 ~= nil then
        MagicWave(BrickColor.new("Institutional white"), cf(posfloor2), 1, 2, 1, 1, -0.1, 1, 0.1)
      end
    end
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.3, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1) * euler(-0.05, 0, 0), 0.1)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.2, 0, 0.4) * euler(0, -1.57, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.4) * euler(0, 1.57, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.05, 0, 0.1), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.05, 0, -0.05), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    colnum = colnum + 1

    if #Neons - 1 < col and (colnum) % 2 == 0 then
      col = 1
    end
    if (colnum) % 2 == 0 then
      col = col + 1
    end
    MagicBlock2(Neons[col], LeftArm.CFrame * cf(0, -1, 0), 4, 4, 4, 2, 2, 2, 0.2, 1)
    MagicBlock2(Neons[col], RightArm.CFrame * cf(0, -1, 0), 4, 4, 4, 2, 2, 2, 0.2, 1)
    rara = rara + 1
    if rara % 6 == 0 then
      hitfloor2, posfloor2 = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
      if hitfloor2 ~= nil then
        MagicWave(BrickColor.new("Institutional white"), cf(posfloor2), 1, 2, 1, 1, -0.1, 1, 0.1)
      end
    end
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.4, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1.2) * euler(-0.05, 0, 0), 0.1)
    RW.C0 = clerp(RW.C0, cf(1.2, 0.7, -0.4) * euler(2.9, 0, 0) * euler(0, 0, -0.5) * euler(0, 1.5, 0), 0.25)
    LW.C0 = clerp(LW.C0, cf(-1.2, 0.7, -0.4) * euler(2.9, 0, 0) * euler(0, 0, 0.5) * euler(0, -1.5, 0), 0.25)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.05, 0, 0.1), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.05, 0, -0.05), 0.3)
  end
  mdec.Parent = nil
  mdec2.Parent = Decrease
  hitfloor2, posfloor2 = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
  if hitfloor2 ~= nil then
    MagicWave(BrickColor.new("Institutional white"), cf(posfloor2), 4, 2, 4, 0.7, -0.08, 0.7, 0.05)
  end
  MagicCircle(Neons[col], LeftArm.CFrame * cf(0, -1, 0), 10, 10, 10, 4, 4, 4, 0.1, 1)
  MagicCircle(Neons[col], RightArm.CFrame * cf(0, -1, 0), 10, 10, 10, 4, 4, 4, 0.1, 1)
  so("341336138", LeftArm, 1, 1)
  so("341336138", RightArm, 1, 1)
  so("341336243", LeftArm, 1, 1)
  so("341336243", RightArm, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1.4) * euler(-0.05, 0, 0), 0.2)
    if i < 0.3 then
      RW.C0 = clerp(RW.C0, cf(1, 0.5, 0.3) * euler(-0.2, 0, 1) * euler(0, -1.5, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, 0.3) * euler(-0.2, 0, -1) * euler(0, 1.5, 0), 0.4)
    else
      RW.C0 = clerp(RW.C0, cf(1, 0.5, 0.3) * euler(0.4, 0, 0.4) * euler(0, -1.5, 0), 0.2)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, 0.3) * euler(0.4, 0, -0.4) * euler(0, 1.5, 0), 0.2)
    end
    RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.1), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.95, -0.9, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, 0.05), 0.4)
  end
  dec.Parent = nil
  floating = true
end

  StaggerAnim = function()
  attack = true
  removeControl()
  local dosaber = false
  if Mode == "Sabers" then
    dosaber = true
  end
  Mode = "Stagger"
  for i = 1, math.random(2, 4) do
    ClangEffect(BrickColor.new("New Yeller"), cf(hitbox.Position) * euler(math.random(-50, 50) / 100, math.random(-50, 50), math.random(-50, 50) / 100), 0, 0.1, 0.2, math.random(150, 300) / 1000)
  end
  for i = 0, 1, 0.35 do
    swait()
    if dosaber == true then
      for d = 1, #Saber do
        Saber[d].Transparency = i
      end
    end
    do
      do
        Torso.Velocity = RootPart.CFrame.lookVector * -40
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5) * euler(0.1, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, -0.4), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.7) * euler(0, -0.7, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4) * euler(0, 0.4, 0), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.5, 0, 0.6), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.2, 0.2), 0.3)

      end
    end
  end
  if dosaber == true then
    for d = 1, #Saber do
      Saber[d].Transparency = 1
    end
    handlewld.Part1 = Torso
    handlewld2.Part1 = Torso
    handlewld.C0 = euler(0, 3.14, -2.6) * cf(0, 0, -0.6)
    handlewld2.C0 = euler(0, 3.14, -2.6) * euler(0, 3.14, 0) * cf(0, 0, -0.6)
    mwld1.C0 = cf(0, 2, 0)
    mwld2.C0 = cf(0, 2, 0)
    floating = true
  end
  for i = 1, 0, -0.2 do
    swait()
    if dosaber == true then
      for d = 1, #Saber do
        Saber[d].Transparency = i
      end
    end
    do
      do
        Torso.Velocity = RootPart.CFrame.lookVector * -40
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5) * euler(0.1, 0, 0), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(-0.5, 0, -0.4), 0.4)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.7) * euler(0, -0.7, 0), 0.4)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4) * euler(0, 0.4, 0), 0.4)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.5, 0, 0.6), 0.4)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.2, 0.5), 0.4)

      end
    end
  end
  for d = 1, #Saber do
    Saber[d].Transparency = 0
  end
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.5, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.8) * euler(-0.2, 0, -0.4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.3, 0, 0.4) * euler(0, -0.4, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.3, 0, -0.2) * euler(0, 0.4, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.5, 0, 1.2), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0, -1) * euler(0, -1.57, 0) * euler(0, 0.2, 0.2), 0.3)
  end
  for i = 1, 40 do
    swait()
    if StunT.Value <= Stun.Value then
      break
    end
  end
  do
    Mode = "Normal"
    resumeControl()
    combo = 0
    attack = false
  end
end

  StaggerHitt = function()
  attack = true
  for i = 1, math.random(2, 4) do
    ClangEffect(BrickColor.new("New Yeller"), cf(hitbox.Position) * euler(math.random(-50, 50) / 100, math.random(-50, 50), math.random(-50, 50) / 100), 0, 0.1, 0.2, math.random(150, 300) / 1000)
  end
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.7) * euler(0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, -0.6), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.9) * euler(0, -0.7, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4) * euler(0, 0.4, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.4), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.2, 0.2), 0.3)
  end
  attack = false
end

  StunAnim = function()
  attack = true
  removeControl()
  Stunned.Value = true
  showDamage(Character, "Stunned", "Interrupt")
  local dec = Instance.new("NumberValue", Decrease)
  dec.Name = "DecreaseMvmt"
  dec.Value = 10
  for i = 0, 1, 0.3 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -0.5), 0.2)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.2, 0, -3), 0.2)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 1.3), 0.2)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    LW.C0 = clerp(LW.C0, cf(-1.2, 0.5, -0.4) * euler(1, 0, 0.4) * euler(0, -0.1, 0), 0.2)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -0.6, 0) * euler(0, 1.57, 0) * euler(-0.5, 0, 0.3), 0.25)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, 0), 0.25)
  end
  for i = 0, 1, 0.3 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.3, 0, -0.5), 0.2)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.8, 0, -3), 0.2)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.8, 0, 1.3), 0.2)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    LW.C0 = clerp(LW.C0, cf(-1.2, 0.5, -0.4) * euler(1.2, 0, 0.8) * euler(0, -0.1, 0), 0.2)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -0.6, 0) * euler(0, 1.57, 0) * euler(-0.5, 0, 0.6), 0.25)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * euler(0, -1.57, 0) * euler(0.1, 0, 0.7), 0.25)
  end
  for i = 0, 1, 0.3 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.3, 0, -1), 0.2)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -2) * euler(1.57, 0, -3), 0.2)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.8, 0, 1.3), 0.2)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.2, 0, -0.8) * euler(0, -0.1, 0), 0.2)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -0.6, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, 0.6), 0.25)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.3), 0.25)
  end
  local gairost = Instance.new("BodyGyro")
  gairost.Parent = RootPart
  gairost.maxTorque = Vector3.new(400000, 0, 400000) * math.huge
  gairost.P = 20000
  gairost.cframe = cf(0, 0, 0)
  for i = 0, 1, 0.1 do
    swait()
    if hitfloor ~= nil then
      Torso.Velocity = vt(0, 0, 0)
    end
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -2.5) * euler(1.57, 0, -3.14), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1.57, 0, 1.5) * euler(0.2, 0, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.5, 0, -1.57) * euler(0, 0, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.3, 0.5, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.1, 0.2, 0), 0.3)
  end
  for i = 1, 70 do
    swait()
    gairost.cframe = RootPart.CFrame
    if hitfloor ~= nil then
      Torso.Velocity = vt(0, 0, 0)
    end
  end
  for i = 0, 1, 0.2 do
    swait()
    Stun.Value = 0
    gairost.cframe = RootPart.CFrame
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -2) * euler(1, 0, -4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1.57, 0, 1) * euler(0.2, -1, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.2, 0, 0.2) * euler(0, 0, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.3, 0.5, 0.4), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -1) * euler(0, -1.57, 0) * euler(-0.1, 0.2, 1), 0.3)
  end
  resumeControl()
  gairost.Parent = nil
  dec.Parent = nil
  Stun.Value = 0
  combo = 0
  Stunned.Value = false
  attack = false
  for i = 1, 10 do
    swait()
    Stun.Value = 0
  end
end

  UnSword = function()
  combo = 0
  for i = 0, 1, 0.1 do
    swait()
    mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.5)
    mwld2.C0 = clerp(mwld2.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.5)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.1, 0, 0), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, -0.4) * euler(0.2, 0, 0), 0.5)
    RW.C0 = clerp(RW.C0, cf(1.4, 0.4, -0.1) * euler(1.4, 0, 0.7) * euler(0, 1.3, 0), 0.5)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.8, 0, -0.8) * euler(0, -1.5, 0), 0.5)
    RH.C0 = clerp(RH.C0, cf(1, -0.7, -0.3) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.1), 0.5)
    LH.C0 = clerp(LH.C0, cf(-1.1, -0.7, -0.2) * euler(0, -1.57, 0) * euler(0, 0.4, 0) * euler(-0.05, 0, -0.15), 0.5)
    for d = 1, #Saber do
      Saber[d].Transparency = i
    end
  end
  for d = 1, #Saber do
    Saber[d].Transparency = 1
  end
  handlewld.Part1 = Torso
  handlewld2.Part1 = Torso
  handlewld.C0 = euler(0, 3.14, -2.6) * cf(0, 0, -0.6)
  handlewld2.C0 = euler(0, 3.14, -2.6) * euler(0, 3.14, 0) * cf(0, 0, -0.6)
  mwld1.C0 = cf(0, 2, 0)
  mwld2.C0 = cf(0, 2, 0)
  floating = true
  Mode = "Normal"
  for i = 1, 0, -0.2 do
    swait()
    for d = 1, #Saber do
      Saber[d].Transparency = i
    end
  end
  for d = 1, #Saber do
    Saber[d].Transparency = 0
  end
end

  attackone = function()
  floating = false
  Mode = "Sabers"
  for i = 0, 1, 0.3 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0.1, 0, 0) * euler(0, 0, 0.6), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.1) * euler(0.4, 0, 1.2) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, 0.1) * euler(0.4, 0, -1.6) * euler(0, 2, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(0, -0.6, 0) * euler(0, 0, 0.1), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.05), 0.3)
    for d = 1, #Saber do
      Saber[d].Transparency = i
    end
  end
  for d = 1, #Saber do
    Saber[d].Transparency = 1
  end
  handlewld.Part1 = LeftArm
  handlewld2.Part1 = RightArm
  handlewld.C0 = euler(0, 0, -1.57) * euler(0, 1.57, 0) * cf(0, 1, 0)
  handlewld2.C0 = euler(0, 0, -1.57) * euler(0, 1.57, 0) * cf(0, 1, 0)
  mwld1.C0 = cf(0, 0, 0)
  mwld2.C0 = cf(0, 0, 0)
  so("341336274", main1, 0.6, 1.2)
  so("341336274", main2, 0.6, 1.2)
  for i = 1, 0, -0.3 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0.1, 0, 0) * euler(0, 0, 0.6), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.1) * euler(0.4, 0, 1.2) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, 0.1) * euler(0.4, 0, -1.6) * euler(0, 2, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(0, -0.6, 0) * euler(0, 0, 0.1), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.05), 0.3)
    for d = 1, #Saber do
      Saber[d].Transparency = i
    end
  end
  for d = 1, #Saber do
    Saber[d].Transparency = 0
  end
  hitbox.Parent = modelzorz
  hitbox.CFrame = main1.CFrame * cf(0, 2, 0)
  teh = math.random(-30, 30) / 100
  so("341336307", main1, 0.6, 1.4 + teh)
  so("341336485", main1, 0.6, 1 + teh)
  for i = 0, 1, 0.12 do
    swait()
    hitbox.CFrame = main1.CFrame * cf(0, 2, 0)
    MagniDamage(hitbox, 3, 6, 8, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
    mwld1.C0 = clerp(mwld1.C0, cf(0, 0.2, 0) * euler(0, 0, -1), 0.4)
    mwld2.C0 = clerp(mwld2.C0, cf(0, 0, 0) * euler(0, 0, 0.5), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.8) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0.1, 0, 0) * euler(0, 0, -0.8), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.1) * euler(2.5, 0, 0.6) * euler(0, -1, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(0.4, 0, -1.6) * euler(0, 2.5, 0) * euler(-2.5, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, -0.1), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0.1) * euler(0, -1.57, 0) * euler(0, 0.8, 0) * euler(-0.1, 0, 0.05), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
      end
    end
  end
  if Stagger.Value ~= true and StunT.Value > Stun.Value then
      teh = math.random(-30, 30) / 100
      so("341336307", main2, 0.6, 1.4 + teh)
      so("341336485", main2, 0.6, 1 + teh)
      for i = 0, 1, 0.12 do
        swait()
        hitbox.CFrame = main2.CFrame * cf(0, 2, 0)
        MagniDamage(hitbox, 3, 6, 8, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
        mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.4)
        mwld2.C0 = clerp(mwld2.C0, cf(0, 0.3, 0) * euler(0, 0, -0.5), 0.4)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(0.2, 0, 0), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0.1, 0, 0) * euler(0, 0, 0.6), 0.4)
        RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(2.5, 0, 0.6) * euler(0, 0.2, 0) * euler(-2, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.6) * euler(0, 0.4, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(0, -0.6, 0) * euler(0, 0, 0.1), 0.4)
        LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.05), 0.4)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
          end
        end
      end
      hitbox.Parent = nil
    end
end

  attacktwo = function()
  for i = 0, 1, 0.15 do
    swait()
    mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.4)
    mwld2.C0 = clerp(mwld2.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -0.6) * euler(0.1, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 0.6) * euler(0.2, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.4, 0.4, -0.1) * euler(0.6, 0, 0.7) * euler(0, 1, 0) * euler(0.4, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, -0.8) * euler(0, 2, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.9, -0.7, 0.2) * euler(0, 1.57, 0) * euler(0, -0.6, 0) * euler(0, 0, 0.1), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.7, -0.1) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.2, 0, 0.15), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
      end
    end
  end
  if Stagger.Value ~= true and StunT.Value > Stun.Value then
      hitbox.Parent = modelzorz
      hitbox.CFrame = main1.CFrame * cf(0, 2, 0)
      teh = math.random(-30, 30) / 100
      so("341336307", main1, 0.6, 1.4 + teh)
      so("341336485", main1, 0.6, 1 + teh)
      for i = 0, 1, 0.12 do
        swait()
        hitbox.CFrame = main1.CFrame * cf(0, 2, 0)
        MagniDamage(hitbox, 2, 6, 8, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
        mwld1.C0 = clerp(mwld1.C0, cf(0, 0.3, 0) * euler(0, 0, -0.4), 0.4)
        mwld2.C0 = clerp(mwld2.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.4)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.8) * euler(0.1, 0, 0), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, -0.8) * euler(0.2, 0, 0), 0.4)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57) * euler(0, -1, 0) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1, 0, -0.8) * euler(0, 2.5, 0) * euler(-2, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.4) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.3), 0.4)
        LH.C0 = clerp(LH.C0, cf(-1.1, -0.7, 0.2) * euler(0, -1.57, 0) * euler(0, 0.8, 0) * euler(0.1, 0, -0.15), 0.4)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
          end
        end
      end
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
          teh = math.random(-30, 30) / 100
          so("341336307", main2, 0.6, 1.4 + teh)
          so("341336485", main2, 0.6, 1 + teh)
          for i = 0, 1, 0.12 do
            swait()
            hitbox.CFrame = main2.CFrame * cf(0, 2, 0)
            MagniDamage(hitbox, 2, 6, 8, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
            mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.4)
            mwld2.C0 = clerp(mwld2.C0, cf(0, 0.3, 0) * euler(0, 0, -0.4), 0.4)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.1, 0, 0), 0.4)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 1) * euler(0, 0, 0), 0.4)
            RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.57, 0, 1.57) * euler(0, -1.5, 0) * euler(-2, 0, 0), 0.4)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.6, 0, -0.8) * euler(0, -0.2, 0) * euler(0, 0, 0), 0.4)
            RH.C0 = clerp(RH.C0, cf(0.8, -0.7, 0.3) * euler(0, 1.57, 0) * euler(0, -1, 0) * euler(0, 0, 0.1), 0.4)
            LH.C0 = clerp(LH.C0, cf(-1, -0.7, -0.4) * euler(0, -1.57, 0) * euler(0, -0.6, 0) * euler(-0.2, 0, 0.3), 0.4)
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
              end
            end
          end
          hitbox.Parent = nil
        end
      end
end

  attackthree = function()
  for i = 0, 1, 0.15 do
    swait()
    mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.5)
    mwld2.C0 = clerp(mwld2.C0, cf(0, 0.1, 0) * euler(0, 0, 0.4), 0.5)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.1) * euler(0.5, 0, 0), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -1, 0.8) * euler(0, 0, 0.1) * euler(-0.2, 0, 0), 0.5)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, -0.1, 0) * euler(2.8, 0, 0), 0.5)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.6, 0, -0.7) * euler(0, 0.5, 0) * euler(0, 0, 0.6), 0.5)
    RH.C0 = clerp(RH.C0, cf(1.1, -0.7, -0.2) * euler(0, 1.57, 0) * euler(0, -0.1, 0) * euler(-0.05, 0, 0.15), 0.5)
    LH.C0 = clerp(LH.C0, cf(-0.95, -0.7, -0.1) * euler(0, -1.57, 0) * euler(-0.2, 0, 0.1), 0.5)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
      end
    end
  end
  if Stagger.Value ~= true and StunT.Value > Stun.Value then
      hitbox.Parent = modelzorz
      hitbox.CFrame = main2.CFrame * cf(0, 2, 0)
      teh = math.random(-30, 30) / 100
      so("341336307", main2, 0.6, 1.4 + teh)
      so("341336485", main2, 0.6, 1 + teh)
      for i = 0, 1, 0.12 do
        swait()
        hitbox.CFrame = main2.CFrame * cf(0, 2, 0)
        MagniDamage(hitbox, 2, 6, 8, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
        mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.5)
        mwld2.C0 = clerp(mwld2.C0, cf(0, 0.2, 0) * euler(0, 0, -0.4), 0.5)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.1) * euler(0.2, 0, 0), 0.5)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -1.5, -0.8) * euler(0, 0, 0.1) * euler(0.2, 0, 0), 0.5)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, -0.1, 0) * euler(0.3, 0, 0), 0.5)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(0, 1.7, 0), 0.5)
        RH.C0 = clerp(RH.C0, cf(1.1, -0.2, -0.2) * euler(0, 1.57, 0) * euler(0, -0.1, 0) * euler(-0.05, 0, -0.1), 0.5)
        LH.C0 = clerp(LH.C0, cf(-0.95, -0.5, -0.6) * euler(0, -1.57, 0) * euler(-0.2, 0, 0.4), 0.5)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
          end
        end
      end
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
          teh = math.random(-30, 30) / 100
          so("341336307", main1, 0.6, 1.4 + teh)
          so("341336485", main1, 0.6, 1 + teh)
          for i = 0, 1, 0.12 do
            swait()
            hitbox.CFrame = main1.CFrame * cf(0, 2, 0)
            MagniDamage(hitbox, 2, 6, 8, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
            mwld1.C0 = clerp(mwld1.C0, cf(0, 0.1, 0) * euler(0, 0, -0.4), 0.5)
            mwld2.C0 = clerp(mwld2.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.5)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.1) * euler(0.2, 0, 0), 0.5)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -1.5, -0.8) * euler(0, 0, -0.4) * euler(0.2, 0, 0), 0.5)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, -0.1, 0) * euler(-0.3, 0, 0.6), 0.5)
            LW.C0 = clerp(LW.C0, cf(-0.6, 0.5, -0.5) * euler(1.57, 0, -1.57) * euler(0, 1.7, 0) * euler(-2.8, 0, 0), 0.5)
            RH.C0 = clerp(RH.C0, cf(1.1, -0.2, -0.2) * euler(0, 1.57, 0) * euler(0, 0.4, 0) * euler(-0.05, 0, -0.1), 0.5)
            LH.C0 = clerp(LH.C0, cf(-0.95, -0.5, -0.6) * euler(0, -1.57, 0) * euler(0, 0.4, 0) * euler(-0.2, 0, 0.4), 0.5)
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
              end
            end
          end
          hitbox.Parent = nil
        end
      end
end

  attackfour = function()
  so("341336200", main1, 0.6, 1)
  so("341336200", main2, 0.6, 1)
  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.6, 0, 0) * euler(0, 0, 2) * euler(0, 0, 0), 0.3)
  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.6, 0, 0) * euler(0, 0, -2) * euler(0, 0, 0), 0.3)
  local tehn = math.random(1, 7)
  local rara = 0
  for i = 0, 1, 0.05 do
    swait()
    rara = rara + 1
    if (rara) % 2 == 0 then
      if tehn > 6 then
        tehn = 1
      else
        tehn = tehn + 1
      end
    end
    da1 = math.random(150, 250) / 100
    da2 = math.random(700, 900) / 100
    MagicCircle(Neons[tehn], main1.CFrame * cf(0, 3, 0), 5, 10, 5, da1, da2, da1, 0.2)
    MagicCircle(Neons[tehn], main2.CFrame * cf(0, 3, 0), 5, 10, 5, da1, da2, da1, 0.2)
    mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.3)
    mwld2.C0 = clerp(mwld2.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0) * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.6, 0, 0) * euler(0, 0, 2) * euler(0, -1.5, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.6, 0, 0) * euler(0, 0, -2) * euler(0, 1.5, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1.05, -0.95, -0.1) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.05, 0, -0.1), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1.05, -0.95, -0.1) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.05, 0, 0.1), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
      end
    end
  end
  if Stagger.Value ~= true and StunT.Value > Stun.Value then
      hitbox.Parent = modelzorz
      hitbox.CFrame = main2.CFrame * cf(0, 2, 0)
      so("341336307", main1, 1, 1.2)
      so("341336307", main2, 1, 1.2)
      for i = 0, 1, 0.2 do
        swait()
        hitbox.CFrame = main1.CFrame * cf(0, 2, 0)
        MagniDamage(hitbox, 2, 8, 10, math.random(6, 8), "Normal", RootPart, 0.2, 2, (math.random(4, 6)), nil, true)
        hitbox.CFrame = main2.CFrame * cf(0, 2, 0)
        MagniDamage(hitbox, 2, 8, 10, math.random(6, 8), "Normal", RootPart, 0.2, 2, (math.random(4, 6)), nil, true)
        mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, -1.4), 0.8)
        mwld2.C0 = clerp(mwld2.C0, cf(0, 0, 0) * euler(0, 0, -1.4), 0.8)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.8)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -1, -0.2) * euler(0, 0, 0) * euler(0, 0, 0), 0.8)
        RW.C0 = clerp(RW.C0, cf(0.8, 0.5, -0.5) * euler(1.6, 0, 0) * euler(0, 0, 2) * euler(0, -1.5, 0) * euler(-2.2, 0, 0), 0.8)
        LW.C0 = clerp(LW.C0, cf(-0.8, 0.5, -0.5) * euler(1.6, 0, 0) * euler(0, 0, -2) * euler(0, 1.5, 0) * euler(-2.2, 0, 0), 0.8)
        RH.C0 = clerp(RH.C0, cf(1.05, -0.95, -0.1) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.05, 0, -0.1), 0.8)
        LH.C0 = clerp(LH.C0, cf(-1.05, -0.95, -0.1) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.05, 0, 0.1), 0.8)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
          end
        end
      end
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
          for i = 1, 3 do
            Star(main2, 50)
            Star(main1, 50)
          end
          hitbox.Parent = nil
          local ref1 = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
          ref1.Anchored = true
          ref1.CFrame = cf(main1.Position)
          game:GetService("Debris"):AddItem(ref1, 1)
          so("341336243", ref1, 1, 1)
          local ref2 = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
          ref2.Anchored = true
          ref2.CFrame = cf(main2.Position)
          game:GetService("Debris"):AddItem(ref2, 1)
          so("341336243", ref1, 1, 1)
          for i = 0, 1, 0.2 do
            swait()
            mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, -1.4), 0.5)
            mwld2.C0 = clerp(mwld2.C0, cf(0, 0, 0) * euler(0, 0, -1.4), 0.5)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.5)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -1, -0.2) * euler(0, 0, 0) * euler(0, 0, 0), 0.5)
            RW.C0 = clerp(RW.C0, cf(0.8, 0.5, -0.5) * euler(1.6, 0, 0) * euler(0, 0, 2) * euler(0, -1.5, 0) * euler(-2.2, 0, 0), 0.5)
            LW.C0 = clerp(LW.C0, cf(-0.8, 0.5, -0.5) * euler(1.6, 0, 0) * euler(0, 0, -2) * euler(0, 1.5, 0) * euler(-2.2, 0, 0), 0.5)
            RH.C0 = clerp(RH.C0, cf(1.05, -0.95, -0.1) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.05, 0, -0.1), 0.5)
            LH.C0 = clerp(LH.C0, cf(-1.05, -0.95, -0.1) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.05, 0, 0.1), 0.5)
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
              end
            end
          end
          for i = 0, 1, 0.3 do
            swait()
            for d = 1, #Saber do
              Saber[d].Transparency = i
            end
          end
          for d = 1, #Saber do
            Saber[d].Transparency = 1
          end
          handlewld.Part1 = Torso
          handlewld2.Part1 = Torso
          handlewld.C0 = euler(0, 3.14, -2.6) * cf(0, 0, -0.6)
          handlewld2.C0 = euler(0, 3.14, -2.6) * euler(0, 3.14, 0) * cf(0, 0, -0.6)
          mwld1.C0 = cf(0, 2, 0)
          mwld2.C0 = cf(0, 2, 0)
          floating = true
          Mode = "Normal"
          for i = 1, 0, -0.2 do
            swait()
            for d = 1, #Saber do
              Saber[d].Transparency = i
            end
          end
          for d = 1, #Saber do
            Saber[d].Transparency = 0
          end
        end
      end
end

  PowerRising = function()
  attack = true
  if Mode == "Sabers" then
    UnSword()
  end
  local dec = Instance.new("NumberValue", Decrease)
  dec.Name = "DecreaseMvmt"
  dec.Value = 10
  manainc = 12
  local col = 1
  local colnum = 0
  local dopart = 0
  cooldownsadd[1] = 0.18
  cooldownsadd[2] = 0.16
  cooldownsadd[3] = 0.14
  prising = true
  local prref = part(3, nil, 0, 1, BrickColor.new("Black"), "Reference", vt())
  prref.Anchored = true
  while prising == true do
      swait()
      dopart = dopart + 1
      if (dopart) % 4 == 0 then
        colnum = colnum + 1
        if (colnum) % 2 == 0 then
          col = math.random(1, 7)
        end
        MagicBlock2(Neons[col], LeftArm.CFrame * cf(0, -1, 0), 4, 4, 4, 0.6, 0.6, 0.6, 0.05, 1)
        MagicBlock2(Neons[col], RightArm.CFrame * cf(0, -1, 0), 4, 4, 4, 0.6, 0.6, 0.6, 0.05, 1)
        prref.CFrame = cf(RootPart.Position) * cf(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100)
        local phitfloor, pposfloor = rayCast(prref.Position, CFrame.new(prref.Position, prref.Position - Vector3.new(0, 1, 0)).lookVector, 50, Character)
        if phitfloor ~= nil then
          MagicCircle(Neons[col], cf(pposfloor), 1, 1, 1, 1, 5, 1, 0.1)
        end
      end
      do
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.3, 0, 0), 0.1)
        RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0.1) * euler(1, 0, 1.3) * euler(0, -1.57, 0), 0.1)
        LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0.1) * euler(1, 0, -1.3) * euler(0, 1.57, 0), 0.1)
        RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.1), 0.1)
        LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.05), 0.1)
        if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value == true then
          break
        end
      end
  end
  cooldownsadd[1] = 0.16
  cooldownsadd[2] = 0.14
  cooldownsadd[3] = 0.12
  manainc = 16
  dec.Parent = nil
  attack = false
end

  Star = function(mainpart, rand)
  local stref = part(3, effects, 0, 0, BrickColor.new("Black"), "Reference", vt())
  stref.Anchored = true
  stref.Material = "Neon"
  stref.CFrame = cf(mainpart.Position)
  local strmsh = mesh("SpecialMesh", stref, "FileMesh", "45428961", vt(0, 0, 0), vt(3, 3, 3))
  hitbox.CFrame = mainpart.CFrame * cf(math.random(-100, 100) / 100, 2 + math.random(-200, 200) / 100, math.random(-100, 100) / 100)
  table.insert(Effects, {RootPart.CFrame.lookVector + vt(math.random(-rand, rand) / 100, math.random(-rand, rand) / 100, math.random(-rand, rand) / 100), "Shoot", 80, hitbox.Position, 7, 9, 0, math.random(1, 7), stref, euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0})
end

  do1 = function()
  if attack == true then
    return 
  end
    attack = true
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldowns[1] >= 50 then
    if Mode == "Sabers" then
      UnSword()
    end
    cbuster = true
    Humanoid.AutoRotate = false
    for i = 0, 1, 0.1 do
      swait()
      LeftArm.Transparency = i
      for d = 1, #Buster do
        Buster[d].Transparency = i
      end
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.8) * euler(0.2, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.1) * euler(0.4, 0, 0.4) * euler(0, -1.5, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, 0.5) * euler(1.3, 0, -1) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.1), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.05), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    local rara1 = Instance.new("NumberValue", Decrease)
    rara1.Name = "DecreaseMvmt"
    rara1.Value = 0.4
    local rara2 = Instance.new("NumberValue", Decrease)
    rara2.Name = "DecreaseDef"
    rara2.Value = -0.1
    handlewld3.Part1 = LeftArm
    handlewld3.C0 = euler(0, 0, mr(-90)) * euler(0, mr(40), 0) * cf(0, 0, 0)
    LeftArm.Transparency = 1
    for d = 1, #Buster do
      Buster[d].Transparency = 1
    end
    for i = 1, 0, -0.2 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.5)
      for d = 1, #Buster do
        Buster[d].Transparency = i
      end
    end
    for d = 1, #Buster do
      Buster[d].Transparency = 0
    end
    cshoot = false
    cdebounce = false
    local dashoot = 0
    local laser1 = part(3, nil, 0, 0.5, BrickColor.new("Really red"), "Effect", vt())
    laser1.Material = "Neon"
    laser1.Anchored = true
    local laser2 = laser1:Clone()
    local laser3 = laser1:Clone()
    local laser4 = laser1:Clone()
    local lmsh1 = mesh("CylinderMesh", laser1, "", "", vt(0, 0, 0), vt(1, 1, 1))
    local lmsh2 = mesh("CylinderMesh", laser2, "", "", vt(0, 0, 0), vt(1, 1, 1))
    local lmsh3 = mesh("CylinderMesh", laser3, "", "", vt(0, 0, 0), vt(1, 1, 1))
    local lmsh4 = (mesh("CylinderMesh", laser4, "", "", vt(0, 0, 0), vt(1, 1, 1)))
    local l2cf, l3cf, l4cf = nil, nil, nil
    while cbuster == true and cooldowns[1] > 10 do
              swait()
                    if MMouse ~= nil then
                      local mpos = handle3.CFrame * euler(0, 0, 0)
                      local cff = CFrame.new(mpos.p, MMouse.Hit.p) * CFrame.Angles(math.pi / 2, 0, 0)
                      local x, y, z = handle3.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                      handlewld3a.Part0 = handle3
                      handlewld3a.Part1 = handle3a
                      handlewld3a.C0 = clerp(handlewld3a.C0, CFrame.Angles(x, y, z) * euler(0, -mr(45), 1.57) * cf(-1, 0, 0), 0.3)
                    end
              if busterlaser == true then
                busterlaser = false
                so("306247678", Torso, 1, 0.5)
                for _,c in pairs(model3:children()) do
                  c.Transparency = 0
                end
                local dec = Instance.new("NumberValue", Decrease)
                dec.Name = "DecreaseMvmt"
                dec.Value = 0
                for d = 1, 7 do
                  for i = 1, 0, -0.25 do
                    swait()
                    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.4) * euler(0, 0, 0), 0.3)
                    do
                      do
                        if d == 1 then
                          rmsh7.Scale = vt(2.5, 2.25, rs4 - rs4 * i)
                          rmsh7a.Scale = vt(2.5, 2.25, rs4 - rs4 * i)
                          rwld7.C0 = euler(0, mr(90), 0) * cf(2.85 + rw3 * i, 0, 0.1)
                          rwld7a.C0 = euler(0, mr(90), 0) * cf(2.85 + rw3 * i, 0, -0.1)
                        else
                          if d == 2 then
                            rmsh6.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                            rmsh6a.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                            rwld6.C0 = euler(0, mr(90), 0) * cf(2.175 + rw2 * i, 0, 0.1)
                            rwld6a.C0 = euler(0, mr(90), 0) * cf(2.175 + rw2 * i, 0, -0.1)
                          else
                            if d == 3 then
                              rmsh5.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                              rmsh5a.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                              rwld5.C0 = euler(0, mr(90), 0) * cf(1.425 + rw2 * i, 0, 0.1)
                              rwld5a.C0 = euler(0, mr(90), 0) * cf(1.425 + rw2 * i, 0, -0.1)
                            else
                              if d == 4 then
                                rmsh4.Scale = vt(2.5, 2.25, rs3 - rs3 * i)
                                rmsh4a.Scale = vt(2.5, 2.25, rs3 - rs3 * i)
                                rwld4.C0 = euler(0, mr(90), 0) * cf(0.65 + rw2 * i, 0, 0.1)
                                rwld4a.C0 = euler(0, mr(90), 0) * cf(0.65 + rw2 * i, 0, -0.1)
                              else
                                if d == 5 then
                                  rmsh3.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                                  rmsh3a.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                                  rwld3.C0 = euler(0, mr(90), 0) * cf(-0.125 + rw2 * i, 0, 0.1)
                                  rwld3a.C0 = euler(0, mr(90), 0) * cf(-0.125 + rw2 * i, 0, -0.1)
                                else
                                  if d == 6 then
                                    rmsh2.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                                    rmsh2a.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                                    rwld2.C0 = euler(0, mr(90), 0) * cf(-0.875 + rw2 * i, 0, 0.1)
                                    rwld2a.C0 = euler(0, mr(90), 0) * cf(-0.875 + rw2 * i, 0, -0.1)
                                  else
                                    if d == 7 then
                                      rmsh1.Scale = vt(2.5, 2.25, rs1 - rs1 * i)
                                      rmsh1a.Scale = vt(2.5, 2.25, rs1 - rs1 * i)
                                      rwld1.C0 = euler(0, mr(90), 0) * cf(-1.55 + rw1 * i, 0, 0.1)
                                      rwld1a.C0 = euler(0, mr(90), 0) * cf(-1.55 + rw1 * i, 0, -0.1)
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
                local mainpos = MMouse.Hit.p
                for i = 0, 3, 0.2 do
                  swait()
                  if mainpos ~= nil then
                    local mpos = handle3.CFrame * euler(0, 0, 0)
                    local cff = CFrame.new(mpos.p, mainpos) * CFrame.Angles(math.pi / 2, 0, 0)
                    local x, y, z = handle3.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                    handlewld3a.Part0 = handle3
                    handlewld3a.Part1 = handle3a
                    handlewld3a.C0 = clerp(handlewld3a.C0, CFrame.Angles(x, y, z) * euler(0, -mr(45), 1.57) * cf(-1, 0, 0), 0.8)
                  end
                  do
                    do
                      if i < 1 then
                        handlewld4.C0 = clerp(handlewld4.C0, cf(0, 0, 0.1), 0.4)
                        handlewld5.C0 = clerp(handlewld5.C0, cf(0, 0, -0.1), 0.4)
                        handlewld6.C0 = euler(0, mr(-45) * i, 0) * cf(3.35, 0, -0.075 - 0.065 * i)
                        handlewld7.C0 = euler(0, mr(45) * i, 0) * cf(3.35, 0, 0.075 + 0.065 * i)
                      end
                    end
                  end
                end
                mana.Value = mana.Value - 15
                cooldowns[1] = cooldowns[1] - 30
                for i = 1, 3 do
                  so("341336476", handle10, 10, 1)
                end
                local refl = part(3, nil, 0, 1, BrickColor.new("Black"), "Reference", vt())
                refl.Anchored = true
                for d = 1, 7 do
                  for i = 0, 1, 0.25 do
                    swait()
                    if mainpos ~= nil then
                      local mpos = handle3.CFrame * euler(0, 0, 0)
                      local cff = CFrame.new(mpos.p, mainpos) * CFrame.Angles(math.pi / 2, 0, 0)
                      local x, y, z = handle3.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                      handlewld3a.Part0 = handle3
                      handlewld3a.Part1 = handle3a
                      handlewld3a.C0 = clerp(handlewld3a.C0, CFrame.Angles(x, y, z) * euler(0, -mr(45), 1.57) * cf(-1, 0, 0) * cf(math.random(-50, 50) / 100, math.random(-50, 50) / 100, math.random(-50, 50) / 100), 0.5)
                      for i = 1, 5 do
                        tehcf = cf(0, 0, -1.5)
                        if i == 2 then
                          tehcf = cf(0, 3, -1.5)
                        else
                          if i == 3 then
                            tehcf = cf(0, -3, -1.5)
                          else
                            if i == 4 then
                              tehcf = cf(3, 0, -1.5)
                            else
                              if i == 5 then
                                tehcf = cf(-3, 0, -1.5)
                              end
                            end
                          end
                        end
                        refl.CFrame = handle10.CFrame * tehcf
                        local mainpos = refl.Position
                        local dist = 500
                        raa = math.random(1, 7)
                        if i == 1 then
                          MagicCircle(Neons[raa], refl.CFrame, 30, 30, 10, 0, 0, 0, 0.3)
                        end
                        local bounce = 10
                        repeat
                          bounce = bounce - 1
                          local hit, pos = rayCast(mainpos, refl.CFrame.lookVector, dist, Character)
                          local targl = mainpos - pos
                          local magl = targl.magnitude
                          dist = dist - magl
                          local mag = (mainpos - pos).magnitude
                          if i == 1 then
                            MagicCylinder(Neons[raa], CFrame.new((mainpos + pos) / 2, pos) * angles(1.57, 0, 0), 30, mag * 5, 30, 0, 0, 0, 0.3)
                          end
                          mainpos = pos
                          if hit ~= nil then
                            Damagefunc(hit, 8, 10, 0, "Normal", RootPart, 0.2, 1, (math.random(8, 10)), nil, nil, true)
                          end
                        until dist <= 0 or hit == nil or bounce < 1
                      end
                    end
                    do
                      do
                        if d == 7 then
                          rainbow6.Transparency = 1
                          rainbow6a.Transparency = 1
                          rmsh7.Scale = vt(2.5, 2.25, rs4 - rs4 * i)
                          rmsh7a.Scale = vt(2.5, 2.25, rs4 - rs4 * i)
                          rwld7.C0 = euler(0, mr(90), 0) * cf(2.85 + rw3 * i, 0, 0.1)
                          rwld7a.C0 = euler(0, mr(90), 0) * cf(2.85 + rw3 * i, 0, -0.1)
                        else
                          if d == 6 then
                            rainbow5.Transparency = 1
                            rainbow5a.Transparency = 1
                            rmsh6.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                            rmsh6a.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                            rwld6.C0 = euler(0, mr(90), 0) * cf(2.175 + rw2 * i, 0, 0.1)
                            rwld6a.C0 = euler(0, mr(90), 0) * cf(2.175 + rw2 * i, 0, -0.1)
                          else
                            if d == 5 then
                              rainbow4.Transparency = 1
                              rainbow4a.Transparency = 1
                              rmsh5.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                              rmsh5a.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                              rwld5.C0 = euler(0, mr(90), 0) * cf(1.425 + rw2 * i, 0, 0.1)
                              rwld5a.C0 = euler(0, mr(90), 0) * cf(1.425 + rw2 * i, 0, -0.1)
                            else
                              if d == 4 then
                                rainbow3.Transparency = 1
                                rainbow3a.Transparency = 1
                                rmsh4.Scale = vt(2.5, 2.25, rs3 - rs3 * i)
                                rmsh4a.Scale = vt(2.5, 2.25, rs3 - rs3 * i)
                                rwld4.C0 = euler(0, mr(90), 0) * cf(0.65 + rw2 * i, 0, 0.1)
                                rwld4a.C0 = euler(0, mr(90), 0) * cf(0.65 + rw2 * i, 0, -0.1)
                              else
                                if d == 3 then
                                  rainbow2.Transparency = 1
                                  rainbow2a.Transparency = 1
                                  rmsh3.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                                  rmsh3a.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                                  rwld3.C0 = euler(0, mr(90), 0) * cf(-0.125 + rw2 * i, 0, 0.1)
                                  rwld3a.C0 = euler(0, mr(90), 0) * cf(-0.125 + rw2 * i, 0, -0.1)
                                else
                                  if d == 2 then
                                    rainbow1.Transparency = 1
                                    rainbow1a.Transparency = 1
                                    rmsh2.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                                    rmsh2a.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                                    rwld2.C0 = euler(0, mr(90), 0) * cf(-0.875 + rw2 * i, 0, 0.1)
                                    rwld2a.C0 = euler(0, mr(90), 0) * cf(-0.875 + rw2 * i, 0, -0.1)
                                  else
                                    if d == 1 then
                                      rmsh1.Scale = vt(2.5, 2.25, rs1 - rs1 * i)
                                      rmsh1a.Scale = vt(2.5, 2.25, rs1 - rs1 * i)
                                      rwld1.C0 = euler(0, mr(90), 0) * cf(-1.55 + rw1 * i, 0, 0.1)
                                      rwld1a.C0 = euler(0, mr(90), 0) * cf(-1.55 + rw1 * i, 0, -0.1)
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
                for _,c in pairs(model3:children()) do
                  c.Transparency = 1
                end
                for i = 0, 1, 0.1 do
                  swait()
                  if mainpos ~= nil then
                    local mpos = handle3.CFrame * euler(0, 0, 0)
                    local cff = CFrame.new(mpos.p, mainpos) * CFrame.Angles(math.pi / 2, 0, 0)
                    local x, y, z = handle3.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                    handlewld3a.Part0 = handle3
                    handlewld3a.Part1 = handle3a
                    handlewld3a.C0 = clerp(handlewld3a.C0, CFrame.Angles(x, y, z) * euler(0, -mr(45), 1.57) * cf(-1, 0, 0), 0.5)
                  end
                  do
                    do
                      if i < 1 then
                        handlewld4.C0 = clerp(handlewld4.C0, cf(0, 0, 0), 0.4)
                        handlewld5.C0 = clerp(handlewld5.C0, cf(0, 0, 0), 0.4)
                        handlewld6.C0 = clerp(handlewld6.C0, cf(3.35, 0, -0.075), 0.4)
                        handlewld7.C0 = clerp(handlewld7.C0, cf(3.35, 0, 0.075), 0.4)
                      end
                    end
                  end
                end
                Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 1)
                RootJoint.C1 = clerp(RootJoint.C1, RootCF, 1)
                dec.Parent = nil
                handlewld4.C0 = cf(0, 0, 0)
                handlewld5.C0 = cf(0, 0, 0)
                handlewld6.C0 = clerp(handlewld6.C0, cf(3.35, 0, -0.075), 1)
                handlewld7.C0 = clerp(handlewld7.C0, cf(3.35, 0, 0.075), 1)
              end
              if Stagger.Value ~= true and StunT.Value > Stun.Value then
                if StaggerHit.Value ~= true and cshoot == true then
                  cdebounce = true
                  cshoot = false
while cdebounce do
swait()
                if cdebounce == true and dashoot < 27 then
                  if dashoot == 0 then
                    l2cf = vt(math.random(-10, 10) / 100, math.random(-10, 10) / 100, math.random(-10, 10) / 100)
                    l3cf = vt(math.random(-10, 10) / 100, math.random(-10, 10) / 100, math.random(-10, 10) / 100)
                    l4cf = vt(math.random(-10, 10) / 100, math.random(-10, 10) / 100, math.random(-10, 10) / 100)
                  end
                  dashoot = dashoot + 1
                  local hit, pos = rayCast(handle10.Position, handle10.CFrame.lookVector, 500, Character)
                  local hit2, pos2 = rayCast(handle10.Position, handle10.CFrame.lookVector + l2cf, 500, Character)
                  local hit3, pos3 = rayCast(handle10.Position, handle10.CFrame.lookVector + l3cf, 500, Character)
                  local hit4, pos4 = rayCast(handle10.Position, handle10.CFrame.lookVector + l4cf, 500, Character)
                  if (dashoot) % 3 == 0 and dashoot < 20 then
                    so("341336333", handle10, 1, 1)
                  end
                  if dashoot == 20 or dashoot == 22 or dashoot == 24 or dashoot == 26 then
                    cooldowns[1] = cooldowns[1] - 4
                    handlewld8.C0 = euler(0, mr(-20), 0) * cf(0.291, 0, 0)
                    handlewld9.C0 = euler(0, mr(20), 0) * cf(0.291, 0, 0)
                    so("341336385", handle10, 1, 1)
                    table.insert(Effects, {handle10.CFrame.lookVector, "Shoot2", 50, handle10.Position, 6, 8, 0, math.random(1, 7)})
                    table.insert(Effects, {handle10.CFrame.lookVector + l2cf, "Shoot2", 50, handle10.Position, 6, 8, 0, math.random(1, 7)})
                    table.insert(Effects, {handle10.CFrame.lookVector + l3cf, "Shoot2", 50, handle10.Position, 6, 8, 0, math.random(1, 7)})
                    table.insert(Effects, {handle10.CFrame.lookVector + l4cf, "Shoot2", 50, handle10.Position, 6, 8, 0, math.random(1, 7)})
                  else
                    handlewld8.C0 = euler(0, 0, 0) * cf(0.291, 0, 0)
                    handlewld9.C0 = euler(0, 0, 0) * cf(0.291, 0, 0)
                  end
                  local mag = (handle10.Position - pos).magnitude
                  laser1.Parent = effects
                  laser1.CFrame = cf((handle10.Position + pos) / 2, pos) * angles(1.57, 0, 0)
                  lmsh1.Scale = vt(0.5, mag * 5, 0.5)
                  local mag2 = (handle10.Position - pos2).magnitude
                  laser2.Parent = effects
                  laser2.CFrame = cf((handle10.Position + pos2) / 2, pos2) * angles(1.57, 0, 0)
                  lmsh2.Scale = vt(0.5, mag2 * 5, 0.5)
                  local mag3 = (handle10.Position - pos3).magnitude
                  laser3.Parent = effects
                  laser3.CFrame = cf((handle10.Position + pos3) / 2, pos3) * angles(1.57, 0, 0)
                  lmsh3.Scale = vt(0.5, mag3 * 5, 0.5)
                  local mag4 = (handle10.Position - pos4).magnitude
                  laser4.Parent = effects
                  laser4.CFrame = cf((handle10.Position + pos4) / 2, pos4) * angles(1.57, 0, 0)
                  lmsh4.Scale = vt(0.5, mag4 * 5, 0.5)
                else
                  do
                    laser1.Parent = nil
                    laser2.Parent = nil
                    laser3.Parent = nil
                    laser4.Parent = nil
                    cdebounce = false
                    dashoot = 0
                    if MMouse ~= nil then
                      local mpos = handle3.CFrame * euler(0, 0, 0)
                      local cff = CFrame.new(mpos.p, MMouse.Hit.p) * CFrame.Angles(math.pi / 2, 0, 0)
                      local x, y, z = handle3.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                      handlewld3a.Part0 = handle3
                      handlewld3a.Part1 = handle3a
                      handlewld3a.C0 = clerp(handlewld3a.C0, CFrame.Angles(x, y, z) * euler(0, -mr(45), 1.57) * cf(-1, 0, 0), 0.3)
                    end
                    end
                  end
                  end
                  end
                  end
                      if Anim == "Idle" then
                        RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.1) * euler(0.4, 0, 0.4) * euler(0, -1.5, 0), 0.3)
                        RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.1), 0.3)
                        LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.05), 0.3)
                      end
          if Anim == "Walk" or Anim == "Run" then
            RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0.1) * euler(-0.2, 0, 0.4) * euler(0, 0, 0), 0.3)
            RH.C0 = clerp(RH.C0, cf(0.95, -0.8, -0.2) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.5), 0.3)
            LH.C0 = clerp(LH.C0, cf(-0.95, -0.8, -0.2) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.5), 0.3)
          end
        if Anim == "Jump" then
          RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.1) * euler(0.4, 0, 0.8) * euler(0, 0, 0), 0.3)
          RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.1), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.05), 0.3)
        end
      if Anim == "Fall" then
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.8) * euler(0, -1.5, 0), 0.2)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
      end
            end
    Humanoid.AutoRotate = true
    cbuster = false
    rara1.Parent = nil
    rara2.Parent = nil
    handlewld8.C0 = euler(0, 0, 0) * cf(0.291, 0, 0)
    handlewld9.C0 = euler(0, 0, 0) * cf(0.291, 0, 0)
    laser1.Parent = nil
    laser2.Parent = nil
    laser3.Parent = nil
    laser4.Parent = nil
    LW.Part0 = ch.Torso
    LW.Part1 = ch["Left Arm"]
    handlewld3.Part0 = handle3
    handlewld3.Part1 = LeftArm
    for i = 0, 1, 0.1 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.8) * euler(0.2, 0, 0), 0.3)
      for d = 1, #Buster do
        Buster[d].Transparency = i
      end
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    handlewld3a.C0 = clerp(handlewld3a.C0, cf(0, 0, 0), 1)
    handlewld3.Part1 = Torso
    handlewld3.C0 = euler(1.57, 0, 0) * cf(-0.5, 0, 0) * euler(0, 0, -0.5) * cf(0, 0, -0.8)
    for i = 1, 0, -0.1 do
      swait()
      LeftArm.Transparency = i
      for d = 1, #Buster do
        Buster[d].Transparency = i
      end
    end
    LeftArm.Transparency = 0
    for d = 1, #Buster do
      Buster[d].Transparency = 0
    end
  end
    attack = false
end

  do2 = function()
	if sbreaker == true then
	sbreaker = false
	end
  if attack == true then
    return 
  end
    attack = true
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldowns[2] >= 70 then
    if Mode == "Sabers" then
      UnSword()
    end
    local rara1 = Instance.new("NumberValue", Decrease)
    rara1.Name = "DecreaseMvmt"
    rara1.Value = -0.05
    local rara2 = Instance.new("NumberValue", Decrease)
    rara2.Name = "DecreaseDef"
    rara2.Value = 0.1
    so("341336144", LeftArm, 1, 1)
    so("341336144", RightArm, 1, 1)
    sbreaker = true
    local sbref1 = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
    local sbrwld1 = weld(sbref1, sbref1, LeftArm, cf(0, 1, 0))
    local sbref2 = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
    local sbrwld2 = weld(sbref2, sbref2, RightArm, cf(0, 1, 0))
    local da1 = lparti1:Clone()
    da1.Parent = sbref1
    local da2 = lparti1:Clone()
    da2.Parent = sbref2
    da1.Enabled = true
    da2.Enabled = true
    for i = 0, 1, 0.1 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2.5, 0, 1) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2.5, 0, -1) * euler(0, 0, 0), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    shockshoot = false
    shockdebounce = false
    local dashoot = 3
    local sref = part(3, nil, 0, 1, BrickColor.new("Black"), "Reference", vt())
    sref.Anchored = true
    TehM = nil
    while sbreaker == true and cooldowns[2] > 20 do
        swait()
        if sbreakerII == true then
          sbreakerII = false
          for i = 0, 1, 0.1 do
            swait()
            da1.Color = cs(Neons[math.random(1, 7)].Color, Neons[math.random(1, 7)].Color)
            da2.Color = cs(Neons[math.random(1, 7)].Color, Neons[math.random(1, 7)].Color)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.3, 0, -0.2) * euler(0, 0, 0), 0.3)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.3, 0, 0.2) * euler(0, 0, 0), 0.3)
          end
          cooldowns[2] = cooldowns[2] - 30
          mana.Value = mana.Value - 10
          for i = 1, 3 do
            MouseLook = cf((RootPart.Position + MMouse.Hit.p) / 2, MMouse.Hit.p)
            local hit, pos = rayCast(RootPart.Position, MouseLook.lookVector, 200, Character)
            rand = cf(math.random(-1500, 1500) / 100, 10, math.random(-1500, 1500) / 100)
            sref.CFrame = cf(pos) * rand
            local hit2, pos2 = rayCast(sref.Position, CFrame.new(sref.Position, sref.Position - Vector3.new(0, 1, 0)).lookVector, 999, Character)
            local d1 = part(3, effects, 0, 0.5, BrickColor.new("White"), "Effect", vt())
            d1.Anchored = true
            d1.CFrame = cf(pos2)
            d1.Material = "Neon"
            msh = mesh("CylinderMesh", d1, "nil", "nil", vt(0, 0, 0), vt(100, 5, 100))
            d2 = d1:Clone()
            d2.Transparency = 1
            d2.Parent = d1
            d2.CFrame = cf(d1.Position)
            d2.BrickColor = BrickColor.new("New Yeller")
            table.insert(Effects, {d1, "SatelliteStrike2", d2, d2.Mesh, 0, 0})
          end
        end
        do
          if shockshoot == true then
            shockshoot = false
            shockdebounce = true
          end
          if shockdebounce == true and dashoot < 25 then
            dashoot = dashoot + 1
            if (dashoot) % 4 == 0 and dashoot < 20 then
              cooldowns[2] = cooldowns[2] - 3
              MouseLook = cf((RootPart.Position + TehM) / 2, TehM)
              local hit, pos = rayCast(RootPart.Position, MouseLook.lookVector, 200, Character)
              rand = cf(math.random(-1500, 1500) / 100, 10, math.random(-1500, 1500) / 100)
              if dashoot == 4 then
                rand = cf(0, 10, 0)
              end
              sref.CFrame = cf(pos) * rand
              local hit2, pos2 = rayCast(sref.Position, CFrame.new(sref.Position, sref.Position - Vector3.new(0, 1, 0)).lookVector, 999, Character)
              local d1 = part(3, effects, 0, 0.5, BrickColor.new("White"), "Effect", vt())
              d1.Anchored = true
              d1.CFrame = cf(pos2)
              d1.Material = "Neon"
              msh = mesh("CylinderMesh", d1, "nil", "nil", vt(0, 0, 0), vt(50, 5, 50))
              d2 = d1:Clone()
              d2.Transparency = 1
              d2.Parent = d1
              d2.CFrame = cf(d1.Position)
              d2.BrickColor = BrickColor.new("New Yeller")
              table.insert(Effects, {d1, "SatelliteStrike", d2, d2.Mesh, 0, 0})
            end
          else
            do
              shockdebounce = false
              dashoot = 3
              da1.Color = cs(Neons[math.random(1, 7)].Color, Neons[math.random(1, 7)].Color)
              da2.Color = cs(Neons[math.random(1, 7)].Color, Neons[math.random(1, 7)].Color)
              RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0.1) * euler(2.5, 0, 1) * euler(0, 0, 0), 0.3)
              LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0.1) * euler(2.5, 0, -1) * euler(0, 0, 0), 0.3)
              if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value == true then
                break
              end
            end
          end
        end
              if Anim == "Idle" then
                RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.1), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.05), 0.3)
                    end
                if Anim == "Walk" or Anim == "Run" then
                  RH.C0 = clerp(RH.C0, cf(0.95, -0.8, -0.2) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.5), 0.3)
                  LH.C0 = clerp(LH.C0, cf(-0.95, -0.8, -0.2) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.5), 0.3)
                    end
                  if Anim == "Jump" then
                    RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.1), 0.3)
                    LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.05), 0.3)
                    end
                    if Anim == "Fall" then
                      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
                      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
                    end
      end
    sbreaker = false
    rara1.Parent = nil
    rara2.Parent = nil
    sbrwld1.Parent = nil
    sbrwld2.Parent = nil
    sbref1.Anchored = true
    sbref2.Anchored = true
    da1.Enabled = false
    da2.Enabled = false
    game:GetService("Debris"):AddItem(sbref1, 5)
    game:GetService("Debris"):AddItem(sbref2, 5)
  end
    attack = false
end

  do3 = function()
  if attack == true then
    return 
  end
    attack = true
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldowns[3] >= 80 then
    if Mode == "Sabers" then
      UnSword()
    end
    local rara1 = Instance.new("NumberValue", Decrease)
    rara1.Name = "DecreaseMvmt"
    rara1.Value = 0.1
    local rara2 = Instance.new("NumberValue", Decrease)
    rara2.Name = "DecreaseDef"
    rara2.Value = 0.05
    so("341336144", LeftArm, 1, 1)
    so("341336144", RightArm, 1, 1)
    sblazing = true
    local sbref1 = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt(1, 1, 1))
    local sbrwld1 = weld(sbref1, sbref1, LeftArm, cf(0, 1, 0))
    local sbref2 = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt(1, 1, 1))
    local sbrwld2 = weld(sbref2, sbref2, RightArm, cf(0, 1, 0))
    local da1 = sparti:Clone()
    da1.Parent = sbref1
    local da2 = sparti:Clone()
    da2.Parent = sbref2
    da1.Enabled = true
    da2.Enabled = true
    for i = 0, 1, 0.1 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2.5, 0, 1) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2.5, 0, -1) * euler(0, 0, 0), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    starshoot = false
    stardebounce = false
    local dashoot = 0
    local sref = part(3, nil, 0, 0.5, BrickColor.new("Black"), "Reference", vt())
    sref.Anchored = true
    TehM = nil
    while sblazing == true and cooldowns[3] > 20 do
              swait()
              if galacblazing == true then
                galacblazing = false
                for i = 0, 1, 0.1 do
                  swait()
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.6, 0) * euler(2.8, 0, 0.4) * euler(0, 0, 0), 0.3)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.6, 0) * euler(2.8, 0, -0.4) * euler(0, 0, 0), 0.3)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.6, 0, 0), 0.3)
                  da1.Color = cs(Neons[math.random(1, 7)].Color, Neons[math.random(1, 7)].Color)
                  da2.Color = cs(Neons[math.random(1, 7)].Color, Neons[math.random(1, 7)].Color)
                  if math.random(1, 2) == 1 then
                    da1.RotSpeed = nr(400, 500)
                  else
                    da1.RotSpeed = nr(-500, -400)
                  end
                  if math.random(1, 2) == 1 then
                    da2.RotSpeed = nr(400, 500)
                  else
                    da2.RotSpeed = nr(-500, -400)
                  end
                end
                cooldowns[3] = cooldowns[3] - 20
                mana.Value = mana.Value - 20
                sref.CFrame = cf(RootPart.Position) * cf(0, 50, 0)
                sref.CFrame = cf(sref.Position, MMouse.Hit.p)
                local stref = part(3, effects, 0, 0, BrickColor.new("Black"), "Reference", vt())
                stref.Anchored = true
                stref.Material = "Neon"
                stref.CFrame = sref.CFrame
                local strmsh = mesh("SpecialMesh", stref, "FileMesh", "45428961", vt(0, 0, 0), vt(90, 90, 90))
                so("341336159", stref, 1, 0.4)
                table.insert(Effects, {stref.CFrame.lookVector, "Shoot4", 150, sref.Position, 7, 9, 0, math.random(1, 7), stref, math.random(-50, 50), 0})
              end
            do
              if Stagger.Value ~= true and StunT.Value > Stun.Value then
                if StaggerHit.Value ~= true or starshoot == true then
                  starshoot = false
                  stardebounce = true
                  cooldowns[3] = cooldowns[3] - 10
                  sref.CFrame = cf(RootPart.Position) * cf(math.random(-3000, 3000) / 100, math.random(500, 5000) / 100, math.random(-3000, 3000) / 100)
                  sref.CFrame = cf(sref.Position, MMouse.Hit.p)
                  local stref = part(3, effects, 0, 0, BrickColor.new("Black"), "Reference", vt())
                  stref.Anchored = true
                  stref.Material = "Neon"
                  stref.CFrame = sref.CFrame
                  local strmsh = mesh("SpecialMesh", stref, "FileMesh", "45428961", vt(0, 0, 0), vt(30, 30, 30))
                  so("341336159", stref, 1, 1)
                  table.insert(Effects, {stref.CFrame.lookVector, "Shoot3", 150, sref.Position, 7, 9, 0, math.random(1, 7), stref, math.random(-50, 50), 0})
                end
                do
                  if stardebounce == true and dashoot < 10 then
                    dashoot = dashoot + 1
                  else
                    stardebounce = false
                    dashoot = 0
                  end
                  da1.Color = cs(Neons[math.random(1, 7)].Color, Neons[math.random(1, 7)].Color)
                  da2.Color = cs(Neons[math.random(1, 7)].Color, Neons[math.random(1, 7)].Color)
                  if math.random(1, 2) == 1 then
                    da1.RotSpeed = nr(400, 500)
                  else
                    da1.RotSpeed = nr(-500, -400)
                  end
                  if math.random(1, 2) == 1 then
                    da2.RotSpeed = nr(400, 500)
                  else
                    da2.RotSpeed = nr(-500, -400)
                  end
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.3)
                  RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0.1) * euler(2.5, 0, 1) * euler(0, 0, 0), 0.3)
                  LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0.1) * euler(2.5, 0, -1) * euler(0, 0, 0), 0.3)
                  if Anim == "Idle" then
                    RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.1), 0.3)
                    LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.05), 0.3)
                  end
                end
          if Anim == "Walk" or Anim == "Run" then
            RH.C0 = clerp(RH.C0, cf(0.95, -0.8, -0.2) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.5), 0.3)
            LH.C0 = clerp(LH.C0, cf(-0.95, -0.8, -0.2) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.5), 0.3)
          end
        end
        if Anim == "Jump" then
          RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.1), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.05), 0.3)
        end
      end
      if Anim == "Fall" then
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
      end
    end
    sblazing = false
    rara1.Parent = nil
    rara2.Parent = nil
    sref.Parent = nil
    sbrwld1.Parent = nil
    sbrwld2.Parent = nil
    sbref1.Anchored = true
    sbref2.Anchored = true
    da1.Enabled = false
    da2.Enabled = false
    game:GetService("Debris"):AddItem(sbref1, 5)
    game:GetService("Debris"):AddItem(sbref2, 5)
  end
    attack = false
end

  do4 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  cooldowns[4] = 0
end

  findNearestTorso = function(pos, distance)
  local list = (game.Workspace:children())
  local torso = nil
  local dist = distance
  local temp, human, temp2 = nil, nil, nil
  for x = 1, #list do
    temp2 = list[x]
    canfind = true
    if game.Players:GetPlayerFromCharacter(temp2) ~= nil and game.Players:GetPlayerFromCharacter(temp2).TeamColor == Player.TeamColor and Player.Neutral == false then
      canfind = false
    end
    canfind = true
    if temp2.className == "Model" and temp2 ~= Character and canfind == true then
      temp = temp2:findFirstChild("Torso")
      human = temp2:findFirstChild("Humanoid")
      if temp ~= nil and human ~= nil and human.Health > 0 and (temp.Position - pos).magnitude < dist then
        torso = temp
        dist = (temp.Position - pos).magnitude
      end
    end
  end
  return torso, dist
end

  DecreaseStat = function(Model, Stat, Amount, Duration)
  if Model:findFirstChild("Stats") ~= nil and Model.Stats[Stat] ~= nil then
    Model.Stats[Stat].Value = Model.Stats[Stat].Value - Amount
    d = Instance.new("NumberValue", Model.Stats.Decrease)
    dur = Instance.new("NumberValue", d)
    dur.Name = "Duration"
    dur.Value = Duration
    game:GetService("Debris"):AddItem(d, 20)
    if Stat == "Damage" then
      d.Name = "DecreaseAtk"
    else
      if Stat == "Defense" then
        d.Name = "DecreaseDef"
      else
        if Stat == "Movement" then
          d.Name = "DecreaseMvmt"
        end
      end
    end
    if Model:findFirstChild("Torso") ~= nil then
      display = ""
      if Stat == "Damage" then
        if Amount > 0 then
          display = "-Damage"
        else
          display = "+Damage"
        end
      else
        if Stat == "Defense" then
          if Amount > 0 then
            display = "-Defense"
          else
            display = "+Defense"
          end
        else
          if Stat == "Movement" then
            if Amount > 0 then
              display = "-Movement"
            else
              display = "+Movement"
            end
          end
        end
      end
      showDamage(Model, display, "Debuff")
    end
    d.Value = Amount
  end
end

  GetDist = function(Part1, Part2, magni)
  local targ = Part1.Position - Part2.Position
  local mag = targ.magnitude
  if mag <= magni then
    return true
  else
    return false
  end
end

  MagniDamage = function(Part, magni, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = nil
      for _,d in pairs(c:children()) do
        if d.className == "Model" and ranged ~= true then
          head = d:findFirstChild("Hitbox")
          if d.Parent == Character then
            break
          end
          if head ~= nil then
            local targ = head.Position - Part.Position
            local mag = targ.magnitude
            if mag <= magni and c.Name ~= Player.Name then
              ref = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
              ref.Anchored = true
              ref.CFrame = cf(head.Position)
              game:GetService("Debris"):AddItem(ref, 1)
              hitnum = math.random(1, 5)
              if hitnum == 1 then
                so("199148971", ref, 1, 1)
              else
                if hitnum == 2 then
                  so("199149025", ref, 1, 1)
                else
                  if hitnum == 3 then
                    so("199149072", ref, 1, 1)
                  else
                    if hitnum == 4 then
                      so("199149109", ref, 1, 1)
                    else
                      if hitnum == 5 then
                        so("199149119", ref, 1, 1)
                      end
                    end
                  end
                end
              end
              StaggerHit.Value = true
            end
          end
        end
        do
          if d.className == "Part" then
            head = d
            if head ~= nil then
              local targ = head.Position - Part.Position
              local mag = targ.magnitude
              if mag <= magni and c.Name ~= Player.Name then
                if stun == nil then
                  stun = math.random(5, 10)
                end
                local Rang = nil
                if Ranged == false then
                  Rang = true
                end
                local stag = nil
                if shbash == true then
                  stag = true
                end
                Damagefunc(head, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration)
              end
            end
          end
        end
      end
    end
  end
end

  MagniBuff = function(Part, magni, Dec, DecAm, Dur)
  DecreaseStat(Character, Dec, DecAm, Dur)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        cando = true
        if mag <= magni then
          if Player.Neutral == false then
            if game.Players:GetPlayerFromCharacter(head.Parent) ~= nil then
              if game.Players:GetPlayerFromCharacter(head.Parent).TeamColor == Player.TeamColor then
                cando = true
              else
                cando = false
              end
            else
              cando = false
            end
            if head.Parent:findFirstChild("Alignment") ~= nil and head.Parent.Alignment.Value == Player.TeamColor.Color then
              cando = true
            end
          else
            cando = false
          end
          if cando == true then
            DecreaseStat(head.Parent, Dec, DecAm, Dur)
          end
        end
      end
    end
  end
end

  rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end

  local Point = Torso.CFrame * cf(0, Torso.Size.Y, 0)
  LastPoint = Point
  effect = function(Color, Ref, LP, P1, returnn, size, thing1)
  if LP == nil or P1 == nil then
    return 
  end
  local effectsmsh = Instance.new("SpecialMesh")
  effectsmsh.Scale = Vector3.new(0.2, 1, 0.2)
  effectsmsh.MeshType = "Head"
  effectsmsh.Name = "Mesh"
  local effectsg = Instance.new("Part")
  NoOutline(effectsg)
  effectsg.formFactor = 3
  effectsg.CanCollide = false
  effectsg.Name = "Eff"
  effectsg.Locked = true
  effectsg.Anchored = true
  effectsg.Size = Vector3.new(0.5, 1, 0.5)
  effectsg.Parent = workspace
  effectsmsh.Parent = effectsg
  effectsg.BrickColor = BrickColor.new(Color)
  effectsg.Reflectance = Ref
  local point1 = P1
  local mg = (LP.p - point1.p).magnitude
  effectsg.Size = Vector3.new(0.5, mg, 0.5)
  effectsg.CFrame = cf((LP.p + point1.p) / 2, point1.p) * CFrame.Angles(math.rad(90), 0, 0)
  effectsmsh.Scale = Vector3.new(size, 1, size)
  game:GetService("Debris"):AddItem(effectsg, 2)
  if returnn then
    return effectsg
  end
  if not returnn then
    if thing1 == 1 then
      table.insert(Effects, {effectsg, "Cylinder", 0.05, 0.2, 0, 0.2, effectsmsh})
    else
      if thing1 == 2 then
        table.insert(Effects, {effectsg, "Cylinder", 0.2, 0.01, 0, 0.01, effectsmsh})
      else
        if thing1 == 3 then
          table.insert(Effects, {effectsg, "Cylinder", 0, 0, 0, 0.1, effectsmsh})
        end
      end
    end
  end
end

  effect2 = function(Color, Ref, LP, P1, returnn, size, raa)
  if LP == nil or P1 == nil then
    return 
  end
  MshTypee = "CylinderMesh"
  if raa == 2 then
    MshTypee = "BlockMesh"
  end
  local effectsmsh = Instance.new(MshTypee)
  effectsmsh.Scale = Vector3.new(0.2, 1, 0.2)
  effectsmsh.Name = "Mesh"
  local effectsg = Instance.new("Part")
  NoOutline(effectsg)
  if raa == 2 then
    effectsg.Material = "Neon"
  end
  effectsg.formFactor = 3
  effectsg.CanCollide = false
  effectsg.Name = "Eff"
  effectsg.Locked = true
  effectsg.Anchored = true
  effectsg.Size = Vector3.new(0.5, 1, 0.5)
  effectsg.Parent = workspace
  effectsmsh.Parent = effectsg
  effectsg.BrickColor = BrickColor.new(Color)
  effectsg.Reflectance = Ref
  local point1 = P1
  local mg = (LP.p - point1.p).magnitude
  effectsg.Size = Vector3.new(0.5, mg, 0.5)
  effectsg.CFrame = cf((LP.p + point1.p) / 2, point1.p) * CFrame.Angles(math.rad(90), 0, 0)
  effectsmsh.Scale = Vector3.new(size, 1, size)
  game:GetService("Debris"):AddItem(effectsg, 5)
  if returnn then
    return effectsg
  end
  if not returnn then
    if raa == 2 then
      table.insert(Effects, {effectsg, "Cylinder", 0.05, -0.05, 0, -0.05, effectsmsh})
    else
      table.insert(Effects, {effectsg, "Cylinder", 0.1, -0.2, 0, -0.2, effectsmsh})
    end
  end
end

  local CFrameFromTopBack = function(at, top, back)
  local right = top:Cross(back)
  return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

  Triangle = function(a, b, c)
  local edg1 = c - a:Dot(b - a.unit)
  local edg2 = a - b:Dot(c - b.unit)
  local edg3 = b - c:Dot(a - c.unit)
  if edg1 <= b - a.magnitude and edg1 >= 0 then
    a = a
  else
    if edg2 <= c - b.magnitude and edg2 >= 0 then
      a = b
    else
      if edg3 <= a - c.magnitude and edg3 >= 0 then
        a = c
      else
        assert(false, "unreachable")
      end
    end
  end
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
  local list = {}
  if len1 > 0.01 then
    local w1 = Instance.new("WedgePart", m)
    w1.Name = "Triangle"
    game:GetService("Debris"):AddItem(w1, 5)
    w1.Material = "SmoothPlastic"
    w1.FormFactor = "Custom"
    w1.BrickColor = BrickColor.new("Medium blue")
    w1.Transparency = 0
    w1.Reflectance = 0
    w1.Material = "SmoothPlastic"
    w1.CanCollide = false
    NoOutline(w1)
    local sz = Vector3.new(0.2, width, len1)
    w1.Size = sz
    local sp = Instance.new("SpecialMesh", w1)
    sp.MeshType = "Wedge"
    sp.Scale = Vector3.new(0, 1, 1) * sz / w1.Size
    w1:BreakJoints()
    w1.Anchored = true
    w1.Parent = workspace
    w1.Transparency = 0.7
    table.insert(Effects, {w1, "Disappear", 0.05})
    w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
    table.insert(list, w1)
  end
  do
    if len2 > 0.01 then
      local w2 = Instance.new("WedgePart", m)
      w2.Name = "Triangle"
      game:GetService("Debris"):AddItem(w2, 5)
      w2.Material = "SmoothPlastic"
      w2.FormFactor = "Custom"
      w2.BrickColor = BrickColor.new("Medium blue")
      w2.Transparency = 0
      w2.Reflectance = 0
      w2.Material = "SmoothPlastic"
      w2.CanCollide = false
      NoOutline(w2)
      local sz = Vector3.new(0.2, width, len2)
      w2.Size = sz
      local sp = Instance.new("SpecialMesh", w2)
      sp.MeshType = "Wedge"
      sp.Scale = Vector3.new(0, 1, 1) * sz / w2.Size
      w2:BreakJoints()
      w2.Anchored = true
      w2.Parent = workspace
      w2.Transparency = 0.7
      table.insert(Effects, {w2, "Disappear", 0.05})
      w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
      table.insert(list, w2)
    end
    do
      return unpack(list)
    end
  end
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

  Lightning = function(p0, p1, tym, ofs, col, th, tra, last)
  local magz = (p0 - p1).magnitude
  local curpos = p0
  local trz = {-ofs, ofs}
  for i = 1, tym do
    local li = Instance.new("Part", effects)
    li.TopSurface = 0
    li.BottomSurface = 0
    li.Anchored = true
    li.Transparency = tra or 0.4
    li.BrickColor = BrickColor.new(col)
    li.formFactor = "Custom"
    li.CanCollide = false
    li.Size = Vector3.new(th, th, magz / tym)
    local ofz = Vector3.new(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
    local trolpos = CFrame.new(curpos, p1) * CFrame.new(0, 0, magz / tym).p + ofz
    li.Material = "Neon"
    if tym == i then
      local magz2 = (curpos - p1).magnitude
      li.Size = Vector3.new(th, th, magz2)
      li.CFrame = CFrame.new(curpos, p1) * CFrame.new(0, 0, -magz2 / 2)
          table.insert(Effects, {li, "Disappear", last})
    else
      do
        do
          li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / tym / 2)
          curpos = li.CFrame * CFrame.new(0, 0, magz / tym / 2).p
          game.Debris:AddItem(li, 10)
          table.insert(Effects, {li, "Disappear", last})
        end
      end
    end
  end
end

  Damagefunc = function(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration)
  if hit.Parent == nil then
    return 
  end
  if hit.Name == "Hitbox" and hit.Parent ~= modelzorz and ranged ~= true then
    ref = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
    ref.Anchored = true
    ref.CFrame = cf(hit.Position)
    game:GetService("Debris"):AddItem(ref, 1)
    hitnum = math.random(1, 5)
    if hitnum == 1 then
      so("199148971", ref, 1, 1)
    else
      if hitnum == 2 then
        so("199149025", ref, 1, 1)
      else
        if hitnum == 3 then
          so("199149072", ref, 1, 1)
        else
          if hitnum == 4 then
            so("199149109", ref, 1, 1)
          else
            if hitnum == 5 then
              so("199149119", ref, 1, 1)
            end
          end
        end
      end
    end
    StaggerHit.Value = true
  end
  h = hit.Parent:FindFirstChild("Humanoid")
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil then
      return 
    end
    c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = game:service("Players").LocalPlayer
    c.Parent = h
    RecentEnemy.Value = hit.Parent
    game:GetService("Debris"):AddItem(c, 0.5)
    minim = minim * Atk.Value
    maxim = maxim * Atk.Value
    Damage = 0
    if minim == maxim then
      Damage = maxim
    else
      Damage = math.random(minim, maxim)
    end
    blocked = false
    enblock = nil
    local EStats = hit.Parent:findFirstChild("Stats")
    if EStats ~= nil then
      invis = EStats:findFirstChild("Invisibility")
      isinvis = EStats:findFirstChild("IsInvisible")
      if (ranged == false or ranged == nil) and invis ~= nil and isinvis.Value == true then
        invis.Value = 0
      end
      enblock = EStats:findFirstChild("Block")
      if enblock ~= nil and enblock.Value == true then
        blocked = true
      end
      if EStats:findFirstChild("Defense") ~= nil then
        Damage = Damage / EStats.Defense.Value
        if Damage <= 3 and (ranged == false or ranged == nil) and blocked ~= true then
          hitnum = math.random(1, 5)
          if hitnum == 1 then
            so("199149321", hit, 1, 1)
          else
            if hitnum == 2 then
              so("199149338", hit, 1, 1)
            else
              if hitnum == 3 then
                so("199149367", hit, 1, 1)
              else
                if hitnum == 4 then
                  so("199149409", hit, 1, 1)
                else
                  if hitnum == 5 then
                    so("199149452", hit, 1, 1)
                  end
                end
              end
            end
          end
        else
          if ranged == false or ranged == nil and blocked ~= true then
            hitnum = math.random(1, 6)
            if hitnum == 1 then
              so("199149137", hit, 1, 1)
            else
              if hitnum == 2 then
                so("199149186", hit, 1, 1)
              else
                if hitnum == 3 then
                  so("199149221", hit, 1, 1)
                else
                  if hitnum == 4 then
                    so("199149235", hit, 1, 1)
                  else
                    if hitnum == 5 then
                      so("199149269", hit, 1, 1)
                    else
                      if hitnum == 6 then
                        so("199149297", hit, 1, 1)
                      end
                    end
                  end
                end
              end
            end
          end
        end
        if Damage <= 3 and staghit == true and ranged ~= true then
          StaggerHit.Value = true
        end
      end
      if EStats:findFirstChild("Stun") ~= nil then
        if blocked == true then
          incstun = incstun / 2
        end
        if EStats.Stun.Value < EStats.StunThreshold.Value then
          EStats.Stun.Value = EStats.Stun.Value + incstun
        end
      end
      if EStats:findFirstChild("Stagger") ~= nil and stagger == true then
        EStats.Stagger.Value = true
      end
    end
    if blocked == true then
      showDamage(hit.Parent, "Block", "Damage")
      if ranged ~= true then
        enblock.Value = false
        Stagger.Value = true
        hitnum = math.random(1, 2)
        if hitnum == 1 then
          so("199148933", hit, 1, 1)
        else
          if hitnum == 2 then
            so("199148947", hit, 1, 1)
          end
        end
      end
    else
      Damage = math.floor(Damage)
      coroutine.resume(coroutine.create(function(Hum, Dam)
	hit.Parent.Humanoid:TakeDamage(Damage)
  end
), h, Damage)
      showDamage(hit.Parent, Damage, "Damage")
      if DecreaseState ~= nil then
        if DecreaseState == "Temporal" then
          DecreaseStat(hit.Parent, "Damage", DecreaseAmount, Duration)
          DecreaseStat(hit.Parent, "Defense", DecreaseAmount, Duration)
        else
          if DecreaseState == "Temporal2" then
            DecreaseStat(hit.Parent, "Damage", DecreaseAmount, Duration)
            DecreaseStat(hit.Parent, "Movement", DecreaseAmount, Duration)
          else
            DecreaseStat(hit.Parent, DecreaseState, DecreaseAmount, Duration)
          end
        end
      end
      if Type == "NormalDecreaseMvmt1" then
        DecreaseStat(hit.Parent, "Movement", 0.1, 200)
      end
      if Type == "Knockdown" then
        hum = hit.Parent.Humanoid
        hum.PlatformStand = true
        coroutine.resume(coroutine.create(function(HHumanoid)
    swait(1)
    HHumanoid.PlatformStand = false
  end
), hum)
        local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
        local bodvol = Instance.new("BodyVelocity")
        bodvol.velocity = angle * knockback
        bodvol.P = 5000
        bodvol.maxForce = Vector3.new(8000, 8000, 8000)
        bodvol.Parent = hit
        rl = Instance.new("BodyAngularVelocity")
        rl.P = 3000
        rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
        rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
        rl.Parent = hit
        game:GetService("Debris"):AddItem(bodvol, 0.5)
        game:GetService("Debris"):AddItem(rl, 0.5)
      else
        do
          if Type == "Knockdown2" then
            hum = hit.Parent.Humanoid
            local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
            local bodvol = Instance.new("BodyVelocity")
            bodvol.velocity = angle * knockback
            bodvol.P = 5000
            bodvol.maxForce = Vector3.new(8000, 8000, 8000)
            bodvol.Parent = hit
            game:GetService("Debris"):AddItem(bodvol, 0.5)
          else
            do
              if Type == "Normal" or Type == "NormalDecreaseMvmt1" then
                vp = Instance.new("BodyVelocity")
                vp.P = 500
                vp.maxForce = Vector3.new(math.huge, 0, math.huge)
                if KnockbackType == 1 then
                  vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
                else
                  if KnockbackType == 2 then
                    vp.velocity = Property.CFrame.lookVector * knockback
                  end
                end
                game:GetService("Debris"):AddItem(vp, 0.5)
                if knockback > 0 then
                  vp.Parent = hit.Parent.Torso
                end
              end
              debounce = Instance.new("BoolValue")
              debounce.Name = "DebounceHit"
              debounce.Parent = hit.Parent
              debounce.Value = true
              game:GetService("Debris"):AddItem(debounce, Delay)
              c = Instance.new("ObjectValue")
              c.Name = "creator"
              c.Value = Player
              c.Parent = h
              game:GetService("Debris"):AddItem(c, 0.5)
              CRIT = false
            end
          end
        end
      end
    end
  end
end

  showDamage = function(Char, Dealt, Type)
  m = Instance.new("Model")
  m.Name = "Effect"
  c = Instance.new("Part")
  c.Transparency = 1
  c.Name = "Head"
  c.TopSurface = 0
  c.BottomSurface = 0
  c.formFactor = "Plate"
  c.Size = Vector3.new(1, 0.4, 1)
  b = Instance.new("BillboardGui", c)
  b.Size = UDim2.new(5, 0, 5, 0)
  b.AlwaysOnTop = true
  damgui = gui("TextLabel", b, tostring(Dealt), 1, Color3.new(0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0))
  if Type == "Damage" then
    damgui.Font = "SourceSans"
    if Dealt == "Block" then
      damgui.TextColor3 = BrickColor.new("Bright blue").Color
    else
      if Dealt < 3 then
        damgui.TextColor3 = BrickColor.new("White").Color
      else
        if Dealt >= 3 and Dealt < 20 then
          damgui.TextColor3 = BrickColor.new("Bright yellow").Color
        else
          damgui.TextColor3 = BrickColor.new("Really red").Color
          damgui.Font = "SourceSansBold"
        end
      end
    end
  else
    if Type == "Debuff" then
      damgui.TextColor3 = BrickColor.new("White").Color
    else
      if Type == "Interrupt" then
        damgui.TextColor3 = BrickColor.new("New Yeller").Color
      end
    end
  end
  damgui.TextScaled = true
  ms = Instance.new("CylinderMesh")
  ms.Scale = Vector3.new(0.8, 0.8, 0.8)
  ms.Parent = c
  c.Reflectance = 0
  Instance.new("BodyGyro").Parent = c
  c.Parent = m
  if Char:findFirstChild("Head") ~= nil then
    c.CFrame = cf(Char.Head.CFrame.p + Vector3.new(math.random(-100, 100) / 100, 3, math.random(-100, 100) / 100))
  else
    if Char.Parent:findFirstChild("Head") ~= nil then
      c.CFrame = cf(Char.Parent.Head.CFrame.p + Vector3.new(math.random(-100, 100) / 100, 3, math.random(-100, 100) / 100))
    end
  end
  f = Instance.new("BodyPosition")
  f.P = 2000
  f.D = 100
  f.maxForce = Vector3.new(545000, 545000, 545000)
  if Type == "Damage" then
    f.position = c.Position + Vector3.new(0, 3, 0)
  else
    if Type == "Debuff" or Type == "Interrupt" then
      f.position = c.Position + Vector3.new(0, 5, 0)
    end
  end
  f.Parent = c
  game:GetService("Debris"):AddItem(m, 5)
  table.insert(Effects, {m, "showDamage", damgui, f, 10, 1, 15, 50, 100})
  c.CanCollide = false
  m.Parent = workspace
  c.CanCollide = false
end

  combo = 0
  ob1d = function(mouse)
  if cshoot == false and cdebounce == false then
    cshoot = true
  end
  if shockshoot == false and shockdebounce == false then
    shockshoot = true
    TehM = MMouse.Hit.p
  end
  if starshoot == false and stardebounce == false then
    starshoot = true
    TehM = MMouse.Hit.p
  end
  if attack == true or equipped == false then
    return 
  end
attack = true
  hold = true
  if combo == 0 then
    combo = 1
    attackone()
  else
    if combo == 1 then
      combo = 2
      attacktwo()
    else
      if combo == 2 then
        combo = 3
        attackthree()
      else
        if combo == 3 then
          combo = 0
          attackfour()
        end
      end
    end
  end
attack = false
end

  ob1u = function(mouse)
  hold = false
end

  buttonhold = false
  fenbarmove1.MouseButton1Click:connect(do1)
  fenbarmove2.MouseButton1Click:connect(do2)
  fenbarmove3.MouseButton1Click:connect(do3)
  fenbarmove4.MouseButton1Click:connect(do4)
  eul = 0
  equipped = false
  key = function(key)
  if key == "q" and Player.Name == "Fenrier" then
    cooldowns[1] = 100
    cooldowns[2] = 100
    cooldowns[3] = 100
    cooldowns[4] = 100
  end
  if key == "z" and cbuster == true then
    cbuster = false
    return 
  end
  if key == "x" and sbreaker == true then
    sbreaker = false
    return 
  end
  if key == "c" and sblazing == true then
    sblazing = false
    return 
  end
  if key == "e" then
    if prising == true then
      prising = false
      return 
    end
    if cbuster == true and mana.Value > 15 then
      busterlaser = true
      return 
    end
    if sbreaker == true and mana.Value > 10 then
      sbreakerII = true
      return 
    end
    if sblazing == true and mana.Value > 20 then
      galacblazing = true
      return 
    end
  end
  if attack == true then
    return 
  end
  if key == "f" then
    attack = true
    pressedf = true
    fnumb = 0
repeat swait() until effects:FindFirstChild("Effect") == nil
    if equipped == false then
      RSH = ch.Torso["Right Shoulder"]
      LSH = ch.Torso["Left Shoulder"]
      RSH.Parent = nil
      LSH.Parent = nil
      RW.Name = "Right Shoulder"
      RW.Part0 = ch.Torso
      RW.C0 = cf(1.5, 0.5, 0)
      RW.C1 = cf(0, 0.5, 0)
      RW.Part1 = ch["Right Arm"]
      RW.Parent = ch.Torso
      LW.Name = "Left Shoulder"
      LW.Part0 = ch.Torso
      LW.C0 = cf(-1.5, 0.5, 0)
      LW.C1 = cf(0, 0.5, 0)
      LW.Part1 = ch["Left Arm"]
      LW.Parent = ch.Torso
      Animate.Parent = nil
      equipanim()
      equipped = true
    else
      equipped = false
      hideanim()
      LH.C1 = LHC1
      RH.C1 = RHC1
      Animate.Parent = Humanoid
      swait(0)
      RW.Parent = nil
      LW.Parent = nil
      RSH.Parent = player.Character.Torso
      LSH.Parent = player.Character.Torso
    end
    attack = false
  end
  if equipped == false then
    return 
  end
  if key == "e" then
    PowerRising()
  end
  if key == "q" then
    mana.Value = 100
  end
  if key == "z" then
    do1()
  end
  if key == "x" then
    do2()
  end
  if key == "c" then
    do3()
  end
  if key == "v" then
    do4()
  end
end

  key2 = function(key)
end

  s = function(mouse)
  mouse.Button1Down:connect(function()
    ob1d(mouse)
  end
)
  mouse.Button1Up:connect(function()
    ob1u(mouse)
  end
)
  mouse.KeyDown:connect(key)
  mouse.KeyUp:connect(key2)
  player = Player
  ch = Character
end

  ds = function(mouse)
end

  Bin.Selected:connect(s)
  Bin.Deselected:connect(ds)
  print("Dreamer loaded.")
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
    for _,c in pairs(model3:children()) do
      if c.className == "Part" then
        if c.BrickColor == Neons[1] then
          c.BrickColor = Neons[2]
        else
          if c.BrickColor == Neons[2] then
            c.BrickColor = Neons[3]
          else
            if c.BrickColor == Neons[3] then
              c.BrickColor = Neons[4]
            else
              if c.BrickColor == Neons[4] then
                c.BrickColor = Neons[5]
              else
                if c.BrickColor == Neons[5] then
                  c.BrickColor = Neons[6]
                else
                  if c.BrickColor == Neons[6] then
                    c.BrickColor = Neons[7]
                  else
                    if c.BrickColor == Neons[7] then
                      c.BrickColor = Neons[1]
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    starsparti.Color = cs(Neons[math.random(1, 7)].Color, Color3.new(1, 1, 1))
    if Mode == "Sabers" then
      passive1.Value = 0
      passive2.Value = -0.1
    else
      passive1.Value = -0.1
      passive2.Value = 0
    end
    if (Head:findFirstChild("Running")) ~= nil then
      if floating == true then
        Head.Running.Volume = 0
        Humanoid.JumpPower = 60
      else
        Head.Running.Volume = 0.5
        Humanoid.JumpPower = 50
      end
    end
    colnum = colnum + 1
    if #Neons - 1 < col and (colnum) % 2 == 0 then
      col = 1
    end
    if (colnum) % 2 == 0 then
      col = col + 1
    end
    gef = gef + 1
    if (gef) % 10 == 0 and 0 < Humanoid.Health then
      hitfloor2, posfloor2 = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
      if hitfloor2 ~= nil and equipped == true and floating == true and Mode == "Normal" then
        MagicWave(BrickColor.new("Institutional white"), cf(posfloor2) * euler(0, math.random(-50, 50), 0), 1, 2, 1, 0.7, -0.05, 0.7, 0.15)
      end
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
      if fnumb < 21 then
        fnumb = fnumb + 1
        if pressedf == false then
          fenframe5.BackgroundTransparency = fenframe5.BackgroundTransparency - 0.025
          tellbar.TextTransparency = tellbar.TextTransparency - 0.05
          tellbar.TextStrokeTransparency = tellbar.TextStrokeTransparency - 0.05
        else
          if fnumb == 20 then
            fenframe5.Parent = nil
            print("daigui")
          end
          fenframe5.BackgroundTransparency = fenframe5.BackgroundTransparency + 0.025
          tellbar.TextTransparency = tellbar.TextTransparency + 0.05
          tellbar.TextStrokeTransparency = tellbar.TextStrokeTransparency + 0.05
        end
      end
      if Stagger.Value == true and staggeranim == false then
        coroutine.resume(coroutine.create(function()
  staggeranim = true
  while attack == true do
    swait()
  end
  StaggerAnim()
  StaggerHit.Value = false
  Stagger.Value = false
  staggeranim = false
end
))
      end
      if StaggerHit.Value == true and staggeranim == false then
        coroutine.resume(coroutine.create(function()
  staggeranim = true
  while attack == true do
    swait()
  end
  StaggerHitt()
  StaggerHit.Value = false
  Stagger.Value = false
  staggeranim = false
end
))
      end
      if Mvmt.Value < 0 or Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true or Rooted.Value == true then
        Humanoid.WalkSpeed = 0
      else
        Humanoid.WalkSpeed = 16 * Mvmt.Value
      end
      if StunT.Value <= Stun.Value and stunanim == false then
        coroutine.resume(coroutine.create(function()
  stunanim = true
  while attack == true do
    swait()
  end
  StunAnim()
  Stun.Value = 0
  stunanim = false
end
))
      end
      local stunnum2 = 40
      if stunnum2 <= stunnum then
        if 0 < Stun.Value then
          Stun.Value = Stun.Value - 1
        end
        stunnum = 0
      end
      stunnum = stunnum + 1
      if 0.5 <= donum then
        handidle = true
      else
        if donum <= 0 then
          handidle = false
        end
      end
      if handidle == false then
        donum = donum + 0.003
      else
        donum = donum - 0.003
      end
      local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
      local velderp = RootPart.Velocity.y
      hitfloor, posfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
      if equipped == true then
        if Anim == "Walk" and floating == false then
          if walkforw == true then
            RH.C1 = clerp(RH.C1, RHC1 * cf(0.2, -0.2, 0) * euler(0, 0, 1), Mvmt.Value * 10 / 50)
            LH.C1 = clerp(LH.C1, LHC1 * cf(0.1, 0.2, 0) * euler(0, 0, 1), Mvmt.Value * 10 / 50)
          else
            RH.C1 = clerp(RH.C1, RHC1 * cf(-0.1, 0.2, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
            LH.C1 = clerp(LH.C1, LHC1 * cf(-0.2, -0.2, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
          end
        else
          RH.C1 = clerp(RH.C1, RHC1, 0.2)
          LH.C1 = clerp(LH.C1, LHC1, 0.2)
        end
        if 1 < RootPart.Velocity.y and hitfloor == nil then
          Anim = "Jump"
          if Mode == "Normal" and floating == true then
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1.5 - (donum)) * euler(-0.1, 0, 0), 0.3)
          end
          if attack == false then
            if Mode == "Normal" then
              MagicBlock2(Neons[col], LeftLeg.CFrame * cf(0, -1, 0), 4, 4, 4, 2, 2, 2, 0.2, 1)
              MagicBlock2(Neons[col], RightLeg.CFrame * cf(0, -1, 0), 4, 4, 4, 2, 2, 2, 0.2, 1)
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.4 - (donum) / 2, 0, 0), 0.3)
              RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.1) * euler(0.4, 0, 0.8 + (donum) / 4) * euler(0, 0, 0), 0.3)
              LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, 0.1) * euler(0.4, 0, -0.8 - (donum) / 4) * euler(0, 0, 0), 0.3)
              RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2 - (donum) / 4, 0, -0.1 + (donum) / 7), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1 - (donum) / 4, 0, 0.05 - (donum) / 7), 0.3)
            else
              mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.3)
              mwld2.C0 = clerp(mwld2.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.3)
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.2, 0, 0), 0.25)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.25)
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.6, 0, 0.8) * euler(0, -0.6, 0) * euler(0, 0, -0.2), 0.25)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.6, 0, -0.8) * euler(0, 0.6, 0) * euler(0, 0, 0.2), 0.25)
              RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.25)
              LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.25)
            end
          end
        else
          if RootPart.Velocity.y < -1 and hitfloor == nil then
            Anim = "Fall"
            if Mode == "Normal" and floating == true then
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
            end
            if attack == false then
              if Mode == "Normal" then
                Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
                Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.8) * euler(0, -1.5, 0), 0.2)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.8), 0.2)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
              else
                Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
                Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.8, 0, 0.4) * euler(0, -1, 0) * euler(0, 0, 0.6), 0.25)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.8, 0, -0.4) * euler(0, 1, 0) * euler(0, 0, -0.6), 0.25)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
              end
            end
          else
            if torvel < 1 and hitfloor ~= nil then
              Anim = "Idle"
              if Mode == "Normal" and floating == true then
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1.5 - (donum)) * euler(-0.05, 0, 0), 0.3)
              end
              if attack == false then
                if Mode == "Normal" then
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2 - (donum) / 8, 0, 0), 0.3)
                  RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.1) * euler(0.4, 0, 0.4 + (donum) / 4) * euler(0, -1.5, 0), 0.3)
                  LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, 0.1) * euler(0.4, 0, -0.4 - (donum) / 4) * euler(0, 1.5, 0), 0.3)
                  RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2 - (donum) / 4, 0, -0.1 + (donum) / 7), 0.3)
                  LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1 - (donum) / 4, 0, 0.05 - (donum) / 7), 0.3)
                else
                  mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.3)
                  mwld2.C0 = clerp(mwld2.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.3)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.1, 0, 0), 0.2)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, -0.4) * euler(0.2 + (donum) / 4, 0, 0), 0.2)
                  RW.C0 = clerp(RW.C0, cf(1.4, 0.4, -0.1) * euler(1, 0, 0.7 - (donum) / 3) * euler(0, 1, 0), 0.2)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.4, 0, -0.8 + (donum) / 3) * euler(0, -1, 0), 0.2)
                  RH.C0 = clerp(RH.C0, cf(1, -0.7, -0.3) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.1 + (donum) / 4), 0.2)
                  LH.C0 = clerp(LH.C0, cf(-1.1, -0.7, -0.2) * euler(0, -1.57, 0) * euler(0, 0.4, 0) * euler(-0.05, 0, -0.15 - (donum) / 4), 0.2)
                end
              end
            else
              if 2 < torvel and torvel < 30 and hitfloor ~= nil then
                Anim = "Walk"
                walk = walk + 1
                if 15 - 5 * Mvmt.Value <= walk then
                  walk = 0
                  if walkforw == true then
                    walkforw = false
                  else
                    if walkforw == false then
                      walkforw = true
                    end
                  end
                end
                testpart.CFrame = cf(RootPart.Position - RootPart.Velocity) * cf(0, 6, 0)
                newpos = vt(RootPart.Position.X, RootPart.Position.Y, RootPart.Position.Z)
                MoveCF = cf(testpart.Position, newpos)
                local mpos = testpart.CFrame * euler(0, 0, 0)
                local cff = CFrame.new(mpos.p, newpos) * CFrame.Angles(math.pi / 2, 0, 0)
                local x, y, z = RootPart.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                if Mode == "Normal" and floating == true then
                  RootJoint.C0 = clerp(RootJoint.C0, cf(0, 1.4 - (donum), 0) * CFrame.Angles(x, y, 0) * euler(0, 3.14, 0), 0.3)
                end
                if attack == false then
                  if Mode == "Normal" then
                    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.2 + (donum) / 2, 0, 0), 0.3)
                    RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0.1) * euler(-0.2, 0, 0.4 + (donum) / 4) * euler(0, 0, 0), 0.3)
                    LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0.1) * euler(-0.2, 0, -0.4 - (donum) / 4) * euler(0, 0, 0), 0.3)
                    RH.C0 = clerp(RH.C0, cf(0.95, -0.8, -0.2 - (donum) / 2) * euler(0, 1.57, 0) * euler(-0.2 - (donum) / 4, 0, -0.5 - (donum) / 2), 0.3)
                    LH.C0 = clerp(LH.C0, cf(-0.95, -0.8, -0.2 - (donum) / 2) * euler(0, -1.57, 0) * euler(-0.1 - (donum) / 4, 0, 0.5 + (donum) / 2), 0.3)
                  else
                    mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.3)
                    mwld2.C0 = clerp(mwld2.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.3)
                    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.1, 0, 0), 0.25)
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 0) * euler(0.1, 0, 0), 0.25)
                    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.6, 0, 0.8) * euler(0, -1, 0), 0.25)
                    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.6, 0, -0.8) * euler(0, 1, 0), 0.25)
                    RH.C0 = clerp(RH.C0, cf(1.05, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.02, 0, 0.2), 0.25)
                    LH.C0 = clerp(LH.C0, cf(-1.05, -0.9, -0.1) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.02, 0, -0.2), 0.25)
                  end
                end
              else
                do
                  if 30 <= torvel and hitfloor ~= nil then
                    Anim = "Run"
                    if Mode == "Normal" and floating == true then
                      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1.4 - (donum)) * euler(0.4, 0, 0), 0.3)
                    end
                    if attack == false then
                      if Mode == "Normal" then
                        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.2 + (donum) / 2, 0, 0), 0.3)
                        RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0.1) * euler(-0.2, 0, 0.4 + (donum) / 4) * euler(0, 0, 0), 0.3)
                        LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0.1) * euler(-0.2, 0, -0.4 - (donum) / 4) * euler(0, 0, 0), 0.3)
                        RH.C0 = clerp(RH.C0, cf(0.95, -0.8, -0.2 - (donum) / 2) * euler(0, 1.57, 0) * euler(-0.2 - (donum) / 4, 0, -0.5 - (donum) / 2), 0.3)
                        LH.C0 = clerp(LH.C0, cf(-0.95, -0.8, -0.2 - (donum) / 2) * euler(0, -1.57, 0) * euler(-0.1 - (donum) / 4, 0, 0.5 + (donum) / 2), 0.3)
                      else
                        mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.3)
                        mwld2.C0 = clerp(mwld2.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.3)
                        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.1, 0, 0), 0.25)
                        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 0) * euler(0.1, 0, 0), 0.25)
                        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.6, 0, 0.8) * euler(0, -1, 0), 0.25)
                        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.6, 0, -0.8) * euler(0, 1, 0), 0.25)
                        RH.C0 = clerp(RH.C0, cf(1.05, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.02, 0, 0.2), 0.25)
                        LH.C0 = clerp(LH.C0, cf(-1.05, -0.9, -0.1) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.02, 0, -0.2), 0.25)
                      end
                    end
                  end
                  end
                  end
             	 end
        end
          end
                  fenbarmana2:TweenSize((UDim2.new(0.4, 0, -4 * mana.Value / 100, 0)), nil, 1, 0.4, true)
                  fenbarmana4.Text = "Mana(" .. mana.Value .. ")"
                  fenbarhp2.BackgroundColor3 = Color3.new(Humanoid.Health / Humanoid.MaxHealth, 0, 0)
                  fenbarhp2:TweenSize((UDim2.new(Humanoid.Health / Humanoid.MaxHealth, 0, 1, 0)), nil, 1, 0.4, true)
                  fenbarhp3.Text = "(" .. math.floor(Humanoid.Health) .. ")"
                  fenbarmove1b:TweenSize((UDim2.new(1 * cooldowns[1] / cooldownmax, 0, 1, 0)), nil, 1, 0.4, true)
                  fenbarmove2b:TweenSize((UDim2.new(1 * cooldowns[2] / cooldownmax, 0, 1, 0)), nil, 1, 0.4, true)
                  fenbarmove3b:TweenSize((UDim2.new(1 * cooldowns[3] / cooldownmax, 0, 1, 0)), nil, 1, 0.4, true)
                  fenbarmove4b:TweenSize((UDim2.new(1 * cooldowns[4] / cooldownmax, 0, 1, 0)), nil, 1, 0.4, true)
                  for _,c in pairs(Decrease:children()) do
                    if (c:findFirstChild("Duration")) ~= nil then
                      c.Duration.Value = c.Duration.Value - 1
                      if c.Duration.Value <= 0 then
                        c.Parent = nil
                      end
                    end
                    if c.Name == "DecreaseAtk" then
                      decreaseatk = decreaseatk + c.Value
                    else
                      if c.Name == "DecreaseDef" then
                        decreasedef = decreasedef + c.Value
                      else
                        if c.Name == "DecreaseMvmt" then
                          decreasemvmt = decreasemvmt + c.Value
                        end
                      end
                    end
                  end
                  Atk.Value = 1 - (decreaseatk)
                  if Atk.Value <= 0 then
                    Atk.Value = 0
                  end
                  Def.Value = 1 - (decreasedef)
                  if Def.Value <= 0 then
                    Def.Value = 0.01
                  end
                  Mvmt.Value = 1 - (decreasemvmt)
                  if Mvmt.Value <= 0 then
                    Mvmt.Value = 0
                  end
                  decreaseatk = 0
                  decreasedef = 0
                  decreasemvmt = 0
                  AtkVal = Atk.Value * 100
                  AtkVal = math.floor(AtkVal)
                  AtkVal = AtkVal / 100
                  fenbardamage.Text = "Damage\n(" .. AtkVal .. ")"
                  DefVal = Def.Value * 100
                  DefVal = math.floor(DefVal)
                  DefVal = DefVal / 100
                  fenbardef.Text = "Defense\n(" .. DefVal .. ")"
                  MvmtVal = Mvmt.Value * 100
                  MvmtVal = math.floor(MvmtVal)
                  MvmtVal = MvmtVal / 100
                  if Rooted.Value == true then
                    MvmtVal = 0
                  end
                  fenbarmove.Text = "Walkspeed\n(" .. MvmtVal .. ")"
                  if StunT.Value <= Stun.Value then
                    fenbarstun2:TweenSize((UDim2.new(0.4, 0, -4, 0)), nil, 1, 0.4, true)
                  else
                    fenbarstun2:TweenSize((UDim2.new(0.4, 0, -4 * Stun.Value / StunT.Value, 0)), nil, 1, 0.4, true)
                  end
                  fenbarstun3.Text = "Stun(" .. Stun.Value .. ")"
                  if 100 <= mana.Value then
                    mana.Value = 100
                  else
                    if mananum <= manainc then
                      mananum = mananum + 1
                    else
                      mananum = 0
                      mana.Value = mana.Value + 1
                    end
                  end
                  for i = 1, #cooldowns do
                    if cooldownmax <= cooldowns[i] then
                      cooldowns[i] = cooldownmax
                    else
                      cooldowns[i] = cooldowns[i] + cooldownsadd[i]
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
                                                    Thing[1].BrickColor = Neons[Thing[8]]
                                                    Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                                                    Mesh = Thing[7]
                                                    Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                                                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                  else
                                                    if Thing[2] == "Cylinder" then
                                                      Mesh = Thing[7]
                                                      Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                                                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                    else
                                                      if Thing[2] == "Shatter" then
                                                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                        Thing[4] = Thing[4] * cf(0, Thing[7], 0)
                                                        Thing[1].CFrame = Thing[4] * euler(Thing[6], 0, 0)
                                                        Thing[6] = Thing[6] + Thing[5]
                                                      else
                                                        if Thing[2] == "Blood" then
                                                          Mesh = Thing[7]
                                                          Thing[1].CFrame = Thing[1].CFrame * cf(0, Thing[8], 0)
                                                          Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                                                          Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                        else
                                                          if Thing[2] == "Elec" then
                                                            Mesh = Thing[7]
                                                            Mesh.Scale = Mesh.Scale + vt(Thing[7], Thing[8], Thing[9])
                                                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                          else
                                                            if Thing[2] == "Disappear" then
                                                              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                            end
                                                          end
                                                        end
                                                      end
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
              end