--// Service \\--
local Players = game:GetService("Players")

--// Variable \\--
local Player = Players.LocalPlayer

--// UI Library \\--
local File = writefile and readfile or false
local Library = false
Success, Library = pcall(function()
    return readfile("uwuware UI.lua")
end)
if Success == false then
    Library = game:HttpGet('https://raw.githubusercontent.com/Just-Egg-Salad/roblox-scripts/main/uwuware')
    if File then
        writefile("uwuware UI.lua", Library)
    end
end
Library = loadstring(Library)()
local Window = Library:CreateWindow("Clicker by Ezpi")
Window:AddToggle({
    text = "Click",
    callback = function()
        while Library.flags.Click and task.wait() do
            local Tool = Player.Character and Player.Character:FindFirstChildOfClass("Tool")
            if Tool then
                Tool:Activate()
                Tool:Deactivate()
            elseif Player.Character then
                local BackTool = Player.Backpack:FindFirstChildOfClass("Tool")
                if BackTool then
                    BackTool.Parent = Player.Character
                    task.wait(0.1)
                end
            end
        end
    end
})
Window:AddToggle({
    text = "Upgrade",
    callback = function()
        local Upgrades = Player.PlayerGui.ScreenGui["UpgradeMenu_Frame"]["Upgrades_ScrollingFrame"]
        while Library.flags.Upgrade and task.wait(0.1) do
            for _, A_1 in next, Upgrades:GetChildren() do
                if A_1:IsA("Frame") and A_1.Purchase_TxtBtn.Text ~= "MAX" then
                    firesignal(A_1.Purchase_TxtBtn.Activated)
                end
            end
        end
    end
})
Window:AddToggle({
    text = "Pet Evolve",
    flag = "Pet",
    callback = function()
        local PetGui = Player.PlayerGui.ScreenGui["Pet_Frame"]
        while Library.flags.Pet and task.wait(0.1) do
            if PetGui.Evolve_TxtBtn.Visible == true then
                firesignal(PetGui.Evolve_TxtBtn.Activated)
            end
            for _, Btn in next, PetGui.Quest_Frame:GetChildren() do
                if Btn:IsA("Frame") and Btn.Full_TxtBtn.Visible == false and Btn.MaxBar_Frame.CurrentBar_Frame.Size == UDim2.new(1, 0, 1, 0) then
                    firesignal(Btn.Feed_TxtBtn.Activated)
                end
            end
        end
    end
})
Library:Init()