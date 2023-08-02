local old = getrenv().gcinfo

getrenv().gcinfo = function(...)

    return wait(9e9)

end



_G.Toggle = false

_G.Toggle2 = false

_G.autofarmtoggle = false



local noclip = false

local Camera = game:GetService("Workspace").CurrentCamera;

local Mouse = game:GetService("Players").LocalPlayer:GetMouse();

local Players = game:GetService("Players");

local Player = Players.LocalPlayer;

local CoreGui = game.CoreGui

local ContentProvider = game.ContentProvider

local RobloxGuis = {"RobloxGui", "TeleportGui", "RobloxPromptGui", "RobloxLoadingGui", "PlayerList", "RobloxNetworkPauseNotification", "PurchasePrompt", "HeadsetDisconnectedDialog", "ThemeProvider", "DevConsoleMaster"}

getgenv().noclip = false 



FOV_Circle = Drawing.new("Circle");

FOV_Circle.Color = Color3.fromRGB(255,255,255);

FOV_Circle.Thickness = 1.5;

FOV_Circle.NumSides = 13;

FOV_Circle.Radius = 150;

FOV_Circle.Visible = false;

FOV_Circle.Filled = false;



FOV_Circle2 = Drawing.new("Circle");

FOV_Circle2.Color = Color3.fromRGB(255,255,255);

FOV_Circle2.Thickness = 1.5;

FOV_Circle2.NumSides = 13;

FOV_Circle2.Radius = 150;

FOV_Circle2.Visible = false;

FOV_Circle2.Filled = false;



game:GetService('RunService').Stepped:connect(function()

    FOV_Circle.Position = Vector2.new(Mouse.X, Mouse.Y + 37)

end)



game:GetService('RunService').Stepped:connect(function()

    FOV_Circle2.Position = Vector2.new(Mouse.X, Mouse.Y + 37)

end)



game:GetService("UserInputService").InputBegan:Connect(function(input)

    if input.UserInputType == Enum.UserInputType.MouseButton1 and _G.Toggle == true then

        

        task.wait(.35);

    

        local function ClosestPlayerToCursor()

            local Closest = nil;

            local Distance = 9e9;

            for i, v in pairs(game:GetService("Players"):GetPlayers()) do

                if v ~= Player then

                    if Workspace[v.Name]:FindFirstChild("Humanoid") and Workspace[v.Name].Humanoid.Health ~= 0 then

                        local Position = Camera:WorldToViewportPoint(Workspace[v.Name].HumanoidRootPart.Position);

                        local Magnitude = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude;

                        if Magnitude < Distance and Magnitude < FOV_Circle.Radius then

                            Closest = workspace[v.Name];

                            Distance = Magnitude;

                        end

                    end

                end

            end

            return Closest

        end



        local ThrowAtTarget = function(args1, args2, args3)

            return game:GetService("ReplicatedStorage").Remotes.ThrowKnife:FireServer(args1,args2,args3);

        end

        

        ThrowAtTarget(workspace[ClosestPlayerToCursor().Name].Head.Position, 0, CFrame.new());

        

    end

end)



function GetTime(Distance, Speed)

    local Time = Distance / Speed

    return Time

end



function spritzTween(targetpart,spritzspeed)

    local Speed = spritzspeed  local Distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - targetpart.Position).magnitude local Time = GetTime(Distance, Speed) local TweenService = game:GetService("TweenService") local spritzttable = TweenInfo.new( Time, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,  0, false, 0 ) local Tween = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart,spritzttable,{CFrame = targetpart.CFrame}) Tween:Play()

end 



local function FilterTable(tbl)

    local context = syn_context_get()

    syn_context_set(7)

    local new = {}

    for i,v in ipairs(tbl) do --roblox iterates the array part

        if typeof(v) ~= "Instance" then

            table.insert(new, v)

        else

            if v == CoreGui or v == game then

                --insert only the default roblox guis

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

    if self ~= ContentProvider or type(tbl) ~= "table" or type(cb) ~= "function" then --note: callback can be nil but in that case it's useless anyways

        return old(self, tbl, cb)

    end



    --check for any errors that I might've missed (such as table being {[2] = "something"} which causes "Unable to cast to Array")

    local err

    task.spawn(function() --TIL pcalling a C yield function inside a C yield function is a bad idea ("cannot resume non-suspended coroutine")

        local s,e = pcall(old, self, tbl)

        if not s and e then

            err = e

        end

    end)

   

    if err then

        return old(self, tbl) --don't pass the callback, just in case

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

            setnamecallmethod(method) --different thread, different namecall method

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



local mt = getrawmetatable(game);

make_writeable(mt);

local old_index = mt.__index;



mt.__index = function(a, b)

if tostring(a) == "HumanoidRootPart" then

if tostring(b) == "Size" then

return Vector3.new(2, 2, 1);

end

end

return old_index(a, b);

end



local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "SpritzSploit [ASSASSIN] Dev Access", HidePremium = false, SaveConfig = true, ConfigFolder = "🥸", IntroEnabled = false})

local CombatTab = Window:MakeTab({

    Name = "Combat",

    PremiumOnly = false

})

CombatTab:AddToggle({

    Name = "Silent Aim",

    Default = false,

    Callback = function(Value)

        _G.Toggle = Value

    end

})

local AutoTab = Window:MakeTab({

    Name = "Auto",

    PremiumOnly = false

})

AutoTab:AddToggle({

    Name = "Auto Farm",

    Default = false,

    Callback = function(Value)

        _G.autofarmtoggle = Value

        noclip = Value

    end

})

local Tab = Window:MakeTab({

	Name = "Hitbox",

	PremiumOnly = false

})

local Section = Tab:AddSection({

	Name = "Hitbox Settings"

})

Tab:AddToggle({

	Name = "Hitbox Expander",

	Default = false,

	Callback = function(Value)

	if Value == true then

	    getgenv().OFFON = true

	    getgenv().ReSizeXCV = getgenv().SizeXCV

	    getgenv().TransparencyXCV = 0.7

	    getgenv().ColourXCV = Color3.fromRGB(163, 162, 165)

	    else

	        if Value == false then

	            getgenv().OFFON = false

	            getgenv().SizeXCVs = Vector3.new(2,2,1)

	            getgenv().TransparencyXCV = 1

	            getgenv().ColourXCV = Color3.fromRGB(163, 162, 165)

	end

        end

	end    

})

Tab:AddSlider({

	Name = "Hitbox Size",

	Min = 0,

	Max = 100,

	Default = 2,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "Hitbox",

	Callback = function(Value)

	    if getgenv().OFFON == true then do

		getgenv().SizeXCV = Vector3.new(Value,Value,Value)

		getgenv().ReSizeXCV = SizeXCV

		end

	    end

end

})

Tab:AddColorpicker({

	Name = "Hitbox Colour",

	Default = Color3.fromRGB(255, 0, 0),

	Callback = function(Value)

	    if getgenv().OFFON == true then do

		getgenv().ColourXCV = Value

	    end

	end

	end	  

})

local VisTab = Window:MakeTab({

    Name = "Visuals",

    PremiumOnly = false

})

VisTab:AddToggle({

    Name = "Fov Toggle",

    Default = false,

    Callback = function(Value)

        FOV_Circle.Visible = Value

    end

})

VisTab:AddSlider({

	Name = "FOV Size",

	Min = 0,

	Max = 300,

	Default = 150,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "Size",

	Callback = function(Value)

        FOV_Circle.Radius = Value

        FOV_Circle2.Radius = Value

    end

})

local MiscTab = Window:MakeTab({

	Name = "Misc",

	PremiumOnly = false

})



MiscTab:AddButton({

	Name = "Server Hop",

	Callback = function()

      		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)

  	end    

})



local LocalTab = Window:MakeTab({

    Name = "Local Player",

    premiumOnly = false

})



getgenv().Infjump = false

LocalTab:AddToggle({

    Name = "Infinite Jump",

    Default = false,

    Callback = function(Value)

        Infjump = Value

    end

})



LocalTab:AddToggle({

    Name = "Noclip",

    Default = false,

    Callback = function(Value)

        noclip = Value

    end

})



spawn(function()

    game:GetService('RunService').RenderStepped:connect(function()

        pcall(function()

            while _G.autofarmtoggle == true do

                spritzTween(game.Workspace[game.Players.LocalPlayer.PlayerGui.ScreenGui:WaitForChild("UI"):WaitForChild("Target"):WaitForChild("TargetText").Text].HumanoidRootPart,30)

                game.workspace.Gravity = 0

                wait(0.1)

            end

        end)

    end)

end)



spawn(function()

    game:GetService('RunService').RenderStepped:connect(function()

        pcall(function()      

            while _G.autofarmtoggle == true do

                wait(0.8)

                mouse1click()

            end

        end)

    end)

end)



spawn(function()

    game:GetService('RunService').RenderStepped:connect(function()

        pcall(function()

            while _G.autofarmtoggle == false do

                if _G.autofarmtoggle == false then

                    game.workspace.Gravity = 196.2

                end

                wait(10)

            end

        end)

    end)

end)



spawn(function()

    game:GetService('RunService').RenderStepped:connect(function()

        pcall(function()

            if _G.Toggle2 then

                for i, v in pairs(game:GetService("Workspace").KnifeHost.PowerUps:GetDescendants()) do

                    if v:IsA("Part") then

                        v.Archivable = false

                    end

                end

            end

        end)

    end)

end)



spawn(function()

    game:GetService('RunService').RenderStepped:connect(function()

        pcall(function()

            if _G.Toggle2 then

                for i, v in pairs(game:GetService("Workspace").KnifeHost:GetDescendants()) do

                    if v:IsA("Part") then

                        if v.Archivable == true then

                            local PlayerPosition = ClosestPlayerToCursor().baseHitbox.CFrame

                            v.CFrame = PlayerPosition

                        end

                    end

                end

            end

        end)

    end)

end)



spawn(function()

    game:GetService('RunService').RenderStepped:connect(function()

        char = game.Players.LocalPlayer.Character 

        while noclip do 

            for _,v in pairs(char:children()) do 

                pcall(function() if v.className == "Part" then v.CanCollide = false elseif v.ClassName == "Model" then

                v.Head.CanCollide = false end end) 

            end 

            game:service("RunService").Stepped:wait() 

        end

    end)

end)



spawn(function()

    game:GetService('RunService').RenderStepped:connect(function()

        game:GetService("UserInputService").JumpRequest:Connect(function()

            if Infjump then

                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")

            end

        end)

    end)

end)



spawn(function()

    game:GetService('RunService').RenderStepped:connect(function()

for i,v in pairs(game:GetService('Players'):GetPlayers()) do

    if v.Name ~= game.Players.LocalPlayer.Name then

game.Workspace[v.Name].HumanoidRootPart.Size = SizeXCV

game.Workspace[v.Name].HumanoidRootPart.Transparency = TransparencyXCV or SizeXCVs

game.Workspace[v.Name].HumanoidRootPart.Color = ColourXCV

game.Workspace[v.Name].HumanoidRootPart.Material = "Neon"

game.Workspace[v.Name].HumanoidRootPart.CanCollide = false

wait()

end

end

end)

end)



syn.protect_gui(Window)