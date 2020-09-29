for Get,Players in ipairs(game.Players:GetPlayers()) do

for Get,Workspace in ipairs(game.Workspace:GetChildren()) do

if (Workspace.Name == Players.Name) then

ParticleEmitter = Instance.new("ParticleEmitter");

ParticleEmitter.Texture = ("rbxassetid://476076360");

ParticleEmitter.Parent = Workspace.Head;

end

end

end



for Get,Workspace in ipairs(game.Workspace:GetChildren()) do

ParticleEmitter = Instance.new("ParticleEmitter");

ParticleEmitter.Texture = ("rbxassetid://476075201");

ParticleEmitter.Parent = Workspace;

end



a=Instance.new("Sky",game.Lighting)

 b={"Bk","Dn","Ft","Lf","Rt","Up"}

 for i,v in pairs(b) do

 a["Skybox"..v]="rbxassetid://459493380"

 end



print("Music executed!")

s = Instance.new("Sound")

s.Name = "Music"

s.SoundId = "http://www.roblox.com/asset/?id=468952487" --Put the id into there.

s.Looped = true

s.Pitch = 1 --You can edit these settings.

s.Volume = 4 --You can edit these settings.

s.archivable = false

 

s.Parent = game.Workspace

 

wait(1)

 
s:play()