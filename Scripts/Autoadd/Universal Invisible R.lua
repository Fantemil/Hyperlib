local ACCESSORIES = ([[
    (U can use headless for full Invisible)
    YOU NEED TO WEAR ANY OF THESE ACCESSORIES:
    []  https://www.roblox.com/catalog/11192973135/
    []  https://www.roblox.com/catalog/11256534523/
    []  https://www.roblox.com/catalog/11262715817/
    []  https://www.roblox.com/catalog/11207957307/
    []  https://www.roblox.com/catalog/11265137980/
    []  https://www.roblox.com/catalog/11239873478/
    []  https://www.roblox.com/catalog/11265221929/
    ===Poor options===
    [Poor] https://www.roblox.com/catalog/9795596987
]])

local plr = game.Players.LocalPlayer
local ch = plr.Character
if ch:FindFirstChild("R6Convert") or ch:FindFirstChild("Bear Suit") then
    local mypos = ch.HumanoidRootPart.CFrame
    ch.HumanoidRootPart.CFrame = CFrame.new(0,10000000,0)
    ch.HumanoidRootPart.Velocity = Vector3.new(0,50,0) -- prevent fall damage in some shitty game
    task.wait(0.5)
    for i,v in pairs(ch:GetChildren()) do
        if v:IsA("Accessory") or v:IsA("Accoutrement") then
            if v.Name == "R6Convert" or v.Name == "Bear Suit" then
                pcall(function()
                    v.Handle.Anchored = true
                    v.Handle.AccessoryWeld:Destroy()
                end)
            end
        end    
    end
    ch.HumanoidRootPart.CFrame = mypos
    game.StarterGui:SetCore("SendNotification", {Title = "Invisible Body", Text = "Made by: System-Cali#6958\nCopied to your clipboard", Duration = 8})
    setclipboard("System-Cali#6958")
else
    game.StarterGui:SetCore("SendNotification", {Title = "Invisible Body", Text = "Made by: System-Cali#6958", Duration = 5})
    game.StarterGui:SetCore("SendNotification", {Title = "Invisible Body", Text = "Wear any of the mentioned 3D clothing", Duration = 8})
    setclipboard("System-Cali#6958")
end