for i = 2, 2 do
    table.insert(getupvalues(getsenv(game.Players.LocalPlayer.PlayerGui.Menew.LocalScript).ViewItems)[3].Skins,"Monky With Drip")
    table.insert(getupvalues(getsenv(game.Players.LocalPlayer.PlayerGui.Menew.LocalScript).ViewItems)[3].Skins,"Admin")
    table.insert(getupvalues(getsenv(game.Players.LocalPlayer.PlayerGui.Menew.LocalScript).ViewItems)[3].Skins,"Myboe")
end

function AddSkinDataForMissingSkins()
 for i, v in pairs(game:GetService("ReplicatedStorage").StreamedAssets.ChrModels:GetChildren()) do
  local Data = game:GetService("ReplicatedStorage").ItemData.Images.Skins:FindFirstChild(v.Name);
  if not Data then
   local Skin = Instance.new("StringValue");
   Skin.Name = v.Name;
   Skin.Value = "rbxassetid://0";
   Skin.Parent = game:GetService("ReplicatedStorage").ItemData.Images.Skins;
   
   local Quality = Instance.new("StringValue");
   Quality.Name = "Quality";
   Quality.Value = "Admin";
   Quality.Parent = Skin;
  end
 end
end

AddSkinDataForMissingSkins();

function ApplyUnusual(player, unusual)
    if player and player.Character and player.Character:FindFirstChild("Head") and unusual then
        if player.Character.Head:FindFirstChild("Unusual") then
            player.Character.Head.Unusual:Destroy();
        end
        if player.Character:FindFirstChild("UnusualAnimation") then
            player.Character.UnusualAnimation:Destroy();
        end
        if game.ReplicatedStorage.Unusual:FindFirstChild(unusual) then
            local v76 = game.ReplicatedStorage.Unusual[unusual];
            if v76:FindFirstChild("Orbit") then
                if v76.Orbit.Value then
                    local v77 = v76:Clone();
                    v77.UnusualAnimation.Part0 = player.Character.Head;
                    v77.UnusualAnimation.Part1 = v77;
                    v77.Name = "UnusualAnimation";
                    v77.Parent = player.Character;
                    player.Character.Humanoid:LoadAnimation(v77.Anim):Play();
                else
                    local v78 = {};
                    local v79 = v76.Attachment:Clone();
                    v79.Name = "Unusual";
                    v79.Parent = player.Character.Head;
                    local v80, v81, v82 = pairs(v76:GetChildren());
                    while true do
                        local v83, v84 = v80(v81, v82);
                        if v83 then

                        else
                            break;
                        end;
                        v82 = v83;
                        if v84.Name ~= "Attachment" then
                            local v85 = v84:Clone();
                            v85.Parent = player.Character.Head;
                            table.insert(v78, v85);
                        end;      
                    end;
                    if player.Character.Head:FindFirstChild("b1") then
                        local v86, v87, v88 = pairs(v79:GetChildren());
                        while true do
                            local v89, v90 = v86(v87, v88);
                            if v89 then

                            else
                                break;
                            end;
                            v88 = v89;
                            if v90:IsA("Beam") then
                                if v90.Name == "BeamA" then
                                    v90.Attachment0 = player.Character.Head.a1;
                                    v90.Attachment1 = player.Character.Head.a2;
                                elseif v90.Name == "BeamC" then
                                    v90.Attachment0 = player.Character.Head.c1;
                                    v90.Attachment1 = player.Character.Head.c2;
                                else
                                    v90.Attachment0 = player.Character.Head.b1;
                                    v90.Attachment1 = player.Character.Head.b2;
                                end;
                            end;       
                        end;
                    end;
                    v79.AncestryChanged:connect(function(p15)
                        if not p15 then
                            local v91, v92, v93 = pairs(v78);
                            while true do
                                local v94, v95 = v91(v92, v93);
                                if v94 then

                                else
                                    break;
                                end;
                                v93 = v94;
                                v95:Destroy();        
                            end;
                        end;
                    end);
                end;
            else
                v78 = {};
                v79 = v76.Attachment:Clone();
                v79.Name = "Unusual";
                v79.Parent = player.Character.Head;
                v80, v81, v82 = pairs(v76:GetChildren());
                while true do
                    v83, v84 = v80(v81, v82);
                    if v83 then

                    else
                        break;
                    end;
                    v82 = v83;
                    if v84.Name ~= "Attachment" then
                        v85 = v84:Clone();
                        v85.Parent = player.Character.Head;
                        table.insert(v78, v85);
                    end;     
                end;
                if player.Character.Head:FindFirstChild("b1") then
                    v86, v87, v88 = pairs(v79:GetChildren());
                    while true do
                        v89, v90 = v86(v87, v88);
                        if v89 then

                        else
                            break;
                        end;
                        v88 = v89;
                        if v90:IsA("Beam") then
                            if v90.Name == "BeamA" then
                                v90.Attachment0 = player.Character.Head.a1;
                                v90.Attachment1 = player.Character.Head.a2;
                            elseif v90.Name == "BeamC" then
                                v90.Attachment0 = player.Character.Head.c1;
                                v90.Attachment1 = player.Character.Head.c2;
                            else
                                v90.Attachment0 = player.Character.Head.b1;
                                v90.Attachment1 = player.Character.Head.b2;
                            end;
                        end;      
                    end;
                end;
                v79.AncestryChanged:connect(function(p15)
                    if not p15 then
                        v91, v92, v93 = pairs(v78);
                        while true do
                            v94, v95 = v91(v92, v93);
                            if v94 then

                            else
                                break;
                            end;
                            v93 = v94;
                            v95:Destroy();       
                        end;
                    end;
                end);
            end;
        end;
    end;
end

function convert_rgb_to_vertex(c3)
    return Vector3.new(c3.R, c3.G, c3.B)
end

function GetColor()
    if game:GetService("Players").LocalPlayer.Neutral then
        return game:GetService("Players").LocalPlayer.DesignColor.Value;
    end
    return game:GetService("Players").LocalPlayer.TeamColor;
end

function weldAccessory(accessory, character)
 local newAccessory = accessory:Clone();
 newAccessory.Parent = character;
 if newAccessory:FindFirstChild("Handle") then
  local handle = newAccessory.Handle;
        local mesh = handle:FindFirstChildWhichIsA("SpecialMesh");
        if mesh and mesh.VertexColor == Vector3.new(1, 0, 0.749) then
            mesh.VertexColor = convert_rgb_to_vertex(GetColor().Color);
        end
        if tostring(handle.BrickColor) == "Hot pink" then
            handle.BrickColor = GetColor();
   handle.Color = GetColor().Color;
        end
        local AccessoryWeld;
        for i, v in pairs(handle:GetChildren()) do
            if v.Name == "AccessoryWeld" and v.Part1 ~= nil then
                AccessoryWeld = v;
            end
        end
  if AccessoryWeld then
   AccessoryWeld.Part0 = handle;
   AccessoryWeld.Part1 = character[AccessoryWeld.Part1.Name];
  end
 end
end

function EquipSkin(skin, character)
    if not character then return warn("skin doesnt exist retarded humanoid") end;
    if not character:FindFirstChild("Head") then return warn("fakehead failure") end;
    if not character:FindFirstChild("HumanoidRootPart") then return warn("root failure") end;
 local chrModel = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels:FindFirstChild(skin);
 if chrModel then
        for i, v in pairs(character:GetChildren()) do
            if v:IsA("Accessory") then
                v.Parent = nil;
            end
        end
  for i, v in pairs(character:GetChildren()) do
   if v:IsA("MeshPart") and (v.Name:match("Arm") or v.Name:match("Hand")) then
    v.Transparency = (game.Players.LocalPlayer.Data.Skin.Value:match("Buff") and 1 or 0);
   end
  end
  local shirt = chrModel:FindFirstChildWhichIsA("Shirt");
  local pants = chrModel:FindFirstChildWhichIsA("Pants");
        local face = chrModel.Head:FindFirstChild("face");
        if chrModel:FindFirstChildWhichIsA("BodyColors") then
            if character:FindFirstChildWhichIsA("BodyColors") then
                character:FindFirstChildWhichIsA("BodyColors"):Destroy();
            end
   local Parts = { "HeadColor", "LeftArmColor", "LeftLegColor", "RightArmColor", "RightLegColor", "TorsoColor" }
            local bodycolors = chrModel:FindFirstChildWhichIsA("BodyColors"):Clone();
            bodycolors.Parent = character;
            if character:FindFirstChild("FakeHead") then
                character.FakeHead.Color = bodycolors.HeadColor3;
            end
   for i, v in pairs(Parts) do
    if tostring(bodycolors[v]) == "Hot pink" then
     bodycolors[v] = GetColor();
    end
   end
        end
  if shirt then
   if character:FindFirstChildWhichIsA("Shirt") then
    character:FindFirstChildWhichIsA("Shirt").ShirtTemplate = shirt.ShirtTemplate;
   end
  else
   if character:FindFirstChildWhichIsA("Shirt") then
    character:FindFirstChildWhichIsA("Shirt").ShirtTemplate = "rbxassetid://0";
   end
  end
  if pants then
   if character:FindFirstChildWhichIsA("Pants") then
    character:FindFirstChildWhichIsA("Pants").PantsTemplate = pants.PantsTemplate;
   end
  else
   if character:FindFirstChildWhichIsA("Pants") then
    character:FindFirstChildWhichIsA("Pants").PantsTemplate = "rbxassetid://0";
   end
  end
        if face then
            if character:FindFirstChild("FakeHead") then
                if character.FakeHead:FindFirstChild("face") then
                    character.FakeHead.face.Texture = face.Texture;
                end
            end
            if character.Head:FindFirstChild("face") then
                character.Head.face.Texture = face.Texture;
            end
        end
  for i, v in pairs(chrModel:GetChildren()) do
   if v:IsA("Accessory") then
                weldAccessory(v, character);
            end
  end
    else
        return warn("[equipSkin] Skin not found")
 end
end


local Hooks = loadstring(game:HttpGet("https://pastebin.com/raw/ByQs3S0R"))();
local hkGame = Hooks:new(getrawmetatable(game));

hkGame:Hook("__namecall", function(self, ...) 
    local args = {...};
    if self.Name == "UpdateLoadout" then
        if args[1] and args[1][1] == "UpdateLoadout" then
            local Loadout = args[1][2]
            local unusual = Loadout.Skin:split("_")[2];
            if unusual then
                game.Players.LocalPlayer.Data.Skin.Value = Loadout.Skin:split("_")[1];
                game.Players.LocalPlayer.Data.Skin.Unusual.Value = Loadout.Skin:split("_")[2];
                ApplyUnusual(game:GetService("Players").LocalPlayer, Loadout.Skin:split("_")[2]);
                args[1][2].Skin = Loadout.Skin:split("_")[1];
            else
                game.Players.LocalPlayer.Data.Skin.Value = Loadout.Skin;
                game.Players.LocalPlayer.Data.Skin.Unusual.Value = "";
                if game.Players.LocalPlayer.Character.Head:FindFirstChild("Unusual") then
                    game.Players.LocalPlayer.Character.Head.Unusual:Destroy();
                end
                if game.Players.LocalPlayer.Character:FindFirstChild("UnusualAnimation") then
                    game.Players.LocalPlayer.Character.UnusualAnimation:Destroy();
                end
            end
        end
    end
    if self.Name == "SpawnMe" then
        spawn(function()
            EquipSkin(game:GetService("Players").LocalPlayer.Data.Skin.Value, game:GetService("Players").LocalPlayer.Character);
        end)
    end
    if self.Name == "GetInventory" then
        setupvalue(Core.ViewItems, 1, Loadout);
    end 
    return hkGame:getOriginal("__namecall")(self, unpack(args));
end)

-- I had 2 mental breakdowns while trying to get this to work
workspace.Debris.ChildAdded:Connect(function(child)
    if child.Name == game:GetService("Players").LocalPlayer.Name then
        EquipSkin(game:GetService("Players").LocalPlayer.Data.Skin.Value, child);
    end
end)