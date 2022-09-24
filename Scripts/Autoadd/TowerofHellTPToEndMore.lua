--// Library

local Config = {
    WindowName = "Tower of Hell",
 Color = Color3.fromRGB(255,128,64),
 Keybind = Enum.KeyCode.RightControl -- Broken
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()
local Window = Library:CreateWindow(Config, game.CoreGui)

local MainTab = Window:CreateTab("Made by rinq#9999 (hookmetamethod on v3rm)")

local FarmSec = MainTab:CreateSection("Farming")
local MapSec = MainTab:CreateSection("Map")
local PlayerSec = MainTab:CreateSection("Player Options")
local InfoSec = MainTab:CreateSection("Info/Support")

--// Toggles

getgenv().Toggles = {
    LoopEnd = false,
    Godmode = false,
    InfJump = false
}

--// Variables

local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
Player.CharacterAdded:Connect(function(NewCharacter)
    Character = NewCharacter
end)

--// "Anti-Cheat" Bypass (Can barely call it an anticheat)

for _,v in pairs(getgc()) do
    if type(v) == "function" and getfenv(v).script == Player.PlayerScripts.LocalScript then
        if debug.getinfo(v).name == "kick" then
            hookfunction(v,function()end)
        end
    end
end

if Player.PlayerScripts:FindFirstChild("LocalPartScript") then
    Player.PlayerScripts.LocalPartScript:Destroy()
end

--// Godmode

local old; old = hookmetamethod(game,"__index",function(self, idx)
    if tostring(self) == "KillScript" and idx == "Parent" and Toggles["Godmode"] then
        return wait(9e9)
    end
    return old(self,idx)
end)

--// Infinite Jump

Player:GetMouse().KeyDown:Connect(function(Key)
    if Key == " " and Toggles["InfJump"] then
        Character.Humanoid:ChangeState(3)
    end
end)

--// UI Elements

local TeleportToEnd = FarmSec:CreateButton("Teleport To End",function()
    Character.HumanoidRootPart.CFrame = workspace.tower.finishes.Finish.CFrame
end)

MapSec:CreateButton("Destroy All Kill Parts",function()
    for i,v in pairs(workspace.tower.sections:GetDescendants()) do
        if v.Name == "kills" then
            v.Parent.Transparency = 1
     v:Destroy()
        end
    end
end)

PlayerSec:CreateButton("Get All Tools",function()
    for _,Tool in pairs(game.ReplicatedStorage.Gear:GetChildren()) do
        if Tool:FindFirstChild("price") then
            local NewTool = Tool:Clone()
            NewTool.Parent = Player.Backpack
        end
    end
end)

local Speed = PlayerSec:CreateSlider("WalkSpeed",0,200,nil,true,function(Speed)
    Character.Humanoid.WalkSpeed = Speed
end)

Speed:SetValue(16)

PlayerSec:CreateButton("Reset WalkSpeed",function()
    Speed:SetValue(16)
end)

local Jump = PlayerSec:CreateSlider("JumpPower",0,200,nil,true,function(Power)
    Character.Humanoid.JumpPower = Power
end)

Jump:SetValue(50)

PlayerSec:CreateButton("Reset JumpPower",function()
    Jump:SetValue(50)
end)

local SetGravity = PlayerSec:CreateSlider("Gravity",0,500,nil,true,function(Gravity)
    workspace.Gravity = Gravity
end)

SetGravity:SetValue(196)

PlayerSec:CreateButton("Reset Gravity",function()
    SetGravity:SetValue(196)
end)

PlayerSec:CreateToggle("Infinite Jump",nil,function(Toggle)
    Toggles["InfJump"] = Toggle
end)

PlayerSec:CreateToggle("Godmode/Invincibility",nil,function(Toggle)
    Toggles["Godmode"] = Toggle
end)

local CopyAppealText = PlayerSec:CreateButton("Copy Appeal Text",function()
    if setclipboard then
        setclipboard("I acknowledge that i have been banned justly for exploiting and hereby agree that i will not do so again. Furthermore i agree to have all my progress in the game deleted and wait 7 more days until i am unbanned")
    end
end)

CopyAppealText:AddToolTip("This is for if you get banned, you don't need to type out their annoyingly long and soppy appeal text.")

InfoSec:CreateButton("Copy Discord Account",function()
    if setclipboard then
        setclipboard("rinq#9999")
    end
end)

InfoSec:CreateButton("Copy V3rm Profile",function()
    if setclipboard then
        setclipboard("https://v3rmillion.net/member.php?action=profile&uid=2793258")
    end
end)