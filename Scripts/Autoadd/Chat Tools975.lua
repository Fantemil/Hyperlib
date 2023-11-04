if not getgenv().CTR then
  getgenv().CTR = true
else
  repeat task.wait() until true ~= true
end
local plrsT = {}
local wayPoints = {}
local plrs = game:GetService("Players")
local num = 1
for i, v in next, plrs:GetPlayers() do
   plrsT[i] = v
   print(i, v, "/", v.DisplayName)
end

local Character = workspace[plrs.LocalPlayer.Name]
local function indexOverHead(model, i, plr)
              if model:FindFirstChild(model.PrimaryPart.Name) and not model:FindFirstChild("IndexOverGUI") then
              local bill = Instance.new("BillboardGui", model)
              bill.Adornee = model
              bill.Size = UDim2.new(0, 200, 0, 200)
              bill.AlwaysOnTop = true
              bill.Name = "IndexOverGUI"
              local tl = Instance.new("TextLabel", bill)
              tl.Font = Enum.Font.GothamBlack
              tl.Text = "Index: "..tostring(i).."\nName: "..model.Name.."\nDisplay: "..plr.DisplayName
              tl.BackgroundTransparency = 1
              tl.TextSize = 12
              tl.TextColor3 = Color3.fromRGB(25, 50, 75)
              tl.Size = UDim2.new(0, 50, 0, 50)
  end
end
if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService then
    method = 1
    game:GetService("TextChatService").TextChannels.RBXGeneral:DisplaySystemMessage("[System] Chat Tools Loaded.\nJoin the discord: https://discord.gg/Fyu6nTNrfy\nFor more projects visit https://scriptblox.com/u/vxsty")
else
    method = 2
    game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
    Text = "[System] Chat Tools Loaded.\nJoin the discord: https://discord.gg/Fyu6nTNrfy\nFor more projects visit https://scriptblox.com/u/vxsty",
    Color = Color3.fromRGB(255, 89, 98),
    Font = Enum.Font.GothamBlack,
    FontSize = 16
})

end
if method == 2 then
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(msg)
        full = ""
        if msg.FromSpeaker == plrs.LocalPlayer.Name then
            local s, e = pcall(function()
                number = tonumber(msg.Message)
            end)

            if s then
                local plr = plrsT[number]
                local s, e = pcall(function()
                    Character:WaitForChild("HumanoidRootPart").CFrame = plrs[plr.Name].Character:WaitForChild("HumanoidRootPart").CFrame
                end)
            end

            local s, e = pcall(function()
                if msg.Message:sub(1, 1) == "s" then
                    local wayPoint = tonumber(msg.Message:sub(2))
                    local cf = Character:WaitForChild("HumanoidRootPart").CFrame
                    wayPoints[wayPoint] = cf
                    local wayPointIndex = tostring(wayPoint)
                    print("Saved waypoint " .. wayPointIndex .. ", use it by saying g" .. wayPointIndex)
                    local waypointPart = Instance.new("Part", workspace)
                    waypointPart.CFrame = cf
                    waypointPart.Size = Vector3.new(3, 9999999, 3)
                    waypointPart.Color = Color3.fromRGB(0, 50, 255)
                    waypointPart.CanCollide = false
                    waypointPart.Transparency = 0.42
                    waypointPart.Anchored = true

                    local gui = Instance.new("BillboardGui", waypointPart)
                    gui.Size = UDim2.new(0, 200, 0, 50)
                    gui.Adornee = waypointPart
                    gui.AlwaysOnTop = true
                    local textLabel = Instance.new("TextLabel", gui)
                    textLabel.Size = UDim2.new(1, 0, 1, 0)
                    textLabel.BackgroundTransparency = 1
                    textLabel.Text = "Waypoint " .. wayPointIndex
                    textLabel.Font = Enum.Font.GothamBlack
                    textLabel.TextSize = 30
                    textLabel.TextColor3 = Color3.new(1, 1, 1)
                end
            end)

            if msg.Message:sub(1, 1) == "g" then
                local s, e = pcall(function()
                    wayPointIndex = tonumber(msg.Message:sub(2))
                    local wayPoint = wayPoints[wayPointIndex]
                    Character:WaitForChild("HumanoidRootPart").CFrame = wayPoint
                end)
                if not s and not wayPointIndex == nil and plrs.LocalPlayer:FindFirstChild("Character") and plrs.LocalPlayer:FindFirstChild("Character"):FindFirstChild("HumanoidRootPart") then
                    print("Report the following error to the discord: " .. tostring(e))
                end
            end

            if msg.Message == "listwps" then
                for i, v in pairs(wayPoints) do
                    print("Waypoint " .. i)
                end
            elseif msg.Message == "rlist" then
                print("New list: ")
                for i, v in next, plrs:GetPlayers() do
                    plrsT[i] = v
                    print(i, v)
                end
            elseif msg.Message:sub(1, 1) == "d" then
                local s, e = pcall(function()
                    num = tonumber(msg.Message:sub(2))
                    for i, v in pairs(wayPoints) do
                        if num == i then
                            local g = "Waypoint " .. tostring(i) .. ".txt"
                            writefile(g, [[workspace[game:GetService("Players").LocalPlayer.Name].HumanoidRootPart.CFrame = CFrame.new(]] .. tostring(v) .. ")")
                            print("Successfully downloaded waypoint " .. tostring(i))
                        end
                    end
                end)
            elseif msg.Message == "nbps" then
                for _, part in next, workspace:GetDescendants() do
                    if part:IsA("Part") and not part:IsDescendantOf(Character) and (part.Position - Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        local touch = false
                        for i, v in next, part:GetDescendants() do
                            if v:IsA("TouchInterest") then
                                touch = true
                                break
                            else
                                touch = false
                            end
                        end
full = "game."..part:GetFullName()
                        print("Found part, table of information: \n{\n Name: " .. part.Name .. ";\n Magnitude: " .. tostring((part.Position - Character.HumanoidRootPart.Position).Magnitude) .. ";\n Position: \n {\n  X: " .. tostring(part.Position.X) .. "\n  Y: " .. tostring(part.Position.Y) .. ";\n  Z: " .. tostring(part.Position.Z) .. ";\n }\n Parent: " .. part.Parent.Name .. "\n Parent class: " .. part.Parent.ClassName .. "\n Full Name: " .. full .. "\n Brick Color: " .. tostring(part.BrickColor) .. "\n Has a touch interest: " .. tostring(touch) .. "\n Material: "..tostring(part.Material):gsub("Enum.Material.", ""))
              
                    end
                end
            end
        if msg.Message == "rj" then
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end
        if msg.Message == ";ioh" then
       for i, v in next, plrs:GetPlayers() do
          for _, model in next, workspace:GetDescendants() do
            if model:IsA("Model") and model.Name == v.Name then -- Find player's characters
              indexOverHead(model, i, v)
              plrs.PlayerAdded:Connect(function(player) for k, val in next, workspace:GetDescendants() do if val.Name == player.Name and val:IsA("Model") then indexOverHead(val.PrimaryPart, #plrsT + 1, player)
                    end;
                  end;
                end)
            end
          end
        end
end
      end
    end)
end

if method == 1 then
    game:GetService("TextChatService").MessageReceived:Connect(function(msg)
      full = ""
        if msg.TextSource.Name == plrs.LocalPlayer.Name then
            local s, e = pcall(function()
                number = tonumber(msg.Text)
            end)

            if s then
                local plr = plrsT[number]
                local s, e = pcall(function()
                    Character:WaitForChild("HumanoidRootPart").CFrame = plr.Character:WaitForChild("HumanoidRootPart").CFrame
                end)
            end

            local s, e = pcall(function()
                if msg.Text:sub(1, 1) == "s" then
                    local wayPoint = tonumber(msg.Text:sub(2))
                    local cf = Character:WaitForChild("HumanoidRootPart").CFrame
                    wayPoints[wayPoint] = cf
                    local wayPointIndex = tostring(wayPoint)
                    print("Saved waypoint " .. wayPointIndex .. ", use it by saying g" .. wayPointIndex)
                    local waypointPart = Instance.new("Part", workspace)
                    waypointPart.CFrame = cf
                    waypointPart.Size = Vector3.new(3, 99999999, 3)
                    waypointPart.Color = Color3.fromRGB(0, 50, 255)
                    waypointPart.CanCollide = false
                    waypointPart.Transparency = 0.42
                    waypointPart.Anchored = true

                    local gui = Instance.new("BillboardGui", waypointPart)
                    gui.Size = UDim2.new(0, 200, 0, 50)
                    gui.Adornee = waypointPart
                    gui.AlwaysOnTop = true
                    local textLabel = Instance.new("TextLabel", gui)
                    textLabel.Size = UDim2.new(1, 0, 1, 0)
                    textLabel.BackgroundTransparency = 1
                    textLabel.Text = "Waypoint " .. wayPointIndex
                    textLabel.Font = Enum.Font.GothamBlack
                    textLabel.TextScaled = true
                    textLabel.TextColor3 = Color3.new(1, 1, 1)
                end
            end)

            if msg.Text:sub(1, 1) == "g" then
                s, e = pcall(function()
                    wayPointIndex = tonumber(msg.Text:gsub(" ", ""):sub(2))
                    local wayPoint = wayPoints[wayPointIndex]
                    Character:WaitForChild("HumanoidRootPart").CFrame = wayPoint
                end)
            end

            if not s and not wayPointIndex == nil and plrs.LocalPlayer:FindFirstChild("Character") and plrs.LocalPlayer:FindFirstChild("Character"):FindFirstChild("HumanoidRootPart") then
                print("Report the following error to the discord: " .. tostring(e))
            end

            if msg.Text == "listwps" then
                for i, v in pairs(wayPoints) do
                    print("Waypoint " .. i)
                end
            elseif msg.Text == "rlist" then
                print("New list: ")
                for i, v in next, plrs:GetPlayers() do
                    plrsT[i] = v
                    print(i, v)
                end
            elseif msg.Text:sub(1, 1) == "d" then
                local s, e = pcall(function()
                    num = tonumber(msg.Text:sub(2))
                    for i, v in pairs(wayPoints) do
                        if num == i then
                            local g = "Waypoint " .. tostring(i) .. ".txt"
                            writefile(g, [[workspace[game:GetService("Players").LocalPlayer.Name].HumanoidRootPart.CFrame = CFrame.new(]] .. tostring(v) .. ")")
                            print("Successfully downloaded waypoint " .. tostring(i))
                        end
                    end
                end)
            elseif msg.Text == "nbps" then
                for _, part in next, workspace:GetDescendants() do
                    if part:IsA("Part") and not part:IsDescendantOf(Character) and (part.Position - Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        local touch = false
                        for i, v in next, part:GetDescendants() do
                            if v:IsA("TouchInterest") then
                                touch = true
                                break
                            else
                                touch = false
                            end
                        end
full = "game."..part:GetFullName()
                        print("Found part, table of information: \n{\n Name: " .. part.Name .. ";\n Magnitude: " .. tostring((part.Position - Character.HumanoidRootPart.Position).Magnitude) .. ";\n Position: \n {\n  X: " .. tostring(part.Position.X) .. "\n  Y: " .. tostring(part.Position.Y) .. ";\n  Z: " .. tostring(part.Position.Z) .. ";\n }\n Parent: " .. part.Parent.Name .. "\n Parent class: " .. part.Parent.ClassName .. "\n Full Name: " .. full .. "\n Brick Color: " .. tostring(part.BrickColor) .. "\n Has a touch interest: " .. tostring(touch) .. "\n Material: "..tostring(part.Material):gsub("Enum.Material.", ""))
                    end
                end
            end
        end
      if msg.Text == "rj" then
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end
      if msg.Text == ";ioh" then
       for i, v in next, plrs:GetPlayers() do
          for _, model in next, workspace:GetDescendants() do
            if model:IsA("Model") and model.Name == v.Name then -- Find player's characters
              indexOverHead(model, i, v)
              plrs.PlayerAdded:Connect(function(player) for k, val in next, workspace:GetDescendants() do if val.Name == player.Name and val:IsA("Model") then indexOverHead(val.PrimaryPart, #plrsT + 1, player)
                    end;
                  end;
                end)
            end
          end
        end
end
    end)
end

