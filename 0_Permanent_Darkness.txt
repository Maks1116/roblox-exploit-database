for _, plr in pairs(game.Players:GetChildren()) do -- Gets the players and sets them to plr
        for _, obj in pairs(plr.Character:GetChildren()) do -- Gets everyone's character and sets anything in their character to obj
                if (obj.Name == "Head") then -- If the name of the thing in the character is = to "Head" then that now only stands for obj
                obj.Mesh.MeshType = "Brick" -- Changes the mesh inside of the Head to a brick mesh
                obj.Mesh.Scale = Vector3.new(1, 1, .01); -- Changes the scale (size) of the mesh to 1, 1, .01
                obj.Mesh:Clone().Parent = plr.Character["Torso"]; -- Clones the mesh to the players torso
                obj.Mesh:Clone().Parent = plr.Character["Left Arm"]; -- Clones the mesh to the players left arm
                obj.Mesh:Clone().Parent = plr.Character["Right Arm"]; -- Clones the mesh to the players right arm
                obj.Mesh:Clone().Parent = plr.Character["Left Leg"]; -- Clones the mesh to the players left leg
                obj.Mesh:Clone().Parent = plr.Character["Right Leg"]; -- Clones the mesh to the players right leg
                obj.Mesh:Clone().Parent = plr.Character["Head"]; -- Clones the mesh to the players head
                        for _, plra in pairs(game.Players:GetChildren()) do -- Sets all the players to plra
                                for _, obja in pairs(plra.Character:GetChildren()) do -- Gets everyone's character and sets anything in their character to obja
                                        if (obja:IsA("Hat")) then -- If the name of the thing in the character is a "Hat" then that now only stands for obja
                                                for _, objas in pairs(obja:GetChildren()) do -- Gets anything in the player(s) hat(s) and sets them to objas
                                                objas.Mesh.Scale = Vector3.new(1, 1, .01) -- Changes the scale of the mesh in the hat to 1, 1, .01
                                                end -- All "end"(s) end the parrelel blue highlighted word such as "for" or "if"
                                        end -- All "end"(s) end the parrelel blue highlighted word such as "for" or "if"
                                end -- All "end"(s) end the parrelel blue highlighted word such as "for" or "if"
                        end -- All "end"(s) end the parrelel blue highlighted word such as "for" or "if" 
                end -- All "end"(s) end the parrelel blue highlighted word such as "for" or "if"
        end  -- All "end"(s) end the parrelel blue highlighted word such as "for" or "if"
end -- All "end"(s) end the parrelel blue highlighted word such as "for" or "if"