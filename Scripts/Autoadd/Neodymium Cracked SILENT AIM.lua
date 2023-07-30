getgenv().Neodymium = { -- Dont Re execute This Script Unless You Rejoin
    Silent = {
        ["Silent Aim"] = true,
        ["Silent Aim Hold Key"] = Enum.UserInputType.MouseButton2,
        ["Show FOV"] = true,
        ["FOV Size"] = 150,
        ["Tracer To Target"] = true,
        ["Prediction"] = true,
        ["Prediction Amount"] = 2.2,
        ["BulletDropPrediction"] = 0.05, -- Keep This 0.03 Unless you know what your doing
        ["LoadBypasses"] = true, -- You Can Change This If You Want It Too Be Detected :Shrug:
        ["LoadBypasses2"] = false, -- Not Reccomended Since It Drops Alot Of FPS When Aiming
        ["Visible Check"] = false,
    },
    ESP = {
        ["Enable ESP"] = true,
        ["Box ESP"] = true,
        ["Health Bar ESP"] = true, -- Dosent Work Since Im Lazy To Make It Work
        ["Player Name ESP"] = true, -- Just Shows The Text "Player" Above There Head
        ["Health Bar Location"] = "Left", -- Left, Bottom, Right
        ["Ore ESP"] = true,
        ["Visible Check"] = false,
    },
    HitboxExpander = {
        ["Enabled"] = true,
        ["Hitbox Width"] = 3, -- Dont Put Width Under 3
        ["Hitbox Height"] = 6.2, -- Dont Put Height Under 7
        ["Hitbox Transparency"] = 0.8,
    },
    Colors = {
        ["FOV Color"] = Color3.fromRGB(99, 64, 255),
        ["Health Bar Color"] = Color3.fromRGB(99, 64, 255),
        ["Box ESP Color"] = Color3.fromRGB(99, 64, 255),
        ["Player Name ESP Color"] = Color3.fromRGB(99, 64, 255),
        ["Tracer Color"] = Color3.fromRGB(99, 64, 255)
    },
    Misc = {
        ["Pick Up All"] = true,
        ["Pick Up All Keybind"] = "F", -- You Just Press F Whenever Your In Someones Invetory And It Will Loot Everything Into Your Invetory
        ["No Blunder Spread"] = true
    },
    Fun = {
        ["Enabled Fun Stuff"] = false,

    },
    Bypasses = {
        ["Bypass1"] = false, -- This Will Kick You Ever 10 Mins Too Bypass Bans Only Useful For Free Exploits
        ["Bypass2"] = false, -- This Will Spoof Alot Of Shit Just Watch Out Because It's A FPS Taker
    }
}

    
    function SCRIPT()
        local m_thread = task
    setreadonly(m_thread, false)
    function m_thread.spawn_loop(p_time, p_callback)
      m_thread.spawn(
      function()
        while true do
          p_callback()
          m_thread.wait(p_time)
        end
      end
      )
    end
    setreadonly(m_thread, true)


    --// Macros
    if not LPH_OBFUSCATED then
        LPH_JIT = function(...) return ... end
        LPH_JIT_MAX = function(...) return ... end
        LPH_JIT_ULTRA = function(...) return ... end
        LPH_NO_VIRTUALIZE = function(...) return ... end
        LPH_NO_UPVALUES = function(f) return(function(...) return f(...) end) end
        LPH_ENCSTR = function(...) return ... end
        LPH_STRENC = function(...) return ... end
        LPH_HOOK_FIX = function(...) return ... end
        LPH_CRASH = function() return print(debug.traceback()) end
    end;






    local TracerToTarget;
    local MonkeyPlayer;
















    local _Network = getrenv()._G.Network;
    local _Player = getrenv()._G.Player;
    local _Character = getrenv()._G.Character;
    local l__NEXT__2 = getrenv()._G.NEXT;

    local Players = game:GetService("Players");
    local LocalPlayer = Players.LocalPlayer;
    local Camera = game:GetService("Workspace").Camera;
    local CurrentCamera = game:GetService("Workspace").CurrentCamera
    local Mouse = LocalPlayer:GetMouse();
    local worldToViewportPoint = CurrentCamera.worldToViewportPoint
    local camera = game:GetService("Workspace").Camera;
    local UIS = game:GetService("UserInputService")

    getgenv()._SilentAim = {
        Enabled = getgenv().Neodymium.Silent["Silent Aim"],
        Silent_Target = nil,
    }


    -- Silent FOV

    local vector3_new, vector2_new = Vector3.new, Vector2.new

    local fovcircle = Drawing.new("Circle")
    fovcircle.Visible = getgenv().Neodymium.Silent["Show FOV"]
    fovcircle.Radius = getgenv().Neodymium.Silent["FOV Size"]
    fovcircle.Color = Color3.fromRGB(255,255,255)
    fovcircle.Thickness = 1
    fovcircle.Filled = false
    fovcircle.Transparency = 1
    fovcircle.Position = vector2_new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)










    local function PredictionCheese(Player, TargetPos)
        local PlayerRoot = Player
        local PlayersVelocity = PlayerRoot.Velocity

        local Distance = (TargetPos - workspace.CurrentCamera.CFrame.p).Magnitude
        local TimeToTarget = Distance / 3

        return PlayersVelocity * TimeToTarget
     end




     if getgenv().Neodymium.Misc["No Blunder Spread"] then
        local Cheese = require(game:GetService("ReplicatedStorage").ItemConfigs.Blunderbuss)
        Cheese.accuracy = 10000
     end




    local WallCheck = function(destination, ignore)
        if getgenv().Neodymium.Silent["Visible Check"] then
            local Origin = Camera.CFrame.p
            local CheckRay = Ray.new(Origin, destination - Origin)
            local Hit = game.workspace:FindPartOnRayWithIgnoreList(CheckRay, ignore)
        return Hit == nil

        else
            return true
        end
    end


    local WallCheck2 = function(destination, ignore)
        if getgenv().Neodymium.ESP["Visible Check"] then
            local Origin = Camera.CFrame.p
            local CheckRay = Ray.new(Origin, destination - Origin)
            local Hit = game.workspace:FindPartOnRayWithIgnoreList(CheckRay, ignore)
        return Hit == nil

        else
            return true
        end
    end



    local function viewportPoint(ret, ...)
        if type(ret) == "boolean" then
            local pos, vis = workspace.CurrentCamera:WorldToViewportPoint(...)
            return pos
        else
            return workspace.CurrentCamera:WorldToViewportPoint(ret, ...)
        end
    end






    local function GetPlayer()
        local last_distance = fovcircle.Radius
        local target = nil

        for i, v in pairs(workspace:GetChildren()) do
            if v:IsA("Model") and v:FindFirstChild("Humanoid") and v.Name ~= "Player" then
                if v.Humanoid.Health ~= 0 and v.PrimaryPart ~= nil and v:FindFirstChild("Head") then
                    local sp, visible = viewportPoint(v:WaitForChild("HumanoidRootPart", math.huge).Position)
                    local mouse_loc = UIS:GetMouseLocation()
                    local distance = (Vector2.new(mouse_loc.X, mouse_loc.Y) - Vector2.new(sp.X, sp.Y)).Magnitude

                    local pos = Camera.WorldToViewportPoint(Camera, v.PrimaryPart.Position)



                    local d = (Vector2.new(pos.X, pos.Y) - fovcircle.Position).magnitude
                    if d <= fovcircle.Radius and distance < last_distance and WallCheck(v.HumanoidRootPart.Position, {game.Players.LocalPlayer, v}) then
                        last_distance = distance
                        target = v
                    else
                        _SilentAim["Silent_Target"] = nil
                    end
                end
            end
        end

        return target
    end







    if getgenv().Neodymium.Silent["LoadBypasses2"] then
        -- Bypasses :kekw:
        local getgenv = getgenv
        local getrawmetatable = getrawmetatable
        local checkcaller = checkcaller
        local newcclosure = newcclosure
        local next = next
        local getinfo = debug.getinfo
        local is_synapse_function = is_synapse_function
        local gameEnv = {}
        for i, v in next, getgenv() do
            gameEnv[i] = v
            getgenv()[i] = nil
        end
        local mt = getrawmetatable(getgenv())
        local robloxEnv = mt.__index -- mt.__index == getrenv() -> true
        mt.__index = newcclosure(function(self, idx)
            if is_synapse_function(getinfo(3).func) then -- 3 with newcclosure, 2 without.
                if gameEnv[idx] ~= nil then
                    return gameEnv[idx]
                end
            end
            return robloxEnv[idx]
        end)
        mt.__newindex = newcclosure(function(self, idx, val)
            if is_synapse_function(getinfo(3).func) then -- 3 with newcclosure, 2 without.
                gameEnv[idx] = val
            else
                robloxEnv[idx] = val
            end
        end)



        local CoreGui = game.CoreGui
        local ContentProvider = game.ContentProvider
        local RobloxGuis = {"RobloxGui", "TeleportGui", "RobloxPromptGui", "RobloxLoadingGui", "PlayerList", "RobloxNetworkPauseNotification", "PurchasePrompt", "HeadsetDisconnectedDialog", "ThemeProvider", "DevConsoleMaster"}

        local function FilterTable(tbl)
            local context = syn_context_get()
            syn_context_set(7)
            local new = {}
            for i,v in ipairs(tbl) do
                if typeof(v) ~= "Instance" then
                    table.insert(new, v)
                else
                    if v == CoreGui or v == game then
                        for i,v in pairs(RobloxGuis) do
                            local gui = CoreGui:FindFirstChild(v)
                            if gui then
                                table.insert(new, gui)
                            end
                        end
                        if v == game then
                            for i,v in pairs(game:GetChildren()) do
                                if v ~= CoreGui then
                                    table.insert(new, v)
                                end
                            end
                        end
                    else
                        if not CoreGui:IsAncestorOf(v) then
                            table.insert(new, v)
                        else
                            --don't insert it if it's a descendant of a different gui than default roblox guis
                            for j,k in pairs(RobloxGuis) do
                                local gui = CoreGui:FindFirstChild(k)
                                if gui then
                                    if v == gui or gui:IsAncestorOf(v) then
                                        table.insert(new, v)
                                        break
                                    end
                                end
                            end
                        end
                    end
                end
            end
            syn_context_set(context)
            return new
        end
        local old
        old = hookfunc(ContentProvider.PreloadAsync, function(self, tbl, cb)
            if self ~= ContentProvider or type(tbl) ~= "table" or type(cb) ~= "function" then
                return old(self, tbl, cb)
            end
            local err
            task.spawn(function()
                local s,e = pcall(old, self, tbl)
                if not s and e then
                    err = e
                end
            end)
            if err then
                return old(self, tbl)
            end

            tbl = FilterTable(tbl)
            return old(self, tbl, cb)
        end)
        local old
        old = hookmetamethod(game, "__namecall", function(self, ...)
            local method = getnamecallmethod()
            if self == ContentProvider and (method == "PreloadAsync" or method == "preloadAsync") then
                local args = {...}
                if type(args[1]) ~= "table" or type(args[2]) ~= "function" then
                    return old(self, ...)
                end
                local err
                task.spawn(function()
                    setnamecallmethod(method)
                    local s,e = pcall(old, self, args[1])
                    if not s and e then
                        err = e
                    end
                end)
                if err then
                    return old(self, args[1])
                end
                args[1] = FilterTable(args[1])
                setnamecallmethod(method)
                return old(self, args[1], args[2])
            end
            return old(self, ...)
        end)
    end






















    if getgenv().Neodymium.ESP["Ore ESP"] then
        _G.Settings = {
            iron = {
                enabled = true,
                colour = Color3.fromRGB(199, 172, 120),
            },
            nitrate = {
                enabled = true,
                colour = Color3.fromRGB(248, 248, 248),
            },
            stone = {
                enabled = true,
                colour = Color3.fromRGB(205, 205, 205),
            },
        }






        --//Ignore below
        if game.PlaceId ~= 9570110925 then
            print("Incorrect Game")
            return
        end
        repeat
            task.wait()
        until game:IsLoaded()
        local settings = _G.Settings
        if settings == nil then
            return
        end
        local function worldtoviewport(position)
            local a, b = workspace.CurrentCamera:WorldToViewportPoint(position)
            return Vector2.new(a.X, a.Y), b
        end
        local function add_esp(part, text, colour, toggle)
            if not toggle then
                return
            end
            local drawing_text = Drawing.new("Text")
            drawing_text.Outline = true
            drawing_text.Center = true
            drawing_text.Visible = false
            drawing_text.Font = 3
            drawing_text.Size = 14.5
            drawing_text.Color = colour
            local rendersteploop =
                game:GetService("RunService").Stepped:connect(
                function()
                    pcall(
                        function()
                            if not part:IsDescendantOf(workspace) or not settings then
                                drawing_text:Remove()
                                rendersteploop:Disconnect()
                            end
                            local part_pos = part.Position
                            local screen_pos, on_screen = worldtoviewport(part_pos)
                            if not on_screen or _G.Shitter == false then
                                drawing_text.Visible = false
                                rendersteploop:Disconnect()
                            end


                            drawing_text.Visible = true
                            drawing_text.Text = text
                            drawing_text.Position = screen_pos
                            rendersteploop:Disconnect()
                        end
                    )
                end
            )
        end
        local function filter_models(v)

            if (not v:IsA("Model")) then
                return
            end
            local is_part = v:FindFirstChild("Part")
            local children = v:GetChildren()
            local child_amount = #children
                            if is_part then
                                if child_amount == 1 then
                                    add_esp(is_part, "Stone", settings.stone.colour, settings.stone.enabled)
                                elseif child_amount == 2 then
                                    for _, v in pairs(children) do
                                        local brickcolor = v.BrickColor
                                        local is_ore = v.ClassName == "MeshPart" and v.Name == "Part"
                                        if is_ore then
                                            if brickcolor == BrickColor.new("Institutional white") then
                                                    add_esp(v, "Nitrate", settings.nitrate.colour, settings.nitrate.enabled)
                                            elseif brickcolor == BrickColor.new("Burlap") then
                                                add_esp(v, "Iron", settings.iron.colour, settings.iron.enabled)
                                            end
                                        end
                                    end
                                end
                            end
                        end
        for index, model in pairs(workspace:GetChildren()) do
            filter_models(model)
        end

        workspace.ChildAdded:Connect(
            function(model)
                filter_models(model)
            end
        )
        end








    local Sensitivity = 1

    local LoopBad = nil
    MovementPrediction = getgenv().Neodymium.Silent["Prediction"]

    local Mouse = game.Players.LocalPlayer:GetMouse()

    local AimbotEnabled = getgenv().Neodymium.Silent["Silent Aim"]

    local RunService = game:GetService("RunService")

    local OldPosition = nil

    local function CalculateVelocity(Before, After, deltaTime)
        -- // Vars
        local Displacement = (After - Before)
        local Velocity = Displacement / deltaTime

        -- // Return
        return Velocity
    end

    local PredictionSmoothness = getgenv().Neodymium.Silent["Prediction Amount"]

    local Middle = game.Workspace.Ignore.LocalCharacter.Middle


    local BulletDropPrediction = getgenv().Neodymium.Silent["BulletDropPrediction"]

    local Key = getgenv().Neodymium.Silent["Silent Aim Hold Key"]


    local OrginalGetCFrame = l__NEXT__2.GetCFrame



    if getgenv().Neodymium.Silent["LoadBypasses"] then
        local SpooferNigger
        if _SilentAim["Enabled"] and _SilentAim["Silent_Target"] then
            SpooferNigger = hookfunction(_SilentAim["Silent_Target"].Position, function()
                return OrginalGetCFrame();
            end)
        end


        local SpooferNigger2
        if _SilentAim["Enabled"] and _SilentAim["Silent_Target"] then
            SpooferNigger2 = hookfunction(l__NEXT__2.GetCFrame, function()
                return OrginalGetCFrame();
            end)
        end



        local SpooferNigger3
        local CFrameP = l__NEXT__2.GetCFrame().p
        if _SilentAim["Enabled"] and _SilentAim["Silent_Target"] then
            SpooferNigger3 = hookfunction(CFrameP, function()
                return OrginalGetCFrame();
            end)
        end
    end



    if getgenv().Neodymium.Bypasses["Bypass1"] then
        wait(600)
        game.Players.LocalPlayer:Kick("Kicked For Anti Cheat Bypass1")
    end

    if getgenv().Neodymium.Bypasses["Bypass2"] then
        local Bypass2
        Bypass2 = hookfunction(CFrameP, function()
            return OrginalGetCFrame();
        end)
    end



    game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
        if input.UserInputType == Key then
            Aiming = true
            LoopBad = RunService.RenderStepped:Connect(function(dt)
                if Aiming and AimbotEnabled == true and _SilentAim["Enabled"] and _SilentAim["Silent_Target"] then
                    local p = nil
                    if not TargetRN then
                         p = GetPlayer()
                         if p then
                            TargetRN = p
                         end
                    else
                        p = TargetRN
                    end
                    if not p then return end

                    if p ~= nil then
                        local CurrentPosition = p.HumanoidRootPart.Position
                        if OldPosition == nil then
                            OldPosition = CurrentPosition
                        end
                        local Velocity = CalculateVelocity(OldPosition,CurrentPosition,dt)
                        local Prediction = Vector3.new(0, 0, 0)
                        if MovementPrediction == true then
                            Prediction = Velocity * (PredictionSmoothness / 10) * (Middle.Position - p.Head.Position).magnitude / 100
                        end

                        OldPosition = CurrentPosition


                        TracerToTarget = getgenv().Neodymium.Silent["Tracer To Target"]

                        if MovementPrediction == true then
                            l__NEXT__2.GetCFrame = function()
                                if _SilentAim["Enabled"] and _SilentAim["Silent_Target"] then
                                    return CFrame.new(OrginalGetCFrame().p, _SilentAim["Silent_Target"].Position + Prediction + Vector3.new(0, 0.5 * 196.2 * BulletDropPrediction * BulletDropPrediction, 0));
                                else
                                    return OrginalGetCFrame();
                                end
                            end
                        else
                            l__NEXT__2.GetCFrame = function()
                                if _SilentAim["Enabled"] and _SilentAim["Silent_Target"] then
                                    return CFrame.new(OrginalGetCFrame().p, _SilentAim["Silent_Target"].Position + Vector3.new(0, 0.5 * 196.2 * BulletDropPrediction * BulletDropPrediction, 0));
                                else
                                    return OrginalGetCFrame();
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)


    UIS.InputEnded:Connect(function(input, gameProcessedEvent)
        if input.UserInputType == Key then
            Aiming = false
            OldPosition = nil
            local success, errormessage = pcall(function()
                LoopBad:Disconnect()
            end)
            if not success then
                warn(errormessage)
            end
            TargetRN = nil
        end
    end)








    if getgenv().Neodymium.Misc["Pick Up All"] then
        Mouse.KeyDown:Connect(
        function(Key2)
            if (Key2 == getgenv().Neodymium.Misc["Pick Up All Keybind"]:lower()) then
                if getgenv().Neodymium.Misc["Pick Up All"] == true then
                        local ohNumber1 = 12
                        local ohNumber2 = 1
                        local ohBoolean3 = true
                        game:GetService("Players").LocalPlayer.PlayerGui.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
                        local ohNumber1 = 12
                        local ohNumber2 = 2
                        local ohBoolean3 = true
                        game:GetService("Players").LocalPlayer.PlayerGui.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
                        local ohNumber1 = 12
                        local ohNumber2 = 3
                        local ohBoolean3 = true
                        game:GetService("Players").LocalPlayer.PlayerGui.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
                        local ohNumber1 = 12
                        local ohNumber2 = 4
                        local ohBoolean3 = true
                        game:GetService("Players").LocalPlayer.PlayerGui.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
                        local ohNumber1 = 12
                        local ohNumber2 = 5
                        local ohBoolean3 = true
                        game:GetService("Players").LocalPlayer.PlayerGui.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
                        local ohNumber1 = 12
                        local ohNumber2 = 6
                        local ohBoolean3 = true
                        game:GetService("Players").LocalPlayer.PlayerGui.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
                        local ohNumber1 = 12
                        local ohNumber2 = 7
                        local ohBoolean3 = true
                        game:GetService("Players").LocalPlayer.PlayerGui.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
                        local ohNumber1 = 12
                        local ohNumber2 = 8
                        local ohBoolean3 = true
                        game:GetService("Players").LocalPlayer.PlayerGui.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
                        local ohNumber1 = 12
                        local ohNumber2 = 9
                        local ohBoolean3 = true
                        game:GetService("Players").LocalPlayer.PlayerGui.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
                        local ohNumber1 = 12
                        local ohNumber2 = 10
                        local ohBoolean3 = true
                        game:GetService("Players").LocalPlayer.PlayerGui.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
                        local ohNumber1 = 12
                        local ohNumber2 = 11
                        local ohBoolean3 = true
                        game:GetService("Players").LocalPlayer.PlayerGui.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
                        local ohNumber1 = 12
                        local ohNumber2 = 12
                        local ohBoolean3 = true
                        game:GetService("Players").LocalPlayer.PlayerGui.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
                        local ohNumber1 = 12
                        local ohNumber2 = 13
                        local ohBoolean3 = true
                        game:GetService("Players").LocalPlayer.PlayerGui.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
                        local ohNumber1 = 12
                        local ohNumber2 = 14
                        local ohBoolean3 = true
                        game:GetService("Players").LocalPlayer.PlayerGui.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
                        local ohNumber1 = 12
                        local ohNumber2 = 15
                        local ohBoolean3 = true
                        game:GetService("Players").LocalPlayer.PlayerGui.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
                        local ohNumber1 = 12
                        local ohNumber2 = 16
                        local ohBoolean3 = true
                        game:GetService("Players").LocalPlayer.PlayerGui.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
                        local ohNumber1 = 12
                        local ohNumber2 = 17
                        local ohBoolean3 = true
                        game:GetService("Players").LocalPlayer.PlayerGui.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
                        local ohNumber1 = 12
                        local ohNumber2 = 18
                        local ohBoolean3 = true
                        game:GetService("Players").LocalPlayer.PlayerGui.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
                        local ohNumber1 = 12
                        local ohNumber2 = 19
                        local ohBoolean3 = true
                        local ohNumber1 = 12
                        local ohNumber2 = 20
                        local ohBoolean3 = true
                        game:GetService("Players").LocalPlayer.PlayerGui.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
                        local ohNumber1 = 12
                        local ohNumber2 = 21
                        local ohBoolean3 = true
                        game:GetService("Players").LocalPlayer.PlayerGui.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
                        local ohNumber1 = 12
                        local ohNumber2 = 22
                        local ohBoolean3 = true
                        game:GetService("Players").LocalPlayer.PlayerGui.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
                        local ohNumber1 = 12
                        local ohNumber2 = 23
                        local ohBoolean3 = true
                        game:GetService("Players").LocalPlayer.PlayerGui.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
                        local ohNumber1 = 12
                        local ohNumber2 = 24
                        local ohBoolean3 = true
                        game:GetService("Players").LocalPlayer.PlayerGui.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
                        local ohNumber1 = 12
                        local ohNumber2 = 25
                        local ohBoolean3 = true
                        game:GetService("Players").LocalPlayer.PlayerGui.RemoteEvent:FireServer(ohNumber1, ohNumber2, ohBoolean3)
                    getgenv().Neodymium.Misc["Pick Up All"] = true
                else
                    getgenv().Neodymium.Misc["Pick Up All"] = false
                end
            end
        end
        )
    end












































    -- ESP

    if getgenv().Neodymium.ESP["Enable ESP"] then





    local Config = {
        Esp = {
            Box               = getgenv().Neodymium.ESP["Box ESP"],
            BoxFilled         = false,
            BoxOutline        = getgenv().Neodymium.ESP["Box ESP"],
            BoxTransparency   = 1,
            BoxColor          = getgenv().Neodymium.Colors["Box ESP Color"],
            BoxOutlineColor   = Color3.fromRGB(0,0,0),
            HealthBar         = getgenv().Neodymium.ESP["Health Bar ESP"],
            HealthBarSide     = getgenv().Neodymium.ESP["Health Bar Location"], -- Left,Bottom,Right
            HealthBarColor    = getgenv().Neodymium.Colors["Health Bar Color"],
            Names             = getgenv().Neodymium.ESP["Player Name ESP"],
            NamesOutline      = getgenv().Neodymium.ESP["Player Name ESP"],
            NamesColor        = getgenv().Neodymium.Colors["Player Name ESP Color"],
            NamesOutlineColor = Color3.fromRGB(0,0,0),
            NamesFont         = 2, -- 1,2,3
            NamesSize         = 13,
        },
    }







    local Updater;
    function CreateEsp(Player)
        local Box,BoxOutline,Name,HealthBar,HealthBarOutline,Tool = Drawing.new("Square"),Drawing.new("Square"),Drawing.new("Text"),Drawing.new("Square"),Drawing.new("Square"),Drawing.new("Text")
        Updater = game:GetService("RunService").RenderStepped:Connect(function()
        if Player ~= nil and Player:FindFirstChild("Humanoid") ~= nil and Player:FindFirstChild("HumanoidRootPart") ~= nil and Player.Humanoid.Health > 0 and Player:FindFirstChild("Head") ~= nil then
            local Target2dPosition,IsVisible = workspace.CurrentCamera:WorldToViewportPoint(Player.HumanoidRootPart.Position)
            local scale_factor = 1 / (Target2dPosition.Z * math.tan(math.rad(workspace.CurrentCamera.FieldOfView * 0.5)) * 2) * 100
            local width, height = math.floor(40 * scale_factor), math.floor(60 * scale_factor)
                if Config.Esp.Box then
                    function VisibleCheckBox()
                        if getgenv().Neodymium.ESP["Visible Check"] and WallCheck2(Player.HumanoidRootPart.Position, {game.Players.LocalPlayer, Player}) then
                            Box.Visible = IsVisible
                            Box.Color = Config.Esp.BoxColor
                            Box.Size = Vector2.new(width,height)
                            Box.Position = Vector2.new(Target2dPosition.X - Box.Size.X / 2,Target2dPosition.Y - Box.Size.Y / 2)
                            Box.Filled = Config.Esp.BoxFilled
                            Box.Thickness = 1
                            Box.Transparency = Config.Esp.BoxTransparency
                            Box.ZIndex = 69
                        else
                            Box.Visible = IsVisible
                            Box.Color = Config.Esp.BoxColor
                            Box.Size = Vector2.new(width,height)
                            Box.Position = Vector2.new(Target2dPosition.X - Box.Size.X / 2,Target2dPosition.Y - Box.Size.Y / 2)
                            Box.Filled = Config.Esp.BoxFilled
                            Box.Thickness = 1
                            Box.Transparency = Config.Esp.BoxTransparency
                            Box.ZIndex = 69
                        end
                    end
                    VisibleCheckBox()
                    if _SilentAim["Enabled"] and _SilentAim["Silent_Target"] then
                        if _SilentAim["Silent_Target"].Position == Player.Head.Position then
                            Box.Visible = IsVisible
                            Box.Color = Color3.fromRGB(150, 127, 250)
                            Box.Size = Vector2.new(width,height)
                            Box.Position = Vector2.new(Target2dPosition.X - Box.Size.X / 2,Target2dPosition.Y - Box.Size.Y / 2)
                            Box.Filled = Config.Esp.BoxFilled
                            Box.Thickness = 1
                            Box.Transparency = Config.Esp.BoxTransparency
                            Box.ZIndex = 69
                        else
                            VisibleCheckNames()
                        end
                    end

                    if Config.Esp.BoxOutline then
                        BoxOutline.Visible = IsVisible
                        BoxOutline.Color = Config.Esp.BoxOutlineColor
                        BoxOutline.Size = Vector2.new(width,height)
                        BoxOutline.Position = Vector2.new(Target2dPosition.X - Box.Size.X / 2,Target2dPosition.Y - Box.Size.Y / 2)
                        BoxOutline.Filled = false
                        BoxOutline.Thickness = 2.2
                        BoxOutline.ZIndex = 1
                    else
                        BoxOutline.Visible = false
                    end
                else
                    Box.Visible = false
                    BoxOutline.Visible = false
                end







                if Config.Esp.Names then
                    function VisibleCheckNames()
                        if getgenv().Neodymium.ESP["Visible Check"] and WallCheck2(Player.HumanoidRootPart.Position, {game.Players.LocalPlayer, Player}) then
                            Name.Visible = IsVisible
                            Name.Color = Config.Esp.NamesColor
                            Name.Text = "Player | Visible"
                            Name.Center = true
                            Name.Outline = Config.Esp.NamesOutline
                            Name.OutlineColor = Config.Esp.NamesOutlineColor
                            Name.Position = Vector2.new(Target2dPosition.X,Target2dPosition.Y - height * 0.5 + -15)
                            Name.Font = Config.Esp.NamesFont
                            Name.Size = Config.Esp.NamesSize
                            if _SilentAim["Enabled"] and _SilentAim["Silent_Target"] then
                                if _SilentAim["Silent_Target"].Position == Player.Head.Position then
                                    Name.Visible = IsVisible
                                    Name.Color = Color3.fromRGB(150, 127, 250)
                                    Name.Text = "Player | Targeting"
                                    Name.Center = true
                                    Name.Outline = Config.Esp.NamesOutline
                                    Name.OutlineColor = Config.Esp.NamesOutlineColor
                                    Name.Position = Vector2.new(Target2dPosition.X,Target2dPosition.Y - height * 0.5 + -15)
                                    Name.Font = Config.Esp.NamesFont
                                    Name.Size = Config.Esp.NamesSize
                                end
                            end
                        else
                            if getgenv().Neodymium.ESP["Visible Check"] then
                                Name.Visible = IsVisible
                                Name.Color = Config.Esp.NamesColor
                                Name.Text = "Player | Not Visible"
                                Name.Center = true
                                Name.Outline = Config.Esp.NamesOutline
                                Name.OutlineColor = Config.Esp.NamesOutlineColor
                                Name.Position = Vector2.new(Target2dPosition.X,Target2dPosition.Y - height * 0.5 + -15)
                                Name.Font = Config.Esp.NamesFont
                                Name.Size = Config.Esp.NamesSize
                                if _SilentAim["Enabled"] and _SilentAim["Silent_Target"] then
                                    if _SilentAim["Silent_Target"].Position == Player.Head.Position then
                                        Name.Visible = IsVisible
                                        Name.Color = Color3.fromRGB(150, 127, 250)
                                        Name.Text = "Player | Targeting"
                                        Name.Center = true
                                        Name.Outline = Config.Esp.NamesOutline
                                        Name.OutlineColor = Config.Esp.NamesOutlineColor
                                        Name.Position = Vector2.new(Target2dPosition.X,Target2dPosition.Y - height * 0.5 + -15)
                                        Name.Font = Config.Esp.NamesFont
                                        Name.Size = Config.Esp.NamesSize
                                    end
                                end
                            end
                        end
                    end
                    if getgenv().Neodymium.ESP["Visible Check"] then
                        VisibleCheckNames()
                    else
                        Name.Visible = IsVisible
                        Name.Color = Config.Esp.NamesColor
                        Name.Text = "Player"
                        Name.Center = true
                        Name.Outline = Config.Esp.NamesOutline
                        Name.OutlineColor = Config.Esp.NamesOutlineColor
                        Name.Position = Vector2.new(Target2dPosition.X,Target2dPosition.Y - height * 0.5 + -15)
                        Name.Font = Config.Esp.NamesFont
                        Name.Size = Config.Esp.NamesSize
                        if _SilentAim["Enabled"] and _SilentAim["Silent_Target"] then
                            if _SilentAim["Silent_Target"].Position == Player.Head.Position then
                                Name.Visible = IsVisible
                                Name.Color = Color3.fromRGB(150, 127, 250)
                                Name.Text = "Player | Targeting"
                                Name.Center = true
                                Name.Outline = Config.Esp.NamesOutline
                                Name.OutlineColor = Config.Esp.NamesOutlineColor
                                Name.Position = Vector2.new(Target2dPosition.X,Target2dPosition.Y - height * 0.5 + -15)
                                Name.Font = Config.Esp.NamesFont
                                Name.Size = Config.Esp.NamesSize
                            else
                                Name.Visible = IsVisible
                                Name.Color = Config.Esp.NamesColor
                                Name.Text = "Player"
                                Name.Center = true
                                Name.Outline = Config.Esp.NamesOutline
                                Name.OutlineColor = Config.Esp.NamesOutlineColor
                                Name.Position = Vector2.new(Target2dPosition.X,Target2dPosition.Y - height * 0.5 + -15)
                                Name.Font = Config.Esp.NamesFont
                                Name.Size = Config.Esp.NamesSize
                            end
                        end
                    end
                else
                    Name.Visible = false
                end





                if Config.Esp.HealthBar then
                    function VisibleCheckHealthbar()
                        if getgenv().Neodymium.ESP["Visible Check"] and WallCheck2(Player.HumanoidRootPart.Position, {game.Players.LocalPlayer, Player}) then
                            HealthBarOutline.Visible = IsVisible
                            HealthBarOutline.Color = Color3.fromRGB(0,0,0)
                            HealthBarOutline.Filled = true
                            HealthBarOutline.ZIndex = 1

                            HealthBar.Visible = IsVisible
                            HealthBar.Color = Config.Esp.HealthBarColor
                            HealthBar.Thickness = 90
                            HealthBar.Filled = true
                            HealthBar.ZIndex = 69
                        else
                            HealthBarOutline.Visible = IsVisible
                            HealthBarOutline.Color = Color3.fromRGB(0,0,0)
                            HealthBarOutline.Filled = true
                            HealthBarOutline.ZIndex = 1

                            HealthBar.Visible = IsVisible
                            HealthBar.Color = Config.Esp.HealthBarColor
                            HealthBar.Thickness = 90
                            HealthBar.Filled = true
                            HealthBar.ZIndex = 69
                        end
                    end
                    VisibleCheckHealthbar()

                    if _SilentAim["Enabled"] and _SilentAim["Silent_Target"] then
                        if _SilentAim["Silent_Target"].Position == Player.Head.Position then
                            HealthBarOutline.Visible = IsVisible
                            HealthBarOutline.Color = Color3.fromRGB(0,0,0)
                            HealthBarOutline.Filled = true
                            HealthBarOutline.ZIndex = 1

                            HealthBar.Visible = IsVisible
                            HealthBar.Color = Color3.fromRGB(150, 127, 250)
                            HealthBar.Thickness = 90
                            HealthBar.Filled = true
                            HealthBar.ZIndex = 69
                        else
                            VisibleCheckHealthbar()
                        end
                    end
                    if Config.Esp.HealthBarSide == "Left" then
                        HealthBarOutline.Size = Vector2.new(2,height)
                        HealthBarOutline.Position = Vector2.new(Target2dPosition.X - Box.Size.X / 2,Target2dPosition.Y - Box.Size.Y / 2) + Vector2.new(-3,0)

                        HealthBar.Size = Vector2.new(1,-(HealthBarOutline.Size.Y - 2) * (Player:FindFirstChild("Humanoid").Health/Player:FindFirstChild("Humanoid").MaxHealth))
                        HealthBar.Position = HealthBarOutline.Position + Vector2.new(1,-1 + HealthBarOutline.Size.Y)
                    elseif Config.Esp.HealthBarSide == "Bottom" then
                        HealthBarOutline.Size = Vector2.new(width,3)
                        HealthBarOutline.Position = Vector2.new(Target2dPosition.X - Box.Size.X / 2,Target2dPosition.Y - Box.Size.Y / 2) + Vector2.new(0,height + 2)

                        HealthBar.Size = Vector2.new((HealthBarOutline.Size.X - 2) * (Player:FindFirstChild("Humanoid").Health/Player:FindFirstChild("Humanoid").MaxHealth),1)
                        HealthBar.Position = HealthBarOutline.Position + Vector2.new(1,-1 + HealthBarOutline.Size.Y)
                    elseif Config.Esp.HealthBarSide == "Right" then
                        HealthBarOutline.Size = Vector2.new(2,height)
                        HealthBarOutline.Position = Vector2.new(Target2dPosition.X - Box.Size.X / 2,Target2dPosition.Y - Box.Size.Y / 2) + Vector2.new(width + 1,0)

                        HealthBar.Size = Vector2.new(1,-(HealthBarOutline.Size.Y - 2) * (Player:FindFirstChild("Humanoid").Health/Player:FindFirstChild("Humanoid").MaxHealth))
                        HealthBar.Position = HealthBarOutline.Position + Vector2.new(1,-1 + HealthBarOutline.Size.Y)
                    end
                else
                    HealthBar.Visible = false
                    HealthBarOutline.Visible = false
                end
            else
                Box.Visible = false
                BoxOutline.Visible = false
                Name.Visible = false
                HealthBar.Visible = false
                HealthBarOutline.Visible = false
                if not Player then
                    Box:Remove()
                    BoxOutline:Remove()
                    Name:Remove()
                    HealthBar:Remove()
                    HealthBarOutline:Remove()
                    Updater:Disconnect()
                end
            end
        end)
    end
    for _,i in pairs(game:GetService("Workspace"):GetChildren()) do
        if i:FindFirstChild("Humanoid") and i ~= game.Players.LocalPlayer.Character and i:FindFirstChild("HumanoidRootPart") and i.Head:FindFirstChild("Nametag") then
            CreateEsp(i)
        end
    end

    game.Workspace.DescendantAdded:Connect(function(i)
        if i:FindFirstChild("Humanoid") and i ~= game.Players.LocalPlayer.Character and i:FindFirstChild("HumanoidRootPart") and i.Head:FindFirstChild("Nametag") then
            CreateEsp(i)
        end
    end)
    end



















    task.spawn(function()
        while task.wait() do
            if _SilentAim["Enabled"] and Aiming == true then
                local Target;
                Target = GetPlayer();
                if Target and Aiming == true then
                    _SilentAim["Silent_Target"] = Target:FindFirstChild("Head");
                    MonkeyPlayer = Target
                end
            else
                _SilentAim["Silent_Target"] = nil;
                MonkeyPlayer = nil
            end
        end
    end)



    local Line = Drawing.new("Line")
    Line.Thickness = 2
    Line.Visible = false
    Line.Transparency = 1
    Line.Color = getgenv().Neodymium.Colors["Tracer Color"]
    Line.From = vector2_new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)


    task.spawn(function()
        while task.wait() do
            if _SilentAim["Enabled"] and _SilentAim["Silent_Target"] and TracerToTarget then
                local HumPos, OnScreen = camera:WorldToViewportPoint(_SilentAim["Silent_Target"].Position)
                if OnScreen then
                    Line.Visible = true
                    Line.To = Vector2.new(HumPos.X, HumPos.Y)
                else
                    Line.Visible = false
                end
            else
                Line.Visible = false
            end
        end
    end)
















    if getgenv().Neodymium.HitboxExpander["Enabled"] then



        local HedsOn = Instance.new("Part")
        HedsOn.Name = "Cheese"
        HedsOn.Anchored = false
        HedsOn.CanCollide = false
        HedsOn.Transparency = 1
        HedsOn.Size = Vector3.new(0,0,0)
        HedsOn.Parent = game.ReplicatedStorage

        local HTTransparency = getgenv().Neodymium.HitboxExpander["Hitbox Transparency"]
        local XSize = getgenv().Neodymium.HitboxExpander["Hitbox Width"]
        local YSize = getgenv().Neodymium.HitboxExpander["Hitbox Height"]
        local ZSize = getgenv().Neodymium.HitboxExpander["Hitbox Width"]



        if getgenv().Neodymium.HitboxExpander["Enabled"] == true then
            while getgenv().Neodymium.HitboxExpander["Enabled"] == true do
            for v, i in pairs(game:GetService("Workspace"):GetChildren()) do
            if i:FindFirstChild("Humanoid") then
              if i:FindFirstChild("HumanoidRootPart") then
                if not i:FindFirstChild("Cheese") then
                  if i ~= game.Players.LocalPlayer.Character then
                    local BigHeadsPart = Instance.new("Part")
                    BigHeadsPart.Name = "Torso"
                    BigHeadsPart.Anchored = false
                    BigHeadsPart.CanCollide = false
                    BigHeadsPart.Size = Vector3.new(XSize, YSize, ZSize)
                    BigHeadsPart.Transparency = HTTransparency

                    local HeadsParts = BigHeadsPart:Clone()
                    HeadsParts.Parent = i
                    HeadsParts.Orientation = i.HumanoidRootPart.Orientation

                    local HedsOn = HedsOn:Clone()
                    HedsOn.Parent = i

                    local Headswelding = Instance.new("Weld")
                    Headswelding.Parent = HeadsParts
                    Headswelding.Part0 = i.HumanoidRootPart
                    Headswelding.Part1 = HeadsParts

                    HeadsParts.Position = Vector3.new(i.HumanoidRootPart.Position.X,i.HumanoidRootPart.Position.Y - 0.4, i.HumanoidRootPart.Position.Z)
                  end
                end
              end
            end
            end
            wait(3)
            end
            else
            if getgenv().Neodymium.HitboxExpander["Enabled"] == false then
            for v, i in pairs(game:GetService("Workspace"):GetChildren()) do
            if i:FindFirstChild("Humanoid") then
              if i:FindFirstChild("HumanoidRootPart") then
                if i:FindFirstChild("Cheese") then
                  i.HedsOn:Remove()
                  for x,a in pairs(i:GetChildren()) do
                    if a.Name == "Torso" then
                      if not a:FindFirstChild("Nametag") and not a:FindFirstChild("Face") then
                        a:Remove()
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
    SCRIPT()