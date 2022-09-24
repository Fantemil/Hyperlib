-- made by fired#4778

--// variables
local uiactive = true
local runservice = game:GetService("RunService")
local coregui = game:GetService("CoreGui")
local userinputservice = game:GetService("UserInputService")
local startergui = game:GetService("StarterGui")
local replicatedstorage = game:GetService("ReplicatedStorage")
local teleportservice = game:GetService("TeleportService")
local players = game:GetService("Players")
local player = players.LocalPlayer
local humanoid = player.Character:WaitForChild("Humanoid", 10)
local hrp = player.Character:WaitForChild("HumanoidRootPart", 25)

--// active
--// checks
if not firetouchinterest then
    player:Kick("Exploit requires firetouchinterest")
end

if not getconnections then
    player:Kick("Exploit requires getconnections")
end

--// ui library
local notification = loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua"))()
getgenv()["IrisAd"] = true
local library = loadstring(game:HttpGetAsync("https://pastebin.com/raw/B6BWz44r"))()

-- windows --
local window = library:CreateWindow("Universal")
local window2 = library:CreateWindow("Game")
local window3 = library:CreateWindow("Misc")

-- folders --
local folder = window:AddFolder("LocalPlayer")
local folder2 = window2:AddFolder("Main")
local folder3 = window2:AddFolder("Sword Reach")
local folder4 = window3:AddFolder("Settings")

-- localplayer --
folder:AddToggle(
    {
        text = "Noclip",
        flag = "noclip",
        callback = v
    }
)

folder:AddToggle(
    {
        text = "Infinite Jump",
        flag = "infjump",
        callback = v
    }
)

folder:AddSlider(
    {
        text = "WalkSpeed",
        flag = "ws",
        min = 16,
        max = 150,
        value = 16
    }
)

folder:AddSlider(
    {
        text = "JumpPower",
        flag = "jp",
        min = 50,
        max = 500,
        value = 50
    }
)

folder:AddSlider(
    {
        text = "HipHeight",
        flag = "hh",
        min = 0,
        max = 50,
        value = 0
    }
)

folder:AddSlider(
    {
        text = "FOV",
        flag = "fov",
        min = 0,
        max = 140,
        value = 70
    }
)

-- main --
folder2:AddSlider(
    {
        text = "Amount to Spawn",
        flag = "amount",
        min = 1,
        max = 150
    }
)

folder2:AddButton(
    {
        text = "Spawn Lucky Block",
        callback = function()
            for i = 1, (library.flags.amount / 2) do
                replicatedstorage.SpawnLuckyBlock:FireServer()
            end
            notification.Notify(
                "Success!",
                "Successfully Spawned!",
                "rbxassetid://4914902889",
                {
                    Duration = 3,
                    TitleSettings = {
                        TextXAlignment = Enum.TextXAlignment.Center,
                        Font = Enum.Font.SourceSansSemibold
                    },
                    GradientSettings = {
                        GradientEnabled = false,
                        SolidColorEnabled = true,
                        SolidColor = Color3.fromRGB(25, 25, 25),
                        Retract = true
                    }
                }
            )
        end
    }
)

folder2:AddButton(
    {
        text = "Spawn Super Block",
        callback = function()
            for i = 1, (library.flags.amount / 2) do
                replicatedstorage.SpawnSuperBlock:FireServer()
            end
            notification.Notify(
                "Success!",
                "Successfully Spawned!",
                "rbxassetid://4914902889",
                {
                    Duration = 3,
                    TitleSettings = {
                        TextXAlignment = Enum.TextXAlignment.Center,
                        Font = Enum.Font.SourceSansSemibold
                    },
                    GradientSettings = {
                        GradientEnabled = false,
                        SolidColorEnabled = true,
                        SolidColor = Color3.fromRGB(25, 25, 25),
                        Retract = true
                    }
                }
            )
        end
    }
)

folder2:AddButton(
    {
        text = "Spawn Diamond Block",
        callback = function()
            for i = 1, (library.flags.amount / 2) do
                replicatedstorage.SpawnDiamondBlock:FireServer()
            end
            notification.Notify(
                "Success!",
                "Successfully Spawned!",
                "rbxassetid://4914902889",
                {
                    Duration = 3,
                    TitleSettings = {
                        TextXAlignment = Enum.TextXAlignment.Center,
                        Font = Enum.Font.SourceSansSemibold
                    },
                    GradientSettings = {
                        GradientEnabled = false,
                        SolidColorEnabled = true,
                        SolidColor = Color3.fromRGB(25, 25, 25),
                        Retract = true
                    }
                }
            )
        end
    }
)

folder2:AddButton(
    {
        text = "Spawn Rainbow Block",
        callback = function()
            for i = 1, (library.flags.amount / 2) do
                replicatedstorage.SpawnRainbowBlock:FireServer()
            end
            notification.Notify(
                "Success!",
                "Successfully Spawned!",
                "rbxassetid://4914902889",
                {
                    Duration = 3,
                    TitleSettings = {
                        TextXAlignment = Enum.TextXAlignment.Center,
                        Font = Enum.Font.SourceSansSemibold
                    },
                    GradientSettings = {
                        GradientEnabled = false,
                        SolidColorEnabled = true,
                        SolidColor = Color3.fromRGB(25, 25, 25),
                        Retract = true
                    }
                }
            )
        end
    }
)

folder2:AddButton(
    {
        text = "Spawn Galaxy Block",
        callback = function()
            for i = 1, (library.flags.amount / 2) do
                replicatedstorage.SpawnGalaxyBlock:FireServer()
            end
            notification.Notify(
                "Success!",
                "Successfully Spawned!",
                "rbxassetid://4914902889",
                {
                    Duration = 3,
                    TitleSettings = {
                        TextXAlignment = Enum.TextXAlignment.Center,
                        Font = Enum.Font.SourceSansSemibold
                    },
                    GradientSettings = {
                        GradientEnabled = false,
                        SolidColorEnabled = true,
                        SolidColor = Color3.fromRGB(25, 25, 25),
                        Retract = true
                    }
                }
            )
        end
    }
)

-- reach --
folder3:AddToggle(
    {
        text = "Enable",
        flag = "enabled",
        callback = v
    }
)

folder3:AddSlider(
    {
        text = "Distance",
        flag = "distance",
        min = 0,
        max = 100,
        value = 0
    }
)

-- settings --
folder4:AddButton(
    {
        text = "Rejoin Game",
        callback = function()
            teleportservice:Teleport(game.PlaceId, player)
        end
    }
)

folder4:AddButton(
    {
        text = "Unload Script",
        callback = function()
            coregui["ScreenGui"]:Destroy()
            uiactive = false
        end
    }
)

folder4:AddBind(
    {
        text = "Toggle UI",
        key = Enum.KeyCode.RightControl,
        flag = "toggleui",
        callback = function()
            library:Close()
        end
    }
)

folder4:AddBind(
    {
        text = "Toggle Autoclicker",
        key = Enum.KeyCode.C,
        flag = "toggleautoclicker",
        callback = function()
            local autoclicking
            local afk
            local sword
            function toggle()
                autoclicking = not autoclicking
            end
            userinputservice.InputBegan:Connect(
                function(k, g)
                    if not g and k.KeyCode == library.flags.toggleautoclicker then
                        toggle()
                    end
                end
            )
            function oncharadded(char)
                sword = char:FindFirstChildOfClass("Tool")
                char.ChildAdded:Connect(
                    function(i)
                        if i.ClassName == "Tool" then
                            sword = i
                        end
                    end
                )
                char.ChildRemoved:Connect(
                    function(i)
                        if sword == i then
                            sword = nil
                        end
                    end
                )
            end
            player.CharacterAdded:Connect(oncharaddded)
            if player.Character then
                oncharadded(player.Character)
            end
            userinputservice.WindowFocused:Connect(
                function()
                    afk = false
                end
            )
            userinputservice.WindowFocusReleased:Connect(
                function()
                    afk = true
                end
            )

            runservice.RenderStepped:Connect(
                function(stepped)
                    if not afk and autoclicking and sword and uiactive then
                        sword:Activate()
                        sword:Activate()
                    end
                end
            )
        end
    }
)

--// functions
-- bypasses --
for i, v in pairs(getconnections(game:GetService("ScriptContext").Error)) do
    v:Disable()
end

local oldindex = nil
oldindex =
    hookmetamethod(
    game,
    "__index",
    function(Self, Key)
        if not checkcaller() and Self == "HumanoidRootPart" or not checkcaller() and Self == "Torso" then
            if Key == "CFrame" and Self:IsDescendantOf(LocalPlayer.Character) then
                return true
            end
        end
        return oldindex(Self, Key)
    end
)

local oldnamecall = nil
oldnamecall =
    hookmetamethod(
    game,
    "__namecall",
    function(Self, ...)
        local namecallmethod = getnamecallmethod()
        if tostring(string.lower(namecallmethod)) == "kick" then
            return nil
        end
        return oldnamecall(Self, ...)
    end
)

local devconsolehook
devconsolehook =
    hookfunction(
    startergui.SetCore,
    newcclosure(
        function(Self, ...)
            local args = table.pack(...)
            if args[1] == "DevConsoleVisible" then
                args[1] = "PointsNotificationsActive"
            end
            return devconsolehook(Self, table.unpack(args, 1, args.n))
        end
    )
)

-- noclip --
runservice.Stepped:Connect(
    function()
        if library.flags.noclip and uiactive then
            pcall(
                function()
                    player.Character.Head.CanCollide = false
                    player.Character.Torso.CanCollide = false
                end
            )
        end
    end
)

-- infinite jump --
function Action(Object, Function)
    if Object ~= nil then
        Function(Object)
    end
end

userinputservice.InputBegan:Connect(
    function(UserInput)
        if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
            Action(
                humanoid,
                function(self)
                    if
                        self:GetState() == Enum.HumanoidStateType.Jumping and library.flags.infjump and uiactive or
                            self:GetState() == Enum.HumanoidStateType.Freefall and library.flags.infjump and uiactive
                     then
                        Action(
                            self.Parent.HumanoidRootPart,
                            function(self)
                                self.Velocity = Vector3.new(0, library.flags.jp, 0)
                            end
                        )
                    end
                end
            )
        end
    end
)

-- properties --
runservice.Stepped:Connect(
    function()
        if uiactive then
            humanoid.WalkSpeed = library.flags.ws
            humanoid.JumpPower = library.flags.jp
            humanoid.HipHeight = library.flags.hh
            workspace.CurrentCamera.FieldOfView = library.flags.fov
        elseif not uiactive then
            humanoid.WalkSpeed = 16
            humanoid.JumpPower = 50
            humanoid.HipHeight = 0
            workspace.CurrentCamera.FieldOfView = 70
        end
    end
)

-- sword reach --
runservice.RenderStepped:Connect(
    function()
            coroutine.wrap(
                function()
                    if library.flags.enabled and uiactive then
                    local mouse = player:GetMouse()
                    local s = player.Character:FindFirstChildOfClass("Tool")
                    pcall(
                        function()
                            for _, v in pairs(players:GetPlayers()) do
                                if v and v ~= player and v.Character.Humanoid.Health ~= 0 then
                                    if
                                        (v.Character.Torso.Position - player.Character.Torso.Position).magnitude <=
                                            library.flags.distance
                                     then
                                        s = player.Character:FindFirstChildOfClass("Tool")
                                        for i = 1, 2 do
                                            firetouchinterest(s.Handle, v.Character["Torso"], 0)
                                            firetouchinterest(s.Handle, v.Character["Torso"], 1)
                                            firetouchinterest(s.Handle, v.Character["Left Arm"], 0)
                                            firetouchinterest(s.Handle, v.Character["Left Arm"], 1)
                                            firetouchinterest(s.Handle, v.Character["Right Arm"], 0)
                                            firetouchinterest(s.Handle, v.Character["Right Arm"], 1)
                                            firetouchinterest(s.Handle, v.Character["Left Leg"], 0)
                                            firetouchinterest(s.Handle, v.Character["Left Leg"], 1)
                                            firetouchinterest(s.Handle, v.Character["Right Leg"], 0)
                                            firetouchinterest(s.Handle, v.Character["Right Leg"], 1)
                                            firetouchinterest(s.Handle, v.Character["Head"], 0)
                                            firetouchinterest(s.Handle, v.Character["Head"], 1)
                                        end
                                    end
                                end
                            end
                        end
                    )
                    end
                end
            )()
    end
)

--// init
library:Init()