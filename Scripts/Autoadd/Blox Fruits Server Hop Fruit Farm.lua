if not game:IsLoaded() then
    game.Loaded:Wait()
end
repeat
    task.wait()
until game:GetService("Players") and game:GetService("Workspace") and game:GetService("ReplicatedStorage")

local LocalPlayer = game:GetService("Players").LocalPlayer
loadstring(game:HttpGet("https://pastebin.com/raw/tUUGAeaH", true))()

local function returnHRP()
    if not LocalPlayer.Character then
        return
    end
    if not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        return
    else
        return LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    end
end
local function returnHUM()
    if not LocalPlayer.Character then
        return
    end
    if not LocalPlayer.Character:FindFirstChild("Humanoid") then
        return
    else
        return LocalPlayer.Character:FindFirstChild("Humanoid")
    end
end
repeat
    task.wait()
until returnHRP() and returnHUM()
local HrpTable = {
    Velocity = returnHRP().Velocity,
    Transparency = returnHRP().Transparency,
    Rotation = returnHRP().Rotation,
    Size = returnHRP().Size,
    Orientation = returnHRP().Orientation,
    Anchored = returnHRP().Anchored
}

local function spoofHRP()
    for i, v in pairs(HrpTable) do
        spoof(returnHRP(), tostring(i), returnHRP():GetAttribute(v))
    end

    return true
end

local function TpTo(CFrame, Refresh)
    if Refresh then
        returnHUM().Health = 0
        LocalPlayer.CharacterAdded:Wait()
        repeat
            task.wait()
        until returnHRP() and returnHUM()
        spoofHRP()
        spoofHUM()
    else
        spoofHRP()
    end

    returnHRP().CFrame = CFrame

    return true
end

--Be nice and leave the credits in!
for i=1,100 do
 print("Script made by noxu#2161\nMore scripts here: extorius.ezyro.com\nBe nice and leave the credits in!\n---------------------")
end

local Fruit_InServer = false
local Fruits_InServer = {}
local Fruit_InHand = nil

for _,v in ipairs(workspace:GetChildren()) do
 if v:IsA("Tool") then
  Fruit_InServer = true
  table.insert(Fruits_InServer, v)
 end
end

if Fruit_InServer then
 repeat
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(table.unpack({    [1] = "SetTeam",    [2] = "Pirates",}))
  task.wait(.4)
 until LocalPlayer.Team == game:GetService("Teams")["Pirates"]
 
 for _,v in pairs(Fruits_InServer) do
  returnHRP().CFrame=v.Handle.CFrame
  task.wait(.1)
  Fruit_InHand = string.gsub(v.Name, " Fruit", "")
  Fruit_InHand = Fruit_InHand.."-"..Fruit_InHand
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(table.unpack({    [1] = "StoreFruit",    [2] = Fruit_InHand,    [3] = returnHRP().Parent:FindFirstChildOfClass("Tool"),}))
  task.wait(.1)
 end
 
 task.wait(.5)
 local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
    module:Teleport(game.PlaceId)
else
 local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
    module:Teleport(game.PlaceId)
end