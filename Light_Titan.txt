--[[MAKE ME THOMAS]]--

local p = game.Players.LocalPlayer
local char = p.Character
Torso = char.Torso
LeftArm = char["Left Arm"] 
LeftLeg = char["Left Leg"] 
RightArm = char["Right Arm"] 
RightLeg = char["Right Leg"] 
local Head = char.Head
------
for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end
--------
local z = Instance.new("Sound", Head)
z.SoundId = "http://www.roblox.com/asset/?id=302747696"
z.Looped = true
z.Volume = math.huge
z.Pitch = 1
z:Play()
--------
Head.face:remove()
LeftLeg:remove()
RightLeg:remove()
LeftArm.Transparency = 1
RightArm.Transparency = 1
Torso.Transparency = 1
local mesh = Head.Mesh
mesh.MeshId = "http://www.roblox.com/asset/?id=430251003"
mesh.TextureId = "http://www.roblox.com/asset/?id=430251014"
mesh.Scale = Vector3.new(1.25,1.25,1.25)
if char:FindFirstChild("Torso") and char.Torso:FindFirstChild("Neck") then
	char.Torso.Neck.C0 = char.Torso.Neck.C0 * CFrame.Angles(0,0,3.1)
end

