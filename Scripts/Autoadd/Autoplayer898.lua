if not game:IsLoaded() then game.Loaded:Wait() end

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local InputService = game:GetService("UserInputService")
local InputManager = game:GetService("VirtualInputManager")

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/o5u3/Friday-Night-Bloxxin-Autoplayer/main/uwuware-ui-edit"))()

local Client = game:GetService("Players").LocalPlayer
local PlayerGui = Client:WaitForChild("PlayerGui")

local InputFolder = Client:WaitForChild("Input")
local Keybinds = InputFolder:WaitForChild("Keybinds")

local Old
local LP = Players.LocalPlayer

local Marked = {}

local KeysTable = {
    ["4"] = {"Up", "Down", "Left", "Right"},
    ["6"] = {S = "L3", D = "L2", F = "L1", J = "R1", K = "R2", L = "R3"},
    ["7"] = {S = "L3", D = "L2", F = "L1", Space = "Space", J = "R1", K = "R2", L = "R3"},
    ["9"] = {A = "L4", S = "L3", D = "L2", F = "L1", Space = "Space", H = "R1", J = "R2", K = "R3", L = "R4"}
}

RunService.Heartbeat:Connect(function()
    for i, v in pairs(LP.PlayerScripts:GetDescendants()) do
        if v:IsA("LocalScript") and v.Name == "xploitStuff" then 
            v:Destroy()
        end
    end
    for i, v in pairs(game:GetService("ReplicatedStorage").Modules.Util:GetDescendants()) do
        if v:IsA("ImageLabel") and v.Name == "boo" or v.Name == "otherboo" then -- how could you do such a thing fnb dev team ;(
            v:Destroy()
        end
    end

    if not Library.flags.AutoPlayer then return end
    if not Menu or not Menu.Parent then return end
    if Menu.Config.TimePast.Value <= 0 then return end
    
    local SideMenu = Menu.Game:FindFirstChild(Menu.PlayerSide.Value)
    local IncomingArrows = SideMenu.Arrows.IncomingNotes

    local Keys = KeysTable[tostring(#IncomingArrows:GetChildren())] or IncomingArrows:GetChildren()
    
    for Key, Direction in pairs(Keys) do
        Direction = tostring(Direction)

        local ArrowsHolder = IncomingArrows:FindFirstChild(Direction) or IncomingArrows:FindFirstChild(Key)
        if not ArrowsHolder then continue end

        for _, Object in ipairs(ArrowsHolder:GetChildren()) do
            if table.find(Marked, Object) then continue end
            local Keybind = Keybinds:FindFirstChild(Direction) and Keybinds[Direction].Value

            local Start = SideMenu.Arrows:FindFirstChild(Direction) and SideMenu.Arrows[Direction].AbsolutePosition.Y or SideMenu.Arrows[Key].AbsolutePosition.Y
            local Current = Object.AbsolutePosition.Y
            local Difference = not InputFolder.Downscroll.Value and (Current - Start) or (Start - Current)

            local IsHell = Object:FindFirstChild("HellNote") and Object:FindFirstChild("HellNote").Value
            
            if Difference <= 0.35 and not IsHell then
                Marked[#Marked + 1] = Object
                
                InputManager:SendKeyEvent(true, Enum.KeyCode[Keybind], false, nil)
                repeat task.wait() until not Object or not Object:FindFirstChild("Frame") or Object.Frame.Bar.Size.Y.Scale <= 0
                InputManager:SendKeyEvent(false, Enum.KeyCode[Keybind], false, nil)
            end
        end
    end
end)

PlayerGui.ChildAdded:Connect(function(Object)
    if Object:IsA("ScreenGui") and Object:FindFirstChild("Game") then
        table.clear(Marked)
        getgenv().Menu = Object
    end
end)

for _, ScreenGui in ipairs(PlayerGui:GetChildren()) do
    if not ScreenGui:FindFirstChild("Game") then continue end
    getgenv().Menu = ScreenGui
end

do
    local Window = Library:CreateWindow("Friday Night Bloxxin'") do
        local Folder = Window:AddFolder("Autoplayer") do
            if _G.apDefault == true then
                local Toggle = Folder:AddToggle({text = "AutoPlayer", flag = "AutoPlayer",  state = true })
            else
                local Toggle = Folder:AddToggle({text = "AutoPlayer", flag = "AutoPlayer" })
            end
        end
        local Gui = Window:AddFolder("Gui")
        local Extra = Window:AddFolder("Extras")
        Folder:AddLabel({text = "Changelogs:"})
        Folder:AddLabel({text = "haha fq0e,"})
        Folder:AddLabel({text = "i bypassed the AC"})
        Folder:AddLabel({text = "-KiwisASkid"})
        Folder:AddLabel({text = " "})
        Folder:AddLabel({text = "Credits:"})
        Folder:AddLabel({text = "Fixed by KiwisASkid"})
        Folder:AddLabel({text = "Made by Malware10"})
        Gui:AddBind({text = "Gui Toggle", key = Enum.KeyCode.Delete, callback = function() Library:Close() end })
        Extra:AddButton({text = "Rejoin", callback = function()
            pcall(function()
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, LP)
            end)
        end})
        Gui:AddButton({text = "Unload Script", callback = function()
            pcall(function()
                RunService:ClearAllChildren()
                HttpService:GenerateGUID(false)
                Library.base:ClearAllChildren()
            end)
        end})
        Gui:AddButton({text = "DestroyGui", callback = function()
            pcall(function()
                Library.base:Destroy()
            end)
        end})
        Extra:AddButton({text = "Instant Solo", callback = function()
            pcall(function()
                PlayerGui.SingleplayerUI.ButtonPressed:FireServer()
            end)
        end})
    end
    Library:Init()
end

Old = hookmetamethod(game, "__newindex", newcclosure(function(self, ...)
    local Args = {...}
    local Property = Args[1]

    if not Client.Character then return end
    local Humanoid = Client.Character:FindFirstChild("Humanoid")
    if not Humanoid then return end

    if self == Humanoid and Property == "Health" and not checkcaller() then return end
    
    return Old(self, ...)
end))

game.StarterGui:SetCore("SendNotification", {Title = "Notification", Text = "Script loaded!", Duration = 4,})