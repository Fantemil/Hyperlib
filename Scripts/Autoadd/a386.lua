local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local PhantomForcesWindow = Library:NewWindow("Survive 100 days in a nuclear shelter")
local KillingCheats = PhantomForcesWindow:NewSection("autotfood")
KillingCheats:CreateButton("Beans", function()
local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
rootPart.CFrame = game:GetService("Workspace").Food.Beans.CFrame
print("HI")
end)
KillingCheats:CreateButton("Bloxy Cola", function()
local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
rootPart.CFrame = game:GetService("Workspace").Food["Bloxy Cola"].CFrame
print("HI")
end)
local KillingCheats = PhantomForcesWindow:NewSection("other")
KillingCheats:CreateButton("god mode", function()
local accessories = {}
function GodMode()
    if game.Players.LocalPlayer.Character then
        if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
            for _, accessory in pairs(game.Players.LocalPlayer.Character.Humanoid:GetAccessories()) do
                table.insert(accessories, accessory:Clone())
            end
            game.Players.LocalPlayer.Character.Humanoid.Name = "deku"
        end
        local v = game.Players.LocalPlayer.Character["deku"]:Clone()
        v.Parent = game.Players.LocalPlayer.Character
        v.Name = "Humanoid"
        wait(0.1)
        game.Players.LocalPlayer.Character["deku"]:Destroy()
        workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
        for _, accessory in pairs(accessories) do
            game.Players.LocalPlayer.Character.Humanoid:AddAccessory(accessory)
        end
        game.Players.LocalPlayer.Character.Animate.Disabled = true
        wait(0.1)
        game.Players.LocalPlayer.Character.Animate.Disabled = false
    end
end
GodMode()
print("HI")
end)
KillingCheats:CreateButton("reach 10", function()
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
game.StarterGui:SetCore("SendNotification", {
    Title    = "Sword Reach Script Loaded by"; 
    Text     = "MADE BY qweqrwtA You need to hold a tool when executing."; 
    Icon     = ""; 
    Duration = 40;
    Callback = bindableFunction;
    Button1  = "ok";  
    Button2  = "good";
})
for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
                if v:isA("Tool") then
                    local a = Instance.new("SelectionBox",v.Handle)
                    a.Adornee = v.Handle
                    v.Handle.Size = Vector3.new(10,10,10)
                    v.GripPos = Vector3.new(0,0,0)
                    lplayer.Character.Humanoid:UnequipTools()
                end
end
print("HI")
end)
KillingCheats:CreateButton("reach 20", function()
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
game.StarterGui:SetCore("SendNotification", {
    Title    = "Sword Reach Script Loaded by"; 
    Text     = "MADE BY qweqrwtA You need to hold a tool when executing."; 
    Icon     = ""; 
    Duration = 40;
    Callback = bindableFunction;
    Button1  = "ok";  
    Button2  = "good";
})
for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
                if v:isA("Tool") then
                    local a = Instance.new("SelectionBox",v.Handle)
                    a.Adornee = v.Handle
                    v.Handle.Size = Vector3.new(20,20,20)
                    v.GripPos = Vector3.new(0,0,0)
                    lplayer.Character.Humanoid:UnequipTools()
                end
end
print("HI")
end)
local KillingCheats = PhantomForcesWindow:NewSection("teleport")
KillingCheats:CreateButton("tp Back", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-22.75, 8.59999943, 33.9020004, 1, 0, 0, 0, 1, 0, 0, 0, 1)
print("HI")
end)