-- Main
local PrisonLifeGui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
local Drag = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Open = Instance.new("TextButton")
local Body = Instance.new("ScrollingFrame")
local Scroll = Instance.new("ScrollingFrame")
-- Pages
local WelcomePage = Instance.new("Frame")
local WeaponsPage = Instance.new("Frame")
local TeleportPage = Instance.new("ScrollingFrame")
local DoorPage = Instance.new("Frame")
local KillAuraPage = Instance.new("Frame")
local CarTelePage = Instance.new("Frame")
-- Side Buttons
local WeaponsButton = Instance.new("TextButton")
local TeleportButton = Instance.new("TextButton")
local DoorButton = Instance.new("TextButton")
local KillButton = Instance.new("TextButton")
local CarButton = Instance.new("TextButton")
-- Welcome Page Contents
local Welcome = Instance.new("TextLabel")
local Credits = Instance.new("TextLabel")
local Credit2 = Instance.new("TextLabel")
local TxtWall = Instance.new("TextLabel")
local CredPic = Instance.new("ImageLabel")
-- Weapon Page Contents
local WepTut = Instance.new("TextLabel")
local WepTxtWall = Instance.new("TextLabel")
local WepTutSep = Instance.new("Frame")
local WepButt1 = Instance.new("TextButton")
local WepButt2 = Instance.new("TextButton")
local WepButt3 = Instance.new("TextButton")
local WepButt4 = Instance.new("TextButton")
-- Door Page Contents
local DoorTut = Instance.new("TextLabel")
local DoorTxtWall = Instance.new("TextLabel")
local DoorPageSep = Instance.new("Frame")
local DoorButt = Instance.new("TextButton")
-- Teleport Page Contents
local TeleTut = Instance.new("TextLabel")
local TeleTxtWall = Instance.new("TextLabel")
local TeleButt1 = Instance.new("TextButton")
local TeleButt2 = Instance.new("TextButton")
local TeleButt3 = Instance.new("TextButton")
local TeleButt4 = Instance.new("TextButton")
local TeleButt5 = Instance.new("TextButton")
local TeleButt6 = Instance.new("TextButton")
local TeleButt7 = Instance.new("TextButton")
local TeleButt8 = Instance.new("TextButton")
local TeleButt9 = Instance.new("TextButton")
local TeleButt10 = Instance.new("TextButton")
-- Kill Aura Page Contents
local KillTut = Instance.new("TextLabel")
local KillTxtWall = Instance.new("TextLabel")
local KillPageSep = Instance.new("Frame")
local KillButt = Instance.new("TextButton")
-- Car Teleport Page Contents
local CarTut = Instance.new("TextLabel")
local CarTxtWall = Instance.new("TextLabel")
local CarPageSep = Instance.new("Frame")
local CarTeleButt1 = Instance.new("TextButton")
local CarTeleButt2 = Instance.new("TextButton")
-- Main

Drag.Active = true
Drag.Name = "Drag"
Drag.Parent = PrisonLifeGui
Drag.BackgroundColor3 = Color3.new(0/255, 105/255, 154/255)
Drag.BackgroundTransparency = 0
Drag.BorderSizePixel = 0
Drag.Position = UDim2.new(0, 0, 0, 0)
Drag.Selectable = true
Drag.Draggable = true
Drag.Size = UDim2.new(0, 300, 0, 35)

Title.Parent = Drag
Title.Name = "Title"
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0, 30, 0, 0)
Title.Size = UDim2.new(0, 225, 0, 35)
Title.Font = "SourceSansBold"
Title.TextColor3 = Color3.new(255, 255, 255)
Title.Text = "Prison Life GUI [Revamp]"
Title.TextSize = 26

Close.Parent = Drag
Close.Name = "Close"
Close.BackgroundTransparency = 1
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0, 265, 0, 0)
Close.Size = UDim2.new(0, 35, 0, 35)
Close.Font = "SourceSansBold"
Close.TextColor3 = Color3.new(255, 255, 255)
Close.Text = "X"
Close.TextSize = 28
Close.MouseButton1Down:connect(function()
Body:TweenSize(UDim2.new(1,0,0,0), 'In', 'Quad', 0.5, false)
wait(0.5)
Close.Visible = false
Open.Visible = true
end)

Open.Parent = Drag
Open.Visible = false
Open.Name = "Open"
Open.BackgroundTransparency = 1
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0, 265, 0, 0)
Open.Size = UDim2.new(0, 35, 0, 35)
Open.Font = "SourceSansBold"
Open.TextColor3 = Color3.new(255, 255, 255)
Open.Text = "+"
Open.TextSize = 28
Open.MouseButton1Down:connect(function()
Body:TweenSize(UDim2.new(0,300,0,235), 'Out', 'Bounce', 2, false)
wait(0.5)
Close.Visible = true
Open.Visible = false
end)

Body.Parent = Drag
Body.Name = "Body"
Body.BackgroundColor3 = Color3.new(0/255, 85/255, 127/255)
Body.BackgroundTransparency = 0
Body.BorderSizePixel = 0
Body.Position = UDim2.new(0, 0, 0, 35)
Body.Size = UDim2.new(0, 300, 0, 235)
Body.ScrollingEnabled = false
Body.ScrollBarThickness = 0

Scroll.Parent = Body
Scroll.Name = "Scroll"
Scroll.BackgroundTransparency = 1
Scroll.BorderSizePixel = 0
Scroll.Position = UDim2.new(0, 0, 0, 0)
Scroll.Size = UDim2.new(0, 110, 0, 235)
Scroll.CanvasSize = UDim2.new(0, 0, 2, 0)

-- Pages

WelcomePage.Parent = Body
WelcomePage.Visible = true
WelcomePage.Name = "WelcomePage"
WelcomePage.BackgroundTransparency = 1
WelcomePage.BorderSizePixel = 0
WelcomePage.Position = UDim2.new(0, 115, 0, 0)
WelcomePage.Size = UDim2.new(0, 180, 0, 235)

WeaponsPage.Parent = Body
WeaponsPage.Visible = false
WeaponsPage.Name = "WeaponsPage"
WeaponsPage.BackgroundTransparency = 1
WeaponsPage.BorderSizePixel = 0
WeaponsPage.Position = UDim2.new(0, 115, 0, 0)
WeaponsPage.Size = UDim2.new(0, 180, 0, 235)

TeleportPage.Parent = Body
TeleportPage.Visible = false
TeleportPage.Name = "TeleportPage"
TeleportPage.BackgroundTransparency = 1
TeleportPage.BorderSizePixel = 0
TeleportPage.Position = UDim2.new(0, 115, 0, 0)
TeleportPage.Size = UDim2.new(0, 180, 0, 235)
TeleportPage.CanvasSize = UDim2.new(0, 0, 2.5, 0)

DoorPage.Parent = Body
DoorPage.Visible = false
DoorPage.Name = "DoorPage"
DoorPage.BackgroundTransparency = 1
DoorPage.BorderSizePixel = 0
DoorPage.Position = UDim2.new(0, 115, 0, 0)
DoorPage.Size = UDim2.new(0, 180, 0, 235)

KillAuraPage.Parent = Body
KillAuraPage.Visible = false
KillAuraPage.Name = "KillAuraPage"
KillAuraPage.BackgroundTransparency = 1
KillAuraPage.BorderSizePixel = 0
KillAuraPage.Position = UDim2.new(0, 115, 0, 0)
KillAuraPage.Size = UDim2.new(0, 180, 0, 235)

CarTelePage.Parent = Body
CarTelePage.Visible = false
CarTelePage.Name = "CarTelePage"
CarTelePage.BackgroundTransparency = 1
CarTelePage.BorderSizePixel = 0
CarTelePage.Position = UDim2.new(0, 115, 0, 0)
CarTelePage.Size = UDim2.new(0, 180, 0, 235)

-- Buttons

WeaponsButton.Parent = Scroll
WeaponsButton.Name = "WeaponsButton"
WeaponsButton.BackgroundTransparency = 1
WeaponsButton.BorderSizePixel = 0
WeaponsButton.Position = UDim2.new(0, 5, 0, 5)
WeaponsButton.Size = UDim2.new(0, 85, 0, 35)
WeaponsButton.Font = "SourceSansBold"
WeaponsButton.TextColor3 = Color3.new(255, 255, 255)
WeaponsButton.Text = "Weapons"
WeaponsButton.TextSize = 24
WeaponsButton.Style = "RobloxRoundButton"
WeaponsButton.MouseButton1Down:connect(function()
WeaponsPage.Visible = true
TeleportPage.Visible = false
DoorPage.Visible = false
KillAuraPage.Visible = false
CarTelePage.Visible = false
WelcomePage.Active = false
WelcomePage.Visible = false
end)

TeleportButton.Parent = Scroll
TeleportButton.Name = "TeleportButton"
TeleportButton.BackgroundTransparency = 1
TeleportButton.BorderSizePixel = 0
TeleportButton.Position = UDim2.new(0, 5, 0, 45)
TeleportButton.Size = UDim2.new(0, 85, 0, 35)
TeleportButton.Font = "SourceSansBold"
TeleportButton.TextColor3 = Color3.new(255, 255, 255)
TeleportButton.Text = "Teleports"
TeleportButton.TextSize = 22
TeleportButton.Style = "RobloxRoundButton"
TeleportButton.MouseButton1Down:connect(function()
WeaponsPage.Visible = false
TeleportPage.Visible = true
DoorPage.Visible = false
KillAuraPage.Visible = false
CarTelePage.Visible = false
WelcomePage.Active = false
WelcomePage.Visible = false
end)

DoorButton.Parent = Scroll
DoorButton.Name = "DoorButton"
DoorButton.BackgroundTransparency = 1
DoorButton.BorderSizePixel = 0
DoorButton.Position = UDim2.new(0, 5, 0, 85)
DoorButton.Size = UDim2.new(0, 85, 0, 35)
DoorButton.Font = "SourceSansBold"
DoorButton.TextColor3 = Color3.new(255, 255, 255)
DoorButton.Text = "Remove Doors"
DoorButton.TextSize = 14
DoorButton.Style = "RobloxRoundButton"
DoorButton.MouseButton1Down:connect(function()
WeaponsPage.Visible = false
TeleportPage.Visible = false
DoorPage.Visible = true
KillAuraPage.Visible = false
CarTelePage.Visible = false
WelcomePage.Active = false
WelcomePage.Visible = false
end)

KillButton.Parent = Scroll
KillButton.Name = "KillButton"
KillButton.BackgroundTransparency = 1
KillButton.BorderSizePixel = 0
KillButton.Position = UDim2.new(0, 5, 0, 125)
KillButton.Size = UDim2.new(0, 85, 0, 35)
KillButton.Font = "SourceSansBold"
KillButton.TextColor3 = Color3.new(255, 255, 255)
KillButton.Text = "Kill Aura"
KillButton.TextSize = 23
KillButton.Style = "RobloxRoundButton"
KillButton.MouseButton1Down:connect(function()
WeaponsPage.Visible = false
TeleportPage.Visible = false
DoorPage.Visible = false
KillAuraPage.Visible = true
CarTelePage.Visible = false
WelcomePage.Active = false
WelcomePage.Visible = false
end)

CarButton.Parent = Scroll
CarButton.Name = "CarButton"
CarButton.BackgroundTransparency = 1
CarButton.BorderSizePixel = 0
CarButton.Position = UDim2.new(0, 5, 0, 165)
CarButton.Size = UDim2.new(0, 85, 0, 35)
CarButton.Font = "SourceSansBold"
CarButton.TextColor3 = Color3.new(255, 255, 255)
CarButton.Text = "Vehicles"
CarButton.TextSize = 23
CarButton.Style = "RobloxRoundButton"
CarButton.MouseButton1Down:connect(function()
WeaponsPage.Visible = false
TeleportPage.Visible = false
DoorPage.Visible = false
KillAuraPage.Visible = false
CarTelePage.Visible = true
WelcomePage.Active = false
WelcomePage.Visible = false
end)

-- Welcome Page Contents

Welcome.Parent = WelcomePage
Welcome.Name = "Welcome"
Welcome.BackgroundTransparency = 1
Welcome.BorderSizePixel = 0
Welcome.Position = UDim2.new(0, 0, 0, 0)
Welcome.Size = UDim2.new(0, 180, 0, 35)
Welcome.Font = "SourceSansBold"
Welcome.TextColor3 = Color3.new(255, 255, 255)
Welcome.Text = "Welcome!"
Welcome.TextSize = 38

Credits.Parent = WelcomePage
Credits.Name = "Credits"
Credits.BackgroundTransparency = 1
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0, 0, 0, 35)
Credits.Size = UDim2.new(0, 180, 0, 25)
Credits.Font = "SourceSansBold"
Credits.TextColor3 = Color3.new(170/255, 0/255, 0/255)
Credits.Text = "Credits to all creators!"
Credits.TextSize = 18

Credit2.Parent = WelcomePage
Credit2.Name = "Credit2"
Credit2.BackgroundTransparency = 1
Credit2.BorderSizePixel = 0
Credit2.Position = UDim2.new(0, 0, 0, 185)
Credit2.Size = UDim2.new(0, 135, 0, 35)
Credit2.Font = "SourceSansBold"
Credit2.TextColor3 = Color3.new(0, 255, 0)
Credit2.Text = "UI Created By"
Credit2.TextSize = 28

TxtWall.Parent = WelcomePage
TxtWall.Name = "TxtWall"
TxtWall.BackgroundTransparency = 1
TxtWall.BorderSizePixel = 0
TxtWall.Position = UDim2.new(0, 0, 0, 65)
TxtWall.Size = UDim2.new(0, 180, 0, 120)
TxtWall.Font = "SourceSansBold"
TxtWall.TextColor3 = Color3.new(255, 255, 255)
TxtWall.Text = "I made this GUI because I saw the original GUI, which looked like absolute shit."
TxtWall.TextSize = 24
TxtWall.TextWrapped = true

CredPic.Parent = Credit2
CredPic.Name = "CredPic"
CredPic.BackgroundTransparency = 1
CredPic.BorderSizePixel = 0
CredPic.Position = UDim2.new(0, 125, 0, -5)
CredPic.Size = UDim2.new(0, 55, 0, 50)
CredPic.Image = "rbxassetid://643508583"

-- Weapons Page Contents

WepTut.BackgroundTransparency = 1
WepTut.Size = UDim2.new(0, 180, 0, 35)
WepTut.Font = "SourceSansBold"
WepTut.Text = "Tutorial"
WepTut.TextColor3 = Color3.new(1, 1, 1)
WepTut.TextSize = 28
WepTut.Parent = WeaponsPage

WepTxtWall.BackgroundTransparency = 1
WepTxtWall.Position = UDim2.new(0, 0, 0, 35)
WepTxtWall.Size = UDim2.new(0, 180, 0, 75)
WepTxtWall.Font = Enum.Font.SourceSansBold
WepTxtWall.Text = "Click on the guns that you want to appear. If you're new to this, click on the weapon to equip it."
WepTxtWall.TextColor3 = Color3.new(1, 1, 1)
WepTxtWall.TextWrapped = true
WepTxtWall.TextSize = 18
WepTxtWall.Parent = WepTut
WepTutSep.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
WepTutSep.BorderSizePixel = 0
WepTutSep.Position = UDim2.new(0, 15, 0, 115)
WepTutSep.Size = UDim2.new(0, 150, 0, 1)
WepTutSep.Parent = WeaponsPage
	
WepButt1.Active = true
WepButt1.BackgroundColor3 = Color3.new(0, 0.411765, 0.603922)
WepButt1.Position = UDim2.new(0, 5, 0, 125)
WepButt1.Selectable = true
WepButt1.Size = UDim2.new(0, 80, 0, 35)
WepButt1.Font = "SourceSansBold"
WepButt1.Text = "AK-47"
WepButt1.TextColor3 = Color3.new(1, 1, 1)
WepButt1.TextSize = 18
WepButt1.Parent = WeaponsPage
WepButt1.MouseButton1Down:connect(function()
local AK47 = {"AK-47"}
  for i, v in pairs(game.Workspace["Prison_ITEMS"].giver:GetChildren()) do
  for j, k in pairs(AK47) do
  if v.Name == k then
  v:MoveTo(game.Players.LocalPlayer.Character.Torso.Position)
  end
  end
  end
  end)

WepButt2.Active = true
WepButt2.BackgroundColor3 = Color3.new(0, 0.411765, 0.603922)
WepButt2.Position = UDim2.new(0, 95, 0, 125)
WepButt2.Selectable = true
WepButt2.Size = UDim2.new(0, 80, 0, 35)
WepButt2.Font = "SourceSansBold"
WepButt2.Text = "M9"
WepButt2.TextColor3 = Color3.new(1, 1, 1)
WepButt2.TextSize = 18
WepButt2.Parent = WeaponsPage
WepButt2.MouseButton1Down:connect(function()
local M9 = {"M9"}
  for i, v in pairs(game.Workspace["Prison_ITEMS"].giver:GetChildren()) do
  for j, k in pairs(M9) do
  if v.Name == k then
  v:MoveTo(game.Players.LocalPlayer.Character.Torso.Position)
  end
  end
  end
  end)

WepButt3.Active = true
WepButt3.BackgroundColor3 = Color3.new(0, 0.411765, 0.603922)
WepButt3.Position = UDim2.new(0, 95, 0, 170)
WepButt3.Size = UDim2.new(0, 80, 0, 35)
WepButt3.Selectable = true
WepButt3.Font = "SourceSansBold"
WepButt3.Text = "REM 870"
WepButt3.TextColor3 = Color3.new(1, 1, 1)
WepButt3.TextSize = 18
WepButt3.Parent = WeaponsPage
WepButt3.MouseButton1Down:connect(function()
local Remington870 = {"Remington 870"}
  for i, v in pairs(game.Workspace["Prison_ITEMS"].giver:GetChildren()) do
  for j, k in pairs(Remington870) do
  if v.Name == k then
  v:MoveTo(game.Players.LocalPlayer.Character.Torso.Position)
  end
  end
  end
  end)

WepButt4.Active = true
WepButt4.BackgroundColor3 = Color3.new(0, 0.411765, 0.603922)
WepButt4.Position = UDim2.new(0, 5, 0, 170)
WepButt4.Selectable = true
WepButt4.Size = UDim2.new(0, 80, 0, 35)
WepButt4.Font = "SourceSansBold"
WepButt4.Text = "M4A1"
WepButt4.TextColor3 = Color3.new(1, 1, 1)
WepButt4.TextSize = 18
WepButt4.Parent = WeaponsPage
WepButt4.MouseButton1Down:connect(function()
local M4A1 = {"M4A1"}
  for i, v in pairs(game.Workspace["Prison_ITEMS"].giver:GetChildren()) do
  for j, k in pairs(M4A1) do
  if v.Name == k then
  v:MoveTo(game.Players.LocalPlayer.Character.Torso.Position)
  end
  end
  end
  end)
  
-- DoorPage Contents

DoorTut.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
DoorTut.BackgroundTransparency = 1
DoorTut.Size = UDim2.new(0, 180, 0, 35)
DoorTut.Font = "SourceSansBold"
DoorTut.Text = "Tutorial"
DoorTut.TextColor3 = Color3.new(1, 1, 1)
DoorTut.TextSize = 28
DoorTut.Parent = DoorPage

DoorTxtWall.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
DoorTxtWall.BackgroundTransparency = 1
DoorTxtWall.Position = UDim2.new(0, 0, 0, 35)
DoorTxtWall.Size = UDim2.new(0, 180, 0, 115)
DoorTxtWall.Font = "SourceSansBold"
DoorTxtWall.Text = "When activated, all doors in the prison will be destroyed. Remember, since Prison Life is FE, the destroyed doors only work for YOU."
DoorTxtWall.TextColor3 = Color3.new(1, 1, 1)
DoorTxtWall.TextSize = 18
DoorTxtWall.TextWrapped = true
DoorTxtWall.Parent = DoorTut

DoorPageSep.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
DoorPageSep.BorderSizePixel = 0
DoorPageSep.Position = UDim2.new(0, 15, 0, 155)
DoorPageSep.Size = UDim2.new(0, 150, 0, 1)
DoorPageSep.Parent = DoorPage

DoorButt.Active = true
DoorButt.BackgroundColor3 = Color3.new(0, 0.411765, 0.603922)
DoorButt.Position = UDim2.new(0, 5, 0, 170)
DoorButt.Selectable = true
DoorButt.Size = UDim2.new(0, 170, 0, 50)
DoorButt.Font = "SourceSansBold"
DoorButt.Text = "Remove Doors"
DoorButt.TextColor3 = Color3.new(1, 1, 1)
DoorButt.TextSize = 24
DoorButt.Parent = DoorPage

-- Buttons

WeaponsButton.Parent = Scroll
WeaponsButton.Name = "WeaponsButton"
WeaponsButton.BackgroundTransparency = 1
WeaponsButton.BorderSizePixel = 0
WeaponsButton.Position = UDim2.new(0, 5, 0, 5)
WeaponsButton.Size = UDim2.new(0, 85, 0, 35)
WeaponsButton.Font = "SourceSansBold"
WeaponsButton.TextColor3 = Color3.new(255, 255, 255)
WeaponsButton.Text = "Weapons"
WeaponsButton.TextSize = 24
WeaponsButton.Style = "RobloxRoundButton"
WeaponsButton.MouseButton1Down:connect(function()
WeaponsPage.Visible = true
TeleportPage.Visible = false
DoorPage.Visible = false
WelcomePage.Active = false
WelcomePage.Visible = false
end)

TeleportButton.Parent = Scroll
TeleportButton.Name = "TeleportButton"
TeleportButton.BackgroundTransparency = 1
TeleportButton.BorderSizePixel = 0
TeleportButton.Position = UDim2.new(0, 5, 0, 45)
TeleportButton.Size = UDim2.new(0, 85, 0, 35)
TeleportButton.Font = "SourceSansBold"
TeleportButton.TextColor3 = Color3.new(255, 255, 255)
TeleportButton.Text = "Teleports"
TeleportButton.TextSize = 22
TeleportButton.Style = "RobloxRoundButton"
TeleportButton.MouseButton1Down:connect(function()
WeaponsPage.Visible = false
TeleportPage.Visible = true
DoorPage.Visible = false
WelcomePage.Active = false
WelcomePage.Visible = false
end)

DoorButton.Parent = Scroll
DoorButton.Name = "DoorButton"
DoorButton.BackgroundTransparency = 1
DoorButton.BorderSizePixel = 0
DoorButton.Position = UDim2.new(0, 5, 0, 85)
DoorButton.Size = UDim2.new(0, 85, 0, 35)
DoorButton.Font = "SourceSansBold"
DoorButton.TextColor3 = Color3.new(255, 255, 255)
DoorButton.Text = "Remove Doors"
DoorButton.TextSize = 14
DoorButton.Style = "RobloxRoundButton"
DoorButton.MouseButton1Down:connect(function()
WeaponsPage.Visible = false
TeleportPage.Visible = false
DoorPage.Visible = true
WelcomePage.Active = false
WelcomePage.Visible = false
end)

-- Welcome Page Contents

Welcome.Parent = WelcomePage
Welcome.Name = "Welcome"
Welcome.BackgroundTransparency = 1
Welcome.BorderSizePixel = 0
Welcome.Position = UDim2.new(0, 0, 0, 0)
Welcome.Size = UDim2.new(0, 180, 0, 35)
Welcome.Font = "SourceSansBold"
Welcome.TextColor3 = Color3.new(255, 255, 255)
Welcome.Text = "Welcome!"
Welcome.TextSize = 38

Credits.Parent = WelcomePage
Credits.Name = "Credits"
Credits.BackgroundTransparency = 1
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0, 0, 0, 35)
Credits.Size = UDim2.new(0, 180, 0, 25)
Credits.Font = "SourceSansBold"
Credits.TextColor3 = Color3.new(170/255, 0/255, 0/255)
Credits.Text = "Credits to all creators!"
Credits.TextSize = 18

Credit2.Parent = WelcomePage
Credit2.Name = "Credit2"
Credit2.BackgroundTransparency = 1
Credit2.BorderSizePixel = 0
Credit2.Position = UDim2.new(0, 0, 0, 185)
Credit2.Size = UDim2.new(0, 135, 0, 35)
Credit2.Font = "SourceSansBold"
Credit2.TextColor3 = Color3.new(0, 255, 0)
Credit2.Text = "UI Created By"
Credit2.TextSize = 28

TxtWall.Parent = WelcomePage
TxtWall.Name = "TxtWall"
TxtWall.BackgroundTransparency = 1
TxtWall.BorderSizePixel = 0
TxtWall.Position = UDim2.new(0, 0, 0, 65)
TxtWall.Size = UDim2.new(0, 180, 0, 120)
TxtWall.Font = "SourceSansBold"
TxtWall.TextColor3 = Color3.new(255, 255, 255)
TxtWall.Text = "I made this GUI because I saw the original GUI, which looked like absolute shit."
TxtWall.TextSize = 24
TxtWall.TextWrapped = true

CredPic.Parent = Credit2
CredPic.Name = "CredPic"
CredPic.BackgroundTransparency = 1
CredPic.BorderSizePixel = 0
CredPic.Position = UDim2.new(0, 125, 0, -5)
CredPic.Size = UDim2.new(0, 55, 0, 50)
CredPic.Image = "rbxassetid://643508583"

-- Weapons Page Contents

WepTut.BackgroundTransparency = 1
WepTut.Size = UDim2.new(0, 180, 0, 35)
WepTut.Font = "SourceSansBold"
WepTut.Text = "Tutorial"
WepTut.TextColor3 = Color3.new(1, 1, 1)
WepTut.TextSize = 28
WepTut.Parent = WeaponsPage

WepTxtWall.BackgroundTransparency = 1
WepTxtWall.Position = UDim2.new(0, 0, 0, 35)
WepTxtWall.Size = UDim2.new(0, 180, 0, 75)
WepTxtWall.Font = Enum.Font.SourceSansBold
WepTxtWall.Text = "Click on the guns that you want to appear. If you're new to this, click on the weapon to equip it."
WepTxtWall.TextColor3 = Color3.new(1, 1, 1)
WepTxtWall.TextWrapped = true
WepTxtWall.TextSize = 18
WepTxtWall.Parent = WepTut
WepTutSep.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
WepTutSep.BorderSizePixel = 0
WepTutSep.Position = UDim2.new(0, 15, 0, 115)
WepTutSep.Size = UDim2.new(0, 150, 0, 1)
WepTutSep.Parent = WeaponsPage
	
WepButt1.Active = true
WepButt1.BackgroundColor3 = Color3.new(0, 0.411765, 0.603922)
WepButt1.Position = UDim2.new(0, 5, 0, 125)
WepButt1.Selectable = true
WepButt1.Size = UDim2.new(0, 80, 0, 35)
WepButt1.Font = "SourceSansBold"
WepButt1.Text = "AK-47"
WepButt1.TextColor3 = Color3.new(1, 1, 1)
WepButt1.TextSize = 18
WepButt1.Parent = WeaponsPage
WepButt1.MouseButton1Down:connect(function()
local AK47 = {"AK-47"}
  for i, v in pairs(game.Workspace["Prison_ITEMS"].giver:GetChildren()) do
  for j, k in pairs(AK47) do
  if v.Name == k then
  v:MoveTo(game.Players.LocalPlayer.Character.Torso.Position)
  end
  end
  end
  end)

WepButt2.Active = true
WepButt2.BackgroundColor3 = Color3.new(0, 0.411765, 0.603922)
WepButt2.Position = UDim2.new(0, 95, 0, 125)
WepButt2.Selectable = true
WepButt2.Size = UDim2.new(0, 80, 0, 35)
WepButt2.Font = "SourceSansBold"
WepButt2.Text = "M9"
WepButt2.TextColor3 = Color3.new(1, 1, 1)
WepButt2.TextSize = 18
WepButt2.Parent = WeaponsPage
WepButt2.MouseButton1Down:connect(function()
local M9 = {"M9"}
  for i, v in pairs(game.Workspace["Prison_ITEMS"].giver:GetChildren()) do
  for j, k in pairs(M9) do
  if v.Name == k then
  v:MoveTo(game.Players.LocalPlayer.Character.Torso.Position)
  end
  end
  end
  end)

WepButt3.Active = true
WepButt3.BackgroundColor3 = Color3.new(0, 0.411765, 0.603922)
WepButt3.Position = UDim2.new(0, 95, 0, 170)
WepButt3.Size = UDim2.new(0, 80, 0, 35)
WepButt3.Selectable = true
WepButt3.Font = "SourceSansBold"
WepButt3.Text = "REM 870"
WepButt3.TextColor3 = Color3.new(1, 1, 1)
WepButt3.TextSize = 18
WepButt3.Parent = WeaponsPage
WepButt3.MouseButton1Down:connect(function()
local Remington870 = {"Remington 870"}
  for i, v in pairs(game.Workspace["Prison_ITEMS"].giver:GetChildren()) do
  for j, k in pairs(Remington870) do
  if v.Name == k then
  v:MoveTo(game.Players.LocalPlayer.Character.Torso.Position)
  end
  end
  end
  end)

WepButt4.Active = true
WepButt4.BackgroundColor3 = Color3.new(0, 0.411765, 0.603922)
WepButt4.Position = UDim2.new(0, 5, 0, 170)
WepButt4.Selectable = true
WepButt4.Size = UDim2.new(0, 80, 0, 35)
WepButt4.Font = "SourceSansBold"
WepButt4.Text = "M4A1"
WepButt4.TextColor3 = Color3.new(1, 1, 1)
WepButt4.TextSize = 18
WepButt4.Parent = WeaponsPage
WepButt4.MouseButton1Down:connect(function()
local M4A1 = {"M4A1"}
  for i, v in pairs(game.Workspace["Prison_ITEMS"].giver:GetChildren()) do
  for j, k in pairs(M4A1) do
  if v.Name == k then
  v:MoveTo(game.Players.LocalPlayer.Character.Torso.Position)
  end
  end
  end
  end)
  
-- DoorPage Contents

DoorTut.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
DoorTut.BackgroundTransparency = 1
DoorTut.Size = UDim2.new(0, 180, 0, 35)
DoorTut.Font = "SourceSansBold"
DoorTut.Text = "Tutorial"
DoorTut.TextColor3 = Color3.new(1, 1, 1)
DoorTut.TextSize = 28
DoorTut.Parent = DoorPage

DoorTxtWall.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
DoorTxtWall.BackgroundTransparency = 1
DoorTxtWall.Position = UDim2.new(0, 0, 0, 35)
DoorTxtWall.Size = UDim2.new(0, 180, 0, 115)
DoorTxtWall.Font = "SourceSansBold"
DoorTxtWall.Text = "When activated, all doors in the prison will be destroyed. Remember, since Prison Life is FE, the destroyed doors only work for YOU."
DoorTxtWall.TextColor3 = Color3.new(1, 1, 1)
DoorTxtWall.TextSize = 18
DoorTxtWall.TextWrapped = true
DoorTxtWall.Parent = DoorTut

DoorPageSep.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
DoorPageSep.BorderSizePixel = 0
DoorPageSep.Position = UDim2.new(0, 15, 0, 155)
DoorPageSep.Size = UDim2.new(0, 150, 0, 1)
DoorPageSep.Parent = DoorPage

DoorButt.Active = true
DoorButt.BackgroundColor3 = Color3.new(0, 0.411765, 0.603922)
DoorButt.Position = UDim2.new(0, 5, 0, 170)
DoorButt.Selectable = true
DoorButt.Size = UDim2.new(0, 170, 0, 50)
DoorButt.Font = "SourceSansBold"
DoorButt.Text = "Remove Doors"
DoorButt.TextColor3 = Color3.new(1, 1, 1)
DoorButt.TextSize = 24
DoorButt.Parent = DoorPage
DoorButt.MouseButton1Down:connect(function()
game.Workspace.Doors:Destroy()
end)

-- Teleport Page Contents

TeleTut.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
TeleTut.BackgroundTransparency = 1
TeleTut.Size = UDim2.new(0, 180, 0, 35)
TeleTut.Font = "SourceSansBold"
TeleTut.Text = "Tutorial"
TeleTut.TextColor3 = Color3.new(1, 1, 1)
TeleTut.TextSize = 28
TeleTut.Parent = TeleportPage

TeleTxtWall.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
TeleTxtWall.BackgroundTransparency = 1
TeleTxtWall.Parent = TeleTut
TeleTxtWall.Position = UDim2.new(0, 0, 0, 35)
TeleTxtWall.Size = UDim2.new(0, 180, 0, 115)
TeleTxtWall.Font = "SourceSansBold"
TeleTxtWall.TextSize = 18
TeleTxtWall.Text = "Click on the areas you want to teleport to. They're pretty self explanitory, so I don't think I need to explain further."
TeleTxtWall.TextColor3 = Color3.new(1, 1, 1)
TeleTxtWall.TextWrapped = true

TeleButt1.Active = true
TeleButt1.BackgroundColor3 = Color3.new(0, 0.411765, 0.603922)
TeleButt1.Position = UDim2.new(0, 22, 0, 170)
TeleButt1.Selectable = true
TeleButt1.Size = UDim2.new(0, 135, 0, 35)
TeleButt1.Font = "SourceSansBold"
TeleButt1.Text = "Outside Prison"
TeleButt1.TextColor3 = Color3.new(1, 1, 1)
TeleButt1.TextSize = 18
TeleButt1.Parent = TeleportPage
TeleButt1.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(288.452, 69.999, 2206.731)
end)

TeleButt2.Active = true
TeleButt2.BackgroundColor3 = Color3.new(0, 0.411765, 0.603922)
TeleButt2.Position = UDim2.new(0, 22, 0, 210)
TeleButt2.Selectable = true
TeleButt2.Size = UDim2.new(0, 135, 0, 35)
TeleButt2.Font = "SourceSansBold"
TeleButt2.Text = "Criminal Inside"
TeleButt2.TextColor3 = Color3.new(1, 1, 1)
TeleButt2.TextSize = 18
TeleButt2.Parent = TeleportPage
TeleButt2.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-943.704, 91.632, 2056.925)
end)

TeleButt3.Active = true
TeleButt3.BackgroundColor3 = Color3.new(0, 0.411765, 0.603922)
TeleButt3.Position = UDim2.new(0, 22, 0, 250)
TeleButt3.Selectable = true
TeleButt3.Size = UDim2.new(0, 135, 0, 35)
TeleButt3.Font = "SourceSansBold"
TeleButt3.Text = "Criminal Outside"
TeleButt3.TextColor3 = Color3.new(1, 1, 1)
TeleButt3.TextSize = 18
TeleButt3.Parent = TeleportPage
TeleButt3.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-919.958, 95.327, 2138.189)
end)

TeleButt4.Active = true
TeleButt4.BackgroundColor3 = Color3.new(0, 0.411765, 0.603922)
TeleButt4.Position = UDim2.new(0, 22, 0, 290)
TeleButt4.Selectable = true
TeleButt4.Size = UDim2.new(0, 135, 0, 35)
TeleButt4.Font = "SourceSansBold"
TeleButt4.Text = "Police Room"
TeleButt4.TextColor3 = Color3.new(1, 1, 1)
TeleButt4.TextSize = 18
TeleButt4.Parent = TeleportPage
TeleButt4.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(834.972, 99.989, 2275.318)
end)

TeleButt5.Active = true
TeleButt5.BackgroundColor3 = Color3.new(0, 0.411765, 0.603922)
TeleButt5.Position = UDim2.new(0, 22, 0, 330)
TeleButt5.Selectable = true
TeleButt5.Size = UDim2.new(0, 135, 0, 35)
TeleButt5.Font = "SourceSansBold"
TeleButt5.Text = "Yard"
TeleButt5.TextColor3 = Color3.new(1, 1, 1)
TeleButt5.TextSize = 18
TeleButt5.Parent = TeleportPage
TeleButt5.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(779.092, 96.001, 2451.114)
end)

TeleButt6.Active = true
TeleButt6.BackgroundColor3 = Color3.new(0, 0.411765, 0.603922)
TeleButt6.Position = UDim2.new(0, 22, 0, 370)
TeleButt6.Selectable = true
TeleButt6.Size = UDim2.new(0, 135, 0, 35)
TeleButt6.Font = "SourceSansBold"
TeleButt6.Text = "Cafeteria"
TeleButt6.TextColor3 = Color3.new(1, 1, 1)
TeleButt6.TextSize = 18
TeleButt6.Parent = TeleportPage
TeleButt6.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(930, 97.54, 2291)
end)

TeleButt7.Active = true
TeleButt7.BackgroundColor3 = Color3.new(0, 0.411765, 0.603922)
TeleButt7.Position = UDim2.new(0, 22, 0, 410)
TeleButt7.Selectable = true
TeleButt7.Size = UDim2.new(0, 135, 0, 35)
TeleButt7.Font = "SourceSansBold"
TeleButt7.Text = "Cells"
TeleButt7.TextColor3 = Color3.new(1, 1, 1)
TeleButt7.TextSize = 18
TeleButt7.Parent = TeleportPage
TeleButt7.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918, 97.73, 2447)
end)

TeleButt8.Active = true
TeleButt8.BackgroundColor3 = Color3.new(0, 0.411765, 0.603922)
TeleButt8.Position = UDim2.new(0, 22, 0, 450)
TeleButt8.Selectable = true
TeleButt8.Size = UDim2.new(0, 135, 0, 35)
TeleButt8.Font = "SourceSansBold"
TeleButt8.Text = "Sewer Enterance"
TeleButt8.TextColor3 = Color3.new(1, 1, 1)
TeleButt8.TextSize = 18
TeleButt8.Parent = TeleportPage
TeleButt8.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(917.174, 76.406, 2426.199)
end)

TeleButt9.Active = true
TeleButt9.BackgroundColor3 = Color3.new(0, 0.411765, 0.603922)
TeleButt9.Position = UDim2.new(0, 22, 0, 490)
TeleButt9.Selectable = true
TeleButt9.Size = UDim2.new(0, 135, 0, 35)
TeleButt9.Font = "SourceSansBold"
TeleButt9.Text = "Sewer Exit"
TeleButt9.TextColor3 = Color3.new(1, 1, 1)
TeleButt9.TextSize = 18
TeleButt9.Parent = TeleportPage
TeleButt9.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(916.506, 96.285, 2111.396)
end)

TeleButt10.Active = true
TeleButt10.BackgroundColor3 = Color3.new(0, 0.411765, 0.603922)
TeleButt10.Position = UDim2.new(0, 22, 0, 530)
TeleButt10.Selectable = true
TeleButt10.Size = UDim2.new(0, 135, 0, 35)
TeleButt10.Font = "SourceSansBold"
TeleButt10.Text = "Secret Room"
TeleButt10.TextColor3 = Color3.new(1, 1, 1)
TeleButt10.TextSize = 18
TeleButt10.Parent = TeleportPage
TeleButt10.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(697, 97.492, 2364)
end)

-- Kill Aura Page Contents

KillTut.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
KillTut.BackgroundTransparency = 1
KillTut.Size = UDim2.new(0, 180, 0, 35)
KillTut.Font = "SourceSansBold"
KillTut.Text = "Tutorial"
KillTut.TextColor3 = Color3.new(1, 1, 1)
KillTut.TextSize = 28
KillTut.Parent = KillAuraPage

KillTxtWall.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
KillTxtWall.BackgroundTransparency = 1
KillTxtWall.Position = UDim2.new(0, 0, 0, 35)
KillTxtWall.Size = UDim2.new(0, 180, 0, 115)
KillTxtWall.Font = "SourceSansBold"
KillTxtWall.Text = "When activated, everybody you walk close to will be killed. To turn this off, simply click the button again."
KillTxtWall.TextColor3 = Color3.new(1, 1, 1)
KillTxtWall.TextSize = 18
KillTxtWall.TextWrapped = true
KillTxtWall.Parent = KillTut

KillPageSep.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
KillPageSep.BorderSizePixel = 0
KillPageSep.Position = UDim2.new(0, 15, 0, 155)
KillPageSep.Size = UDim2.new(0, 150, 0, 1)
KillPageSep.Parent = KillAuraPage

KillButt.Active = true
KillButt.BackgroundColor3 = Color3.new(0, 0.411765, 0.603922)
KillButt.Position = UDim2.new(0, 5, 0, 170)
KillButt.Selectable = true
KillButt.Size = UDim2.new(0, 170, 0, 50)
KillButt.Font = "SourceSansBold"
KillButt.Text = "NOT WORKING"
KillButt.TextColor3 = Color3.new(1, 1, 1)
KillButt.TextSize = 24
KillButt.Parent = KillAuraPage
KillButt.MouseButton1Down:connect(function()
while wait(0.1) do
  for i, plr in pairs(game.Players:GetChildren()) do
  if plr.Name ~= game.Players.LocalPlayer.Name then
  for i = 1, 10 do
  game.ReplicatedStorage.meleeEvent:FireServer(plr)
  end
  end
  end
  end
end)

-- Car Teleport Page Contents

CarTut.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
CarTut.BackgroundTransparency = 1
CarTut.Size = UDim2.new(0, 180, 0, 35)
CarTut.Font = "SourceSansBold"
CarTut.Text = "Tutorial"
CarTut.TextColor3 = Color3.new(1, 1, 1)
CarTut.TextSize = 28
CarTut.Parent = CarTelePage

CarTxtWall.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
CarTxtWall.BackgroundTransparency = 1
CarTxtWall.Position = UDim2.new(0, 0, 0, 35)
CarTxtWall.Size = UDim2.new(0, 180, 0, 85)
CarTxtWall.Font = "SourceSansBold"
CarTxtWall.Text = "Click on a car that you want to teleport to yourself. I'm pretty sure this is server-sided."
CarTxtWall.TextColor3 = Color3.new(1, 1, 1)
CarTxtWall.TextSize = 18
CarTxtWall.TextWrapped = true
CarTxtWall.Parent = CarTut

CarPageSep.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
CarPageSep.BorderSizePixel = 0
CarPageSep.Position = UDim2.new(0, 15, 0, 125)
CarPageSep.Size = UDim2.new(0, 150, 0, 1)
CarPageSep.Parent = CarTelePage

CarTeleButt1.Active = true
CarTeleButt1.BackgroundColor3 = Color3.new(0, 0.411765, 0.603922)
CarTeleButt1.Position = UDim2.new(0, 27, 0, 135)
CarTeleButt1.Selectable = true
CarTeleButt1.Size = UDim2.new(0, 125, 0, 35)
CarTeleButt1.Font = "SourceSansBold"
CarTeleButt1.Text = "Sedan Teleport"
CarTeleButt1.TextColor3 = Color3.new(1, 1, 1)
CarTeleButt1.TextSize = 18
CarTeleButt1.Parent = CarTelePage
CarTeleButt1.MouseButton1Down:connect(function()
local Cars = {"Sedan"}
  for i, v in pairs(game.Workspace["CarContainer"]:GetChildren()) do
  for j, k in pairs(Cars) do
  if v.Name == k then
  v:MoveTo(game.Players.LocalPlayer.Character.Torso.Position)
  wait(.1)
  v.Parent = game.Workspace
  end
  end
  end
end)

CarTeleButt2.Active = true
CarTeleButt2.BackgroundColor3 = Color3.new(0, 0.411765, 0.603922)
CarTeleButt2.Position = UDim2.new(0, 27, 0, 180)
CarTeleButt2.Selectable = true
CarTeleButt2.Size = UDim2.new(0, 125, 0, 35)
CarTeleButt2.Font = "SourceSansBold"
CarTeleButt2.Text = "Squad Teleport"
CarTeleButt2.TextColor3 = Color3.new(1, 1, 1)
CarTeleButt2.TextSize = 18
CarTeleButt2.Parent = CarTelePage
CarTeleButt2.MouseButton1Down:connect(function()
local Cars = {"Squad"}
  for i, v in pairs(game.Workspace["CarContainer"]:GetChildren()) do
  for j, k in pairs(Cars) do
  if v.Name == k then
  v:MoveTo(game.Players.LocalPlayer.Character.Torso.Position)
  wait(.1)
  v.Parent = game.Workspace
  end
  end
  end
end)









