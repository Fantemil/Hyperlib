local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local X = Material.Load({
 Title = "Wild West Ore Finder",
 Style = 3,
 SizeX = 500,
 SizeY = 350,
 Theme = "Dark",
 ColorOverrides = {
  MainFrame = Color3.fromRGB(0,0,0)
 }
})

local Y = X.New({
 Title = "1"
})

local A = Y.Button({
    Text = "Gold ESP",
    Callback = function()
            repeat wait() until game:GetService("Players") ~= nil and game:GetService("Players").LocalPlayer ~= nil
            repeat wait() until game:GetService("Workspace") ~= nil and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Entities") and game:GetService("Workspace")["WORKSPACE_Entities"]:FindFirstChild("Animals") and game:GetService("Workspace")["WORKSPACE_Entities"].Animals:FindFirstChildOfClass("Model") and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Geometry")
            local function check()
                local objects = {}
                local exists = false
                cw = 0
                for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Interactables"].Mining.OreDeposits:GetDescendants()) do 
                    if string.match(v.Name, "GoldOre") and v.Parent:FindFirstChild("DepositInfo") and v.Parent.DepositInfo:FindFirstChild("OreRemaining") then
                        cw = cw + 1 
                        objects[cw] = {"Gold", v}
                        exists = true
                    end
                end 
                return exists, objects
            end
            local exists, objects = check()
            if exists then
                local Camera = workspace.CurrentCamera
                local Player = game:GetService("Players").LocalPlayer
                local RS = game:GetService("RunService")
                local RGB = Color3.fromRGB
                local V2 = Vector2.new
                local ROUND = math.round

                local ESP = {}
                function ESP:add(object, name, col) 
                    local NAME = Drawing.new("Text")
                    NAME.Text = name
                    NAME.Size = 18
                    NAME.Color = col
                    NAME.Center = true
                    NAME.Visible = true
                    NAME.Transparency = 1
                    NAME.Position = V2(0, 0)
                    NAME.Outline = true
                    NAME.OutlineColor = RGB(10, 10, 10)
                    NAME.Font = 3

                    local OREREMAIN = Drawing.new("Text")
                    OREREMAIN.Text = "[]"
                    OREREMAIN.Size = 18
                    OREREMAIN.Color = RGB(0, 255, 0)
                    OREREMAIN.Center = true
                    OREREMAIN.Visible = true
                    OREREMAIN.Transparency = 1
                    OREREMAIN.Position = V2(0, 0)
                    OREREMAIN.Outline = true
                    OREREMAIN.OutlineColor = RGB(10, 10, 10)
                    OREREMAIN.Font = 3
                    
                    local DISTANCE = Drawing.new("Text")
                    DISTANCE.Text = "[]"
                    DISTANCE.Size = 18
                    DISTANCE.Color = RGB(255, 255, 255)
                    DISTANCE.Center = true
                    DISTANCE.Visible = true
                    DISTANCE.Transparency = 1
                    DISTANCE.Position = V2(0, 0)
                    DISTANCE.Outline = true
                    DISTANCE.OutlineColor = RGB(10, 10, 10)
                    DISTANCE.Font = 3

                    _G.ESPDISABLE = false
                    local plr = game.Players.LocalPlayer
                    local mouse = plr:GetMouse()

                    mouse.KeyDown:connect(function(key)
                        if key == "l" then
                            _G.ESPDISABLE = true
                        end
                    end)
                    function Updatess()
                        local ce
                        ce = RS.RenderStepped:Connect(function()
                            if _G.ESPDISABLE == false and object.Parent ~= nil and object.Parent.Parent ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value ~= 0 and ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) <= 1000 then
                                local p, vis = Camera:WorldToViewportPoint(object.Position)
                                if vis then
                                    NAME.Position = V2(p.X, p.Y)
                                    if Player.Character ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 1 then
                                        DISTANCE.Position = NAME.Position + V2(0, NAME.TextBounds.Y/1.2)
                                        DISTANCE.Text = "["..ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude).."m]"
                                        DISTANCE.Visible = true
                                        if object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 2 then
                                            OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORES"
                                        elseif object.Parent.DepositInfo:WaitForChild("OreRemaining").Value <= 1 then
                                            OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORE"
                                        end
                                        OREREMAIN.Position = NAME.Position + V2(0, NAME.TextBounds.Y*1.6)
                                        OREREMAIN.Visible = true
                                    else
                                        DISTANCE.Visible = false
                                        OREREMAIN.Visible = false
                                    end
                                    
                                    NAME.Visible = true
                                else
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                end
                            else
                                if object.Parent == nil or object.Parent.Parent == nil or object.Parent.DepositInfo:WaitForChild("OreRemaining").Value == 0 or ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) >= 1000 then
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                elseif _G.ESPDISABLE == true then
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                    NAME:Remove()
                                    DISTANCE:Remove()
                                    OREREMAIN:Remove()
                                    ce:Disconnect()
                                end
                            end
                        end)
                    end
                    Updatess()
                end

                for i,v in pairs(objects) do
                    if v[1] == "Gold" then
                        ESP:add(v[2], "Gold", RGB(218, 165, 32))
                    else
                    end
                end
            end
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "Click L to clear ESP"
            })
        end
    }
})

local A = Y.Button({
    Text = "Silver ESP",
    Callback = function()
            repeat wait() until game:GetService("Players") ~= nil and game:GetService("Players").LocalPlayer ~= nil
            repeat wait() until game:GetService("Workspace") ~= nil and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Entities") and game:GetService("Workspace")["WORKSPACE_Entities"]:FindFirstChild("Animals") and game:GetService("Workspace")["WORKSPACE_Entities"].Animals:FindFirstChildOfClass("Model") and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Geometry")
            local function check()
                local objects = {}
                local exists = false
                cw = 0
                for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Interactables"].Mining.OreDeposits:GetDescendants()) do 
                    if string.match(v.Name, "SilverOre") and v.Parent:FindFirstChild("DepositInfo") and v.Parent.DepositInfo:FindFirstChild("OreRemaining") then
                        cw = cw + 1 
                        objects[cw] = {"Silver", v}
                        exists = true
                    end
                end 
                return exists, objects
            end
            local exists, objects = check()
            if exists then
                local Camera = workspace.CurrentCamera
                local Player = game:GetService("Players").LocalPlayer
                local RS = game:GetService("RunService")
                local RGB = Color3.fromRGB
                local V2 = Vector2.new
                local ROUND = math.round

                local ESP = {}
                function ESP:add(object, name, col) 
                    local NAME = Drawing.new("Text")
                    NAME.Text = name
                    NAME.Size = 18
                    NAME.Color = col
                    NAME.Center = true
                    NAME.Visible = true
                    NAME.Transparency = 1
                    NAME.Position = V2(0, 0)
                    NAME.Outline = true
                    NAME.OutlineColor = RGB(10, 10, 10)
                    NAME.Font = 3

                    local OREREMAIN = Drawing.new("Text")
                    OREREMAIN.Text = "[]"
                    OREREMAIN.Size = 18
                    OREREMAIN.Color = RGB(0, 255, 0)
                    OREREMAIN.Center = true
                    OREREMAIN.Visible = true
                    OREREMAIN.Transparency = 1
                    OREREMAIN.Position = V2(0, 0)
                    OREREMAIN.Outline = true
                    OREREMAIN.OutlineColor = RGB(10, 10, 10)
                    OREREMAIN.Font = 3
                    
                    local DISTANCE = Drawing.new("Text")
                    DISTANCE.Text = "[]"
                    DISTANCE.Size = 18
                    DISTANCE.Color = RGB(255, 255, 255)
                    DISTANCE.Center = true
                    DISTANCE.Visible = true
                    DISTANCE.Transparency = 1
                    DISTANCE.Position = V2(0, 0)
                    DISTANCE.Outline = true
                    DISTANCE.OutlineColor = RGB(10, 10, 10)
                    DISTANCE.Font = 3

                    _G.ESPDISABLE = false
                    local plr = game.Players.LocalPlayer
                    local mouse = plr:GetMouse()

                    mouse.KeyDown:connect(function(key)
                        if key == "l" then
                            _G.ESPDISABLE = true
                        end
                    end)
                    function Updatess()
                        local ce
                        ce = RS.RenderStepped:Connect(function()
                            if _G.ESPDISABLE == false and object.Parent ~= nil and object.Parent.Parent ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value ~= 0 and ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) <= 1000 then
                                local p, vis = Camera:WorldToViewportPoint(object.Position)
                                if vis then
                                    NAME.Position = V2(p.X, p.Y)
                                    if Player.Character ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 1 then
                                        DISTANCE.Position = NAME.Position + V2(0, NAME.TextBounds.Y/1.2)
                                        DISTANCE.Text = "["..ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude).."m]"
                                        DISTANCE.Visible = true
                                        if object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 2 then
                                            OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORES"
                                        elseif object.Parent.DepositInfo:WaitForChild("OreRemaining").Value <= 1 then
                                            OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORE"
                                        end
                                        OREREMAIN.Position = NAME.Position + V2(0, NAME.TextBounds.Y*1.6)
                                        OREREMAIN.Visible = true
                                    else
                                        DISTANCE.Visible = false
                                        OREREMAIN.Visible = false
                                    end
                                    
                                    NAME.Visible = true
                                else
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                end
                            else
                                if object.Parent == nil or object.Parent.Parent == nil or object.Parent.DepositInfo:WaitForChild("OreRemaining").Value == 0 or ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) >= 1000 then
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                elseif _G.ESPDISABLE == true then
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                    NAME:Remove()
                                    DISTANCE:Remove()
                                    OREREMAIN:Remove()
                                    ce:Disconnect()
                                end
                            end
                        end)
                    end
                    Updatess()
                end

                for i,v in pairs(objects) do
                    if v[1] == "Silver" then
                        ESP:add(v[2], "Silver", RGB(192, 192, 192))
                    else
                    end
                end
            end
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "Click L to clear ESP"
            })
        end
    }
})

local A = Y.Button({
    Text = "Limestone ESP",
    Callback = function()
            repeat wait() until game:GetService("Players") ~= nil and game:GetService("Players").LocalPlayer ~= nil
            repeat wait() until game:GetService("Workspace") ~= nil and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Entities") and game:GetService("Workspace")["WORKSPACE_Entities"]:FindFirstChild("Animals") and game:GetService("Workspace")["WORKSPACE_Entities"].Animals:FindFirstChildOfClass("Model") and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Geometry")
            local function check()
                local objects = {}
                local exists = false
                cw = 0
                for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Interactables"].Mining.OreDeposits:GetDescendants()) do 
                    if string.match(v.Name, "LimestoneOre") and v.Parent:FindFirstChild("DepositInfo") and v.Parent.DepositInfo:FindFirstChild("OreRemaining") then
                        cw = cw + 1 
                        objects[cw] = {"Limestone", v}
                        exists = true
                    end
                end 
                return exists, objects
            end
            local exists, objects = check()
            if exists then
                local Camera = workspace.CurrentCamera
                local Player = game:GetService("Players").LocalPlayer
                local RS = game:GetService("RunService")
                local RGB = Color3.fromRGB
                local V2 = Vector2.new
                local ROUND = math.round

                local ESP = {}
                function ESP:add(object, name, col) 
                    local NAME = Drawing.new("Text")
                    NAME.Text = name
                    NAME.Size = 18
                    NAME.Color = col
                    NAME.Center = true
                    NAME.Visible = true
                    NAME.Transparency = 1
                    NAME.Position = V2(0, 0)
                    NAME.Outline = true
                    NAME.OutlineColor = RGB(10, 10, 10)
                    NAME.Font = 3

                    local OREREMAIN = Drawing.new("Text")
                    OREREMAIN.Text = "[]"
                    OREREMAIN.Size = 18
                    OREREMAIN.Color = RGB(0, 255, 0)
                    OREREMAIN.Center = true
                    OREREMAIN.Visible = true
                    OREREMAIN.Transparency = 1
                    OREREMAIN.Position = V2(0, 0)
                    OREREMAIN.Outline = true
                    OREREMAIN.OutlineColor = RGB(10, 10, 10)
                    OREREMAIN.Font = 3
                    
                    local DISTANCE = Drawing.new("Text")
                    DISTANCE.Text = "[]"
                    DISTANCE.Size = 18
                    DISTANCE.Color = RGB(255, 255, 255)
                    DISTANCE.Center = true
                    DISTANCE.Visible = true
                    DISTANCE.Transparency = 1
                    DISTANCE.Position = V2(0, 0)
                    DISTANCE.Outline = true
                    DISTANCE.OutlineColor = RGB(10, 10, 10)
                    DISTANCE.Font = 3

                    _G.ESPDISABLE = false
                    local plr = game.Players.LocalPlayer
                    local mouse = plr:GetMouse()

                    mouse.KeyDown:connect(function(key)
                        if key == "l" then
                            _G.ESPDISABLE = true
                        end
                    end)
                    function Updatess()
                        local ce
                        ce = RS.RenderStepped:Connect(function()
                            if _G.ESPDISABLE == false and object.Parent ~= nil and object.Parent.Parent ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value ~= 0 and ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) <= 1000 then
                                local p, vis = Camera:WorldToViewportPoint(object.Position)
                                if vis then
                                    NAME.Position = V2(p.X, p.Y)
                                    if Player.Character ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 1 then
                                        DISTANCE.Position = NAME.Position + V2(0, NAME.TextBounds.Y/1.2)
                                        DISTANCE.Text = "["..ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude).."m]"
                                        DISTANCE.Visible = true
                                        if object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 2 then
                                            OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORES"
                                        elseif object.Parent.DepositInfo:WaitForChild("OreRemaining").Value <= 1 then
                                            OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORE"
                                        end
                                        OREREMAIN.Position = NAME.Position + V2(0, NAME.TextBounds.Y*1.6)
                                        OREREMAIN.Visible = true
                                    else
                                        DISTANCE.Visible = false
                                        OREREMAIN.Visible = false
                                    end
                                    
                                    NAME.Visible = true
                                else
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                end
                            else
                                if object.Parent == nil or object.Parent.Parent == nil or object.Parent.DepositInfo:WaitForChild("OreRemaining").Value == 0 or ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) >= 1000 then
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                elseif _G.ESPDISABLE == true then
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                    NAME:Remove()
                                    DISTANCE:Remove()
                                    OREREMAIN:Remove()
                                    ce:Disconnect()
                                end
                            end
                        end)
                    end
                    Updatess()
                end

                for i,v in pairs(objects) do
                    if v[1] == "Limestone" then
                        ESP:add(v[2], "Limestone", RGB(220, 216, 199))
                    else
                    end
                end
            end
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "Click L to clear ESP"
            })
        end
    }
})

local A = Y.Button({
 Text = "Iron ESP",
 Callback = function()
   repeat wait() until game:GetService("Players") ~= nil and game:GetService("Players").LocalPlayer ~= nil
         repeat wait() until game:GetService("Workspace") ~= nil and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Entities") and game:GetService("Workspace")["WORKSPACE_Entities"]:FindFirstChild("Animals") and game:GetService("Workspace")["WORKSPACE_Entities"].Animals:FindFirstChildOfClass("Model") and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Geometry")
         local function check()
             local objects = {}
             local exists = false
             cw = 0
             for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Interactables"].Mining.OreDeposits:GetDescendants()) do 
                 if string.match(v.Name, "IronOre") and v.Parent:FindFirstChild("DepositInfo") and v.Parent.DepositInfo:FindFirstChild("OreRemaining") then
                     cw = cw + 1 
                     objects[cw] = {"Iron", v}
                     exists = true
                 end
             end 
             return exists, objects
         end
         local exists, objects = check()
         if exists then
             local Camera = workspace.CurrentCamera
             local Player = game:GetService("Players").LocalPlayer
             local RS = game:GetService("RunService")
             local RGB = Color3.fromRGB
             local V2 = Vector2.new
             local ROUND = math.round

             local ESP = {}
             function ESP:add(object, name, col) 
                 local NAME = Drawing.new("Text")
                 NAME.Text = name
                 NAME.Size = 18
                 NAME.Color = col
                 NAME.Center = true
                 NAME.Visible = true
                 NAME.Transparency = 1
                 NAME.Position = V2(0, 0)
                 NAME.Outline = true
                 NAME.OutlineColor = RGB(10, 10, 10)
                 NAME.Font = 3

                 local OREREMAIN = Drawing.new("Text")
                 OREREMAIN.Text = "[]"
                 OREREMAIN.Size = 18
                 OREREMAIN.Color = RGB(0, 255, 0)
                 OREREMAIN.Center = true
                 OREREMAIN.Visible = true
                 OREREMAIN.Transparency = 1
                 OREREMAIN.Position = V2(0, 0)
                 OREREMAIN.Outline = true
                 OREREMAIN.OutlineColor = RGB(10, 10, 10)
                 OREREMAIN.Font = 3
                 
                 local DISTANCE = Drawing.new("Text")
                 DISTANCE.Text = "[]"
                 DISTANCE.Size = 18
                 DISTANCE.Color = RGB(255, 255, 255)
                 DISTANCE.Center = true
                 DISTANCE.Visible = true
                 DISTANCE.Transparency = 1
                 DISTANCE.Position = V2(0, 0)
                 DISTANCE.Outline = true
                 DISTANCE.OutlineColor = RGB(10, 10, 10)
                 DISTANCE.Font = 3

                 _G.ESPDISABLE = false
                 local plr = game.Players.LocalPlayer
     local mouse = plr:GetMouse()

     mouse.KeyDown:connect(function(key)
         if key == "l" then
              _G.ESPDISABLE = true
          end
     end)
                 function Updatess()
                     local ce
                     ce = RS.RenderStepped:Connect(function()
                         if _G.ESPDISABLE == false and object.Parent ~= nil and object.Parent.Parent ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value ~= 0 and ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) <= 1000 then
                             local p, vis = Camera:WorldToViewportPoint(object.Position)
                             if vis then
                                 NAME.Position = V2(p.X, p.Y)
                                 if Player.Character ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 1 then
                                     DISTANCE.Position = NAME.Position + V2(0, NAME.TextBounds.Y/1.2)
                                     DISTANCE.Text = "["..ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude).."m]"
                                     DISTANCE.Visible = true
                                     if object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 2 then
                                         OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORES"
                                     elseif object.Parent.DepositInfo:WaitForChild("OreRemaining").Value <= 1 then
                                         OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORE"
                                     end
                                     OREREMAIN.Position = NAME.Position + V2(0, NAME.TextBounds.Y*1.6)
                                     OREREMAIN.Visible = true
                                 else
                                     DISTANCE.Visible = false
                                     OREREMAIN.Visible = false
                                 end
                                 
                                 NAME.Visible = true
                             else
                                 NAME.Visible = false
                                 DISTANCE.Visible = false
                                 OREREMAIN.Visible = false
                             end
                         else
                          if object.Parent == nil or object.Parent.Parent == nil or object.Parent.DepositInfo:WaitForChild("OreRemaining").Value == 0 or ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) >= 1000 then
                           NAME.Visible = false
                              DISTANCE.Visible = false
                              OREREMAIN.Visible = false
                          elseif _G.ESPDISABLE == true then
                              NAME.Visible = false
                              DISTANCE.Visible = false
                              OREREMAIN.Visible = false
                              NAME:Remove()
                              DISTANCE:Remove()
                              OREREMAIN:Remove()
                              ce:Disconnect()
                          end
                         end
                     end)
                 end
                 Updatess()
             end

             for i,v in pairs(objects) do
                 if v[1] == "Iron" then
                     ESP:add(v[2], "Iron", RGB(161, 157, 148))
                 else
                 end
             end
         end
 end,
 Menu = {
  Information = function(self)
   X.Banner({
    Text = "Click L to clear ESP"
   })
  end
 }
})

local A = Y.Button({
    Text = "Zinc ESP",
    Callback = function()
            repeat wait() until game:GetService("Players") ~= nil and game:GetService("Players").LocalPlayer ~= nil
            repeat wait() until game:GetService("Workspace") ~= nil and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Entities") and game:GetService("Workspace")["WORKSPACE_Entities"]:FindFirstChild("Animals") and game:GetService("Workspace")["WORKSPACE_Entities"].Animals:FindFirstChildOfClass("Model") and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Geometry")
            local function check()
                local objects = {}
                local exists = false
                cw = 0
                for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Interactables"].Mining.OreDeposits:GetDescendants()) do 
                    if string.match(v.Name, "ZincOre") and v.Parent:FindFirstChild("DepositInfo") and v.Parent.DepositInfo:FindFirstChild("OreRemaining") then
                        cw = cw + 1 
                        objects[cw] = {"Zinc", v}
                        exists = true
                    end
                end 
                return exists, objects
            end
            local exists, objects = check()
            if exists then
                local Camera = workspace.CurrentCamera
                local Player = game:GetService("Players").LocalPlayer
                local RS = game:GetService("RunService")
                local RGB = Color3.fromRGB
                local V2 = Vector2.new
                local ROUND = math.round

                local ESP = {}
                function ESP:add(object, name, col) 
                    local NAME = Drawing.new("Text")
                    NAME.Text = name
                    NAME.Size = 18
                    NAME.Color = col
                    NAME.Center = true
                    NAME.Visible = true
                    NAME.Transparency = 1
                    NAME.Position = V2(0, 0)
                    NAME.Outline = true
                    NAME.OutlineColor = RGB(10, 10, 10)
                    NAME.Font = 3

                    local OREREMAIN = Drawing.new("Text")
                    OREREMAIN.Text = "[]"
                    OREREMAIN.Size = 18
                    OREREMAIN.Color = RGB(0, 255, 0)
                    OREREMAIN.Center = true
                    OREREMAIN.Visible = true
                    OREREMAIN.Transparency = 1
                    OREREMAIN.Position = V2(0, 0)
                    OREREMAIN.Outline = true
                    OREREMAIN.OutlineColor = RGB(10, 10, 10)
                    OREREMAIN.Font = 3
                    
                    local DISTANCE = Drawing.new("Text")
                    DISTANCE.Text = "[]"
                    DISTANCE.Size = 18
                    DISTANCE.Color = RGB(255, 255, 255)
                    DISTANCE.Center = true
                    DISTANCE.Visible = true
                    DISTANCE.Transparency = 1
                    DISTANCE.Position = V2(0, 0)
                    DISTANCE.Outline = true
                    DISTANCE.OutlineColor = RGB(10, 10, 10)
                    DISTANCE.Font = 3

                    _G.ESPDISABLE = false
                    local plr = game.Players.LocalPlayer
                    local mouse = plr:GetMouse()

                    mouse.KeyDown:connect(function(key)
                        if key == "l" then
                            _G.ESPDISABLE = true
                        end
                    end)
                    function Updatess()
                        local ce
                        ce = RS.RenderStepped:Connect(function()
                            if _G.ESPDISABLE == false and object.Parent ~= nil and object.Parent.Parent ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value ~= 0 and ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) <= 1000 then
                                local p, vis = Camera:WorldToViewportPoint(object.Position)
                                if vis then
                                    NAME.Position = V2(p.X, p.Y)
                                    if Player.Character ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 1 then
                                        DISTANCE.Position = NAME.Position + V2(0, NAME.TextBounds.Y/1.2)
                                        DISTANCE.Text = "["..ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude).."m]"
                                        DISTANCE.Visible = true
                                        if object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 2 then
                                            OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORES"
                                        elseif object.Parent.DepositInfo:WaitForChild("OreRemaining").Value <= 1 then
                                            OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORE"
                                        end
                                        OREREMAIN.Position = NAME.Position + V2(0, NAME.TextBounds.Y*1.6)
                                        OREREMAIN.Visible = true
                                    else
                                        DISTANCE.Visible = false
                                        OREREMAIN.Visible = false
                                    end
                                    
                                    NAME.Visible = true
                                else
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                end
                            else
                                if object.Parent == nil or object.Parent.Parent == nil or object.Parent.DepositInfo:WaitForChild("OreRemaining").Value == 0 or ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) >= 1000 then
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                elseif _G.ESPDISABLE == true then
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                    NAME:Remove()
                                    DISTANCE:Remove()
                                    OREREMAIN:Remove()
                                    ce:Disconnect()
                                end
                            end
                        end)
                    end
                    Updatess()
                end

                for i,v in pairs(objects) do
                    if v[1] == "Zinc" then
                        ESP:add(v[2], "Zinc", RGB(184, 197, 202))
                    else
                    end
                end
            end
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "Click L to clear ESP"
            })
        end
    }
})

local A = Y.Button({
    Text = "Copper ESP",
    Callback = function()
            repeat wait() until game:GetService("Players") ~= nil and game:GetService("Players").LocalPlayer ~= nil
            repeat wait() until game:GetService("Workspace") ~= nil and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Entities") and game:GetService("Workspace")["WORKSPACE_Entities"]:FindFirstChild("Animals") and game:GetService("Workspace")["WORKSPACE_Entities"].Animals:FindFirstChildOfClass("Model") and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Geometry")
            local function check()
                local objects = {}
                local exists = false
                cw = 0
                for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Interactables"].Mining.OreDeposits:GetDescendants()) do 
                    if string.match(v.Name, "CopperOre") and v.Parent:FindFirstChild("DepositInfo") and v.Parent.DepositInfo:FindFirstChild("OreRemaining") then
                        cw = cw + 1 
                        objects[cw] = {"Copper", v}
                        exists = true
                    end
                end 
                return exists, objects
            end
            local exists, objects = check()
            if exists then
                local Camera = workspace.CurrentCamera
                local Player = game:GetService("Players").LocalPlayer
                local RS = game:GetService("RunService")
                local RGB = Color3.fromRGB
                local V2 = Vector2.new
                local ROUND = math.round

                local ESP = {}
                function ESP:add(object, name, col) 
                    local NAME = Drawing.new("Text")
                    NAME.Text = name
                    NAME.Size = 18
                    NAME.Color = col
                    NAME.Center = true
                    NAME.Visible = true
                    NAME.Transparency = 1
                    NAME.Position = V2(0, 0)
                    NAME.Outline = true
                    NAME.OutlineColor = RGB(10, 10, 10)
                    NAME.Font = 3

                    local OREREMAIN = Drawing.new("Text")
                    OREREMAIN.Text = "[]"
                    OREREMAIN.Size = 18
                    OREREMAIN.Color = RGB(0, 255, 0)
                    OREREMAIN.Center = true
                    OREREMAIN.Visible = true
                    OREREMAIN.Transparency = 1
                    OREREMAIN.Position = V2(0, 0)
                    OREREMAIN.Outline = true
                    OREREMAIN.OutlineColor = RGB(10, 10, 10)
                    OREREMAIN.Font = 3
                    
                    local DISTANCE = Drawing.new("Text")
                    DISTANCE.Text = "[]"
                    DISTANCE.Size = 18
                    DISTANCE.Color = RGB(255, 255, 255)
                    DISTANCE.Center = true
                    DISTANCE.Visible = true
                    DISTANCE.Transparency = 1
                    DISTANCE.Position = V2(0, 0)
                    DISTANCE.Outline = true
                    DISTANCE.OutlineColor = RGB(10, 10, 10)
                    DISTANCE.Font = 3

                    _G.ESPDISABLE = false
                    local plr = game.Players.LocalPlayer
                    local mouse = plr:GetMouse()

                    mouse.KeyDown:connect(function(key)
                        if key == "l" then
                            _G.ESPDISABLE = true
                        end
                    end)
                    function Updatess()
                        local ce
                        ce = RS.RenderStepped:Connect(function()
                            if _G.ESPDISABLE == false and object.Parent ~= nil and object.Parent.Parent ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value ~= 0 and ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) <= 1000 then
                                local p, vis = Camera:WorldToViewportPoint(object.Position)
                                if vis then
                                    NAME.Position = V2(p.X, p.Y)
                                    if Player.Character ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 1 then
                                        DISTANCE.Position = NAME.Position + V2(0, NAME.TextBounds.Y/1.2)
                                        DISTANCE.Text = "["..ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude).."m]"
                                        DISTANCE.Visible = true
                                        if object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 2 then
                                            OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORES"
                                        elseif object.Parent.DepositInfo:WaitForChild("OreRemaining").Value <= 1 then
                                            OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORE"
                                        end
                                        OREREMAIN.Position = NAME.Position + V2(0, NAME.TextBounds.Y*1.6)
                                        OREREMAIN.Visible = true
                                    else
                                        DISTANCE.Visible = false
                                        OREREMAIN.Visible = false
                                    end
                                    
                                    NAME.Visible = true
                                else
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                end
                            else
                                if object.Parent == nil or object.Parent.Parent == nil or object.Parent.DepositInfo:WaitForChild("OreRemaining").Value == 0 or ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) >= 1000 then
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                elseif _G.ESPDISABLE == true then
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                    NAME:Remove()
                                    DISTANCE:Remove()
                                    OREREMAIN:Remove()
                                    ce:Disconnect()
                                end
                            end
                        end)
                    end
                    Updatess()
                end

                for i,v in pairs(objects) do
                    if v[1] == "Copper" then
                        ESP:add(v[2], "Copper", RGB(184, 115, 51))
                    else
                    end
                end
            end
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "Click L to clear ESP"
            })
        end
    }
})

local A = Y.Button({
    Text = "Coal ESP",
    Callback = function()
            repeat wait() until game:GetService("Players") ~= nil and game:GetService("Players").LocalPlayer ~= nil
            repeat wait() until game:GetService("Workspace") ~= nil and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Entities") and game:GetService("Workspace")["WORKSPACE_Entities"]:FindFirstChild("Animals") and game:GetService("Workspace")["WORKSPACE_Entities"].Animals:FindFirstChildOfClass("Model") and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Geometry")
            local function check()
                local objects = {}
                local exists = false
                cw = 0
                for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Interactables"].Mining.OreDeposits:GetDescendants()) do 
                    if string.match(v.Name, "CoalOre") and v.Parent:FindFirstChild("DepositInfo") and v.Parent.DepositInfo:FindFirstChild("OreRemaining") then
                        cw = cw + 1 
                        objects[cw] = {"Coal", v}
                        exists = true
                    end
                end 
                return exists, objects
            end
            local exists, objects = check()
            if exists then
                local Camera = workspace.CurrentCamera
                local Player = game:GetService("Players").LocalPlayer
                local RS = game:GetService("RunService")
                local RGB = Color3.fromRGB
                local V2 = Vector2.new
                local ROUND = math.round

                local ESP = {}
                function ESP:add(object, name, col) 
                    local NAME = Drawing.new("Text")
                    NAME.Text = name
                    NAME.Size = 18
                    NAME.Color = col
                    NAME.Center = true
                    NAME.Visible = true
                    NAME.Transparency = 1
                    NAME.Position = V2(0, 0)
                    NAME.Outline = true
                    NAME.OutlineColor = RGB(10, 10, 10)
                    NAME.Font = 3

                    local OREREMAIN = Drawing.new("Text")
                    OREREMAIN.Text = "[]"
                    OREREMAIN.Size = 18
                    OREREMAIN.Color = RGB(0, 255, 0)
                    OREREMAIN.Center = true
                    OREREMAIN.Visible = true
                    OREREMAIN.Transparency = 1
                    OREREMAIN.Position = V2(0, 0)
                    OREREMAIN.Outline = true
                    OREREMAIN.OutlineColor = RGB(10, 10, 10)
                    OREREMAIN.Font = 3
                    
                    local DISTANCE = Drawing.new("Text")
                    DISTANCE.Text = "[]"
                    DISTANCE.Size = 18
                    DISTANCE.Color = RGB(255, 255, 255)
                    DISTANCE.Center = true
                    DISTANCE.Visible = true
                    DISTANCE.Transparency = 1
                    DISTANCE.Position = V2(0, 0)
                    DISTANCE.Outline = true
                    DISTANCE.OutlineColor = RGB(10, 10, 10)
                    DISTANCE.Font = 3

                    _G.ESPDISABLE = false
                    local plr = game.Players.LocalPlayer
                    local mouse = plr:GetMouse()

                    mouse.KeyDown:connect(function(key)
                        if key == "l" then
                            _G.ESPDISABLE = true
                        end
                    end)
                    function Updatess()
                        local ce
                        ce = RS.RenderStepped:Connect(function()
                            if _G.ESPDISABLE == false and object.Parent ~= nil and object.Parent.Parent ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value ~= 0 and ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) <= 1000 then
                                local p, vis = Camera:WorldToViewportPoint(object.Position)
                                if vis then
                                    NAME.Position = V2(p.X, p.Y)
                                    if Player.Character ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 1 then
                                        DISTANCE.Position = NAME.Position + V2(0, NAME.TextBounds.Y/1.2)
                                        DISTANCE.Text = "["..ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude).."m]"
                                        DISTANCE.Visible = true
                                        if object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 2 then
                                            OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORES"
                                        elseif object.Parent.DepositInfo:WaitForChild("OreRemaining").Value <= 1 then
                                            OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORE"
                                        end
                                        OREREMAIN.Position = NAME.Position + V2(0, NAME.TextBounds.Y*1.6)
                                        OREREMAIN.Visible = true
                                    else
                                        DISTANCE.Visible = false
                                        OREREMAIN.Visible = false
                                    end
                                    
                                    NAME.Visible = true
                                else
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                end
                            else
                                if object.Parent == nil or object.Parent.Parent == nil or object.Parent.DepositInfo:WaitForChild("OreRemaining").Value == 0 or ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) >= 1000 then
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                elseif _G.ESPDISABLE == true then
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                    NAME:Remove()
                                    DISTANCE:Remove()
                                    OREREMAIN:Remove()
                                    ce:Disconnect()
                                end
                            end
                        end)
                    end
                    Updatess()
                end

                for i,v in pairs(objects) do
                    if v[1] == "Coal" then
                        ESP:add(v[2], "Coal", RGB(54, 69, 79))
                    else
                    end
                end
            end
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "Click L to clear ESP"
            })
        end
    }
})